# Mastermind

**Odin Project** Ruby game project ran on _terminal_ (command line).

 - ***In this game there are two ways to play it***
1. Become a **Hacker** and crack the code !!! 
*OR*
2. BE THE **CREATOR** create it...

# Contents
[Aim of project](#aim-of-project)
[Structure of Project](#structure-of-project)
[Challenges and Solutions](#challenges-and-solutions)
[Development](#development)

## Aim of project

## Structure of Project

> [!NOTE]
> Thisis not the original version of the Mastermind game, here instead of guessing or creating color choices you must either guess an integer-based code of 4 digits  or create it and play against the computor to see the original rules for mastermind check [here](https://en.wikipedia.org/wiki/Mastermind_(board_game))


This game will have two *options* where:

- YOU create the code
- You must crack the code

## Challenges and Solutions

## Development

1. How to rearrang elemnts in an array in a random way ?
2. How to remove whitspace in an array ?
3. How to generate random elements from an array

1. => you use the `.shuffle()` Array instance method to return a copy of rearranged elements from the array
```
numbers = [1, 2, 3, 4, 5]
numbers_shuf = numbers.shuffle # store in var

print numbers_shuf => [1, 4, 2, 5, 3] # random order of elements
```

2. => To remove elements of whitespace in an array you use the `reject()` method that removess any element that meets its condition from an array (it does not mutate the caller)

```
arr = ["hello", " ", "hy"]
arr = arr.reject {|el| el.strip.empty?}

print arr # => ["hello", "hy"] returns array of non-whitespace elements
```
- The `reject` method works with boolean values 
- If each element has whitespace that is not needed you can use the `gsub(" ", "")` method with arguments to replace

2. => To get a random element from an array you use the `sample` method which returns a single random element from the array
```
numbers = [1, 2, 3, 4, 5]
random_number = numbers.sample

print random_number # => returns random number
```

- [x] To store **more than one** you can use a *loop* with another *empty array*
```
numbers = [1, 2, 3, 4, 5]
choices = Array.new

4.times do 
    random_number = numbers.sample
    choices.push(random_number)
end

print choices
```