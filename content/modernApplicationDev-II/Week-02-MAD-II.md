---
Title: JavaScript Collections, Modularity, Asynchrony, JSON
Week: "02"
---
# [[Arrays]]

> [!info]
> An **Array** is an ordered collection that stores multiple values in a single variable.

# Key Features

- Can store **any data type**
  - Number, String, Boolean, Object, Function- Even a mix of all of them
- Access elements using an **index**
- `length` returns the number of elements
- Supports iteration using loops
- Can contain **holes (empty slots)**, although they should be avoided

## Example

```javascript
const mixed = [
    42,
    "Garvit",
    true,
    { skill: "JS" },
    function () {   console.log("Hello");}
];

console.log(mixed[0]);      // 42
console.log(mixed.length);  // 5
```

---

## Accessing Elements

```javascript
const fruits = ["Apple", "Banana", "Mango"];

console.log(fruits[0]); // Apple
console.log(fruits[1]); // Banana
console.log(fruits[2]); // Mango
```

## Array Length

```javascript
const fruits = ["Apple", "Banana", "Mango"];

console.log(fruits.length); // 3
```

## Mixed Data Types

```javascript
const data = [
    10,
    "Hello",
    true,
    null,
    { name: "Garvit" },
    [1, 2, 3]
];
```

---

> [!tip]
> Prefer **`const`** for arrays.
>
> ```javascript
> const arr = [];
> ```
>
> The contents of the array can still be modified.

---

> [!warning]
> Avoid **holes (empty slots)** in arrays.
>
> ```javascript
> const arr = [1, , 3];
> ```
>
> Sparse arrays can produce unexpected behavior with loops and array methods.

---

# [[Iteration]]

> [!info]
> **Iteration** means visiting each element one by one.

## [[Iterable]]
An object whose elements can be accessed sequentially.

Common iterables include:
- Arrays
- Strings
- Maps
- Sets
- Many DOM collections
>[!note] **Iterable** = Object jisko sequentially access kar sakte ho (jaise array, string).

## [[Iterator]]
An **Iterator** keeps track of the current position and returns the next value when requested.

>[!note] Iterator = Pointer jo next element ki taraf point karta hai.


## Using `for...of`

```javascript
const fruits = ["Apple", "Banana", "Mango"];

for (const fruit of fruits) {
    console.log(fruit);
}
```

## Traditional Loop

```javascript
const fruits = ["Apple", "Banana", "Mango"];

for (let i = 0; i < fruits.length; i++) {
    console.log(fruits[i]);
}
```


# Useful Object Helpers

## `Object.keys()`

Returns an array of keys.

```javascript
const user = {
    name: "Garvit",
    age: 20
};

console.log(Object.keys(user));
```

Output

```
["name", "age"]
```

## `Object.entries()`

Returns key-value pairs.

```javascript
const user = {
    name: "Garvit",
    age: 20
};

console.log(Object.entries(user));
```

Output

```
[
  ["name", "Garvit"],
  ["age", 20]
]
```

**Helper Functions**:
- [[Object.keys(obj)]] → keys ki array
- [[Object.entries(obj)]] → [key, value] pairs

> [!important]
> Understanding iteration is essential before learning:
>
> - `map()`
> - `filter()`
> - `reduce()`
> - `find()`
> - `forEach()`

# Functional Array Methods

These methods make code shorter, cleaner, and more readable.
## `map()`

Creates a **new array** by transforming every element.

```javascript
const numbers = [1, 2, 3, 4, 5];

const doubled = numbers.map(x => x * 2);

console.log(doubled);
```

Output

```
[2, 4, 6, 8, 10]
```

---

## `filter()`

Returns elements that satisfy a condition.

```javascript
const numbers = [1, 2, 3, 4, 5];

const even = numbers.filter(x => x % 2 === 0);

console.log(even);
```

Output

```
[2, 4]
```

---

## `find()`

Returns the **first matching element**.

```javascript
const numbers = [1, 2, 3, 4, 5];

const result = numbers.find(x => x > 3);

console.log(result);
```

