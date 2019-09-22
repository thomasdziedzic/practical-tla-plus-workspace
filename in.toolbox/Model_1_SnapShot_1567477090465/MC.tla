---- MODULE MC ----
EXTENDS in, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1567477089095113000 == 
UNION {{"a"}, {"b"}, {"b", "c"}}
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1567477089095113000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_1567477089095114000 ==
FALSE/\x = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_1567477089095115000 ==
FALSE/\x' = x
----
=============================================================================
\* Modification History
\* Created Mon Sep 02 21:18:09 CDT 2019 by tom
