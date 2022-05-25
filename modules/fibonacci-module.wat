(module
    (func $fibonacci (param $index i32) (result i32)
        (local $fibn i32) (local $fibn1 i32) (local $fibn2 i32) (local $n i32)

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
