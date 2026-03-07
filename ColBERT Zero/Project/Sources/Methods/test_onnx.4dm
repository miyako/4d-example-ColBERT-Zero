//%attributes = {}
var $client:=cs:C1710.AIKit.Reranker.new({baseURL: "http://127.0.0.1:8081/v1"})

var $query:=cs:C1710.AIKit.RerankerQuery.new({\
query: "What is the capital of the United States?"; \
documents: [\
"Carson City is the capital city of the American state of Nevada."; \
"The Commonwealth of the Northern Mariana Islands is a group of islands in the Pacific Ocean. Its capital is Saipan."; \
"Washington, D.C. (also known as simply Washington or D.C., and officially as the District of Columbia) is the capital of the United States. It is a federal district."; \
"Capital punishment (the death penalty) has existed in the United States since before the United States was a country"\
]})

var $parameters:=cs:C1710.AIKit.RerankerParameters.new({model: "default"; top_n: 4})

var $result:=$client.rerank.create($query; $parameters)

SET TEXT TO PASTEBOARD:C523(JSON Stringify:C1217($result.results; *))

/*

f32

[
{
"index": 2,
"relevance_score": 0.99995283831721
},
{
"index": 0,
"relevance_score": 0.99991483763847
},
{
"index": 3,
"relevance_score": 0.99988664991956
},
{
"index": 1,
"relevance_score": 0.99986454058244
}
]

int8

[
{
"index": 2,
"relevance_score": 0.99995028114949
},
{
"index": 0,
"relevance_score": 0.99990831333269
},
{
"index": 3,
"relevance_score": 0.99987366283149
},
{
"index": 1,
"relevance_score": 0.9998521790132
}
]

f16

[
{
"index": 0,
"relevance_score": 0.9999803431445
},
{
"index": 1,
"relevance_score": 0.99997918622676
},
{
"index": 2,
"relevance_score": 0.5
},
{
"index": 3,
"relevance_score": 0.5
}
]

*/