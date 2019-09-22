---- MODULE MC ----
EXTENDS wire, TLC

\* Constant expression definition @modelExpressionEval
const_expr_156743096943277000 == 
{1..2} \intersect {2..3}
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_156743096943277000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_156743096943278000 ==
FALSE/\people = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_156743096943279000 ==
FALSE/\people' = people
----
=============================================================================
\* Modification History
\* Created Mon Sep 02 08:29:29 CDT 2019 by tom
