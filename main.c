#define REG_DISPCTL *(unsigned short *)0x4000000
#define VIDEO_BUFFER ((unsigned short *)0x6000000)

/* Create a color with the specified RGB values */
#define COLOR(r, g, b) ((r) | (g)<<5 | (b)<<10)

/* Calculate the position of a pixel based on it's row and column */
#define OFFSET(R,C,ROWLEN) ((R)*ROWLEN+(C))

//Predefined colors
#define RED COLOR(31, 0, 0)
#define GREEN COLOR(0, 31, 0)
#define BLUE COLOR(0, 0, 31)
#define MAGENTA COLOR(31, 0, 31)
#define CYAN COLOR(0, 31, 31)
#define YELLOW COLOR(31, 31, 0)
#define BLACK 0
#define WHITE COLOR(31, 31, 31)
#define GREY COLOR(10, 10, 10)

//Prototypes
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
    REG_DISPCTL = 1027;

    drawBackground();
    //delay();
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
			setPixel(y, x, WHITE);
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
			setPixel(y + j, x + i, GREY);
		}
	}
}

void drawFrame1() {
	int originX = 115;
	int originY = 35;

	drawStoplight(originX, originY, 10, RED);
}

void drawFrame2() {
	int originX = 115;
	int originY = 35;

	drawStoplight(originX, originY, 10, BLACK);
}

void drawFrame3() {
	int originX = 115;
	int originY = 80;

	drawStoplight(originX, originY, 10, YELLOW);
}

void drawFrame4() {
	int originX = 115;
	int originY = 80;

	drawStoplight(originX, originY, 10, BLACK);
}

void drawFrame5() {
	int originX = 115;
	int originY = 125;

	drawStoplight(originX, originY, 10, GREEN);
}

void drawFrame6() {
	int originX = 115;
	int originY = 125;

	drawStoplight(originX, originY, 10, BLACK);

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
    VIDEO_BUFFER[OFFSET(row,col,240)] = color;
}