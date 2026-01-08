---
title: Syntax Highlighting
layout: post
author: Slavetomints
date: 2026-01-07
categories: [Demos]
tags: [demo, syntax highlighting]
description: Showcase of how different coding languages look
---

*All code examples were sourced from Wikipedia where available, some were sourced from alternative sites*

## Python

```py
text = input('Type a number, and its factorial will be printed: ')
n = int(text)

if n < 0:
    raise ValueError('You must enter a non-negative integer')

factorial = 1
for i in range(2, n + 1):
    factorial *= i

print(factorial)
```

## JavaScript

```js
function Person(name) {
    this.name = name;
}

function Student(name, id) {
    Person.call(this, name);
    this.id = id;
}

var bob = new Student("Robert", 12345);
console.log(bob.name); // Robert
```

## TypeScript

```ts
function greet(name: string, age?: number): string {
    if (age) {
        return `Hello, ${name}! You are ${age} years old.`;
    } else {
        return `Hello, ${name}!`;
    }
}
console.log("Optional Parameters:");
console.log(greet("Alice")); 
console.log(greet("Bob", 30)); 
```

## Java

```java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello World!");
    }
}
```

## C

```c
#include <stdio.h>

int main(void)
{
    printf("hello, world\n");
}
```

## C++

```c++
#include <iostream>

int main() {
    std::cout << "Hello, world!\n";
}
```

## C#

```c#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
 
namespace check1
{
    class Program
    {
        static void Main(string[] args)
        {
            int i;
            Console.Write("Enter a Number : ");
            i = int.Parse(Console.ReadLine());
            if (i % 2 == 0)
            {
                Console.Write("Entered Number is an Even Number");
                Console.Read();
            }
            else
            {
                Console.Write("Entered Number is an Odd Number");
                Console.Read();
            }
        }
    }
}
```

## Go

```go
package main

import "fmt"

func main() {
	fmt.Println("hello world")
}
```

## Rust

```rust
fn main() {
    let x = 10;
    if x > 5 {
        println!("value is greater than five");
    }

    if x % 7 == 0 {
        println!("value is divisible by 7");
    } else if x % 5 == 0 {
        println!("value is divisible by 5");
    } else {
        println!("value is not divisible by 7 or 5");
    }
}
```

## PHP

```php
function myAge(int $birthYear): string
{
    // calculate the age by subtracting the birth year from the current year.
    $yearsOld = date('Y') - $birthYear;

    // return the age in a descriptive string.
    return $yearsOld . ($yearsOld == 1 ? ' year' : ' years');
}

echo 'I am currently ' . myAge(1995) . ' old.';
```

## Ruby

```ruby
class Person
  attr_reader :name, :age
  def initialize(name, age)
    @name, @age = name, age
  end
  def <=>(person) # the comparison operator for sorting
    @age <=> person.age
  end
  def to_s
    "#{@name} (#{@age})"
  end
end

group = [
  Person.new("Bob", 33),
  Person.new("Chris", 16),
  Person.new("Ash", 23)
]

puts group.sort.reverse
```

## Swift

```swift
func divideByTwo(_ aNum: Int) -> Int {
    return aNum / 2
}

func multiplyByTwo(_ aNum: Int) -> Int {
    return aNum * 2
}

let mathOperation = multiplyByTwo

print(mathOperation(21)) // Prints "42"
```

## Kotlin

```kotlin
class User(val id: Int, val name: String, val address: String)
    
fun saveUserToDb(user: User) {
    fun validate(user: User, value: String, fieldName: String) {
        require(value.isNotEmpty()) { "Can't save user ${user.id}: empty $fieldName" }
    }
    
    validate(user, user.name, "Name") 
    validate(user, user.address, "Address")
    // Save user to the database 
    ...
}
```

## R

```r
# Create x and y values
x <- 1:6
y <- x^2

# Linear regression model: y = A + B * x
model <- lm(y ~ x)

# Display an in-depth summary of the model
summary(model)

# Create a 2-by-2 layout for figures
par(mfrow = c(2, 2))

# Output diagnostic plots of the model
plot(model)
```

## MATLAB

```matlab
b = [3 8 9 4 7 5];
sum1 = 0;
for k = 1:4
  sum1 = sum1 + b(k);
end

sum1
```

## Dart

```dart
void main() {
    int i = 20;
    print('fibonacci($i) = ${fibonacci(i)}');
}

/// Computes the nth Fibonacci number.
int fibonacci(int n) {
    return n < 2 ? n : (fibonacci(n - 1) + fibonacci(n - 2));
}
```

