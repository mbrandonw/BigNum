//
//  Decimal.swift
//  BigNum
//
//  Created by Brandon Williams on 1/19/15.
//  Copyright (c) 2015 Brandon Williams. All rights reserved.
//

import Foundation

extension NSDecimalNumber : Equatable {}
public func == (left: NSDecimalNumber, right: NSDecimalNumber) -> Bool {
  return left.isEqualToNumber(right)
}


// MARK: Printable

//extension NSDecimalNumber : Printable {
//  public var description: String {
//    get {
//      return self.stringValue
//    }
//  }
//}


func + (left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
  return left.decimalNumberByAdding(right)
}

func - (left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
  return left.decimalNumberBySubtracting(right)
}

func * (left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
  return left.decimalNumberByMultiplyingBy(right)
}

func / (left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
  return left.decimalNumberByDividingBy(right)
}
