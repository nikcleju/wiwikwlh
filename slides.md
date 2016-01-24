
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

A discrete memoryless source (DMS) is an information source where the messages are **independent** , i.e. the choice of a message
at one time does not depend on what were the previous messages

Each message has a fixed probability. The set of probabilities is the *distribution* of the source.

$$\sIII{S}{\fIoII}{\fIoIV}{\fIoIV}$$

Properties:

* Discrete: it can take a value from a discrete set (alphabet)
* Complete: $\sum p(s_i) = 1$
* Memoryless: succesive values are independent of previous values (e.g. successive throws of a coin)

A message from a DMS is also called a *random variable* in probabilistics.


### Examples
A coin is a discrete memoryless source (DMS) with two messages:
$$\snII{S}{coin \_ head}{\fIoII}{coin \_ tail}{\fIoII}$$

A dice is a discrete memoryless source (DMS) with six messages:
$$\sVI{S}{\fIoVI}{\fIoVI}{\fIoVI}{\fIoVI}{\fIoVI}{\fIoVI}$$

Playing the lottery can be modeled as DMS:
$$\sII{S}{0.9999}{0.0001}$$

### Examples

An extreme type of DMS containing the certain event:
$$\sII{S}{1}{0}$$

Receiving an unknown *bit* (0 or 1) with equal probabilities:
$$\snII{S}{0}{\fIoII}{1}{\fIoII}$$

### Information 
When a DMS provides a new message, it gives out some new information, i.e. the
information that a particular message took place.

The information attached to a particular event (message) is rigorously defined as:
$$i(s_i) = -log_2(p(s_i))$$

Properties:

* $i(s_i) \geq 0$
* lower probability (rare events) means higher information
* higher probability (frequent events) means lower information
* a certain event brings no information: $-log(1) = 0$
* an event with probability 0 brings infinite information (but it never happens..)


### Entropy of a DMS

We usually don't care about a single message. We are interested in a large number of them
(think millions of bits of data).

We are interested in the *average* information of a message from a DMS.

Definition: the entropy of a DMS source $S$ is **the average information of a message**:
$$H(S) = \sum_{k} p_k i(s_k) = -\sum_{k} p_k log_2(p_k)$$
where $p_k = p(s_k)$  is the probability of message $k$.


### The choice of logarithm

Any base of logarithm can be used in the definition.

Usual convention: use binary logarithm $log_2()$. H(S) measured in *bits* (*bits / message*)

If using natural logarithm $ln()$, H(S) is measured in $nats$.

Logarithm bases can be converted to/from one another:
$$ log_b(x) = \frac{log_a(x)}{log_a(b)} $$

Entropies using different logarithms differ only in scaling:
$$ H_b(S) =\frac{H_a(S)}{log_a(b)}  $$


### Examples

* Coin: $H(S) = 1 bit/message$
* Dice: $H(S) = log(6) bits/message$
* Lottery: $H(S) = -0.9999 log(0.9999) - 0.0001 log(0.0001)$
* Receiving 1 bit: $H(S) = 1 bit/message$ (hence the name!)


### Interpretation of the entropy

All the following interpretations of entropy are true:

* H(S) is the *average uncertainty* of the source S

* H(S) is the *average information* of messages from source S

* A long sequence of $N$ messages from $S$ has total information $\approx N \cdot H(S)$

* H(S) is the minimum number of bits (0,1) required to uniquely represent an average message 
from source S


### Properties of entropy

We prove the following properties:

1. $H(S) \geq  0$ (non-negative)

2. $H(S)$ is maximum when all $n$ messages have equal probability $\frac{1}{n}$.
The maximum value is $max H(S) = log(n)$.

3. *Diversfication* of the source always increases the entropy


### Example - Game
Game: I think of a number between 1 and 8. You have to guess it by asking
yes/no questions.

* How much uncertainty does the problem have?
* How is the best way to ask questions? Why?
* What if the questions are not asked in the best way?
* On average, what is the number of questions required to find the number?

### Example - Game v2
Suppose I choose a number according to the following distribution:
$$\sIV{S}{\fIoII}{\fIoIV}{\fIoVIII}{\fIoVIII}$$

* On average, what is the number of questions required to find the number? 
* What questions would you ask?

What if the distribution is:
$$\sIV{S}{0.14}{0.29}{0.4}{0.17}$$

In general:

* What distribution makes guessing the number the most difficult?
* What distribution makes guessing the number the easiest?

### Information flow of a DMS

Suppose that message $s_i$ takes time $t_i$ to be transmitted via some channel.

Definition: the information flow of a DMS $S$ is **the average information transmitted
per unit of time**:
$$H_\tau(S) = \frac{H(S)}{\overline{t}}$$

where $\overline{t}$ is the average duration of transmitting a message:
$$H(S) = \sum_{i} p_i t_i $$

### Extended DMS

Definition: the $n$-th order extension of a DMS $S$, $S^n$ is the source with
messages has as messages all the combinations of $n$ messages of $S$:
$$\sigma_i = \underbrace{s_j s_k ... s_l}_{n}$$

* If $S$ has $k$ messages, $S^n$ has $k^n$ messages
* Since $S$ is DMS $$p(\sigma_i) = p(s_j) \cdot p(s_k) \cdot ... \cdot p(s_l)$$

### Extended DMS - Example

Examples:
$$\sII{S}{\fIoIV}{\frac{3}{4}}$$
$$\snIV{S^2}{\sigma_1 = s_1 s_1}{\frac{1}{16}}{\sigma_2 = s_1 s_2}{\frac{3}{16}}{\sigma_3 = s_2 s_1}{\frac{3}{16}}{\sigma_4 = s_2 s_2}{\frac{9}{16}}$$
$$S^3: \left( \begin{matrix} s_1 s_1 s_1 & s_1 s_1 s_2 & s_1 s_2 s_1 & s_1 s_2 s_2 & s_2 s_1 s_1 & s_2 s_1 s_2 & s_2 s_2 s_1 & s_2 s_2 s_2 \\ ... & ... & ... & ... & ... & ... & ... & ... \end{matrix} \right)$$


### Extended DMS - Another example
Long sequence of binary messages:
$$0 1 0 0 1 1 0 0 1 1 1  0 0 1 0 1 0 0 ...$$

Can be grouped in bits, half-bytes, bytes, 16-bit words, 32-bit long words, and so on.


### Property of DMS

We prove the following:

Theorem: The entropy of a $n$-th order extension is $n$ times larger than the entropy of the original DMS
$$H(S^n) = n H(S)$$

Interpretation: grouping messages from a long sequence in blocks of $n$ does not change total information
(e.g. groups of 8 bits = 1 byte)


## Sources with memory

A text can be considered as a sequence of symbols drawn from a memoryless source.

The distribution (frequencies) of letters in the Romanian language is close to:


