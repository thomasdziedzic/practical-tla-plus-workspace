---- MODULE MC ----
EXTENDS knapsack, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
i1, i2, i3
----

\* MV CONSTANT definitions Items
const_1567971162015107000 == 
{i1, i2, i3}
----

\* SYMMETRY definition
symm_1567971162015108000 == 
Permutations(const_1567971162015107000)
----

\* CONSTANT definitions @modelParameterConstants:0Capacity
const_1567971162015109000 == 
7
----

\* CONSTANT definitions @modelParameterConstants:1ValueRange
const_1567971162015110000 == 
0..3
----

\* CONSTANT definitions @modelParameterConstants:2SizeRange
const_1567971162015111000 == 
1..4
----

\* Constant expression definition @modelExpressionEval
const_expr_1567971162015112000 == 
Permutations(1..3)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1567971162015112000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_1567971162015113000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_1567971162015114000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Sun Sep 08 14:32:42 CDT 2019 by tom
