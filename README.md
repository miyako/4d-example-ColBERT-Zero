# 4d-example-ColBERT-Zero
ColBERT Zero for ONNX

```4d
var $client:=cs.AIKit.Reranker.new({baseURL: "http://127.0.0.1:8081/v1"})

var $query:=cs.AIKit.RerankerQuery.new({\
query: "What is the capital of the United States?"; \
documents: [\
"Carson City is the capital city of the American state of Nevada."; \
"The Commonwealth of the Northern Mariana Islands is a group of islands in the Pacific Ocean. Its capital is Saipan."; \
"Washington, D.C. (also known as simply Washington or D.C., and officially as the District of Columbia) is the capital of the United States. It is a federal district."; \
"Capital punishment (the death penalty) has existed in the United States since before the United States was a country"\
]})

var $parameters:=cs.AIKit.RerankerParameters.new({model: "default"; top_n: 4})

var $result:=$client.rerank.create($query; $parameters)
```
