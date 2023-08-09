import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
  return poem.components(separatedBy: .newlines)
}

func firstLetter(_ line: String) -> Character {
  line.first ?? "_"
}

func capitalize(_ phrase: String) -> String {
  phrase.capitalized
}

func trimSentence(_ line: String) -> String {
  line.trimmingCharacters(in: .whitespacesAndNewlines)
}

func lastLetter(_ line: String) -> Character {
  line.last ?? "_"
}

func backDoorPassword(_ phrase: String) -> String {
  capitalize(phrase) + ", please"
}

func ithLetter(_ line: String, i: Int) -> Character {
  let index = line.index(line.startIndex, offsetBy: i, limitedBy: line.endIndex)
  guard let index else { return " " }
  return line[index]
}

func secretRoomPassword(_ phrase: String) -> String {
  phrase.uppercased() + "!"
}
