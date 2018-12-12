# RubiksCube

A library in processing that allows you to mess with a Rubik's cube in code.

#Use

To make a cube:
```java
Cube rcube = new Cube();
```
Draw with: `rcube.drawCube()`

# Current Features

You can enter a series of moves as an array or a string:
```java
rcube.makeMove("R U R' U'");
rcube.makeMove({"R", "U", "R'", "U'"});
```
You can make a specific move:
```java
//rcube.<face you want to move>();
//move U face:
rcube.u();
```
