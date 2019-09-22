---- MODULE MC ----
EXTENDS main_linkedlists, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a, b, c
----

\* MV CONSTANT definitions Nodes
const_15689843742438000 == 
{a, b, c}
----

\* Constant expression definition @modelExpressionEval
const_expr_15689843742439000 == 
Valid
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_15689843742439000>>)
----

=============================================================================
\* Modification History
\* Created Fri Sep 20 07:59:34 CDT 2019 by tom
