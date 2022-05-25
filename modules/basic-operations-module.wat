(module
    ;; define uma função que eleva um inteiro 32-bit ao quadrado
    ;; e retorna um valor inteiro 32-bit
    (func $square (param i32) (result i32)
        ;; empurra para a pilha o valor do argumento indexado por [0]
        local.get 0
        ;; empurra para a pilha o valor do argumento indexado por [0]
        local.get 0
        ;; multiplica os valore da pilha entre si
        ;; e empurra o resultado para a pilha
        i32.mul
        ;; retorna o valor que resta na pilha
    )
    ;; exprota a função square() com o nome "square"
    (export "sqr" (func $square))

    (func $addition (param i32) (param i32) (result i32)
        ;; empurra para a pilha o valor do argumento indexado por [0]
        local.get 0
        ;; empurra para a pilha o valor do argumento indexado por [1]
        local.get 1
        ;; soma os valore da pilha entre si
        ;; e empurra o resultado para a pilha
        i32.add
        ;; retorna o valor que resta na pilha
    )
    ;; exporta a função add() com o nome "square"
    (export "add" (func $addition))

    ;; e possivel substituir os indices dos parametros por nomes
    (func $subtraction (param $minuendo i32) (param $subtraendo i32) (result i32)
        ;; empurra para a pilha o valor do argumento indexado por [0]
        local.get $minuendo
        ;; empurra para a pilha o valor do argumento indexado por [1]
        local.get $subtraendo
        ;; subtrai os valore da pilha entre si
        ;; o valor do topo da pilha e subtraido do proximo valor
        ;; e empurra o resultado para a pilha
        i32.sub
        ;; retorna o valor que resta na pilha
    )
    ;; exporta a função add() com o nome "square"
    (export "sub" (func $subtraction))
)
