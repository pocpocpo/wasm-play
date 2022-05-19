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
    (export "square" (func $square))
)