Output

```
4
```

# Callback Function

> [!info]
> A **Callback** is a function passed as an argument to another function.

Example:

```javascript
const numbers = [1, 2, 3];

numbers.map(function (number) {
    return number * 2;
});
```

Arrow function version:

```javascript
numbers.map(number => number * 2);
```


> [!tip]
> Array methods can be **chained** together.

```javascript
const result = numbers
    .map(x => x * 2)
    .filter(x => x > 5)
    .map(x => x + 1);
```

This style is called **functional programming** and is commonly used in modern JavaScript.

---

# Quick Comparison

| Method      | Purpose                 | Returns      |                                                   |
| ----------- | ----------------------- | ------------ | ------------------------------------------------- |
| `map()`     | Transform every element | New array    | har element pe function chala ke naya array banao |
| `filter()`  | Keep matching elements  | New array    | condition satisfy karne wale elements lo          |
| `find()`    | First matching element  | Single value | pehla matching element                            |
| `forEach()` | Perform an action       | `undefined`  |                                                   |

# Cheat Sheet

| Concept    | Description                               |
| ---------- | ----------------------------------------- |
| Array      | Ordered collection of values              |
| Index      | Position of an element (`0`, `1`, `2`...) |
| `length`   | Number of elements                        |
| Iterable   | Can be traversed sequentially             |
| Iterator   | Tracks the current position               |
| Callback   | Function passed to another function       |
| `map()`    | Transform data                            |
| `filter()` | Select matching data                      |
| `find()`   | Find first matching element               |


> [!success]
> - Arrays can store values of any type.
> - Access elements using indexes.
> - Use `const` unless you need to reassign the array.
> - Prefer `for...of` and array methods over manual loops when appropriate.
> - Learn `map()`, `filter()`, and `find()` well—they are used extensively in modern JavaScript.

# Other Collections 

# [[Maps]]

> [!info]
> A **Map** is a collection of **key-value pairs** where **keys can be of any data type**.

Unlike objects, a Map can use **objects, arrays, functions, or primitives** as keys.

## Creating a Map

```javascript
const myMap = new Map();

myMap.set("name", "Garvit");
myMap.set(42, "The answer");

console.log(myMap.get("name")); // Garvit
console.log(myMap.size);        // 2
```

>[!note] Normal objects ki jagah Map jb use kro  jab keys complex hon (objects, functions etc.)

## Common Methods

| Method            | Purpose                   |
| ----------------- | ------------------------- |
| `set(key, value)` | Add or update a value     |
| `get(key)`        | Retrieve a value          |
| `has(key)`        | Check if a key exists     |
| `delete(key)`     | Remove a key              |
| `clear()`         | Remove all entries        |
| `size`            | Number of key-value pairs |

>[!important]  Why Use a Map Instead of an Object?

| Map | Object |
|------|--------|
| Keys can be any data type | Keys are usually strings or symbols |
| Preserves insertion order | Order rules are more complex |
| Built-in `size` property | Need `Object.keys().length` |
| Designed for key-value storage | General-purpose object |


> [!tip]
> Use a **Map** when:
>
> - Keys are not strings.
> - Order of insertion matters.
> - Frequent additions and removals are expected.

---

# [[Sets]]

> [!info]
> A **Set** stores **unique values only**.

Duplicate values are automatically removed.
## Example

```javascript
const mySet = new Set([1, 2, 2, 3, 3]);

console.log(mySet);
```

Output

```
Set {1, 2, 3}
```

## Common Methods

| Method | Purpose |
|---------|---------|
| `add(value)` | Add a value |
| `delete(value)` | Remove a value |
| `has(value)` | Check if a value exists |
| `clear()` | Remove everything |
| `size` | Number of unique values |

## Common Use Cases

- Removing duplicates
- Unique tags
- Unique usernames
- Tracking visited items

> [!note]
> **WeakMap** and **WeakSet** are specialized collections used for memory management.
>
> They are advanced topics and can be learned later.

