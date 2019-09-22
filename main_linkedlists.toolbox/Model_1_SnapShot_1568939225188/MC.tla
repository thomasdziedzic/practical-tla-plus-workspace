---- MODULE MC ----
EXTENDS main_linkedlists, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a, b, c
----

\* MV CONSTANT definitions Nodes
const_156893922315110000 == 
{a, b, c}
----

\* Constant expression definition @modelExpressionEval
const_expr_156893922315111000 == 
Valid
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_156893922315111000>>)
----

=============================================================================
\* Modification History
\* Created Thu Sep 19 19:27:03 CDT 2019 by tom
