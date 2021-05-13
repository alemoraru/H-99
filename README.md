# H-99: Ninety-Nine Haskell Problems

This repository contains my solutions to the problems that can be found [here](https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems).<br>
For most of the exercises I tried multiple solutions, either via list comprehensions, recursion, high-order functions or pattern matching where possible.

### **The problems**

* Questions 1 to 10: [Lists](Solutions/Q01-10/lists.md)
* Questions 11 to 20: [Lists, continued](Solutions/Q11-20/lists-continued.md)
* Questions 21 to 28: [Lists again](Solutions/Q21-28/lists-again.md)
* Questions 31 to 41: [Arithmetic](Solutions/Q31-41/arithmetic.md)
* Questions 46 to 50: [Logic and codes]() - **WIP**
* Questions 54A to 60: [Binary trees]() - **WIP**
* Questions 61 to 69: [Binary trees, continued]() - **WIP**
* Questions 70B to 73: [Multiway trees]() - **WIP**
* Questions 80 to 89: [Graphs]() - **WIP**
* Questions 90 to 94: [Miscellaneous problems]() - **WIP**
* Questions 95 to 99: [Miscellaneous problems, continued]() - **WIP**

### **How to navigate?**

1. To find individual solutions and alternatives, navigate the above markdown tree structure. <br>
2. Make sure you have `stack` installed on your machine
3. To run the solutions locally and also test some of them, use the following commands in your terminal:

```
stack build
```

This will run the tests in the `test` folder:
```
stack test
```


**Notes**: 
* While I did check my solutions locally, I did not make use of property based testing (**yet**) such as QuickCheck so it is entirely possible that I made some mistakes somewhere. In case you find such errors, please create an issue and do let me know of them, thanks!
* This repository is currently a work in progress, therefore not all exercises have solutions!
