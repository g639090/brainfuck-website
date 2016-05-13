this is the brainfuck code that returns the html content for my site

STEP 1: send a HTTP indicator (HTTP/1(dot)1)

>++++++++[<+++++++++>-]<.   H
>+++[<++++>-]<.             T
.                           T
----.                       P
[-]>+++++++++[<+++++>-]<++. /
++.                         1
---.                        a dot
+++.                        1
>++++[<---->-]<-.           (space)

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
c2 and c3 are 0 and the pointer points to c1

STEP 3: figure out if the request goes to /

right now we have read "GET/PUT/etc "
ideally this would go on to read "GET /"

lets head to c2
>

read two characters since every path starts with /
,,

subtract 32 (slash in ASCII)
>++++[<-------->-]<
this will optimally give us 0

so now if the path given is / we also have a 0 in c2

STEP 4: send a 404 (if necessary)

when c1 is not 0:
[
  set c3 to 1
  >>+
  and turn c1 to 0
  <<[+] plus because it can only be 0 or negative
]

when c2 is not 0:
>[
  increment c3
  >+<
  and turn c2 to 0
  [-] this time it should be positive 
]

right now c3 should either be 0 or not 0
if it's 0 we carry on
if it isn't we sent a 404

>[
  set c3 to 0 for future purposes
  [-]

  lets return "404 not found"!
  >++++[<+++++++++++++>-]<.   4
  ----.                       0
  ++++.                       4
  >+++++[<---->-]<.           space
  >++++++[<+++++++++++++>-]<. n
  +.                          o
  +++++.                      t
  >+++++++[<------------>-]<. space
  >+++++++[<++++++++++>-]<.   f
  +++++++++.                  o
  ++++++.                     u
  -------.                    n
  ----------.                 d

  set c3 to zero to prevent looping
  [-]
]