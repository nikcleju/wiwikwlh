
# Slides

## Introduction

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



## Introduction to probabilities


### Basic notions of probability
Random variable = the outcome of an experiment 

Distribution (probability mass function)

Discrete distribution

Alphabet

### Basic properties
Two independent events: $$P(A \cap B) = P(A) \cdot P(B)$$


## Chapter I: Discrete information sources


### Block diagram of a communication system
 de pus poza


### What is information?

Example:

I tell you the following sentence: "your favorite football team lost the last match".

Does this message carry information? How, why, how much?

Consider the following facts:

* the message carries information only because you didn't already know the result.
* if you already known the result, the message is useless (brings no information)
* since you didn't know the result, there were multiple results possible (win, equal or lose)
* the actual information in the message is that *lost* happened, and not *win* or *equal*
* if the result was to be expected, there is little information. If the result
is highly unusual, there is more information in this message


### Information source

We will always consider information in a context similar to the above example.

We will use terminology from probability theory to define information:

* there is a *probabilistic source* that can produce a number of different *events*.
* each event has a certain probability. We know all the probabilities beforehand.
* at one time, an event is randomly selected according to its probability.
* afterwards, a new message can be selected, and so on ==> a stream of messages is produced.

The source is called an *information source* and the selected event is a *message*.

A message carries the information that **it** happened, and not the other possible message events that could have been selected.

The quantity of information is dependent in its probability.


### Discrete memoryless source

 = is an information source where the messages are **independent** , i.e. the choice of a message
at one time does not depend on what were the previous message

Each message has a fixed probability. The set of probabilities is the *distribution* of the source.

$$\sIII{S}{\fIoII}{\fIoIV}{\fIoIV}$$

Properties:

* Discrete: it can take a value from a discrete set (alphabet)
* Complete: $\sum p(s_i) = 1$
* Memoryless: succesive values are independent of previous values (e.g. successive throws of a coin)

A message from a DMS is also called a *random variable* in probabilistics.


### Examples

A coin is a discrete memoryless source (DMS) with two messages (head, tail):
$$\sII{S}{\fIoII}{\fIoII}$$

A dice is a discrete memoryless source (DMS) with six messages:
$$\sVI{S}{\fIoVI}{\fIoVI}{\fIoVI}{\fIoVI}{\fIoVI}{\fIoVI}$$

Playing the lottery can be modeled as DMS:
$$\sII{S}{0.9999}{0.0001}$$

An extreme type of DMS containing the certain event:
$$\sII{S}{1}{0}$$


### Information 
When a DMS provides a new message, it gives out some new information, i.e. the
information that a particular message took place.

The information attached to a particular event (message) is rigorously defined as:
$$i(s_i) = -log_2(p(s_i))$$

Properties:

* $i(s_i) \geq 0$
* lower probability means higher information
* higher probability means lower information
* a certain event brings no information: $-log(1) = 0$
* an event with probability 0 brings infinite information (but it never happens..)

### Entropy of a DMS

We usually don't care about a single message. We are interested in a large number of them
(think millions of bits of data).

We are interested in the *average* information of a message from a DMS.

Definition: the entropy of a DMS source $S$ is **the average information of a message**:
$$H(S) = \sum_{i} p_i i(s_i) = -\sum_{i} p_i log(p_i)$$
where $p_i = p(s_i)$  is the probability of message $i$.

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


