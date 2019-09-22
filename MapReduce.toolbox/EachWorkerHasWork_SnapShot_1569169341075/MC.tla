---- MODULE MC ----
EXTENDS main, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
w1, w2, w3
----

\* MV CONSTANT definitions Workers
const_156916926803963000 == 
{w1, w2, w3}
----

\* CONSTANT definitions @modelParameterConstants:3ItemCount
const_156916926803964000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:4ItemRange
const_156916926803965000 == 
0..2
----

=============================================================================
\* Modification History
\* Created Sun Sep 22 11:21:08 CDT 2019 by tom
