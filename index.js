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
const mathWasm = fs.readFileSync('./public/math-module.wasm')

// instanciar buffer como um arquivo webassembly
const mathModule =
    await WebAssembly
        .instantiate(new Uint8Array(mathWasm)/*unsigned integer array*/)
        .then(res => res.instance.exports)
// retorna um m[odulo] chamado square

console.log('100^2 = ' + 
    mathModule.square(100))

console.log('12 + 12 = ' + 
    mathModule.add(12, 12))

console.log('100 - 10 = ' + 
    mathModule.sub(100, 10))
