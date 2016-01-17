
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
$$\sIII{S}{\fIoII}{\fIoIV}{\fIoIV}$$

Properties:

* Discrete: it can take a value from a discrete set (alphabet)
* Complete: $\sum p(s_i) = 1$
* Memoryless: succesive values are independent of previous values (e.g. successive throws of a coin)

### Examples

A coin is a discrete memoryless source (DMS) with two possibilities (head, tail):
$$\sII{S}{\fIoII}{\fIoII}$$

A dice is a discrete memoryless source (DMS) with six possibilities:
$$\sVI{S}{\fIoVI}{\fIoVI}{\fIoVI}{\fIoVI}{\fIoVI}{\fIoVI}$$

Winning the lottery can be modeled as DMS:
$$\sII{S}{0.9999}{0.0001}$$

### Terminology
The different choices are called *messages*.

When an event takes place (e.g. throwing a coin/dice), it is said that
the *DMS provides a message*.

### Information 
When a DMS provides a new message, it gives out some new information, i.e. the
information that a particular message took place.

The information attached to a particular event (message) is rigorously defined as:
$$i(s_i) = -log(p(s_i))$$


... 

### Example - Game
Game: I think of a number between 1 and 8. You have to guess it by asking
yes/no questions.

* How much indetermination does the problem have?
* How is the best way to ask questions? Why?
* What if the questions are not asked in the best way?
* On average, what is the number of questions required to find the number?

### Example - Game v2
Suppose I choose a number according to the following distribution: ...

* On average, what is the number of questions required to find the number?

* What distribution makes guessing the number the most difficult?
* What distribution makes guessing the number the easiest?

### Entropy of a discrete memoryless source

### Properties of entropy

1. It 

2. is 

3. cool


### Sources with memory

A text can be considered as a sequence of symbols drawn from a memoryless source.

The distribution (frequencies) of letters in the Romanian language is close to:


