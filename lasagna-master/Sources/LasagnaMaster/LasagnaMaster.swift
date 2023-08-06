let minutesPerLayer = 2
typealias Quantities = (noodles: Double, sauce: Double)

func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
  expectedMinutesInOven - elapsedMinutes
}

func preparationTimeInMinutes(layers: String...) -> Int {
  layers.count * minutesPerLayer
}

func quantities(layers: String...) -> Quantities {
  let noodleLayers = layers.filter { $0 == "noodles" }
  let sauceLayers = layers.filter { $0 == "sauce" }
  return (
    noodles: Double(noodleLayers.count) * 3,
    sauce: Double(sauceLayers.count) * 0.2
  )
}

func toOz(_ amount: inout Quantities) {
  amount.sauce *= 33.814
}

func redWine(layers: String...) -> Bool {
  func whiteWineLayers() -> Int {
    layers.filter { ["mozzarella", "ricotta", "béchamel", "bÃ©chamel"].contains($0) }.count
  }
  func redWineLayers() -> Int {
    layers.filter { ["sauce", "meat"].contains($0) }.count
  }

  return redWineLayers() >= whiteWineLayers()
}
