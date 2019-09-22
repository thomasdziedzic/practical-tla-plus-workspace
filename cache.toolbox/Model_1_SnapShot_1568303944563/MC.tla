---- MODULE MC ----
EXTENDS cache, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a1, a2
----

\* MV CONSTANT definitions Actors
const_156830394254237000 == 
{a1, a2}
----

\* CONSTANT definitions @modelParameterConstants:0ResourceCap
const_156830394254238000 == 
6
----

\* CONSTANT definitions @modelParameterConstants:1MaxConsumerReq
const_156830394254239000 == 
2
----

=============================================================================
\* Modification History
\* Created Thu Sep 12 10:59:02 CDT 2019 by tom
