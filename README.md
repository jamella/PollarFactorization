# PollarFactorization
If either p − 1 or q − 1 has only small prime factors, n can be factored quickly by Pollard's p − 1 algorithm
Recommand to use factorization tool (eg. yafu).  

Since the big prime seems to be safe prime. Futher [3](https://en.wikipedia.org/wiki/Pollard's_p_%E2%88%92_1_algorithm).  

This tool [GMP-ECM](http://gforge.inria.fr/projects/ecm/) fully implement the attack

**Algorithm**  
  1. Chose an integer fix bound B (often go for b=2 the increase)
  2. Chose an integer k = product of q ^ floor(logq B) for q <= B
  3. Chose an random integer a with 2 <= a <= n-2 (often go for a=2)
  4. Compute x = a^k-1 (mod N)
  5. Compute g = GCD(x, N)
  6. If g != 1 or N, output g and terminate
  7. If g == 1 or N select a larger B and go to step 2

**Why**  
Suppose N=pq  
Then by Fermat theorm, choose any a  
a^(p-1) = 1 (mod p)  

Suppose L = k(p-1)  
a^L = (a^(p-1))^k = 1 (mod p)  
If p divides a^L-1 and since N=pq, So GCD(a^L-1, N) = p

**Reference**  
[1](http://www.mast.queensu.ca/~math418/m418oh/m418og25.pdf)
[2](https://www.youtube.com/watch?v=fFJMoIj71nQ)
[3](https://en.wikipedia.org/wiki/Pollard's_p_%E2%88%92_1_algorithm)
[4](http://www2.warwick.ac.uk/fac/sci/maths/people/staff/anni/ma426-ellipticcurves/chapter10.pdf)
