------------------------- MODULE concurrency_model -------------------------

EXTENDS Integers
CONSTANT ResourceCap, MaxConsumerReq

ASSUME ResourceCap > 0
ASSUME MaxConsumerReq \in 1..ResourceCap

=============================================================================
\* Modification History
\* Last modified Thu Sep 12 10:30:47 CDT 2019 by tom
\* Created Thu Sep 12 10:00:41 CDT 2019 by tom
