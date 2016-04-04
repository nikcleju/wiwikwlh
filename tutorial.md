<!--
<p class="center logo">
<h1>Information Theory 2015-2016</h1> ![](img/title.png)
</p>
-->


Information Theory 2015-2016
======

Nicolae Cleju <!--(<a class="author" href="https://twitter.com/smdiehl">@smdiehl</a> )-->

Faculty of Electronics, Telecommunications and Information Technology,

The "Gheorghe Asachi" Technical University of Iasi.

This page contains all the materials and information for the course of Information
Theory taking place during second semester 2015-2016.

Feel free to contact me for any questions, problems or comments regarding this material
or anything else discussed in class.

The template of this webpage is by [Stephen Diehl](http://dev.stephendiehl.com/hask/).


Introduction
======

The teaching activities are performed by:

* Lectures: Nicolae Cleju
* Laboratory: Daniel Matasaru

Office hours: TBD

The final grade for the class is computed as follows:

    final grade = 0.75 exam grade + 0.25 lab grade

The teaching activities consist of:

* 14 weeks of lectures (3h each)
* 14 weeks of laboratories (2h each)

Course structure
======
1. Chapter I:   Discrete Information Sources
2. Chapter II:  Discrete Transmission Channels
3. Chapter III: Source Coding
4. Chapter IV:  Channel Coding 

Bibliography
======

1. ***Elements of Information Theory*, Valeriu Munteanu, Daniela Tarniceriu, Ed. CERMI 2007**
1. *Elements of Information Theory*, Thomas M. Cover, Joy A. Thomas, 2nd Edition, Wiley 2006
1. *Information and Coding Theory*, Gareth A. Jones, J. Mary Jones, Springer 2000
1. *Transmisia si codarea informatiei*, lectures at ETTI (Romanian)

# Slides download [pdf]
Download [here](slides.pdf)

# Laboratory
1. Linear Filters ([pdf](labs/L01_IT_LinearFilters.pdf))
2. Pseudo-random Binary Sequences Generator ([pdf](labs/L02_IT_PseudorandomBinarySequenceGenerator.pdf))
3. Variable Entropy Generator ([pdf](labs/L03_IT_VariableEntropyGenerator.pdf))

# Exam preparation

The exam will consist of 4 subjects: 2 practical exercises and 2 theoretical subjects.

In week 8 there will be an optional partial exam (attendance is optional), from the first two chapters only: 

1. Chapter I: Discrete information sources 
2. Chapter II: Discrete Transmission Channels

Those who pass the partial exam, will have a final exam only from the final two chapters (III and IV).
 Possibly shorter (3 problems only? not sure).
 
Those who do not attend or do not pass the partial exam, will take a full exam at the end, as usual.

Practical exercises: will be similar to the problems solved at the seminars and the examples given 
during the lectures.

Theoretical subjects: the following list shows what you should read & know.
*Note*: the subjects will not necessary be identical to one of the items below, there may be
combinations of them, rephrased differently etc. This is an indication of what you should know, 
not a final list of subjects.

* Chapter I: Discrete Information Sources
    * What is a discrete complete memoryless source, what does every term mean (discrete, complete, memoryless)
    * Information of an event: definition, properties (with proofs)
	* Definition of entropy for a memoryless source, choosing logarithm base, examples
	* Interpretation of entropy
	* Properties of entropy, with proofs (3 properties: non-negative, maximum, diversification)
	* Plot of the entropy of a binary source, explain shape
	* Definition of information flow 
	* N-th order extension of a source, definition, example
	* Entropy of a N-th order extension, with proof
	* Sources with memory, definition, notations, example
	* Entropy in a single state
	* What is an ergodic source, what property do they have, example
	* Entropy of an ergodic source with memory: definition (the relation), explain terms

* Chapter II: Discrete Transmission Channels
	* What is a discrete memoryless stationary transmission channel, explain each term
	 (discrete / memoryless / stationary)
	* Definition of the joint probability matrix and the joint entropy, example
	* Definition of marginal distributions, how to compute
	* Definition of channel matrix, relation to joint probability matrix
	* Rigorous definition of a discrete memoryless transmission (what it is defined by)
	* Graph representation of a channel, example
	* Conditional entropy H(Y|X): definition, where to compute from
	* Definition of equivocation matrix, relation to joint probability matrix
	* Equivocation (conditional entropy H(Y|X)) : definition, where to compute from
	* Properties of conditional entropies, with proofs
	* Mutual information: definition, equation
	* Properties of mutual information (without proofs)
	* Relations between informational measures, graphical interpretation (two circles etc.)
	* Particular types of communication channels (zero equivocation, zero average error)
	* Definition of uniform with respect to input, uniform with respect to output, examples
	* Definition of symmetric channels, example
	* Channel capacity: definition (what it means), equation
	* (Note: preview of the channel coding theorem **not required**)
	* Efficiency and redundancy of a channel
	* Compute the capacity of binary symmetric channel
	* Compute the capacity of binary erasure channel
	* Compute the capacity of symmetric channel of N-th order
 
