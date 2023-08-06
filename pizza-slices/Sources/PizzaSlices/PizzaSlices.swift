import Foundation

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  guard case let (diameter?, slices?) = (diameter, slices),
        diameter >= 0 && slices >= 1 else {
    return nil
  }
  let radius = diameter / 2
  return (Double.pi * pow(radius, 2)) / Double(slices)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  let pizzaA = (diameter: Double(diameterA), slices: Int(slicesA))
  let pizzaB = (diameter: Double(diameterB), slices: Int(slicesB))

  let areaA = sliceSize(diameter: pizzaA.diameter, slices: pizzaA.slices)
  let areaB = sliceSize(diameter: pizzaB.diameter, slices: pizzaB.slices)

  switch (areaA, areaB) {
    case (let a, nil) where a != nil:
      return "Slice A is bigger"
    case (nil, let b) where b != nil:
      return "Slice B is bigger"
    case let (a?, b?) where a > b:
      return "Slice A is bigger"
    case let (a?, b?) where b > a:
      return "Slice B is bigger"
    default:
      return "Neither slice is bigger"
  }
}