## Scala

```scala
import math.*
def mathFunction(num: Int) = 
  val numSquare = num*num
  (cbrt(numSquare) + log(numSquare)).toInt
```

## Shell / Bash

```sh
#!/bin/bash

nmcli connection modify "Wired connection 1" ipv4.dns "1.1.1.1"
nmcli connection down "Wired connection 1"
nmcli connection up "Wired connection 1"
ping archlinux.org -c 1
```

## PowerShell

```powershell
Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3" |
    Measure-Object -Property FreeSpace,Size -Sum |
    Select-Object -Property Property,Sum
```

## Objective-C

```objective-c
@interface ClassName : SuperclassName {
  // instance variables
}
+ classMethod1;
+ (return_type)classMethod2;
+ (return_type)classMethod3:(param1_type)param1_varName;

- (return_type)instanceMethod1With1Parameter:(param1_type)param1_varName;
- (return_type)instanceMethod2With2Parameters:(param1_type)param1_varName
                              param2_callName:(param2_type)param2_varName;
@end
```

## Assembly

*The rouge syntax highlighter officially supports ARM Assembly and some other variants. For a full list, check [here](https://github.com/rouge-ruby/rouge/tree/master/lib/rouge/lexers)*

```txt
section	.text       ; start of the code segment
   global _start    ; declare _start to be visible in the generated object file
	
_start:	        
   mov	edx,len     ; length of string, third argument to write()
   mov	ecx,msg     ; address of string, second argument to write()
   mov	ebx,1       ; file descriptor (standard output), first argument to write()
   mov	eax,4       ; system call number for write()
   int	0x80        ; system call trap
	
   mov	ebx,0       ; exit code, first argument to exit()
   mov	eax,1       ; system call number for exit()
   int	0x80        ; system call trap

section	.data       ; start of data segment
msg db 'Hello, world!', 0xa  ; string to be printed
len equ $ - msg     ; length of that string as a constant calculated at assembly time
```

## Apache Groovy

```groovy
class AGroovyBean {
  String color
}

def myGroovyBean = new AGroovyBean()

myGroovyBean.setColor('baby blue')
assert myGroovyBean.getColor() == 'baby blue'

myGroovyBean.color = 'pewter'
assert myGroovyBean.color == 'pewter'
```

## Perl

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my ( $remaining, $total );

$remaining=$total=shift(@ARGV);

STDOUT->autoflush(1);

while ( $remaining ) {
    printf ( "Remaining %s/%s \r", $remaining--, $total );
    sleep 1;
}

print "\n";
```

## Haskell

```haskell
factorial :: (Integral a) => a -> a

-- Using recursion (with the "ifthenelse" expression)
factorial n = if n < 2
              then 1
              else n * factorial (n - 1)

-- Using recursion (with pattern matching)
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Using recursion (with guards)
factorial n
   | n < 2     = 1
   | otherwise = n * factorial (n - 1)

-- Using a list and the "product" function
factorial n = product [1..n]

-- Using fold (implements "product")
factorial n = foldl (*) 1 [1..n]

-- Point-free style
factorial = foldr (*) 1 . enumFromTo 1
```

## Lua

```lua
do
  local oldprint = print
  -- Store current print function as oldprint
  function print(s)
    --[[ Redefine print function. The usual print function can still be used
      through oldprint. The new one has only one argument.]]
    oldprint(s == "foo" and "bar" or s)
  end
end

```

## Elixir

```elixir
schema "weather" do
  field :city     # Defaults to type :string
  field :temp_lo, :integer
  field :temp_hi, :integer
  field :prcp,    :float, default: 0.0
end

Weather |> where(city: "Kraków") |> order_by(:temp_lo) |> limit(10) |> Repo.all
```

## Julia

```julia
function greet(name::AbstractString)
    println("Hello, $name!")
end

greet("Alice")
```

## Visual Basic .NET

```vb
Sub Greet(name As String)
    Console.WriteLine($"Hello, {name}")
End Sub

Greet("Bob")
```

## Cisco IOS

```cisco_ios
int G0/1
ip addr 192.168.1.1 255.255.255.0
no shutdown
exit
```

## COBOL

```cobol
ADD 1 TO x
ADD 1, a, b TO x ROUNDED, y, z ROUNDED

ADD a, b TO c
    ON SIZE ERROR
        DISPLAY "Error"
END-ADD

ADD a TO b
    NOT SIZE ERROR
        DISPLAY "No error"
    ON SIZE ERROR
        DISPLAY "Error"
```