---- MODULE MC ----
EXTENDS knapsack, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
i1, i2, i3
----

\* MV CONSTANT definitions Items
const_156797065488943000 == 
{i1, i2, i3}
----

\* SYMMETRY definition
symm_156797065488944000 == 
Permutations(const_156797065488943000)
----

\* CONSTANT definitions @modelParameterConstants:0Capacity
const_156797065488945000 == 
7
----

\* CONSTANT definitions @modelParameterConstants:1ValueRange
const_156797065488946000 == 
0..3
----

\* CONSTANT definitions @modelParameterConstants:2SizeRange
const_156797065488947000 == 
1..4
----

\* Constant expression definition @modelExpressionEval
const_expr_156797065489048000 == 
PrintT(JavaTime)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_156797065489048000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_156797065489049000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_156797065489050000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Sun Sep 08 14:24:14 CDT 2019 by tom
