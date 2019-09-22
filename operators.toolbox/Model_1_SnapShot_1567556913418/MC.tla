---- MODULE MC ----
EXTENDS operators, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1567556910152206000 == 
MaxChoose(1..11)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1567556910152206000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_1567556910152207000 ==
FALSE/\pc = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_1567556910152208000 ==
FALSE/\pc' = pc
----
=============================================================================
\* Modification History
\* Created Tue Sep 03 19:28:30 CDT 2019 by tom
