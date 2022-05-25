// evitar ao maximo usar import com jest
// evitar ao maximo modulos es6 ocm jest
// usar modulos es5
const  fs = require('fs')

let basicOperationsModule

describe('Basic operations module tests', () => {
    beforeAll(async () => {
        const wasm = fs.readFileSync('./public/basic-operations-module.wasm')
        const buffer = new Uint8Array(wasm)
    
        // usar como uma var global
        basicOperationsModule = await WebAssembly
            .instantiate(buffer)
            .then(res => res.instance.exports)
    })

    test('5^2 should be 25', () => 
        expect(basicOperationsModule.sqr(5)).toBe(25)
    )
    test('5 + 5 should be 10', () => 
        expect(basicOperationsModule.add(5, 5)).toBe(10)
    )
    test('5 - 3 should be 2', () => 
        expect(basicOperationsModule.sub(5, 3)).toBe(2)
    )
})

describe('', () => {
    beforeAll(async () => {
        const wasm = fs.readFileSync('./public/fibonacci-module.wasm')
        const buffer = new Uint8Array(wasm)
    
        // usar como uma var global
        fibonacciModule = await WebAssembly
            .instantiate(buffer)
            .then(res => res.instance.exports)
    })

    test('fibonacci of 0 should be 0', () => 
        expect(fibonacciModule.fibonacci(0)).toBe(0)
    )
    test('fibonacci of 1 should be 1', () => 
        expect(fibonacciModule.fibonacci(1)).toBe(1)
    )
    test('fibonacci of 19 should be 4181', () => 
        expect(fibonacciModule.fibonacci(19)).toBe(4181)
    )
    test('fibonacci of 20 should be 6765', () => 
        expect(fibonacciModule.fibonacci(20)).toBe(6765)
    )
})
