import UIKit

var a = 2
var b = 4

swap(&a, &b)
print(a)
print(b)

a = a ^ b
b = a ^ b
a = a ^ b

a
b
