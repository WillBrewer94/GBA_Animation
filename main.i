# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 22 "main.c"
void setPixel(int, int, unsigned short);
void delay();
void drawFrame1();
void drawFrame2();
void drawFrame3();
void drawFrame4();
void drawFrame5();
void drawFrame6();
void drawBackground();
void drawStoplight(int, int, int, unsigned short);
void drawRectangle();


int main() {
    *(unsigned short *)0x4000000 = 1027;

    drawBackground();

    drawRectangle();

    delay();

    while(1) {
     drawFrame1();
     delay();
     drawFrame2();
     delay();
     drawFrame3();
     delay();
     drawFrame4();
     delay();
     drawFrame5();
     delay();
     drawFrame6();
     delay();
    }
}

void drawBackground() {
 for(int x = 0; x < 240; x++) {
  for(int y = 0; y < 160; y++) {
   setPixel(y, x, ((31) | (31)<<5 | (31)<<10));
  }
 }
}

void drawRectangle() {
 int width = 50;
 int height = 130;
 int x = 90;
 int y = 15;

 for(int i = 0; i < width; i++) {
  for(int j = 0; j < height; j++) {
   setPixel(y + j, x + i, ((10) | (10)<<5 | (10)<<10));
  }
 }
}

void drawFrame1() {
 int originX = 115;
 int originY = 35;

 drawStoplight(originX, originY, 10, ((31) | (0)<<5 | (0)<<10));
}

void drawFrame2() {
 int originX = 115;
 int originY = 35;

 drawStoplight(originX, originY, 10, 0);
}

void drawFrame3() {
 int originX = 115;
 int originY = 80;

 drawStoplight(originX, originY, 10, ((31) | (31)<<5 | (0)<<10));
}

void drawFrame4() {
 int originX = 115;
 int originY = 80;

 drawStoplight(originX, originY, 10, 0);
}

void drawFrame5() {
 int originX = 115;
 int originY = 125;

 drawStoplight(originX, originY, 10, ((0) | (31)<<5 | (0)<<10));
}

void drawFrame6() {
 int originX = 115;
 int originY = 125;

 drawStoplight(originX, originY, 10, 0);

}

void delay() {
 int i;
 volatile int b;

 for(int i=0; i < 80000; i++) {
  b++;
 }
}

void drawStoplight(int originX, int originY, int radius, unsigned short color) {
 for(int y =- radius; y <= radius; y++) {
  for(int x =- radius; x <= radius; x++) {
   if(x * x + y * y <= radius * radius) {
    setPixel(originY + x, originX + y, color);
   }
  }
 }

}

void setPixel(int row, int col, unsigned short color) {
    ((unsigned short *)0x6000000)[((row)*240 +(col))] = color;
}
