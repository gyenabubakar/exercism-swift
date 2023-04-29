import Foundation

let hoursPerDay = 8;
let billableDaysInMonth = 22;

func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hoursPerDay) * Double(hourlyRate)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let daily = dailyRateFrom(hourlyRate: hourlyRate)
  let month = daily * Double(billableDaysInMonth)
  let discounted = (discount / 100) * month
  return (month - discounted).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let daily = dailyRateFrom(hourlyRate: hourlyRate)
  let discounted = (discount / 100) * daily
  let dailyWithDiscount = daily - discounted
  let days = budget / dailyWithDiscount
  return floor(days)
}
