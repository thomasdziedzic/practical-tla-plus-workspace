---- MODULE MC ----
EXTENDS wire, TLC

\* Constant expression definition @modelExpressionEval
const_expr_156743092432571000 == 
{1, 2} \union {2, 3}
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_156743092432571000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_156743092432572000 ==
FALSE/\people = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_156743092432573000 ==
FALSE/\people' = people
----
=============================================================================
\* Modification History
\* Created Mon Sep 02 08:28:44 CDT 2019 by tom
