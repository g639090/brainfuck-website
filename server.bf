this is the brainfuck code that returns the html content for my site

STEP 1: send a HTTP indicator (HTTP/1.1)

>++++++++[<+++++++++>-]<.   H
>+++[<++++>-]<.             T
.                           T
----.                       P
[-]>+++++++++[<+++++>-]<++. /
++.                         1
---.                        a dot
+++.                        1
>++++[<---->-]<+.           (space)

STEP 2: figure out if this is a GET request

what i figured would be best for this is a counter that:
  * for each character subtracts the ascii value
  * stops after inputting a space
  * checks if it's zero after stopping

this works because 'GET ' is exactly 256 as a sum of ASCII characters

so first we'll make cell 1 256:
>+++++++++++++++++[-<+++++++++++++>]<+++

then head to cell 2 (abbreviated as c2 from now on) and make sure it isn't zero:
>+

[
  ok lets define what the cells do in this loop:
  c1 = the counter
  c2 = the ASCII char for space (= 32)
  c3 = the char we're reading

  first off we set c2 to zero
  some chars might make c1 negative so we add some numbers to it just in case
  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  [-]

  now we make c2 32
  ++++++++++++++++++++++++++++++++

  read from stdin to c3
  >,

  subtract whats in c3 from the counter in c1 but also in c2
  [-<-<->>]

  and head back to c2
  <
]

right now if c1 is 0 it is a GET request
if not we want to throw a 404 (c1 is negative)