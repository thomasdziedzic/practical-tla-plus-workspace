---- MODULE MC ----
EXTENDS definitely_binary_search, TLC

\* Constant expression definition @modelExpressionEval
const_expr_156847890756617000 == 
{Pow2(x): x \in 0..5}
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_156847890756617000>>)
----

=============================================================================
\* Modification History
\* Created Sat Sep 14 11:35:07 CDT 2019 by tom
