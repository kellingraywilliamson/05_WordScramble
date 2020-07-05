import UIKit

let input = """
            a
            b
            c
            """
let letters = input.components(separatedBy: "\n")
let letter = letters.randomElement()

let phrase1 = "Hello "
let phrase2 = "World"
let combinedPhrase = phrase1.trimmingCharacters(in: .whitespacesAndNewlines) + phrase2


// SPELL CHECKING
//1) init the phrase to check
let word = "swit"
//2) make the UITextChecker
let checker = UITextChecker()
//3) Set the rane to check
let range = NSRange(location: 0, length: word.utf16.count)
//4) Call the function to return the range of a misspelled word. Will return NSNotFound if no spelling error
let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
//5) Check the output result
let allGood = misspelledRange.location == NSNotFound

if let fileURL = Bundle.main.url(forResource: "Demo", withExtension: "rtf") {
    if let fileContents = try? String(contentsOf: fileURL) {
        print(fileContents)
    }
}
