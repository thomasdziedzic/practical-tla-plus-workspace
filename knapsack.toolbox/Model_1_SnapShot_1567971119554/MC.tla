---- MODULE MC ----
EXTENDS knapsack, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
i1, i2, i3
----

\* MV CONSTANT definitions Items
const_156797111750691000 == 
{i1, i2, i3}
----

\* SYMMETRY definition
symm_156797111750692000 == 
Permutations(const_156797111750691000)
----

\* CONSTANT definitions @modelParameterConstants:0Capacity
const_156797111750693000 == 
7
----

\* CONSTANT definitions @modelParameterConstants:1ValueRange
const_156797111750694000 == 
0..3
----

\* CONSTANT definitions @modelParameterConstants:2SizeRange
const_156797111750695000 == 
1..4
----

\* Constant expression definition @modelExpressionEval
const_expr_156797111750696000 == 
SortSeq(<<1, 2, 3>>, LAMBDA x, y: x > y)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_156797111750696000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_156797111750697000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_156797111750698000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Sun Sep 08 14:31:57 CDT 2019 by tom
