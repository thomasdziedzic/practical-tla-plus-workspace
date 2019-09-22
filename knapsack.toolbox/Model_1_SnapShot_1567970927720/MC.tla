---- MODULE MC ----
EXTENDS knapsack, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
i1, i2, i3
----

\* MV CONSTANT definitions Items
const_156797092545067000 == 
{i1, i2, i3}
----

\* SYMMETRY definition
symm_156797092545068000 == 
Permutations(const_156797092545067000)
----

\* CONSTANT definitions @modelParameterConstants:0Capacity
const_156797092545069000 == 
7
----

\* CONSTANT definitions @modelParameterConstants:1ValueRange
const_156797092545070000 == 
0..3
----

\* CONSTANT definitions @modelParameterConstants:2SizeRange
const_156797092545071000 == 
1..4
----

\* Constant expression definition @modelExpressionEval
const_expr_156797092545072000 == 
LET x == 3 y == 5 IN Assert(x > y, <<x, " is more than ", y>>)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_156797092545072000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_156797092545073000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_156797092545074000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Sun Sep 08 14:28:45 CDT 2019 by tom
