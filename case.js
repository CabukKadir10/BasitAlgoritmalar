function sumOfDigits(value) {
  return value
    .toString()
    .split('')
    .map(Number)
    .reduce(function (a, b) {
      return a + b;
    }, 0)
}
function OddOrEven(value) {
  sum = sumOfDigits(value)
  remaining = sum % 2
  if(remaining == 0)
    return "Even"
  return "Odd"
}
console.log(OddOrEven(122))
