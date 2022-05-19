// importar filesystem
import fs from 'fs'

//carregar o qruqivo wasm para um buffer
const squareWasm = fs.readFileSync('./square-module.wasm')

//instanciar buffer como um arquivo webassembly
const squareModule =
    await WebAssembly
        .instantiate(new Uint8Array(squareWasm)/*unsigned integer array*/)
        .then(res => res.instance.exports)
//retorna um m[odulo] chamado square

console.log(squareModule.square(100))
