---- MODULE MC ----
EXTENDS knapsack, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
i1, i2, i3
----

\* MV CONSTANT definitions Items
const_156797115150299000 == 
{i1, i2, i3}
----

\* SYMMETRY definition
symm_1567971151502100000 == 
Permutations(const_156797115150299000)
----

\* CONSTANT definitions @modelParameterConstants:0Capacity
const_1567971151502101000 == 
7
----

\* CONSTANT definitions @modelParameterConstants:1ValueRange
const_1567971151502102000 == 
0..3
----

\* CONSTANT definitions @modelParameterConstants:2SizeRange
const_1567971151502103000 == 
1..4
----

\* Constant expression definition @modelExpressionEval
const_expr_1567971151502104000 == 
CHOOSE seq \in Permutations(1..3): TRUE
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1567971151502104000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_1567971151502105000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_1567971151502106000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Sun Sep 08 14:32:31 CDT 2019 by tom
