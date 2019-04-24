# Bayesian Network Learning

## Learning Bayesian Network Parameters

Given a qualitative Bayesian network structure, 
the conditional probability tables, P(xi|pai), are typically estimated with 
the maximum likelihood approach from the observed frequencies in the 
dataset associated with the network.


In pure Bayesian approaches, Bayesian networks are designed from expert 
knowledge and include hyperparameter nodes. Data (usually scarce) is used as 
pieces of evidence for incrementally updating the distributions of the 
hyperparameters (Bayesian Updating).


## Learning Bayesian Network Structure

It is also possible to machine learn the structure of a Bayesian network, and 
two families of methods are available for that purpose. 

- constraint-based algorithm
- score based algorithm

**Constraint-based algorithm:** It is based on the probabilistic semantic of 
Bayesian networks. Links are added or deleted according to the results of 
statistical tests, which identify marginal and conditional independencies. 

**Score-based algorithm:** It is based on a metric that measures the quality 
of candidate networks with respect to the observed data. This metric trades 
off network complexity against the degree of fit to the data, 
which is typically expressed as the likelihood of the data given the network.

As a substrate for learning, Bayesian networks have the advantage that it is 
relatively easy to encode prior knowledge in network form, either by fixing 
portions of the structure, forbidding relations, or by using prior 
distributions over the network parameters. Such prior knowledge can 
allow a system to learn accurate models from much fewer data than are 
required for clean sheet approaches.

[reference](http://www.bayesia.com/bayesian-networks-learning)

The purpose of this repository is to play with **Bayesian Network Learning** 
using `R` package `bnlearn`

- [bnlearn_examples](http://www.bnlearn.com/examples/)
- [slide](http://www.bnlearn.com/about/teaching/slides-bnshort.pdf)

**Book:**

![image](https://images-na.ssl-images-amazon.com/images/I/41qTyCNP7xL._SX331_BO1,204,203,200_.jpg)
