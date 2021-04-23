# TurtleSim maneuver

## Running the program

First source the setup using the following command (I use `zsh`, thus the file `setup.zsh`, choose your file accordingly)
```
source devel/setup.zsh
```

Then run the program using
```
rosrun maneuver maneuver
```

## Example trajectories

I have tried to make the program quite general. The only assumptions that I have made is that the moving turtle starts with *theta = 0*. Few of the test cases, as seen on my machine, are depicted below

![default_test_case](./test_img/test3.png)
*This was the default test case given in the problem set.*
<br></br>

![test_case2](./test_img/test2.png)

![test_case1](./test_img/test1.png)