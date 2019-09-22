---- MODULE MC ----
EXTENDS flags, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1567563968920278000 == 
SeqOf({"a", "b", "c"}, 2)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1567563968920278000>>)
----

=============================================================================
\* Modification History
\* Created Tue Sep 03 21:26:08 CDT 2019 by tom
