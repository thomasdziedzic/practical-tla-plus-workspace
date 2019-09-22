---- MODULE MC ----
EXTENDS operators, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1567557002552209000 == 
CHOOSE <<x, y>> \in (-10..10) \X (-10..10):
	/\ 2*x + y = -2
	/\ 3*x - 2*y = 11
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1567557002552209000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_1567557002552210000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_1567557002552211000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Tue Sep 03 19:30:02 CDT 2019 by tom
