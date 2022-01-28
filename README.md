# Cordata-Exercise
First exercises on Cython for Chordata Motion

In this README I try to explain what have I done in both parts of the exercises.

**-FIRST EXERCISE:** In this first part, i modified _quaternion.h_, _quaternion.pyx_ and _setup.py_. Declared a new variable called Quaternion that had a pointer where which we could get several new variables inside and show their value throw terminal. 

Did this on two ways. First one, a simple one, just calling every @property and returning its self value. Second one, creating a vector containing all the variables and showing it later on.

**-Second EXERCISE:** In this second part, i modified _quaternion.h_, _quaternion.pyx_ and defined a new struct and a new method that allowed to calculate the dot product between two defined quaternions.