let paymentPeriodinYears = 5.0
let monthsInYear = 12.0

func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let totalBudget = monthlyBudget * monthsInYear * paymentPeriodinYears

  switch price {
  case let p where p <= totalBudget:
    return "Yes! I'm getting a \(vehicle)"
  case let p where p <= totalBudget * 1.1:
    return "I'll have to be frugal if I want a \(vehicle)"
  default:
    return "Darn! No \(vehicle) for me"
  }
}

func licenseType(numberOfWheels wheels: Int) -> String {
  var vehicleType: String? = nil

  switch wheels {
  case 2, 3:
    vehicleType = "a motorcycle"
  case 4, 6:
    vehicleType = "an automobile"
  case 18:
    vehicleType = "a commercial trucking"
  default:
    vehicleType = nil
  }

  guard let vehicleType else {
    return "We do not issue licenses for those types of vehicles"
  }
  return "You will need \(vehicleType) license for your vehicle"
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
