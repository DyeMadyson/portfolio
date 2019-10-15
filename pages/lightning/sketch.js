'use strict';

var size = 0;
var startTime;
var startX = 250;
var startY = 0;
var endX = 250;
var endY = 0;
var start = false;
var timer = 0;
var a = 0;
var pig;
var c;

function preload() {
    pig = loadImage("data/pepa.png");
    pig.resize(200, 200);
    c = loadImage("data/c.png");
    c.resize(100, 100);
}

function setup() {
    createCanvas(500, 500);
    //background(255, 255, 255);
    strokeWeight(5);


}

function draw() {
    background(255, 255, 255);

    fill(0, 0, 0, 25);
    rect(-5, -5, width + 10, height + 10);
    imageMode(CENTER);
    imageMode(CENTER);

    stroke(200, 0, 90);
    while (endY < height) {
        endY = startY + (Math.random() * 10);
        endX = startX + (Math.random() * 20) - 10;
        line(startX, startY, endX, endY);
        startX = endX;
        startY = endY;


        var time = millis() - startTime;
        if (time > 250) {
            startTime = millis();
            reset();
        }
    }
    image(pig, 250, 400);
    image(c, 250, 200);
    reset();


}



function reset() {
    startX = 250;
    startY = 0;
    endX = 250;
    endY = 0;
}
