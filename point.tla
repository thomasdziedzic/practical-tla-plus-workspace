------------------------------- MODULE point -------------------------------

LOCAL INSTANCE Integers
CONSTANTS X, Y
ASSUME X \in Int
ASSUME Y \in Int
Point == <<X, Y>>
Add(x, y) == <<X + x, Y + y>>

=============================================================================
\* Modification History
\* Last modified Sun Sep 08 14:42:49 CDT 2019 by tom
\* Created Sun Sep 08 14:41:11 CDT 2019 by tom
