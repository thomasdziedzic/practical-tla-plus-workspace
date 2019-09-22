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
const_15690317970338000 == 
{c1, c2}
----

\* MV CONSTANT definitions Data
const_15690317970339000 == 
{d1, d2}
----

=============================================================================
\* Modification History
\* Created Fri Sep 20 21:09:57 CDT 2019 by tom
