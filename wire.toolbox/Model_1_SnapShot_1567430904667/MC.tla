---- MODULE MC ----
EXTENDS wire, TLC

\* Constant expression definition @modelExpressionEval
const_expr_156743090365668000 == 
{1, 2} \subseteq {1, 2, 3}
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_156743090365668000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_156743090365669000 ==
FALSE/\people = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_156743090365670000 ==
FALSE/\people' = people
----
=============================================================================
\* Modification History
\* Created Mon Sep 02 08:28:23 CDT 2019 by tom
