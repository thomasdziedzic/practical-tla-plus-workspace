---- MODULE MC ----
EXTENDS in, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1567477055232110000 == 
SUBSET {"a", "b"}
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1567477055232110000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_1567477055232111000 ==
FALSE/\x = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_1567477055232112000 ==
FALSE/\x' = x
----
=============================================================================
\* Modification History
\* Created Mon Sep 02 21:17:35 CDT 2019 by tom
