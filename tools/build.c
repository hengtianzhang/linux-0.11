#include <string.h>
#include <stdio.h>

#define APPENDING_MAX 2048

void appending(char *src, char *des)
{
	int len, appending_len, i;
	FILE * fp;
	fp = fopen(src, "r");
	if (fp == NULL) {
		printf("open setup.bin is failed!\n");
		return ;
	}
	fseek(fp, 0, SEEK_END);
	len = ftell(fp);
	if (len > APPENDING_MAX) {
		printf("build failed !setup.bin over max!\n");
		fclose(fp);
		return ;
	}
	fclose(fp);
	appending_len = APPENDING_MAX - len;
	FILE *fp_d = fopen(des, "w");
	if (fp_d == NULL) {
		printf("open appending.bin is failed!\n");
		return ;
	}
	char buf[APPENDING_MAX] = {0};
	i = fwrite(buf, 1, appending_len, fp_d);
	if (i == -1) {
		printf("Write appending.bin is failed !\n");
		fclose(fp_d);
		return ;
	}
	fclose(fp_d);
	printf("\nbuild is success ! wirte %d byte!\n", i);
}

int main()
{
	appending("boot/setup.bin", "appending.bin");
}
