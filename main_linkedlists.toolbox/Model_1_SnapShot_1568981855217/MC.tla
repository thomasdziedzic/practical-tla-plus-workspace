---- MODULE MC ----
EXTENDS main_linkedlists, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a, b, c
----

\* MV CONSTANT definitions Nodes
const_15689818527862000 == 
{a, b, c}
----

\* Constant expression definition @modelExpressionEval
const_expr_15689818527863000 == 
Valid
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_15689818527863000>>)
----

=============================================================================
\* Modification History
\* Created Fri Sep 20 07:17:32 CDT 2019 by tom
