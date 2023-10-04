/* 
Sam Polyakov and Albert Astrom
CS333
Project 2
helloWorld.swift
*
TO RUN: swift helloWorld.swift
*/

// variables for printing birthday
var string1: String = "Hello, "
var string2: String = "world!\n"

var albert: String = "Albert's birthday is on: "
var albertBdayMonth: Int = 12
var albertBdayDay: Int = 01
var birthYear: Int = 2003

var sam: String = "Sam's birthday is on: "
var samBdayMonth: Int = 10
var samBdayDay: Int = 05

var albertString: String = albert + String(albertBdayMonth) + "/" + String(albertBdayDay) + "/" + String(birthYear)
var samString: String = sam + String(samBdayMonth) + "/" + String(samBdayDay) + "/" + String(birthYear) + "\n"

// printing statements and asking a question
print(string1 + string2 + albertString)
print(samString)
print("What year were you born?")


// getting user input, responding
if let input = readLine(), let year = Int(input){
    let ageDifference: Int = year - birthYear
    if(ageDifference < 0){
        print("You were born " + String(ageDifference*(-1)) + " years before Albert and Sam")
    }
    else if(ageDifference > 0){
        print("You were born " + String(ageDifference) + " years after Albert and Sam")
    }
    else{
        print("You were born the same year as Albert and Sam!")
    } 
} 
else{
    print("Thats not a year!")
}
