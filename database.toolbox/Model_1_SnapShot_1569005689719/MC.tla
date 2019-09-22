---- MODULE MC ----
EXTENDS database, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
c1, c2
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
d1, d2
----

\* MV CONSTANT definitions Clients
const_15690056877006000 == 
{c1, c2}
----

\* MV CONSTANT definitions Data
const_15690056877007000 == 
{d1, d2}
----

=============================================================================
\* Modification History
\* Created Fri Sep 20 13:54:47 CDT 2019 by tom
