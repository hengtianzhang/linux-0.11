void test(int a, int b)
{
	int temp;
	temp = a;
	a = b;
	b = temp;
}

int main()
{
	int i, as = 25, aa = 50;
	__asm__("movw %%dx, %%ax\n\t" \
			"movw %%cx, %%dx\n\t" \
			: \
			: \
			);
	test(as, aa);
	char *buffer = "hello,world";
	char *p;
	while(buffer[i] != '\0') {
		*p++ = buffer[i++];
	}
	for(;;);
}
