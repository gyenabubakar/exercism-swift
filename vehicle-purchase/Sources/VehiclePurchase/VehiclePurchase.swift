let paymentPeriodinYears = 5.0

func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let totalAmountIn5Years = monthlyBudget * 12 * paymentPeriodinYears

  if totalAmountIn5Years >= price {
    return "Yes! I'm getting a \(vehicle)"
  }

  let affordabilityGap = price - totalAmountIn5Years
  let affordabilityGapPercentage = (affordabilityGap / totalAmountIn5Years) * 100

  if affordabilityGapPercentage <= 10 {
    return "I'll have to be frugal if I want a \(vehicle)"
  }

  return "Darn! No \(vehicle) for me"
}

func licenseType(numberOfWheels wheels: Int) -> String {
  switch wheels {
  case 2, 3:
    return "You will need a motorcycle license for your vehicle"
  case 4, 6:
    return "You will need an automobile license for your vehicle"
  case 18:
    return "You will need a commercial trucking license for your vehicle"
  default:
    return "We do not issue licenses for those types of vehicles"
  }
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
  guard yearsOld < 10 else {
    return 25
  }

  let baseCost = msrp > 25_000 ? msrp : 25_000
  let tenPercentOfBaseCost = 0.1 * Double(baseCost)
  let newCost = Double(baseCost) - (tenPercentOfBaseCost * Double(yearsOld))

  return Int(newCost / 100)
}
