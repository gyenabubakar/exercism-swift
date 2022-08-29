let expectedMinutesInOven = 40
let minutesToPrepareLayer = 2

func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
  return expectedMinutesInOven - elapsedMinutes
}

func preparationTimeInMinutes(layers: Int) -> Int {
  return layers * minutesToPrepareLayer
}

func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
  return preparationTimeInMinutes(layers: layers) + elapsedMinutes
}
