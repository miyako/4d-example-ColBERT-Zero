## [lightonai/ColBERT-Zero](https://huggingface.co/lightonai/ColBERT-Zero)

**ColBERT Zero** is a late interaction reranker model released by **LightOn** in 2026. 

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


||int8|document
|-|-|:-
|`2`|`0.99995260314446` |Washington, D.C. …
|`0`|`0.99994762400934` |Carson City is the capital city of the American state of Nevada.
|`3`|`0.99993280146434` |Capital punishment (the death penalty) has existed in the United States…
|`1`|`0.99992480143092`  |The Commonwealth of the Northern Mariana Islands is…
