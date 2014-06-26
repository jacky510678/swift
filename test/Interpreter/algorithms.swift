// RUN: %target-run-simple-swift | FileCheck %s

// Create a new array
var arr = [Int](count: 10, repeatedValue: 0)
for i in 0..<10 { arr[i] = i % 7 + 2 }
println(arr)
// CHECK: [2, 3, 4, 5, 6, 7, 8, 2, 3, 4]

// min and max element
println(minElement(arr))
// CHECK-NEXT: {{^}}2{{$}}
println(maxElement(arr))
// CHECK-NEXT: {{^}}8{{$}}

// min and max element of a slice
println(minElement(arr[1..<5]))
// CHECK-NEXT: {{^}}3{{$}}
println(maxElement(arr[1..<5]))
// CHECK-NEXT: {{^}}6{{$}}

// sorting

// FIXME: compilation fails without the temporary xxx
var xxx = sorted(["apple", "Banana", "cherry"])
println(xxx)

// CHECK-NEXT: [Banana, apple, cherry]

// FIXME: compilation fails without the temporary yyy
var yyy = sorted(["apple", "Banana", "cherry"],
               { $0.lowercaseString > $1.lowercaseString })
println(yyy)
// CHECK-NEXT: [cherry, Banana, apple]
