import Cocoa

func isEqual<T: Equatable>(_ x: T, _ y: T) -> Bool {
    
    return x == y

}

print(isEqual(3, 3))
print(isEqual("aaa", "aaa"))
print(isEqual(3.1412, 3.1413))



struct SomeFunc<T> {
    
    let somePropaty: T?
    
    // 構造体の場合はメンバーワイズイニシャライザによって暗黙的に初期化される
    
}

// genericsで定義された型を具体的な型にする = 特殊化

// ①明示的に型引数を決定する方法
let a = SomeFunc<Int>(somePropaty: 5)
let b = SomeFunc<String>(somePropaty: "some")

// ②型推論で型引数を決定する方法
let c = SomeFunc(somePropaty: 5)
let d = SomeFunc(somePropaty: "some")

