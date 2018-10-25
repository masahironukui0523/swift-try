import Cocoa

//  文字列中に含まれる単語の個数を単語ごとにカウントして、ハッシュ(Swiftなので辞書型)として表現してください。　※ Rubyの問題

var str = "No Swift No Life"

func countWordsInString(string: String) -> [String:Int] {
    
    // スペースの前後の単語を取得
    let spritWords = string.split(separator: " ")
    var dic = [String:Int]()
    
    // 単語の数だけ繰り返す処理
    for a in spritWords {
        
        var num = 0
        
        
        if let a = dic[String(a)] {
            // dictionaryで既に値を持っている単語にはその値に1を足したものを代入
            num = a + 1
        } else {
            // 値を持っていない単語、つまり新しい単語には1を代入
            num = 1
        }
        
        // 文字列に含まれる単語毎にその単語が文字列に中に出現する数を代入
        dic[String(a)] = num
        
    }
    
    // dictionaryで返す
    return dic
    
}

countWordsInString(string: str)


