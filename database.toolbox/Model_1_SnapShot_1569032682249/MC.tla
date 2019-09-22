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
const_156903268023312000 == 
{c1, c2}
----

\* MV CONSTANT definitions Data
const_156903268023313000 == 
{d1, d2}
----

=============================================================================
\* Modification History
\* Created Fri Sep 20 21:24:40 CDT 2019 by tom
