//
//  Decimal.swift
//  BigNum
//
//  Created by Brandon Williams on 1/19/15.
//  Copyright (c) 2015 Brandon Williams. All rights reserved.
//

import Foundation

struct Decimal {
  let d: NSDecimalNumber

  init(_ decimal: NSDecimalNumber) {
    d = decimal
  }
}


// MARK: Equatable

extension Decimal : Equatable {}
func == (left: Decimal, right: Decimal) -> Bool {
  return left.d.isEqualToNumber(right.d)
}


// MARK: Printable

extension Decimal : Printable {
  var description: String {
    return self.d.stringValue
  }
}


func + (left: Decimal, right: Decimal) -> Decimal {
  return Decimal(left.d.decimalNumberByAdding(right.d))
}

func - (left: Decimal, right: Decimal) -> Decimal {
  return Decimal(left.d.decimalNumberBySubtracting(right.d))
}

func * (left: Decimal, right: Decimal) -> Decimal {
  return Decimal(left.d.decimalNumberByMultiplyingBy(right.d))
}

func / (left: Decimal, right: Decimal) -> Decimal {
  return Decimal(left.d.decimalNumberByDividingBy(right.d))
}
