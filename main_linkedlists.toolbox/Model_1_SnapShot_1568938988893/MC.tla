---- MODULE MC ----
EXTENDS main_linkedlists, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a, b, c
----

\* MV CONSTANT definitions Nodes
const_15689389868626000 == 
{a, b, c}
----

\* Constant expression definition @modelExpressionEval
const_expr_15689389868637000 == 
Valid
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_15689389868637000>>)
----

=============================================================================
\* Modification History
\* Created Thu Sep 19 19:23:06 CDT 2019 by tom
