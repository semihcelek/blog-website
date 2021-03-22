---
title: "STEM Activity Vex"
date: 2021-01-10T14:00:41+03:00
author: Semih Celek
# tags: ["Vex", "STEM", "Activity", "Report", "Learning", "Virtual", "CET"]
hero_image: "/content/images/vincent-burkhead-LhlxYMfnTF0-unsplash.jpg"
---

STEM activity for high school students to extend their experience of learning.

In this Vex.Vr project, robot is using robot is using its color sensor to navigate around the map, and indentify the colors here is the example video. Enjoy.


```python
from vexcode import *

MAXDISTANCE= 1500

def checkForColor():
    if down_eye.detect(GREEN):
        drivetrain.stop()
        brain.print("I am sensing Green")
        pen.set_pen_color(GREEN)
        drivetrain.turn_for(RIGHT,90,DEGREES)
        drivetrain.drive(FORWARD)
    elif down_eye.detect(BLUE):
        drivetrain.stop()
        brain.print("I am sensing Blue")
        pen.set_pen_color(BLUE)
        drivetrain.turn_for(LEFT,90,DEGREES)
        drivetrain.drive(FORWARD)
    elif down_eye.detect(RED):
        drivetrain.stop()
        brain.print("I am sensing Red")
        pen.set_pen_color(RED)
        drivetrain.turn_for(RIGHT,90,DEGREES)
        drivetrain.drive(FORWARD)
    else:
        return True;



# Add project code in "main"
def main():
    drivetrain.set_drive_velocity(50,PERCENT)
    while True:
        checkForColor()
        wait(1,MSEC)
        drivetrain.drive(FORWARD)


# VR threads — Do not delete
vr_thread(main())

```
