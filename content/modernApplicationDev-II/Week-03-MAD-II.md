---
Title: Frontend implementation, Programming Style, Types of State
Week: "03"
---


# Week 3: Frontend Implementation

> [!info]
> The **Frontend** is the part of an application that users **see and interact with**.
>
> It is responsible for displaying data and handling user interactions, while the backend performs the actual processing.

- **UI (User Interface)** = Jo dikhta hai (buttons, text, layout)
- **UX (User Experience)** = Kitna smooth aur mazedaar feel hota hai iykyk

# What is the [[Frontend]]?

## Simple Definition

- User-facing part of an application
- Displays information
- Collects user input
- Communicates with the backend

---

## [[UI vs UX]]

| Term                     | Meaning                                                           |
| ------------------------ | ----------------------------------------------------------------- |
| **UI (User Interface)**  | Visual elements like buttons, text, forms, colors, and layouts    |
| **UX (User Experience)** | How smooth, intuitive, and enjoyable the application feels to use |

---

# Frontend Requirements

## Essential Requirements

- Keep **Complex logic** in the backend.
- The frontend should primarily **display data** and collect user input.
- Do **not** rely on the frontend for permanent data storage.
- Design with the **stateless nature of HTTP** in mind.

---

## Desirable Characteristics

A good frontend should be:

- Responsive
	- Compatible with:
		- Mobile
		- Tablet
		- Desktop
- Fast
- Visually appealing
- Easy to navigate


> [!tip]
> Think of the frontend as the **presentation layer**.
>
> It displays information and captures user actions.
>
> The backend performs the actual work.

---

# Programming Styles

There are two common ways to build user interfaces.

# 1. [[Imperative Programming]]

> [!info]
> You describe **how** to perform every step.

Example mindset:

- Create a button.
- Add text.
- Attach an event listener.
- Wait for a click.
- Update the page manually.

Every action is written explicitly.

# 2. [[Declarative Programming]]

> [!info]
> You describe **what** the final UI should look like. Sirf batao ki **final result kaisa hona chahiye** Framework (jaise Vue/React) khud handle kar lega kaise

The framework decides **how** to update the page.
Examples:
- React
- Vue
- Svelte

## Core Principle

```text
UI = f(state)
```

**UI is a function of the current application state.**

Whenever the state changes, the UI updates automatically.
### Example

Instead of writing:

```text
If logged in:
    Hide Login Button
    Show Profile
    Show Logout Button
```

You simply describe:

```text
If user is logged in

Display:
- Profile
- Logout Button

Else

Display:
- Login Button
```

The framework handles the updates automatically.


> [!important]
> Declarative programming:
>
> - Requires less code
> - Is easier to maintain
> - Produces fewer bugs
>
> This is why modern frameworks like React and Vue use it.

---

# Types of State

> [!info]
> **State** is the data that determines how an application behaves and what it displays.

# 1. [[System State]]

Data stored by the backend.

Examples:
- Users
- Products
- Orders
- Database records

Characteristics:
- Shared by all users
- Large in size
- Managed on the server

# 2. [[Application State]]

Data related to a specific user or session.

Examples:
- Shopping cart
- Logged-in user
- Selected language
- Theme preference

Characteristics:
- User-specific
- Changes during application usage
- Drives application behavior

# 3. [[UI State (Ephemeral State)]]

Temporary interface-related data.

Examples:
- Loading spinner
- Open modal
- Selected tab
- Dropdown state

Characteristics:
- Short-lived
- Exists only while interacting with the UI


## Comparison

| State Type | Stored Where | Example |
|------------|-------------|---------|
| System State | Backend | Users, Orders, Products |
| Application State | Frontend / Session | Cart, Login, Theme |
| UI State | Frontend | Modal, Spinner, Selected Tab |


> [!note]
> Effective state management is one of the most important frontend skills.
>
> Many real-world frontend bugs are caused by incorrect state management.

---

# [[Application & UI Management]]

## HTTP is Stateless

Each HTTP request is independent. (har request pehle wali info bhool jaata hai)

The server does **not automatically remember** previous requests.

Because of this, state must be stored either:

- On the client (frontend)
- On the server
- Or in both


# Example: Tic-Tac-Toe

When designing the frontend, think about:

- What should be displayed?
- What determines what is displayed?
- How should user input be handled?
- How should the UI update after each move?

These questions guide frontend design.

# Real-World Example

## Amazon

| Feature | State Type |
|----------|------------|
| Product Database | System State |
| Shopping Cart | Application State |
| Dark Mode | Application State |
| Loading Spinner | UI State |
| Search Suggestions | UI State |
| Logged-in User | Application State |


# Cheat Sheet

| Concept | Description |
|----------|-------------|
| Frontend | User-facing part of an application |
| UI | Visual appearance |
| UX | User experience |
| Imperative | Describe *how* to perform tasks |
| Declarative | Describe *what* the final UI should be |
| State | Data that controls the UI |
| System State | Backend data |
| Application State | User/session data |
| UI State | Temporary interface data |
| HTTP | Stateless communication protocol |
![[week3Cheatsheet.png]]
> [!success]
> - The frontend displays information and handles user interaction.
> - UI is the visual interface; UX is the overall experience.
> - Modern applications use **declarative programming**.
> - **UI = f(state)** is the core idea behind frameworks like React and Vue.
> - Understand the difference between **System State**, **Application State**, and **UI State**—it is fundamental to frontend development.