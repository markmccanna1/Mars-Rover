Mars-Rover
==========

A squad of robotic rovers is to be landed by NASA on a plateau on Mars. The rovers must navigate this plateau, which is curiously rectangular, so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.
A rover's position and location is represented by a combination of x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.
In order to control a rover, NASA sends a simple string of letters. The possible letters are 'L', 'R' and 'M'. 'L' and 'R' makes the rover spin 90 degrees left or right respectively, without moving from its current spot. 'M' means move forward one grid point, and maintain the same heading.
Assume that the square directly North from (x, y) is (x, y+1).

INPUT:
The first line of input contains the upper-right coordinates of the plateau, the lower-left coordinates are assumed to be 0,0.
The rest of the input is information pertaining to the rovers that have been deployed. Each rover has two lines of input. The first line gives the rover's position, and the second line is a series of instructions telling the rover how to explore the plateau.
The position is made up of two integers and a letter separated by spaces, corresponding to the x and y co-ordinates and the rover's orientation.
Each rover will be finished sequentially, which means that the second rover won't start to move until the first one has finished moving.

OUTPUT
The output for each rover should be its final co-ordinates and heading.

INPUT AND OUTPUT
Test Input:
55
12N LMLMLMLMM 33E MMRMMRMRRM

Expected Output:
13N
51E

Running the Program
==========

You can run the program via the command line using the command "ruby main.rb." Make sure that you are in the lib directory, as opposed to the top level.

If you want to run the tests you need to have rspec installed on your machine. You can run all the tests with the "rspec" command in the mars directory, or you can run a single file's test with the command "rspec spec/file_name.rb", again in the mars directory.

Design Choices
==========

The classes that make the backbone of the program are Rover, Position, Direction, and Grid. 

Rovers are composed of two other objects a position object to keep track of their current position, and a direction object that keeps track of the direction they're facing. 

The Grid object keeps track of the size of the plateau and also holds all the directions the rover can travel in.

The benefits of creating a direction object is that the rover can move in the traditional 4 directions (north, south, etc), but can also move in any direction a programmer wants, like southwest. The direction object also knows the x and y incrementers the rover should move in. The incrementers can have any value, which means the rover can travel in any direction to any degree. The incrementers mean that the directions don't just have a name, they have a mathematical idea of the way they point. 

I have a Line Parser module that has the methods necessary to take a line from the input and make it usable for the the object factories. 

Steps for Improvement
==========

Logical features that can improve the program: 

Currently the rovers lack the human drive for self preservation and are not afraid to go cliff diving. To fix this the rover could message the grid to see whether there is an open area in front of them they can move to, if not they don't move.

The rovers are also currently very good at the game of chicken, they don't care whether they hit each other by moving towards an occupied coordinate. The way the code is structured now, the second rover isn't instantiated until the first rover stops exploring. It would be helpful if both rovers were created at the same time, and they didn't run into each other. The solution to this would be similar to the one mentioned above, the rovers could message the grid to see if another rover is occupying the space in front of them, and move forward only if the space is empty. 


