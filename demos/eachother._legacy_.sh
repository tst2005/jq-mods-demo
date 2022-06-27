. ./lib/eachother.jq.lib.sh

jq -ncM "$jq_function_eachother"'
(
	[1, 3, 5, 7] | eachother( (.[0]//0) + .[1] ) == 16
	# 0 +1 +3 +5 +7
),(
	[1, 3, 5, 7] | eachother( (.[0]//0) * .[1] ) == 0
	# 0 *1 *3 *5 *7
),(
	[1, 3, 5, 7] | eachother( (.[0]//1) * .[1] ) == 105
	# 1 *1 *3 *5 *7
),(
	[1, 3, 5, 7] | eachother( (.[0]//1) / .[1] ) |tostring[0:15] == "0.0095238095238"
	# 1 /1 /3 /5 /7
)
'