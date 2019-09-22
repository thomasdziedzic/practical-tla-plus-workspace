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
const_156903214520210000 == 
{c1, c2}
----

\* MV CONSTANT definitions Data
const_156903214520211000 == 
{d1, d2}
----

=============================================================================
\* Modification History
\* Created Fri Sep 20 21:15:45 CDT 2019 by tom
