---- MODULE MC ----
EXTENDS knapsack, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
i1, i2, i3
----

\* MV CONSTANT definitions Items
const_156797062330935000 == 
{i1, i2, i3}
----

\* SYMMETRY definition
symm_156797062330936000 == 
Permutations(const_156797062330935000)
----

\* CONSTANT definitions @modelParameterConstants:0Capacity
const_156797062330937000 == 
7
----

\* CONSTANT definitions @modelParameterConstants:1ValueRange
const_156797062330938000 == 
0..3
----

\* CONSTANT definitions @modelParameterConstants:2SizeRange
const_156797062331039000 == 
1..4
----

\* Constant expression definition @modelExpressionEval
const_expr_156797062331040000 == 
Print(JavaTime, <<1>>) \o <<2>>
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_156797062331040000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_156797062331041000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_156797062331042000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Sun Sep 08 14:23:43 CDT 2019 by tom
