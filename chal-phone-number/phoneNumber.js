function phone (a) {
    console.log(`(${a[0]}${a[1]}${a[2]}) ${a[3]}${a[4]}${a[5]}-${a[6]}${a[7]}${a[8]}${a[9]}`)
}
let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
phone(arr)

//OR Loop method

function phoneLoop (a) {
    let one = ["("]
for(let i = 0; i < 3; i++) {
    one.push(a[i])
} console.log(one + ")")
}
phoneLoop(arr)
// returns (,1,2,3)

const phoneNumber = (arr) => {
    let numset1 = arr.slice(0, 3).join('')
    let numset2 = arr.slice(3, 6).join('')
    let numset3 = arr.slice(6).join('')
    let number = `(${numset1}) ${numset2}-${numset3}`
    return number
}
console.log(phoneNumber(arr))

//solution
function createPhoneNumber(numbers) {
    var format = "(xxx) xxx-xxxx";
    for(var i = 0; i < numbers.length; i++) {
        format = format.replace('x', numbers[i])
    }
    return format
}
console.log(createPhoneNumber(arr))
