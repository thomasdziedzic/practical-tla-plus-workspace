---- MODULE MC ----
EXTENDS knapsack, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
i1, i2, i3
----

\* MV CONSTANT definitions Items
const_156797097741975000 == 
{i1, i2, i3}
----

\* SYMMETRY definition
symm_156797097741976000 == 
Permutations(const_156797097741975000)
----

\* CONSTANT definitions @modelParameterConstants:0Capacity
const_156797097741977000 == 
7
----

\* CONSTANT definitions @modelParameterConstants:1ValueRange
const_156797097741978000 == 
0..3
----

\* CONSTANT definitions @modelParameterConstants:2SizeRange
const_156797097741979000 == 
1..4
----

\* Constant expression definition @modelExpressionEval
const_expr_156797097741980000 == 
LET x == 3 y == 5 IN Assert(x > y, ToString(x) \o " is more than " \o ToString(y))
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_156797097741980000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_156797097741981000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_156797097741982000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Sun Sep 08 14:29:37 CDT 2019 by tom
