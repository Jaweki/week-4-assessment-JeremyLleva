// ASSESSMENT 4: JavaScript Coding Practical Questions

// --------------------1) Create a function that takes in an array. Each time the function is run, remove the first item from the array and shuffle the remaining content. If the array is empty, return "The array is empty."





var collections = ["purple", "blue", "green", "yellow", "pink"]
// Expected output example1 (can be a different order): ["yellow", "blue", "pink", "green"]
// Expected output example2 (can be a different order): ["blue", "green", "pink"]
// Expected output example3 (can be a different order): ["pink", "green"]

const shiftShuffle = (arr) => {
	arr.shift()
	return arr.sort(() => Math.random() - 0.5);
}

console.log(shiftShuffle(collections))
console.log(shiftShuffle(collections))
console.log(shiftShuffle(collections))

// --------------------2) Create a function that takes in an array of numbers and returns the sum of all the numbers cubed.

var cubeAndSum1 = [2, 3, 4]
// Expected output: 99
var cubeAndSum2 = [0, 5, 10]
// Expected output: 1125

const squaredSum = (arr) => {
	let sum = 0;
	for(let i = 0; i < arr.length; i++){
		sum += Math.pow(arr[i], 3) 
	}
	return sum
}

console.log(squaredSum(cubeAndSum1))
console.log(squaredSum(cubeAndSum2))

// --------------------3) Create a function that takes an array of numbers and returns an array of the minimum and maximum numbers in that order.





var nums1 = [3, 56, 90, -8, 0, 23, 6]
// Expected output: [-8, 90]
var nums2 = [109, 5, 9, -59, 8, 24]
// Expected output: [-59, 109]


// --------------------4) Create a function that takes in a string and returns a string with every other letter capitalized.

var testString1 = "albatross"
// Expected output: "aLbAtRoSs"
var testString2 = "jabberwocky"
// Expected output: "jAbBeRwOcKy"

const alternateCapitale = (string) => {
	let newString = []
	for(let i = 0; i < string.length; i++){
		if(i%2 != 0)
			newString.push(string[i].toUpperCase())
		else
			newString.push(string[i])

	}
	return newString.join("")
}
console.log(alternateCapitale(testString1))
console.log(alternateCapitale(testString2))
// --------------------5) Create a function that takes in two arrays as arguments and returns one array with no duplicate values. STRETCH: Use the spread operator.

var arr1 = [3, 7, 10, 5, 4, 3, 3]
var arr2 = [7, 8, 2, 3, 1, 5, 4]
// Expected output: [3, 7, 10, 5, 4, 8, 2, 1]

const uniqueValues = (arr1, arr2) => {
	let newSet = new Set()
	for(let i = 0; i < arr1.length; i++)
		newSet.add(arr1[i])
	for(let i = 0; i < arr2.length; i++)
		newSet.add(arr2[i])

	return Array.from(newSet)
}
console.log(uniqueValues(arr1, arr2))