enum struct test_enum
{
	int a;
	int b;
	char c[32];
}

public void OnPluginStart()
{
	ArrayList hArray;
	test_enum test;
	
	PrintToServer("sizeof(test_enum): %i", sizeof(test_enum));
	
	hArray = new ArrayList(sizeof(test_enum));
	test.a = 1;
	hArray.PushArray(test);
	
	hArray = new ArrayList(sizeof(test_enum)); // New handle
	test.a = 2;
	hArray.PushArray(test);
}

/*
test5.smx	
Total handles: 2.
Total Bytes: 680 bytes
*/