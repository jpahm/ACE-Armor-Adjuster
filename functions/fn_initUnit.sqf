// Copyright 2022 Sysroot

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

    // http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

params["_unit"];

// Remove existing ace medical damage event handler
_unit removeEventHandler ["HandleDamage", _unit getVariable ["ACE_medical_HandleDamageEHID", -1]];

// Replace with custom damage event handler
_unit setVariable [
	"ACE_medical_HandleDamageEHID", 
	_unit addEventHandler ["HandleDamage", {

		params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];

		// Only do AAA damage processing if the mod is enabled, and not for players unless AAA_VAR_PLAYERS_ENABLED
		if (AAA_VAR_MOD_ENABLED && {AAA_VAR_PLAYERS_ENABLED || {!isPlayer _unit}}) then {
			
			// Don't do custom damage processing for disabled hitpoints
			if !(missionNameSpace getVariable [format ["AAA_VAR_%1_ENABLED", _hitPoint], false]) exitWith {};
			
			private ["_prevDamage", "_armorCoef", "_hitpointArmor"];
			// Hitpoint damage before this calculation
			if (_hitPoint == "") then {
				_prevDamage = damage _unit;
			} else {
				_prevDamage = _unit getHitIndex _hitIndex;
			};
		
			// Set hitpoint armor value to base armor value if forcing base armor, otherwise just add the base armor to the worn armor
			if (AAA_VAR_FORCE_BASE_ARMOR) then {
				_hitpointArmor = AAA_VAR_BASE_ARMOR_VALUE;
			} else {
				_hitpointArmor = AAA_VAR_BASE_ARMOR_VALUE + ([_unit, _hitPoint] call ace_medical_engine_fnc_getHitpointArmor);
			};
			// Hitpoint damage to be added by this calculation
			private _addedDamage = _damage - _prevDamage;

			// If the hitpoint armor meets THRESHOLD, caluclate the new damage, otherwise do default handling
			if (_hitpointArmor >= AAA_VAR_ARMOR_THRESHOLD_VALUE) then {
				// Check if there's already an armor coefficient set for this unit, use that if there is
				// Otherwise, get armor coefficient manually
				private _unitCoef = _unit getVariable ["AAA_ArmorCoef", 0];
				if (_unitCoef > 0) then {
					_armorCoef = _unitCoef;
				} else {
					// Apply player and AI values
					if (isPlayer _unit) then {
						_armorCoef = AAA_VAR_PLAYER_ARMOR_COEF;
					} else {
						_armorCoef = AAA_VAR_AI_ARMOR_COEF;
					};
					// Optionally override values with side-based values
					switch (side _unit) do {
						case blufor: {
							private _temp = AAA_VAR_BLUFOR_ARMOR_COEF;
							if (_temp != 0) then {
								_armorCoef = _temp;
							};
						};
						case opfor: {
							private _temp = AAA_VAR_OPFOR_ARMOR_COEF;
							if (_temp != 0) then {
								_armorCoef = _temp;
							};
						};
						case civilian: {
							private _temp = AAA_VAR_CIV_ARMOR_COEF;
							if (_temp != 0) then {
								_armorCoef = _temp;
							};
						};
						case independent: {
							private _temp = AAA_VAR_IND_ARMOR_COEF;
							if (_temp != 0) then {
								_armorCoef = _temp;
							};
						};
					};
				};
				// Apply optional hitpoint multiplier
				// Try to find unit-specific hitpoint multiplier
				private _hitPointMult = _unit getVariable [format ["AAA_%1_MULT", _hitPoint], 0];
				if (_hitPointMult == 0) then {
					// If we can't find a unit-specific multiplier, try to find a general one
					_hitPointMult = missionNameSpace getVariable [format ["AAA_VAR_%1_MULT", _hitPoint], 0];
				};
				// If we found a hitpoint multiplier, apply it to the armorCoef
				if (_hitPointMult > 0) then {
						_armorCoef = _armorCoef * _hitPointMult;
				};
				// Detect explosive damage and apply AAA_VAR_EXPLOSIVE_MULT if it is greater than 0 
				if (AAA_VAR_EXPLOSIVE_MULT > 0 && {_projectile != "" && {getNumber (configFile >> "CfgAmmo" >> _projectile >> "indirectHit") > 0}}) then {
					_armorCoef = _armorCoef * AAA_VAR_EXPLOSIVE_MULT;
				};
				// Multiply addedDamage by hitpoint's armor value divided by armor coefficient to correct ACE's armor
				private _damageMultiplier = _hitpointArmor / _armorCoef;
				_addedDamage = _addedDamage * _damageMultiplier;
			}
			
			if (AAA_VAR_DEBUG) then {
				private _ogDamage = _damage - _prevDamage;
				diag_log text "AAA DEBUG: NEW HIT PROCESSED! DETAILS BELOW:";
				diag_log text format ["HIT UNIT: %1", _unit];
				diag_log text format ["SHOOTER: %1", _source];
				diag_log text format ["HITPOINT: %1", _hitPoint];
				diag_log text format ["HITPOINT ARMOR: %1", _hitpointArmor];
				diag_log text format ["ORIGINAL DAMAGE RECEIVED: %1", _ogDamage];
				diag_log text format ["NEW DAMAGE RECEIVED: %1", _addedDamage];
				if (_ogDamage != 0) then {
					diag_log text format ["%1 DAMAGE CHANGE: %2%3", "%", ((_addedDamage - _ogDamage) * 100 / _ogDamage) toFixed 2, "%"];
				} else {
					diag_log text "% DAMAGE CHANGE: N/A";
				};
				diag_log text format ["TOTAL HITPOINT DAMAGE: %1", _prevDamage + _addedDamage];
				diag_log text "";
			};
			
			// Replace original damage value with new damage value
			_this set [2, _prevDamage + _addedDamage];
		};
		// Call ace medical's damage handler with updated value
		_this call ACE_medical_engine_fnc_handleDamage;
	}]
];
