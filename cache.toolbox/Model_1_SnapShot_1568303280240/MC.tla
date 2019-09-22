---- MODULE MC ----
EXTENDS cache, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a1, a2
----

\* MV CONSTANT definitions Actors
const_156830327820925000 == 
{a1, a2}
----

\* CONSTANT definitions @modelParameterConstants:0ResourceCap
const_156830327820926000 == 
6
----

\* CONSTANT definitions @modelParameterConstants:1MaxConsumerReq
const_156830327820927000 == 
2
----

=============================================================================
\* Modification History
\* Created Thu Sep 12 10:47:58 CDT 2019 by tom
