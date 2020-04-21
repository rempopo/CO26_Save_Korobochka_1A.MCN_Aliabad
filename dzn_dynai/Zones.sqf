
/* *********** This array defines detailed properties of zones ************************** */
[
	"tgt_patrol" /* Zone Name */
	,"RESISTANCE",false, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			4, /* Groups quantity */
			/* Units */
			[
				["CUP_I_TK_GUE_Soldier", [], "kit_ins_random"]
				,["CUP_I_TK_GUE_Soldier", [], "kit_ins_random"]
			]
		]
		,[
			1, /* Groups quantity */
			/* Units */
			[
				["CUP_I_TK_GUE_Soldier", ["indoors"], "kit_ins_random"]
				,["CUP_I_TK_GUE_Soldier", ["indoors"], "kit_ins_random"]
				,["CUP_I_TK_GUE_Soldier", ["indoors"], "kit_ins_random"]
				,["CUP_I_TK_GUE_Soldier", ["indoors"], "kit_ins_random"]
				,["CUP_I_TK_GUE_Soldier", ["indoors"], "kit_ins_random"]
				,["CUP_I_TK_GUE_Soldier", ["indoors"], "kit_ins_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
,
[
	"bmp_patrol" /* Zone Name */
	,"RESISTANCE",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			3, /* Groups quantity */
			/* Units */
			[
				["CUP_I_TK_GUE_Soldier", [], "kit_ins_random"]
				,["CUP_I_TK_GUE_Soldier", [], "kit_ins_random"]
				,["CUP_I_TK_GUE_Soldier", [], "kit_ins_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
,
[
	"reinf" /* Zone Name */
	,"RESISTANCE",false, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			3, /* Groups quantity */
			/* Units */
			[
				["CUP_I_TK_GUE_Soldier", [], "kit_ins_random"]
				,["CUP_I_TK_GUE_Soldier", [], "kit_ins_random"]
				,["CUP_I_TK_GUE_Soldier", [], "kit_ins_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
	 /* (OPTIONAL) Activation condition */
	,{ [TRG, "", "> 0"] call dzn_fnc_ccPlayers }
]
