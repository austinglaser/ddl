#include <string.h>
#include <stdint.h>
#include <stdio.h>

void decimal_to_morse(uint8_t dec, uint8_t morse_out[])
{
  uint8_t morse_lookup[10][5] = {
                                 {1, 1, 1, 1, 1},  //0
                                 {0, 1, 1, 1, 1},  //1
                                 {0, 0, 1, 1, 1},  //2
                                 {0, 0, 0, 1, 1},  //3
                                 {0, 0, 0, 0, 1},  //4
                                 {0, 0, 0, 0, 0},  //5
                                 {1, 0, 0, 0, 0},  //6
                                 {1, 1, 0, 0, 0},  //7
                                 {1, 1, 1, 0, 0},  //8
                                 {1, 1, 1, 1, 0}   //9
                                };

  memcpy(morse_out, morse_lookup[dec], 5);
}

int main(void)
{
  uint8_t morse_out[5];
  int32_t i, j;

  for (i = 0; i <= 9; i++) {
    decimal_to_morse(i, morse_out);

    printf("%d -> ", i);
    for (j = 0; j < 5; j++) printf("%d ", morse_out[j]);
    printf("\n");
  }

  return 0;
}

