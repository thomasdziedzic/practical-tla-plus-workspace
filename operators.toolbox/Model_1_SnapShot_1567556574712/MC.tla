---- MODULE MC ----
EXTENDS operators, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1567556571829182000 == 
LET
	x == 3
IN CASE x = 1 -> TRUE
	 [] x = 2 -> TRUE
	 [] x = 3 -> 7
	 [] OTHER -> FALSE
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1567556571829182000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_1567556571829183000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_1567556571829184000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Tue Sep 03 19:22:51 CDT 2019 by tom
