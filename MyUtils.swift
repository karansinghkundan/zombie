//
//  MyUtils.swift
//  zombie
//
//  Created by Karan Kundan on 2020-06-10.
//  Copyright © 2020 Karan Kundan. All rights reserved.
//

import Foundation
import CoreGraphics
func + (left: CGPoint, right: CGPoint) -> CGPoint {
 return CGPoint(x: left.x + right.x, y: left.y + right.y)
}
func += (left: inout CGPoint, right: CGPoint) {
 left = left + right
}
func - (left: CGPoint, right: CGPoint) -> CGPoint {
 return CGPoint(x: left.x - right.x, y: left.y - right.y)
}
func -= (left: inout CGPoint, right: CGPoint) {
 left = left - right
}
func * (left: CGPoint, right: CGPoint) -> CGPoint {
 return CGPoint(x: left.x * right.x, y: left.y * right.y)
}
func *= (left: inout CGPoint, right: CGPoint) {
 left = left * right
}
func * (point: CGPoint, scalar: CGFloat) -> CGPoint {
 return CGPoint(x: point.x * scalar, y: point.y * scalar)
}
func *= (point: inout CGPoint, scalar: CGFloat) {
 point = point * scalar
}
func / (left: CGPoint, right: CGPoint) -> CGPoint {
 return CGPoint(x: left.x / right.x, y: left.y / right.y)
}
func /= ( left: inout CGPoint, right: CGPoint) {
 left = left / right
}
func / (point: CGPoint, scalar: CGFloat) -> CGPoint {
 return CGPoint(x: point.x / scalar, y: point.y / scalar)
}
func /= (point: inout CGPoint, scalar: CGFloat) {
 point = point / scalar
}
let π = CGFloat.pi
func shortestAngleBetween(angle1: CGFloat,
 angle2: CGFloat) -> CGFloat {
 let twoπ = π * 2.0
 var angle = (angle2 - angle1)
 .truncatingRemainder(dividingBy: twoπ)
 if angle >= π {
 angle = angle - twoπ
 }
 if angle <= -π {
 angle = angle + twoπ
 }
 return angle
}
extension CGFloat {
 func sign() -> CGFloat {
 return self >= 0.0 ? 1.0 : -1.0
 }
}

