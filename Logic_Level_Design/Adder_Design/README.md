<h1>Adder Documentation</h1>
<h2>Overview</h2>
As a subdivision of logic level architecture, the adder is a component responsible for adding binary numbers. When adding binary numbers, we use logic gates to send an on (1) signal and an off (0) signal to compute a number's sum. Traditionally, a combination of AND, XOR, and OR gates is used to make half and full adders. The half adder (Shown in Figure 1) has two input's which are the LSB (Least significant bit) of each binary number in question, and two outputs (one for the sum value and one for the carryout). 

![image](https://github.com/user-attachments/assets/b23b25db-c04e-4371-a168-6c1a434caf1b)
Figure 1

The full adder (Shown in Figure 2) has three inputs: two for the next significant bits in the sequence of each binary number, and an input for the carryout value of the previous adder. 

![image](https://github.com/user-attachments/assets/1bc910b8-36f4-4a64-aba3-e440c2676292)
Figure 2

If we use these in a line, then we can make an adder that adds numbers up to whatever size we would like. However, the problem with this is that it would take a long time to add larger numbers since the calculations for the MSB (Most significant bit) depend on the carryout values for all of the bits before that, leading to a bottleneck in speed. So, the main focus of this section of logic level design is to make an adder that fits the speed needs for the 128-bit processor.

<h2>Design Decisions/ Trade-offs</h2>

To combat the slow speeds of basic adders, parallel adders were made to add all of the carry-out values at the same time, thus increasing the overall time it takes to sum two numbers together. After some research, we came to a final list of adders 
1. Kogge-Stone 
2. Brent-Kung 
3. Lander-Fischer 
4. Carry Skip Adder
5. Carry Save Adder
6. Carry Select Adder
Each adder is a part of the parallel adder family, but each has its drawbacks. The final decision was built around using either the Kogge-Stone or the Brent-Kung adders. The Kogge-Stone adder, invented by Peter M. Kogge and Harold S. Stone, is the fastest type of adder; designed to compute all carry bits simultaneously using a prefix computation tree, enabling it to compute in logarithmic time. Each bit generates an initial position g (Generate) and p (Propagate) signals. They are paired in a binary tree, eventually making larger groups and producing a carry-in for each bit position (as shown in Figure 3). The main drawback of this adder is the space required to fit all of the half adders. As the adder itself is scaled to compute larger numbers, the area of the tree increases more rapidly than most adders. 
 
![image](https://github.com/user-attachments/assets/f7f1d25c-0a52-4968-93ee-a069d84ea44d)
Figure 3

Like the Kogge-Stone Adder, the Brent-Kung Adder (Shown in Figure 4) uses a tree-based structure to compute carry signals in a logarithmic number of stages. It reduces the number of logic operations by using fewer prefix operations. Brent-Kung works by calculating the prefixes for 2-bit groups, these prefixes are then used to find the prefixes for a 4-bit group, then an 8-bit group, and so on.

![image](https://github.com/user-attachments/assets/4576e97e-78a9-45d6-8648-34dec6e80a18)
Figure 4

Ultimately, we chose to use the Kogge-Stone adder since we figured that the area constraint would not be an issue for the FPGAs that we are using. We were able to design a Kogge-Stone adder by connecting half adder blocks into a tree configuration. The example below shows our design of a 4-bit Kogge-Stone adder.

<Inert picture here sometime future me> 

From here, we can scale this design to a full 128-bit adder that will be used in the final design of the CPU

<h2>Results from the TestBench</h2>


