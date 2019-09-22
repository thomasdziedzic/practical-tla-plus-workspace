---- MODULE MC ----
EXTENDS operators, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1567556597815194000 == 
LET
	x == 54
IN CASE x = 1 -> TRUE
	 [] x = 2 -> TRUE
	 [] x = 3 -> 7
	 [] OTHER -> FALSE
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1567556597815194000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_1567556597815195000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_1567556597815196000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Tue Sep 03 19:23:17 CDT 2019 by tom