---
# [[Destructuring]]

> [!info]
> **Destructuring** extracts values from arrays or objects into variables.

It makes code shorter and easier to read.

# Array Destructuring

```javascript
const arr = [10, 20, 30];

const [a, b, c] = arr;

console.log(a); // 10
console.log(b); // 20
console.log(c); // 30
```

---
## Using the Rest Operator

```javascript
const arr = [10, 20, 30];

const [first, ...rest] = arr;

console.log(first); // 10
console.log(rest);  // [20, 30]
```

# Object Destructuring

```javascript
const user = {
    name: "Garvit",
    age: 25,
    skill: "JS"
};

const { name, age } = user;

console.log(name); // Garvit
console.log(age); // 25
```


## Renaming Variables

```javascript
const user = {
    name: "Garvit"
};

const { name: userName } = user;

console.log(userName);
```

> [!tip]
> Destructuring is commonly used in:
>
> - Function parameters
> - React components
> - API responses
> - Object manipulation

---

# [[Generators]]
Functions jo yield keyword se ek-ek value detein hain.
> [!info]
> A **Generator** is a special function that can pause execution and return values one at a time using the `yield` keyword.

## Example

```javascript
function* count() {
    yield 1;
    yield 2;
    yield 3;
}
```

Each call to `.next()` returns the next value.


> [!note]
> Generators are an advanced feature.
>
> They are useful for:
>
> - Lazy evaluation
> - Custom iterators
> - Handling asynchronous workflows
>
> Beginners can safely skip them for now.

---

# [[Modules]]

> [!info]
> **Modules** organize code into separate files.

Benefits:
- Better organization
- Reusable code
- Easier maintenance
- Avoids global variables

# [[Exporting Code]]

```javascript
// utils.js

export function add(x, y) {
    return x + y;
}
```

# [[Importing Code]]

```javascript
// main.js

import { add } from "./utils.js";

console.log(add(5, 3));
```

---

# Module Systems

| Module System | Used In |
|---------------|---------|
| `<script>` | Basic browser projects |
| CommonJS (`require`) | Node.js |
| ES Modules (`import/export`) | Modern JavaScript (Recommended) |

---

# [[npm]] (Node Package Manager)

> [!info]
> **npm** is the default package manager for Node.js.

It allows you to install reusable libraries instead of writing everything from scratch.

Examples:
- React
- Vue
- Lodash
- Express
- Axios

## Installing a Package

```bash
npm install lodash
```

or

```bash
npm i lodash
```


> [!important]
> Modern JavaScript projects almost always use:
>
> - ES Modules
> - npm
>
> These are essential tools for building scalable applications.


>[!note]  **Bundlers** (webpack, Vite) package npm modules for browser use


---
# [[Objects]]

> [!info]
> An **Object** stores data as **key-value pairs**.
>
> In JavaScript, almost everything is built around objects. Arrays, functions, dates, maps, and many other structures are objects.


# Creating an Object

The most common way is using an **Object Literal**.

```javascript
const user = {
    name: "Garvit",
    age: 25,
    greet() {
        console.log("Hello, I am " + this.name);
    }
};

user.greet();
```

Output

```
Hello, I am Garvit
```

# Accessing Properties

```javascript
console.log(user.name);

console.log(user["age"]);
```

Both notations are valid.

| Syntax | Use When |
|---------|----------|
| `object.property` | Property name is known |
| `object["property"]` | Property name is dynamic |

---

# The `this` Keyword

> [!info]
> [[this keyword]] - current object ko refer karta ha

```javascript
const user = {
    name: "Garvit",

    greet() {
        console.log(this.name);
    }
};

user.greet();
```

Output

```
Garvit
```

# Useful Object Methods

## `Object.keys()`

Returns an array of property names.

```javascript
Object.keys(user);
```

Output

```javascript
["name", "age"]
```


## `Object.values()`

Returns an array of values.

```javascript
Object.values(user);
```

Output

```javascript
["Garvit", 25]
```

## `Object.entries()`

Returns key-value pairs.

