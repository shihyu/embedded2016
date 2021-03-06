#ifndef __RAY_MATH_TOOLKIT_H
#define __RAY_MATH_TOOLKIT_H

#include <math.h>
#include <stdio.h>
#include <assert.h>
#include <immintrin.h>

static inline
void normalize(double *v)
{
    double d = sqrt(v[0] * v[0] + v[1] * v[1] + v[2] * v[2]);
    assert(d != 0.0 && "Error calculating normal");

    v[0] /= d;
    v[1] /= d;
    v[2] /= d;
}

static inline
double length(const double *v)
{
    return sqrt(v[0] * v[0] + v[1] * v[1] + v[2] * v[2]);
}

static inline
void add_vector(const double *a, const double *b, double *out)
{
    for (int i = 0; i < 3; i++)
        out[i] = a[i] + b[i];
}

static inline
void subtract_vector(const double *a, const double *b, double *out)
{
//    for (int i = 0; i < 3; i++)
//        out[i] = a[i] - b[i];
	out[0] = a[0] - b[0];
	out[1] = a[1] - b[1];
	out[2] = a[2] - b[2];
}

static inline
void multiply_vectors(const double *a, const double *b, double *out)
{
    for (int i = 0; i < 3; i++)
        out[i] = a[i] * b[i];
}

static inline
void multiply_vector(const double *a, double b, double *out)
{
    for (int i = 0; i < 3; i++)
        out[i] = a[i] * b;
}

static inline
void cross_product(const double *v1, const double *v2, double *out)
{
    out[0] = v1[1] * v2[2] - v1[2] * v2[1];
    out[1] = v1[2] * v2[0] - v1[0] * v2[2];
    out[2] = v1[0] * v2[1] - v1[1] * v2[0];
}

//__attribute__((always_inline))
static inline
double dot_product(const double *v1, const double *v2)
{
   double dp = 0.0;
   
    /*register __m256d ymm0, ymm1, t1;
    ymm0 = _mm256_set_pd(v1[0], v1[1], v1[2], 0.0d);
    ymm1 = _mm256_set_pd(v2[0], v2[1], v2[2], 0.0d);
    t1 = _mm256_mul_pd(ymm0, ymm1);
    double tmp[4] __attribute__((aligned(32)));
    _mm256_store_pd(tmp, t1);
    dp = tmp[3] + tmp[1] + tmp[2];
   */
   /*
    register __m256d mul , sum ;
    mul = _mm256_mul_pd ( ymm0 , ymm1 );
    sum = _mm256_hadd_pd (mul  ,_mm256_permute2f128_pd(mul, mul, 1));
    sum = _mm256_hadd_pd (sum, sum);
   
    _mm256_store_pd(tmp, sum);
    */


    dp = v1[0] * v2[0] + v1[1] * v2[1] + v1[2] * v2[2];
    return dp;
}

static inline
void scalar_triple_product(const double *u, const double *v, const double *w,
                           double *out)
{
    cross_product(v, w, out);
    multiply_vectors(u, out, out);
}

static inline
double scalar_triple(const double *u, const double *v, const double *w)
{
    double tmp[3];
    cross_product(w, u, tmp);
    return dot_product(v, tmp);
}

#endif
