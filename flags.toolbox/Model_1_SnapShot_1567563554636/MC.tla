---- MODULE MC ----
EXTENDS flags, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1567563553624268000 == 
[1..3 -> BOOLEAN]
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1567563553624268000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_1567563553624269000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_1567563553624270000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Tue Sep 03 21:19:13 CDT 2019 by tom
