---- MODULE MC ----
EXTENDS operators, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1567557691264212000 == 
[x \in 1..2 |-> x*2]
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1567557691264212000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_1567557691264213000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_1567557691264214000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Tue Sep 03 19:41:31 CDT 2019 by tom
