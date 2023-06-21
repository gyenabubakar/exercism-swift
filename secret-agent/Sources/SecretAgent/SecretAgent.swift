func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  func fn(_ passkey: String) -> String {
    guard passkey == password else {
      return "Sorry. No hidden secrets here."
    }
    return secret
  }

  return fn
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let first = f(room)
  let second = f(first)
  let third = f(second)
  return (first, second, third)
}
