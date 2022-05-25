// evitar ao maximo usar import com jest
// evitar ao maximo modulos es6 ocm jest
// usar modulos es5
const  fs = require('fs')

let mathModule

beforeAll(async () => {
    const mathWasm = fs.readFileSync('./public/math-module.wasm')
    const buffer = new Uint8Array(mathWasm)

    // usar como uma var global
    mathModule =
        await WebAssembly
            .instantiate(new Uint8Array(mathWasm))
            .then(res => res.instance.exports)
})

test('square 5', () => expect(mathModule.square(5)).toBe(25))
test('add 5 to 5', () => expect(mathModule.add(5, 5)).toBe(10))
test('subtract 3 from 5', () => expect(mathModule.sub(5, 3)).toBe(2))

