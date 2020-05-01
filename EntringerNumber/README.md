# Entringer  Number
The Entringer Number E(n, k) are the number of permutations of {1, 2, …, n + 1}, starting with k + 1, which, after initially falling, alternatively fall then rise. 

For example, for n = 4 and k = 2, E(4, 2) is 4.
They are:
3 2 4 1 5
3 2 5 1 4
3 1 4 2 5
3 1 5 2 4

Examples :

Input : n = 4, k = 2
Output : 4

Input : n = 4, k = 3
Output : 5

# FSMD
Basic Finite State Machine with Datapath (FSMD) example to find the number of permutations of {1, 2, …, n + 1}, starting with k + 1, which, after initially falling, alternatively fall then rise. n,k are up to 14.
## Install

These examples use [ModelSim&reg; and Quartus&reg; Prime from Intel FPGA](http://fpgasoftware.intel.com/?edition=lite), [GIT](https://git-scm.com/download/win), [Visual Studio Code](https://code.visualstudio.com/download), make sure they are installed locally on your computer before proceeding.

## Usage

1. Grab a copy of this repository to your computer's local folder (i.e. C:\projects):

    ```sh
    $ cd projects
    $ git clone https://github.com/Salem22/EntringerNumber.git
    ```
2. Use Visual Studio Code (VSC) to edit and view the design files:

    ```sh
    $ cd EntringerNumber
    $ code .
    ```
    Click on the toplevel.vhd file in the left pane to view its contents.
    
3. From the VSC View menu, choose Terminal, in the VCS Terminal, create a "work" library:

    ```sh
    $ vlib work
    ```
    
4. Compile all the design units:

    ```sh
    $ vcom *.vhd
    ```
    
5. Simulate your design. For example, if n = 4, k = 3 then y = 5:

    ```sh
    $ vsim work.tb
    ```
