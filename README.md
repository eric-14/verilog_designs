# The repository contains detailed projects of my journey as I master verilog and FPGA projects 



# Architecture 

The current projects are built on `iverilog` and `GTKWave`. 

To run the projects
1. Clone the repo 
    `git clone `

2. install iverilog
    `sudo apt update  && sudo apt upgrade && sudo apt install iverilog`
3. Install GTKWave 
    `sudo apt install GTKWave`
4. Move the correct folder .e.g. hello_word 
    Create .vvp file from .v file containing the verilog programs 
    ` iverilog -o hello_tb.vvp hello_tb.v`

5. Using vvp run the test file 
    `vvp hello_tb.vvp`

6. Load the generate .vcd file in GTKWave to visualize the results. 

    Example of expected hello world results: 
    ![hello world results](hello_world/startProject.png)

## Contributing.md 

Currently, I am the sole contributor as this is a personal learning journey. 


# License 

Project is licensed under MIT. 

Feel free to clone/fork and reuse the project as you see fit. 


## Happy hacking!
