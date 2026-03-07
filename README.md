## [lightonai/ColBERT-Zero](https://huggingface.co/lightonai/ColBERT-Zero)

**ColBERT Zer** is a late interaction reranker model released by **LightOn** in 2026. 

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


||int8|f32|document
|-|-|-|:-
|`2`|`0.99995028114949` |`0.99995283831721`|Washington, D.C. …
|`0`|`0.99990831333269` |`0.99991483763847`|Carson City is the capital city of the American state of Nevada.
|`3`|`0.99987366283149` |`0.99988664991956`|Capital punishment (the death penalty) has existed in the United States…
|`1`|`0.9998521790132`  |`0.99986454058244`|The Commonwealth of the Northern Mariana Islands is…
