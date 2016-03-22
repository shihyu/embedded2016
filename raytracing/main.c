#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
#include <immintrin.h>
#include <x86intrin.h>
#include "primitives.h"
#include "raytracing.h"

#include "passargs.h"
#define OUT_FILENAME "out.ppm"

#define ROWS 512
#define COLS 512

static void write_to_ppm(FILE *outfile, uint8_t *pixels,
                         int width, int height)
{
    fprintf(outfile, "P6\n%d %d\n%d\n", width, height, 255);
    fwrite(pixels, 1, height * width * 3, outfile);
}

static double diff_in_second(struct timespec t1, struct timespec t2)
{
    struct timespec diff;
    if (t2.tv_nsec-t1.tv_nsec < 0) {
        diff.tv_sec  = t2.tv_sec - t1.tv_sec - 1;
        diff.tv_nsec = t2.tv_nsec - t1.tv_nsec + 1000000000;
    } else {
        diff.tv_sec  = t2.tv_sec - t1.tv_sec;
        diff.tv_nsec = t2.tv_nsec - t1.tv_nsec;
    }
    return (diff.tv_sec + diff.tv_nsec / 1000000000.0);
}
/*struct readThreadParams {
	uint8_t *pixels;
	double* background;
	rectangular_node rectangulars;
	sphere_node spheres;
	light_node lights;
	const viewpoint *view;
	int width;
	int height;
	int start_w;
	int start_h;

};
*/
int main()
{
    uint8_t *pixels;
    light_node lights = NULL;
    rectangular_node rectangulars = NULL;
    sphere_node spheres = NULL;
    color background = { 0.0, 0.1, 0.1 };
    struct timespec start, end;

#include "use-models.h"

    /* allocate by the given resolution */
    pixels = malloc(sizeof(unsigned char) * ROWS * COLS * 3);
    if (!pixels) exit(-1);

    printf("# Rendering scene\n");
    /* do the ray tracing with the given geometry */
    clock_gettime(CLOCK_REALTIME, &start);
    int f = 64;
    //int r = ROWS/4, c = COLS/2;
    int i = 0;
    readThreadParams readParams[f];
    pthread_t  thread[f]; 
    for(i = 0;i < f; i++){
        
        readParams[i].pixels = pixels;
        readParams[i].background = background;
        readParams[i].rectangulars = rectangulars;
        readParams[i].spheres = spheres;
        readParams[i].lights = lights;
        readParams[i].view = &view;
        readParams[i].start_w = 0;
	readParams[i].end_w = ROWS;
        readParams[i].width = ROWS;
        readParams[i].start_h = i * COLS/f;
	readParams[i].end_h = (i+1) * COLS/f;
        readParams[i].height =  COLS;
        
        
        //int ret;
         pthread_create( &(thread[i]), NULL, &raytracing,& (readParams[i]) );
      
    } 
    for(int k = 0; k < f; k++){
	pthread_join( thread[k], NULL );
    }
   // raytracing(pixels, background,rectangulars, spheres, lights, &view, ROWS, COLS,0,0);
    clock_gettime(CLOCK_REALTIME, &end);
    {
        FILE *outfile = fopen(OUT_FILENAME, "wb");
        write_to_ppm(outfile, pixels, ROWS, COLS);
        fclose(outfile);
    }

    delete_rectangular_list(&rectangulars);
    delete_sphere_list(&spheres);
    delete_light_list(&lights);
    free(pixels);
    printf("Done!\n");
    printf("Execution time of raytracing() : %lf sec\n", diff_in_second(start, end));
    return 0;
}
