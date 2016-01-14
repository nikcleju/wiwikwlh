<!--
<p class="center logo">
<h1>Information Theory 2015-2016</h1> ![](img/title.png)
</p>
-->


Information Theory 2015-2016
======

Nicolae Cleju, <!--(<a class="author" href="https://twitter.com/smdiehl">@smdiehl</a> )-->

Faculty of Electronics, Telecommunications and Information Technology,

The "Gheorghe Asachi" Technical University of Iasi.

This page contains all the materials and information for the course of Information
Theory taking place during second semester 2015-2016.

Feel free to contact me for any questions, problems or comments regarding this material
or anything else discussed in class.


Introduction
======

The teaching activities are performed by:

* Lectures: Nicolae Cleju (nikcleju@etti.tuiasi.ro)
* Laboratory: Daniel Matasaru (dmatasaru@etti.tuiasi.ro)

Office hours: TBD

The final grade for the class is computed as follows:

    final grade = 0.75 exam grade + 0.25 lab grade

The teaching activities consist of:

* 14 weeks of lectures (3h each)
* 14 weeks of laboratories (2h each)
    * 5 laboratories
    * 7 seminars
    * 1 *recuperari*
    * 1 test 


Course structure
======
1. Pam
2. Pam

Bibliography
======

1. Pam Pam
1. HamHam
1. Yoyo

<!-- <div class="slides"> -->

<!-- useful latex macros -->
\newcommand{\sourcen2}[5]{#1: \left( \begin{matrix} {#2} & {#4} \\ #3 & #5 \end{matrix} \right)}
\newcommand{\source2}[3] {#1: \left( \begin{matrix} s_1 & s_2 \\ #2 & #3 \end{matrix} \right)}
\newcommand{\source3}[4] {#1: \left( \begin{matrix} s_1 & s_2 & s_3 \\ #2 & #3 & #4 \end{matrix} \right)}
\newcommand{\source6}[7] {#1: \left( \begin{matrix} s_1 & s_2 & s_3 & s_4 & s_5 & s_6 \\ #2 & #3 & #4 & #5 & #6 & #7\end{matrix} \right)}
\newcommand{\frac12}{\frac{1}{2}}
\newcommand{\frac13}{\frac{1}{3}}
\newcommand{\frac14}{\frac{1}{4}}
\newcommand{\frac15}{\frac{1}{5}}
\newcommand{\frac16}{\frac{1}{6}}
\newcommand{\frac17}{\frac{1}{7}}
\newcommand{\frac18}{\frac{1}{8}}


Slides
======

Introduction
------

### Organization
Professors:

* Lectures: Nicolae Cleju (nikcleju@etti.tuiasi.ro)
* Laboratories: Daniel Matasaru (..@etti.tuiasi.ro)

### Grades
Final grade = 0.75 Exam + 0.25 Lab

### Time schedule
* 14 weeks of lectures (3h each)
* 14 weeks of laboratories (2h each)
    * 5 laboratories
    * 7 seminars
    * 1 recuperari
    * 1 test 


### Course structure
1. Introduction to probabilities
2. Pam


### Bibliography

1. Pam Pam
1. HamHam
1. Yoyo


Introduction to probabilities
-----

### Basic notions of probability
Random variable = the outcome of an experiment 

Distribution (probability mass function)

Discrete distribution

Alphabet

### Basic properties
Two independent events: $$P(A \cap B) = P(A) \cdot P(B)$$


Chapter I: Discrete information sources
-----



### Discrete memoryless source

Is a random variable that takes, succesively, different independent values according to a certain distribution:
$$\source3{S}{\frac12}{\frac14}{\frac14}$$

Properties:

* Discrete: it can take a value from a discrete set (alphabet)
* Complete: $\sum p(s_i) = 1$
* Memoryless: succesive values are independent of previous values (e.g. successive throws of a coin)

### Examples

A coin is a discrete memoryless source (DMS) with two possibilities (head, tail):
$$\source2{S}{\frac12}{\frac12}$$

A dice is a discrete memoryless source (DMS) with six possibilities:
$$\source6{S}{\frac16}{\frac16}{\frac16}{\frac16}{\frac16}{\frac16}$$

Winning the lottery can be modeled as DMS:
$$\source2{S}{0.9999}{0.0001}$$

### Terminology
The different choices are called *messages*.

When an event takes place (e.g. throwing a coin/dice), it is said that
the *DMS provides a message*.

### Information 
When a DMS provides a new message, it gives out some new information, i.e. the
information that a particular message took place.

The information attached to a particular event (message) is rigorously defined as:
$$i(s_i) = -log(p(s_i))$$

<!-- </div> -->

