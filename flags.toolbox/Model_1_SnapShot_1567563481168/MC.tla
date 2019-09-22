---- MODULE MC ----
EXTENDS flags, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1567563480017265000 == 
[x \in 1..3 |-> x * 2]
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1567563480017265000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_1567563480017266000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_1567563480017267000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Tue Sep 03 21:18:00 CDT 2019 by tom
