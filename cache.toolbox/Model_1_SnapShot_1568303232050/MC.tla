---- MODULE MC ----
EXTENDS cache, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a1, a2
----

\* MV CONSTANT definitions Actors
const_156830323000721000 == 
{a1, a2}
----

\* CONSTANT definitions @modelParameterConstants:0ResourceCap
const_156830323000722000 == 
6
----

\* CONSTANT definitions @modelParameterConstants:1MaxConsumerReq
const_156830323000723000 == 
2
----

=============================================================================
\* Modification History
\* Created Thu Sep 12 10:47:10 CDT 2019 by tom
