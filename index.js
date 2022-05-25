// importar filesystem
import fs from 'fs'

 // // // //  --EMPTY MODULE--  // // // //

//  const emptyWasm = fs.readFileSync('./public/empty-module.wasm')

//  const emptyModule =
//     await WebAssembly
//         .instantiate(new Uint32Array(emptyWasm))
//         .then(res => res.instance.exports)

// //  //  // --SQUARE MODULE-- // // // //

// carregar o qruqivo wasm para um buffer
const wasm = fs.readFileSync('./public/basic-operations-module.wasm')

const buffer = new Uint8Array(wasm)/*unsigned integer array*/

// instanciar buffer como um arquivo webassembly
const basicOperationsModule =
    await WebAssembly
        .instantiate(buffer)
        .then(res => res.instance.exports)
// retorna um m[odulo] chamado square

console.log('100^2 = ' + 
    basicOperationsModule.sqr(100))

console.log('12 + 12 = ' + 
    basicOperationsModule.add(12, 12))

console.log('100 - 10  ' + 
    basicOperationsModule.sub(100, 10))
