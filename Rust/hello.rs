/* 
Albert Astrom and Sam Polyakov
CS333
Project 2
hello.rs
*
TO COMPILE: rustc hello.rs
TO RUN: ./hello
*/
fn main() {
    println!("Pick a number from one to ten! I will try to guess it!");

    let mut input = get_number();

    let guess = 5;

    while input != guess {
        println!("I guessed the wrong number :(. Let's try again... (enter a number)");
        input = get_number();
    }

    println!("I guessed the right number!");
}

fn get_number() -> u32 {
    let mut input = String::new();
    std::io::stdin()
        .read_line(&mut input)
        .expect("Failed to read line");
    let input: u32 = input.trim().parse().expect("Please type a number!");

    input
}
