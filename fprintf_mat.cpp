#include <cstdio>
#include <cstdlib>

int main()
{
	FILE * fp;
	const int n = 100, niter = 1000;
	float x[n][n];
	fp = fopen("temp_fprintf.txt", "w+");	
	for (int i=0;i<n;i++) {
		for (int j=0;j<n;j++) {
			x[i][j] = float(i+j+2);
		}
	}
	for (int iter=0; iter < niter; iter++) {
		for (int i=0;i<n;i++) {
			for (int j=0;j<n;j++) {
				fprintf(fp," %f",x[i][j]);
			}
			fprintf(fp,"\n");
		}
	}
	return 0;
}
