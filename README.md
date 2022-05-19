## Instalar a extensao WA toolkit para o VScode

## Clonar o projeto WABT

```console
$ git clone --recursive https://github.com/WebAssembly/wabt
```

## Instalar cmake e make

``` console
$ chocolatey install cmake
$ chocolatey install make
```

``` console
$ mkdir ./wabt/build
$ cd build
$ cmake ..
$ cmake --build .
```

``` console
$ ../wabt/bin/wat2wasm <nome_do_arquivo>.wat --output <nome_do_arquivo>.wasm
```

``` console
$ xxd <nome_do_arquivo>.wasm
$ ../wabt/bin/wat2wasm <nome_do_arquivo>.wat --verbose
```
