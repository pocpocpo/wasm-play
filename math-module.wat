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

    (func $add (param i32) (param i32) (result i32)
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
    (export "add" (func $add))

    ;; e possivel substituir os indices dos parametros por nomes
    (func $sub (param $minuendo i32) (param $subtraendo i32) (result i32)
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
    (export "sub" (func $sub))

    (func $fibonacci (param $index i32) (result i32) (local $fibn i32) (local $fibn1 i32) (local $fibn2 i32) (local $n i32)

        ;; let fibn = 0
        ;; a constante 0 e empurrada para a pilha
        i32.const 0
        ;; a constante 0 e removida da pilha
        ;; e empurrada para $fibn
        local.set $fibn

        ;; let fibn1 = 1
        i32.const 1
        local.set $fibn1

        ;; let fibn2 = 0
        i32.const 0
        local.set $fibn2

        ;; let n = index
        ;; empurra o valor de $index para a pilha
        local.get $index
        ;; o valor de $index e removido da pilha
        ;; e empurrado para $n
        local.set $n

        ;; looping block
        (block
            (loop
                ;; n > 0
                local.get $n
                i32.const 0
                i32.eq
                br_if 1

                ;; fibn2 = fibn1
                local.get $fibn1
                local.set $fibn2

                ;; fibn1 = fibn
                local.get $fibn
                local.set $fibn1

                ;; fibn = fibn1 + fibn2
                local.get $fibn1
                local.get $fibn2
                i32.add
                local.set $fibn

                ;; n--
                local.get $n
                i32.const 1
                i32.sub
                local.set $n 

                ;; go back to the call satack
                br 0
            )
        )

        ;; o ultimo valor da pilha e o valor de retorno
        local.get $fibn
    )
    (export "fibonacci" (func $fibonacci))
)
