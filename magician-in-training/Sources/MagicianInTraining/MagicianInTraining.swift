func getCard(at index: Int, from stack: [Int]) -> Int {
  stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  guard stack.indices.contains(index) else {
    return stack
  }

  var stack = Array(stack)
  stack[index] = newCard
  return stack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  var stack = Array(stack)
  stack.append(newCard)
  return stack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  guard stack.indices.contains(index) else {
    return stack
  }

  var stack = Array(stack)
  stack.remove(at: index)
  return stack
}

func removeTopCard(_ stack: [Int]) -> [Int] {
  guard stack.count > 0 else {
    return stack
  }

  var stack = Array(stack)
  stack.removeLast()
  return stack
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
  var stack = Array(stack)
  stack.insert(newCard, at: 0)
  return stack
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
  guard stack.count > 0 else {
    return stack
  }

  var stack = Array(stack)
  stack.removeFirst()
  return stack
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  stack.count == size
}

func evenCardCount(_ stack: [Int]) -> Int {
  stack.filter { $0 % 2 == 0 }.count
}
