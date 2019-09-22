---- MODULE MC ----
EXTENDS definitely_binary_search, TLC

\* Constant expression definition @modelExpressionEval
const_expr_156847866704214000 == 
{Pow2(x): x \in 0..5}
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_156847866704214000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_156847866704215000 ==
FALSE/\target = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_156847866704216000 ==
FALSE/\target' = target
----
=============================================================================
\* Modification History
\* Created Sat Sep 14 11:31:07 CDT 2019 by tom
