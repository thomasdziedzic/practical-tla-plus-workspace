---- MODULE MC ----
EXTENDS flags, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1567563641905271000 == 
SeqOf({"a", "b", "c"}, 2)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1567563641905271000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_1567563641905272000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_1567563641905273000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Tue Sep 03 21:20:41 CDT 2019 by tom
