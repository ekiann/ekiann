#include <stdlib.h>
#include <stdio.h>
#include <inttypes.h>

extern int16_t va, vb, vc;
extern int32_t res, divd, divr;
extern void CMAIN(void);
extern void SIGN(void);
void main(){
    printf("a: ");
    scanf("%hd", &va);
    printf("b: ");
    scanf("%hd", &vb);
    printf("c: ");
    scanf("%hd", &vc);
    SIGN();
    printf("%hhd\n", divd);
    printf("%hhd\n", divr);
    printf("%hd\n", res);
    printf("%hhd %hhd %hhd\n", (53+vc*2-1), vb-va+4,(int8_t)(53+vc*2-1)/(int8_t)(vb-va+4));
    printf("a: ");
    scanf("%hu", &va);
    printf("b: ");
    scanf("%hu", &vb);
    printf("c: ");
    scanf("%hu", &vc);
    CMAIN();
    printf("%hu\n", divd);
    printf("%hu\n", divr);
    printf("%hu\n", res);
    printf("%hu %hu %hu\n", (53+vc*2-1), vb-va+4, (53+vc*2-1)/(vb-va+4));
    return;
}