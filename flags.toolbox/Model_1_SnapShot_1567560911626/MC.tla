---- MODULE MC ----
EXTENDS flags, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1567560909576253000 == 
("a" :> "b").a
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1567560909576253000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_1567560909576254000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_1567560909576255000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Tue Sep 03 20:35:09 CDT 2019 by tom
