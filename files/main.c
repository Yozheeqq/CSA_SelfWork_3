#include <stdio.h>

FILE *fin;
FILE *fout;
double eps = 0.0001;

extern void readCoords();

int main(int argc, char** argv) {
    if (argc != 3) {
        return 0;
    }
    fin = fopen(*(argv + 1), "r");
    fout = fopen(*(argv + 2), "w");
    if (!fin) {
        return 0;
    }
    readCoords();
    return 0;
}
