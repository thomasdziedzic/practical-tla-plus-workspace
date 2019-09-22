---- MODULE MC ----
EXTENDS database, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
c1
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
d1, d2
----

\* MV CONSTANT definitions Clients
const_15690056635004000 == 
{c1}
----

\* MV CONSTANT definitions Data
const_15690056635015000 == 
{d1, d2}
----

=============================================================================
\* Modification History
\* Created Fri Sep 20 13:54:23 CDT 2019 by tom
