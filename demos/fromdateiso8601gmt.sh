
. ./deps/jq-helpers/lib/jq_stack4.lib.sh
JQ_STACK4_MODDIR=./lib
echo '"2024-02-06T16:53:19.1234Z"
"2024-02-06T17:53:19.1234+0100"
"2024-02-06T14:53:19.1234-0200"
"2024-02-05T23:53:19.123Z"
"2024-02-06T00:53:19.123+0100"
"2024-02-06T01:53:19.123+0200"' |
jq_stack4 -cM :modload fromdateiso8601gmt :call '
(
fromdateiso8601gmt
)
' :run
