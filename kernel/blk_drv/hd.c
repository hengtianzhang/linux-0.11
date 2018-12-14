void test()
{}

do_hd = &test;

void unexpected_hd_interrupt(void)
{
	printk("Unexpected HD interrupt\n\r");
}

