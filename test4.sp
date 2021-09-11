int g_iWeaponDefIndex[] = {
/* 0*/ 9, /* 1*/ 7, /* 2*/ 16, /* 3*/ 60, /* 4*/ 1, /* 5*/ 61, /* 6*/ 32, /* 7*/ 4, /* 8*/ 2, 
/* 9*/ 36, /*10*/ 63, /*11*/ 3, /*12*/ 30, /*13*/ 64, /*14*/ 35, /*15*/ 25, /*16*/ 27, /*17*/ 29, 
/*18*/ 14, /*19*/ 28, /*20*/ 34, /*21*/ 17, /*22*/ 33, /*23*/ 24, /*24*/ 19, /*25*/ 26, /*26*/ 10, /*27*/ 13, 
/*28*/ 40, /*29*/ 8, /*30*/ 39, /*31*/ 38, /*32*/ 11, /*33*/ 507, /*34*/ 508, /*35*/ 500, 
/*36*/ 514, /*37*/ 515, /*38*/ 505, /*39*/ 516, /*40*/ 509, /*41*/ 512, /*42*/ 506,
/*43*/ 519, /*44*/ 520, /*45*/ 522, /*46*/ 523, /*47*/ 23, /*48*/ 503, /*49*/ 517,
/*50*/ 518, /*51*/ 521, /*52*/ 525
};

StringMap g_hTrie;

public void OnPluginStart()
{
	g_hTrie = new StringMap(); 
	
	// 1st entry
	ArrayList hArray = new ArrayList();
	for(int i = 0; i < sizeof(g_iWeaponDefIndex); i++)
	{
		hArray.Push(g_iWeaponDefIndex[i]);
	}
	g_hTrie.SetValue("1", hArray);
	
	// 2nd entry
	hArray = new ArrayList();
	for(int i = 0; i < sizeof(g_iWeaponDefIndex); i++)
	{
		hArray.Push(g_iWeaponDefIndex[i]);
	}
	g_hTrie.SetValue("2", hArray);
	
	// 3rd entry
	hArray = new ArrayList();
	for(int i = 0; i < sizeof(g_iWeaponDefIndex); i++)
	{
		hArray.Push(g_iWeaponDefIndex[i]);
	}
	g_hTrie.SetValue("3", hArray);
	
	delete g_hTrie;
}

/*
Output *WITHOUT* deleting g_hTrie
test_suite.smx	
Total handles: 4
Total Bytes: 1176 bytes
*/

/*
Output deleting/freeing g_hTrie
test_suite.smx	
Total handles: 3
Total Bytes: 828 bytes
*/

// Deleting the trie or clearing it(using StringMap.Clear() ) does *NOT* free the handles from it's entries