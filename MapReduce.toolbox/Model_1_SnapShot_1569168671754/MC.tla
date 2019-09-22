---- MODULE MC ----
EXTENDS main, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
w1, w2, w3
----

\* MV CONSTANT definitions Workers
const_156916866774158000 == 
{w1, w2, w3}
----

\* CONSTANT definitions @modelParameterConstants:3ItemCount
const_156916866774159000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:4ItemRange
const_156916866774160000 == 
0..2
----

=============================================================================
\* Modification History
\* Created Sun Sep 22 11:11:07 CDT 2019 by tom
