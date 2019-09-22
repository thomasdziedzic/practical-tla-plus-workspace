---- MODULE MC ----
EXTENDS main_linkedlists, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a, b, c
----

\* MV CONSTANT definitions Nodes
const_156898468622210000 == 
{a, b, c}
----

\* Constant expression definition @modelExpressionEval
const_expr_156898468622211000 == 
Valid
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_156898468622211000>>)
----

=============================================================================
\* Modification History
\* Created Fri Sep 20 08:04:46 CDT 2019 by tom
