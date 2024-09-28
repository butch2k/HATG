private _suppressorsWhitelist = [];

private _suppressorsBlacklist = [
    // Ace muzzles
    "ACE_muzzle_mzls_B",
    "ACE_muzzle_mzls_L",
    "ACE_muzzle_mzls_H",
    "ACE_muzzle_mzls_93mmg",
    "ACE_muzzle_mzls_338",
    "ACE_muzzle_mzls_smg_01",
    "ACE_muzzle_mzls_smg_02",
    // Vanilla muzzles
    "muzzle_antenna_01_f",
    "muzzle_antenna_02_f",
    "muzzle_antenna_03_f",
    // CUP muzzles
    "CUP_muzzle_mfsup_Flashhider_545x39_Black",
    "CUP_muzzle_mfsup_Flashhider_545x39_OD",
    "CUP_muzzle_mfsup_Flashhider_545x39_Tan",
    "CUP_muzzle_mfsup_Flashhider_556x45_Black",
    "CUP_muzzle_mfsup_Flashhider_556x45_OD",
    "CUP_muzzle_mfsup_Flashhider_556x45_Tan",
    "CUP_muzzle_mfsup_SCAR_L",
    "CUP_muzzle_mfsup_SCAR_H",
    "CUP_muzzle_mfsup_Flashhider_762x39_Black",
    "CUP_muzzle_mfsup_Flashhider_762x39_OD",
    "CUP_muzzle_mfsup_Flashhider_762x39_Tan",
    "CUP_muzzle_mfsup_Flashhider_762x51_Black",
    "CUP_muzzle_mfsup_Flashhider_762x51_OD",
    "CUP_muzzle_mfsup_Flashhider_762x51_Tan",
    "CUP_muzzle_mfsup_CSA",
    "CUP_muzzle_mfsup_CSA_desert",
    "CUP_muzzle_mfsup_CSA_woodland",
    "CUP_muzzle_mfsup_flashhider_Sa58",
    "CUP_muzzle_mfsup_Zendl",
    "CUP_muzzle_mfsup_Zendl_desert",
    "CUP_muzzle_mfsup_Zendl_woodland",
    "CUP_acc_bfa",
    "CUP_acc_sffh",
    "CUP_muzzle_mfsup_Flashhider_PK_Black",
    "CUP_muzzle_mfsup_Flashhider_PK_OD",
    "CUP_muzzle_mfsup_Flashhider_PK_Tan",
    // RHS
    "rhs_acc_ak5",
    "rhs_acc_dtk",
    "rhs_acc_dtk1983",
    "rhs_acc_dtk1",
    "rhs_acc_dtk2",
    "rhs_acc_dtk3",
    "rhs_acc_pgs64",
    "rhs_acc_pgs64_74u",
    "rhs_acc_pgs64_74un",
    "rhs_acc_uuk",
    "rhs_acc_dtk1l",
    "rhs_acc_dtkakm",
    "rhs_acc_dtkrpk",
    "rhsusf_acc_ARDEC_M240",
    "rhsgref_acc_falMuzzle_l1a1",
    "rhsusf_acc_SF3P556",
    "rhsusf_acc_SFMB556",
    "rhsgref_acc_zendl",
    "rhsusf_acc_m14_flashsuppresor",
    "rhsusf_acc_m24_muzzlehider_black",
    "rhsusf_acc_m24_muzzlehider_d",
    "rhsusf_acc_m24_muzzlehider_wd",
    // NIArms
    "hlc_muzzle_Miter18T",
    "hlc_muzzle_snds_ROTEX3P",
    "hlc_muzzle_Gunfighter_comp",
    "hlc_muzzle_Brevis",
    "hlc_muzzle_MAG58_Brake",
    "hlc_muzzle_17SBrake",
    "hlc_muzzle_OEMDevice",
    "hlc_muzzle_KX3_comp",
    "hlc_muzzle_FSC30",
    "hlc_muzzle_Cherrybomb",
    "hlc_muzzle_SF3P_762R",
    "hlc_muzzle_A1_FlashHider",
    "hlc_muzzle_XM177E1_Moderator",
    "hlc_muzzle_XM177E2_Moderator",
    "hlc_muzzle_E1_FlashHider",
    "hlc_muzzle_OEMDevice_556",
    "hlc_muzzle_snds_ArsenalComp",
    "hlc_muzzle_SF3P_762"
];

private _suppressorsIntegral = [
    // Vanilla
    "srifle_DMR_02_F",
    "srifle_DMR_02_camo_F",
    "srifle_DMR_02_sniper_F",
    "srifle_DMR_04_F",
    "srifle_DMR_04_Tan_F",
    // CUP
    "CUP_arifle_AS_VAL",
    "CUP_arifle_AS_VAL_flash",
    "CUP_arifle_AS_VAL_VFG",
    "CUP_arifle_AS_VAL_top_rail",
    "CUP_arifle_AS_VAL_flash_top",
    "CUP_arifle_AS_VAL_VFG_top_rail",
    "CUP_srifle_VSSVintorez",
    "CUP_srifle_VSSVintorez_flash",
    "CUP_srifle_VSSVintorez_VFG",
    "CUP_srifle_VSSVintorez_top_rail",
    "CUP_srifle_VSSVintorez_flash_top",
    "CUP_srifle_VSSVintorez_VFG_top_rail",
    "CUP_smg_MP5SD6",
    "CUP_arifle_OTS14_GROZA_762_Grip",
    "CUP_arifle_OTS14_GROZA_Grip",
    // RHS
    "rhs_weap_asval",
    "rhs_weap_asval_grip",
    "rhs_weap_asval_grip_npz",
    "rhs_weap_asval_npz",
    "rhs_weap_vss",
    "rhs_weap_vss_grip",
    "rhs_weap_vss_grip_npz",
    "rhs_weap_vss_npz",
    "rhs_weap_m3a1_specops",
    // NIArms
    "hlc_rifle_honeybase",
    "hlc_rifle_awcovert_BL",
    "hlc_rifle_awcovert_FDE",
    "hlc_rifle_awcovert",
    "hlc_smg_mp5sd5",
    "hlc_smg_mp5sd6"
]; // what if you wanted to BUILD A COOL MOD but designers said "WE. NEED. TO. PUT. THE. SUPPRESSOR. IN. THE. GUN!"

[_suppressorsWhitelist, _suppressorsBlacklist, _suppressorsIntegral];