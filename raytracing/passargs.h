#include "primitives.h"
#include "objects.h"
typedef struct {
	uint8_t *pixels;
	double* background;
	rectangular_node rectangulars;
	sphere_node spheres;
	light_node lights;
	const viewpoint *view;
	int end_w;
	int end_h;
	int start_w;
	int start_h;
	int width;
	int height;

}readThreadParams;
