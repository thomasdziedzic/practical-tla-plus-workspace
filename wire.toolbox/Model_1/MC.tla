---- MODULE MC ----
EXTENDS wire, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1567431332467107000 == 
EXTENDS FiniteSets
Cardinality({1, 2})
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1567431332467107000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_1567431332467108000 ==
FALSE/\people = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_1567431332467109000 ==
FALSE/\people' = people
----
=============================================================================
\* Modification History
\* Created Mon Sep 02 08:35:32 CDT 2019 by tom
