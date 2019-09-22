---- MODULE MC ----
EXTENDS wire, TLC

\* Constant expression definition @modelExpressionEval
const_expr_156743124244686000 == 
{1, 2} \intersect {2, 3}
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_156743124244686000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_156743124244687000 ==
FALSE/\people = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_156743124244688000 ==
FALSE/\people' = people
----
=============================================================================
\* Modification History
\* Created Mon Sep 02 08:34:02 CDT 2019 by tom