```javascript
Object.entries(user);
```

Output

```javascript
[
  ["name", "Garvit"],
  ["age", 25]
]
```

---

# [[Prototype-Based Inheritance]]

- Har object ka ek **prototype** hota hai
- Properties/methods parent se automatically mil jaati hain
- Single inheritance chain

## Example

```javascript
const animal = {
    eats: true
};

const rabbit = Object.create(animal);

console.log(rabbit.eats);
```

Output

```
true
```

## Prototype Chain

```text
rabbit
   │
   ▼
animal
   │
   ▼
Object.prototype
   │
   ▼
null
```

JavaScript searches **up the chain** until it finds the requested property.


> [!important]
> JavaScript is **prototype-based**, not class-based.
>
> ES6 `class` syntax is simply a cleaner way of working with prototypes.

---

# [[Classes]] (Modern Syntax)

Classes provide a more familiar syntax for creating objects.

## Example

```javascript
class Person {

    constructor(name) {
        this.name = name;
    }

    greet() {
        console.log("Hi, I am " + this.name);
    }

}

const person = new Person("Garvit");

person.greet();
```

Output

```
Hi, I am Garvit
```

---

# Inheritance

```javascript
class Animal {

    constructor(name) {
        this.name = name;
    }

}

class Dog extends Animal {

    constructor(name) {
        super(name);
    }

}

const dog = new Dog("Bruno");
```


> [!warning]
> Important constructor mein super() call karna padta hai agar parent class se inherit kar rahe ho.

---

# [[Asynchronous JavaScript]]

> [!info]
> JavaScript executes one task at a time, but it can perform long-running operations asynchronously.


This prevents the application from freezing while waiting for tasks like:

- Reading files
- API requests
- Database queries
- Timers

**Call Stack**: Functions ka execution order track karta hai (LIFO – Last In First Out).
**Event Loop**: Jab stack empty ho, task queue se next task leke execute karta hai.
in detail:
# [[Call Stack]]

The **Call Stack** keeps track of function execution.

It follows the **LIFO (Last In, First Out)** principle.

```text
Top
│
function C()
function B()
function A()
│
Bottom
```

The last function added is executed first.

---

# [[Event Loop]]

The **Event Loop** continuously checks:

1. Is the Call Stack empty?
2. If yes, move the next task from the Queue to the Stack.

```text
Callback Queue
      │
      ▼
 Event Loop
      │
      ▼
 Call Stack
```

This is what enables asynchronous programming.

---

# Why [[Callbacks]]?

Long-running operations should not block the main thread.

Instead, JavaScript executes them in the background and calls a callback when finished.

## [[Synchronous]] Example

```javascript
const data = fs.readFileSync("file.txt");

// Execution stops here until the file is read.
```


## [[Asynchronous]] Example

```javascript
fs.readFile("file.txt", (err, data) => {
    console.log(data);
});

// Other code continues executing.
```


> [!tip]
> Modern JavaScript primarily uses:
>
> - Promises
> - `async` / `await`
>
> They are easier to read and maintain than nested callbacks.

---

# [[JSON]] (JavaScript Object Notation)

> [!info]
> JSON is the standard format used to exchange data between applications.

Most APIs send and receive JSON.

# Convert Object to JSON

```javascript
const user = {
    name: "Garvit",
    skills: ["JS", "Success"]
};

const jsonString = JSON.stringify(user);

console.log(jsonString);
```

Output

```json
{"name":"Garvit","skills":["JS","Success"]}
```

# Convert JSON to Object

```javascript
const object = JSON.parse(jsonString);

console.log(object.name);
```

Output

```
Garvit
```


> [!success]
> - Objects are the foundation of JavaScript.
> - `this` refers to the current object.
> - JavaScript uses **prototype-based inheritance**.
> - ES6 classes are syntactic sugar over prototypes.
> - Learn the **Call Stack**, **Event Loop**, and **async/await** thoroughly—they are core JavaScript concepts.
> - JSON is the standard format for exchanging data with APIs.