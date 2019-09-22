---- MODULE MC ----
EXTENDS knapsack, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
i1, i2, i3
----

\* MV CONSTANT definitions Items
const_156797082497851000 == 
{i1, i2, i3}
----

\* SYMMETRY definition
symm_156797082497852000 == 
Permutations(const_156797082497851000)
----

\* CONSTANT definitions @modelParameterConstants:0Capacity
const_156797082497853000 == 
7
----

\* CONSTANT definitions @modelParameterConstants:1ValueRange
const_156797082497854000 == 
0..3
----

\* CONSTANT definitions @modelParameterConstants:2SizeRange
const_156797082497855000 == 
1..4
----

\* Constant expression definition @modelExpressionEval
const_expr_156797082497856000 == 
Assert(3 < 5, "3 is more than 5")
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_156797082497856000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_156797082497857000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_156797082497858000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Sun Sep 08 14:27:04 CDT 2019 by tom
