;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;; ;;
;; $ wat2wasm <módulo>.wat --verbose
;; xxd <módulo>.wasm
;; Esses comandos imprimem o binário deste módulo:
;; 0000000: 0061 736d                                 ; WASM_BINARY_MAGIC
;; 0000004: 0100 0000                                 ; WASM_BINARY_VERSION
;; Esse cabeçalho é presente em todos os módulos.
;; 
;; $ wat2wasm <módulo>.wat --output <módulo>.wasm 
;; Esse comando gera o código binário.


(module)
