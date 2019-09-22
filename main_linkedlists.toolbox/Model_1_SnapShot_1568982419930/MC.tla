---- MODULE MC ----
EXTENDS main_linkedlists, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a, b, c
----

\* MV CONSTANT definitions Nodes
const_15689824179094000 == 
{a, b, c}
----

\* Constant expression definition @modelExpressionEval
const_expr_15689824179095000 == 
Valid
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_15689824179095000>>)
----

=============================================================================
\* Modification History
\* Created Fri Sep 20 07:26:57 CDT 2019 by tom
