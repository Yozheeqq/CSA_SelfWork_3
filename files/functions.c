//
// Created by anvar on 18.11.2022.
//
#include <stdbool.h>
#include <math.h>
#include <stdio.h>

extern FILE *fin;
extern FILE *fout;
extern double eps;


double findLength(const double x1, const double y1,const double x2,const double y2) {
    return sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
}

bool check(const double x[4], const double y[4]) {
    double a = findLength(x[0], y[0], x[1], y[1]);
    double b = findLength(x[2], y[2], x[1], y[1]);
    double c = findLength(x[3], y[3], x[2], y[2]);
    double d = findLength(x[0], y[0], x[3], y[3]);
    double d1 = findLength(x[0], y[0], x[2], y[2]);
    double d2 = findLength(x[1], y[1], x[3], y[3]);
    double sidemult = a*c + b*d;
    double diagmult = d1 * d2;
    fprintf(fout, "%lf\n", a*c + b*d);
    fprintf(fout, "%lf\n", d1 * d2);
    return (sidemult - diagmult < eps && sidemult - diagmult > -eps);
}


void readCoords() {
    double x[4];
    double y[4];
    fscanf(fin, "%lf %lf", &x[0], &y[0]);
    fscanf(fin, "%lf %lf", &x[1], &y[1]);
    fscanf(fin, "%lf %lf", &x[2], &y[2]);
    fscanf(fin, "%lf %lf", &x[3], &y[3]);
    if(check(x, y)) {
        fprintf(fout, "%s", "YES");
    } else {
        fprintf(fout, "%s", "NO");
    }
}