---- MODULE MC ----
EXTENDS flags, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1567563150651256000 == 
(1..2) \union (2..3)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1567563150651256000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_1567563150651257000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_1567563150651258000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Tue Sep 03 21:12:30 CDT 2019 by tom
