## Chapter IV: Error control coding

### What is error control coding?

![Communication system](img/CommBlockDiagram.png){width=40%}

* The second main task of coding: error control 
* Protect information against channel errors

### Mutual information and error control

* Mutual information I(X,Y) = the information transmitted on the channel
* Why do we still need error control?

Example: consider the following BSC channel (p = 0.01, $p(x_1) = 0.5$, $p(x_2)=0.5$):

![Binary symmetric channel (BSC) ](img/BSC.png){width=25%}

* The receiver would like to know the source messages 
    * In absence of communication, the uncertainty is $H(X) = 1$ bit/msg
    * With communication, the uncertainty is $H(X|Y) \approx 0.081$ bit/msg
* The reduction in  uncertainty due to communication = mutual information
    * $I(X,Y) = H(X) - H(X|Y) = \approx 0.919$ bit/msg
    
* Even though we have large I(X,Y), about $1%$ of all bits are erroneuos
    * Imagine downloading a file, but having $1% wrong bits$
    
###  Why is error control needed?

* In most communications it is required that *all* bits are received correctly
    * Not $1%$ errors, not $0.1%$, not $0.0001%$. **None!**

* But that is not possible unless the channel is ideal.

* So what do to? Error control coding

### Modelling the errors on the channel

* We consider only binary channels (symbols = $\left\lbrace 0,1 \right\rbrace$
* An error = a bit is changed from 0 to 1 or viceversa
* Errors can appear:
    * **independently**: each bit on its own
    * in **packets of errors**: groups of errors 

### Modelling the errors on the channel

* Changing the value of a bit = modulo-2 sum with 1
* Value of a bit remains the same = modulo-2 sum with 0
    
![Channel error model](img/ChannelErrorModel.png){width=25%}

* Channel model we use (simple):
    * The transmitted sequence is summed modulo-2 with an **error sequence**
    * Where the error sequence is 1, there is a bit error
    * Where the error sequence is 0, there is no error
    
### Error detection and error correction

* For binary channels, know the location of error => fix error by inverting bit
* Locating error location = error correction

Two possibilities in practice:
* **Error detection**: find out if there is any error in the received sequence
    * don't know exactly where, so cannot correct the bits, but can discard whole sequence
    * perhaps ask the sender to retransmit (examples: TCP/IP, internet communication etc)
    * easier to do
* **Error correction**: find out exactly which bits have errors, if any
    * can correct all errored bits by inverting them
    * useful when can't retransmit (data is stored: on HDD, AudioCD etc.)
    * harder to do than mere detection
    
### What is error control coding?

The process of error control:

1. Want to send a sequence of $k$ bits = **information word**
$$\mathbf{i} = i_1i_2...i_k$$

2. For each possible information word, the coder assigns a **codeword** of length $n > k$:
$$\mathbf{c} = c_1c_2...c_n$$

3. The codeword is sent on the channel instead of the original information word

4. The receiver receives a sequence $\hat{\mathbf{c}} \approx \mathbf{c}$, with possible errors:
$$\hat{\mathbf{c}} = \hat{c_1}\hat{c_2}...\hat{c_n}$$

5. The decoding algorithm detects/corrects the errors in $\hat{\mathbf{c}}$

### Definitions

Error correcting code:
* An **error correcting code** is an association between the set of all possible information words to a set of codewords
    * Each possible information word $\mathbf{i}$ has a certain codeword $\mathbf{c}$
* The association can be done:
    * randomly: codewords are selected and associated randomly to the information words
    * based on a certain rule: the codeword is computed with some algorithm from the information word

* A code is a **block code** if it operates with words of *fixed size*
    * Size of information word $\mathbf{i} = k$
    * Size of codeword $\mathbf{c} = n$, $n > c$
    * Otherwise it is a non-block code
    
* A code is **linear** if any linear combination of codewords is also a codeword

* The **coding rate** of a code is:
$$R = k/n$$

* Examples: at blackboard (random code, parity bit)

### Shannon's noisy channel theorem (second theorem, channel coding theorem)

* A coding rate is called **achievable** for a channel if, for that rate, there exists a coding and decoding
algorithm guaranteed to correct all possible errors on the channel

#### Shannon's noisy channel coding theorem (second theorem)
For a given channel, all rates below capacity $R < C$ are achievable. All rates
above capacity, $R > C$, are not achievable.

### Channel coding theorem explained

In layman terms:

* For all coding rates $R<C$, there is a way to recover the transmitted data perfectly (decoding algorithm will detect and correct
all errors)
* For all coding rates $R>C$, there is no way to recover the transmitted data perfectly

Example:

* Send binary digits (0,1) on a BSC channel with capacity 0.7 bits/message
* For any coding rate $R < 0.7$ there exist error correction codes that allow perfect recovery
    * i.e. for every 7 bits of data coding adds slightly more than 3 bits, on average => $R < \frac{7}{7+3}$
* With less than 3 bits for every 7 bits of data => impossible to recover all the data

### Ideas behind channel coding theorem

* The rigorous proof of the theorem is too complex to present
* Key ideas of the proof:
    * Use very long information words, $k \to \infty$
    * Use random codes, compute the probability of having error after decoding
    * If $R < C$, *in average for all possible codes*, the probability of error after decoding goes to 0
    * If the average for all codes goes to 0, there exists at least on code better than the average
    * That is the code we should use
    
* !! **The theorem does not tell what code to use**, only that some code exists
* There is no hint of how to actually find the code
* Except general principles:
    * using longer information words is better
    * random codewords are generally good
    
* In practice, cannot use infinitely long codewords, so will only get a *good enough* code

### Practical scenario

Practical ideas for error correcting codes:
* If a codeword $\mathbf{c_1}$ is received with errors and becomes identical to another codeword $\mathbf{c_2}$ ==> cannot detect any errors
    * Receiver will think it received a correct codeword $c_2$ and the informatio word was $\mathbf{i_2}$, but actually it was $\mathbf{i_1}$
* We want codewords as different as possible from each other
* How to measure this difference?

Hamming distance
* The **Hamming distance** of two binary sequences $a$, $b$ of length $n$ = the total number
of bit differences between them
$$d(a, b) = \sum_{i=1}^N a_i \bigoplus b_i$$

* It satisfies the 3 properties of a metric function:
    1. $d(a,b) \geq 0 \forall a,b$, with $d(a,b) = 0 \Leftrightarrow a = b$
    2. $d(a,b) = d(b,a), \forall a,b$
    3. $d(a,c) = d(a,b) + d(b,c), \forall a,b,c$
