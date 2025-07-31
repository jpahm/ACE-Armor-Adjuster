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

private _modName = localize "STR_AAA_Name";

[
	"AAA_VAR_MOD_ENABLED",
	"CHECKBOX",
	["$STR_AAA_ModEnabled", "$STR_AAA_ModEnabled_Desc"],
	[_modName, "$STR_AAA_Toggles"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_PLAYERS_ENABLED",
	"CHECKBOX",
	["$STR_AAA_PlayersEnabled", "$STR_AAA_PlayersEnabled_Desc"],
	[_modName, "$STR_AAA_Toggles"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITFACE_ENABLED",
	"CHECKBOX",
	["$STR_AAA_FaceEnabled", "$STR_AAA_HPEnabled_Desc"],
	[_modName, "$STR_AAA_Toggles"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITNECK_ENABLED",
	"CHECKBOX",
	["$STR_AAA_NeckEnabled", "$STR_AAA_HPEnabled_Desc"],
	[_modName, "$STR_AAA_Toggles"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITHEAD_ENABLED",
	"CHECKBOX",
	["$STR_AAA_HeadEnabled", "$STR_AAA_HPEnabled_Desc"],
	[_modName, "$STR_AAA_Toggles"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITPELVIS_ENABLED",
	"CHECKBOX",
	["$STR_AAA_PelvisEnabled", "$STR_AAA_HPEnabled_Desc"],
	[_modName, "$STR_AAA_Toggles"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITABDOMEN_ENABLED",
	"CHECKBOX",
	["$STR_AAA_AbdomenEnabled", "$STR_AAA_HPEnabled_Desc"],
	[_modName, "$STR_AAA_Toggles"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITDIAPHRAGM_ENABLED",
	"CHECKBOX",
	["$STR_AAA_DiaphragmEnabled", "$STR_AAA_HPEnabled_Desc"],
	[_modName, "$STR_AAA_Toggles"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITCHEST_ENABLED",
	"CHECKBOX",
	["$STR_AAA_ChestEnabled", "$STR_AAA_HPEnabled_Desc"],
	[_modName, "$STR_AAA_Toggles"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITBODY_ENABLED",
	"CHECKBOX",
	["$STR_AAA_BodyEnabled", "$STR_AAA_HPEnabled_Desc"],
	[_modName, "$STR_AAA_Toggles"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITARMS_ENABLED",
	"CHECKBOX",
	["$STR_AAA_ArmsEnabled", "$STR_AAA_HPEnabled_Desc"],
	[_modName, "$STR_AAA_Toggles"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITHANDS_ENABLED",
	"CHECKBOX",
	["$STR_AAA_HandsEnabled", "$STR_AAA_HPEnabled_Desc"],
	[_modName, "$STR_AAA_Toggles"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITLEGS_ENABLED",
	"CHECKBOX",
	["$STR_AAA_LegsEnabled", "$STR_AAA_HPEnabled_Desc"],
	[_modName, "$STR_AAA_Toggles"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_DEBUG",
	"CHECKBOX",
	["$STR_AAA_DEBUG", "$STR_AAA_DEBUG_Desc"],
	[_modName, "$STR_AAA_Toggles"],
	false,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_ARMOR_THRESHOLD_VALUE",
	"SLIDER",
	["$STR_AAA_THRESHOLD_VALUE", "$STR_AAA_THRESHOLD_VALUE_Desc"],
	[_modName, "$STR_AAA_ArmorCoefs"],
	[0, 50, 5, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_BASE_ARMOR_VALUE",
	"SLIDER",
	["$STR_AAA_BASE_ARMOR_VALUE", "$STR_AAA_BASE_ARMOR_VALUE_Desc"],
	[_modName, "$STR_AAA_ArmorCoefs"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_FORCE_BASE_ARMOR",
	"CHECKBOX",
	["$STR_AAA_FORCE_BASE_ARMOR", "$STR_AAA_FORCE_BASE_ARMOR_Desc"],
	[_modName, "$STR_AAA_Toggles"],
	false,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_PLAYER_ARMOR_COEF",
	"SLIDER",
	["$STR_AAA_PlayerArmorCoef", "$STR_AAA_PlayerArmorCoef_Desc"],
	[_modName, "$STR_AAA_ArmorCoefs"],
	[1, 50, 15, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_AI_ARMOR_COEF",
	"SLIDER",
	["$STR_AAA_AIArmorCoef", "$STR_AAA_AIArmorCoef_Desc"],
	[_modName, "$STR_AAA_ArmorCoefs"],
	[1, 50, 15, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_BLUFOR_ARMOR_COEF",
	"SLIDER",
	["$STR_AAA_BluforArmorCoef", "$STR_AAA_BluforArmorCoef_Desc"],
	[_modName, "$STR_AAA_ArmorCoefs"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_OPFOR_ARMOR_COEF",
	"SLIDER",
	["$STR_AAA_OpforArmorCoef", "$STR_AAA_OpforArmorCoef_Desc"],
	[_modName, "$STR_AAA_ArmorCoefs"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_CIV_ARMOR_COEF",
	"SLIDER",
	["$STR_AAA_CivArmorCoef", "$STR_AAA_CivArmorCoef_Desc"],
	[_modName, "$STR_AAA_ArmorCoefs"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_IND_ARMOR_COEF",
	"SLIDER",
	["$STR_AAA_IndArmorCoef", "$STR_AAA_IndArmorCoef_Desc"],
	[_modName, "$STR_AAA_ArmorCoefs"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITFACE_MULT",
	"SLIDER",
	["$STR_AAA_FaceMult", "$STR_AAA_FaceMult_Desc"],
	[_modName, "$STR_AAA_HitpointMults"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITNECK_MULT",
	"SLIDER",
	["$STR_AAA_NeckMult", "$STR_AAA_NeckMult_Desc"],
	[_modName, "$STR_AAA_HitpointMults"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITHEAD_MULT",
	"SLIDER",
	["$STR_AAA_HeadMult", "$STR_AAA_HeadMult_Desc"],
	[_modName, "$STR_AAA_HitpointMults"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITPELVIS_MULT",
	"SLIDER",
	["$STR_AAA_PelvisMult", "$STR_AAA_PelvisMult_Desc"],
	[_modName, "$STR_AAA_HitpointMults"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITABDOMEN_MULT",
	"SLIDER",
	["$STR_AAA_AbdomenMult", "$STR_AAA_AbdomenMult_Desc"],
	[_modName, "$STR_AAA_HitpointMults"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITDIAPHRAGM_MULT",
	"SLIDER",
	["$STR_AAA_DiaphragmMult", "$STR_AAA_DiaphragmMult_Desc"],
	[_modName, "$STR_AAA_HitpointMults"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITCHEST_MULT",
	"SLIDER",
	["$STR_AAA_ChestMult", "$STR_AAA_ChestMult_Desc"],
	[_modName, "$STR_AAA_HitpointMults"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITBODY_MULT",
	"SLIDER",
	["$STR_AAA_BodyMult", "$STR_AAA_BodyMult_Desc"],
	[_modName, "$STR_AAA_HitpointMults"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITARMS_MULT",
	"SLIDER",
	["$STR_AAA_ArmsMult", "$STR_AAA_ArmsMult_Desc"],
	[_modName, "$STR_AAA_HitpointMults"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITHANDS_MULT",
	"SLIDER",
	["$STR_AAA_HandsMult", "$STR_AAA_HandsMult_Desc"],
	[_modName, "$STR_AAA_HitpointMults"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_HITLEGS_MULT",
	"SLIDER",
	["$STR_AAA_LegsMult", "$STR_AAA_LegsMult_Desc"],
	[_modName, "$STR_AAA_HitpointMults"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_EXPLOSIVE_MULT",
	"SLIDER",
	["$STR_AAA_ExplosiveMult", "$STR_AAA_ExplosiveMult_Desc"],
	[_modName, "$STR_AAA_HitpointMults"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;
