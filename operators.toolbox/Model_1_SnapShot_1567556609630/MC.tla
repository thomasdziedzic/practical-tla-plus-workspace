---- MODULE MC ----
EXTENDS operators, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1567556608116197000 == 
LET
	x == 2
IN CASE x = 1 -> TRUE
	 [] x = 2 -> TRUE
	 [] x = 3 -> 7
	 [] OTHER -> FALSE
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1567556608116197000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_1567556608116198000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_1567556608116199000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Tue Sep 03 19:23:28 CDT 2019 by tom
