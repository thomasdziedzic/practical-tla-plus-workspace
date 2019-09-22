---- MODULE MC ----
EXTENDS knapsack, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
i1, i2, i3
----

\* MV CONSTANT definitions Items
const_156797104908083000 == 
{i1, i2, i3}
----

\* SYMMETRY definition
symm_156797104908084000 == 
Permutations(const_156797104908083000)
----

\* CONSTANT definitions @modelParameterConstants:0Capacity
const_156797104908085000 == 
7
----

\* CONSTANT definitions @modelParameterConstants:1ValueRange
const_156797104908086000 == 
0..3
----

\* CONSTANT definitions @modelParameterConstants:2SizeRange
const_156797104908087000 == 
1..4
----

\* Constant expression definition @modelExpressionEval
const_expr_156797104908088000 == 
Permutations(1..3)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_156797104908088000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_156797104908089000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_156797104908090000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Sun Sep 08 14:30:49 CDT 2019 by tom
