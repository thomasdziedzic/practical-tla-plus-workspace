---- MODULE MC ----
EXTENDS main_linkedlists, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a, b, c
----

\* MV CONSTANT definitions Nodes
const_15689391665878000 == 
{a, b, c}
----

\* Constant expression definition @modelExpressionEval
const_expr_15689391665879000 == 
Valid
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_15689391665879000>>)
----

=============================================================================
\* Modification History
\* Created Thu Sep 19 19:26:06 CDT 2019 by tom
