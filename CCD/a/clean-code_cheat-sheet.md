# Einsendeaufgabe Clean Code Development - Aufgabe A
Erstellung eines Clean Code Cheat Sheets

## Reasons
Code is clean when it is easy to understand - for every team member. With understandability comes 
* readability, 
* modifiability, 
* extensibility and 
* maintainability. 

All these requirements are necessary to keep a project running over a long period of time without accumulating a large amount of technical debt.

**Bugs can't hide in clean code**

Many bugs are introduced by modifying existing code. The
reason for this is that the developer changing the code cannot fully comprehend the impact of the changes made. Clean code minimizes the risk of introducing bugs by making the code as easy to understand as possible.
## Resources
* [Clean Code Developer Initiative](https://clean-code-developer.de/)
* [31 Days of Refactoring](https://lostechies.com/seanchambers/2009/10/20/31-days-of-refactoring-ebook/)
* [The Joel Test: 12 Steps to Better Code](https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code/)


## Belts with all Principles and Practices 
Why should I use it?
* **Grade 0 Black**: readiness to become a CCD. There is not yet daily reflection involved concerning the CCD values
* **Grade 1 Red**:
  * **Principles**:
    * Don’t Repeat Yourself (DRY): _Every duplication of both code and manual tasks fosters inconsistencies and mistakes._
    * Keep it simple, stupid (KISS): _Doing more than the obvious keeps customers waiting and complicates solutions unnecessarily._
    * Beware of Optimizations!: _Optimizations cost effort. Being aware of that often saves precious capacity for stuff the customer really benefits from._
    * Favour Composition over Inheritance (FCoI): _Composition promotes loose coupling and more flexible testability of a system._
    * Integration Operation Segregation Principle (IOSP): _A broad symptom of code which is hard to change are deep hierarchies of functional dependencies. The decrease understandability and hamper both automatized tests and refactoring._
  * **Practices**:
    * Boy Scout Rule: _Every time you work on some code it may get a little bit better. Without bureaucratic planning._
    * Root Cause Analysis: _While eliminating symptoms brings quick relief, it costs more effort in the long run. You will be more efficient, if you have a look under the surface of problems._
    * Version Control: _Being afraid of damaging a running system paralyzes software development. Using version control that fear is obsolete and development can progress quickly and bravely._
    * Simple Refactoring Patterns: _Improving code is easier if you know typical improvement patterns. Their usage scenarios sensitize for weaknesses in self-written code. As accepted patterns they encourage to be applied._
    * Daily Reflection: _There is no improvement, no progress, no learning without Reflection. But only if reflection is on the schedule, it will happen under daily business pressure._
  
* **Grade 2 Orange**:
  * **Principles**:
    * Single Level of Abstraction (SLA)
    * Single Responsibility Principle (SRP)
    * Separation of Concerns (SoC)
    * Source Code Conventions
  * **Practices**
    * Issue Tracking
    * Automatized Integration Tests
    * Read, Read, Read
    * Reviews
  
* **Grade 3 Yellow**:
  * **Principles**
    * Interface Segregation Principle (ISP)
    * Dependency Inversion Principle (DIP)
    * Liskov Substitution Principle
    * Principle of Least Astonishment
    * Information Hiding Principle
  * **Practices**
    * Automatized Unit Tests
    * Mockups (Testdummies)
    * Code Coverage Analyse
    * Participation in Professional Events
    * Complex Refactorings
  
* **Grade 4 Green**
    * **Principles**
      * Open Closed Principle
      * Tell, don´t ask
      * Law of Demeter
    * **Practices**
      * Continuous Integration
      * Static Code Analysis (Metrics)
      * Inversion of Control Container
      * Share Experience
      * Error Measurement 

* **Grade 5 Blue**
  * **Principles**
      * Design and Implementation don’t overlap 
      * Implementation reflects Design
      * You Ain´t Gonna Need It (YAGNI)
  * **Practices**
    * Continuous Delivery
    * Iterative Development
    * Component Orientation
    * Test first
  
* **Grade 6 White**
  * incorporates all principles and practices. 
  * developer works permanently with all faces of the value system. 
  * restarting the red grade after 21 days

## Principles
follow these principles
* **Use Loose Coupling**: 
  * coupled items = at least one of them uses the other
  * looser coupling = less knowledge about each other 
* **Use High Cohesion**:
  * cohesion = degree to which elements belong together
  * high cohesion for methods and fields in a single class 
  * high cohersion for classes of a component
* **Keep Changes Local**:
    * keeping changes local reduces involved costs and risks
* **Use Removable Blocks**: 
    * remove too complicated block and replace it with one or simpler blocks.
* **Use Mind-sized Components**:
    * break the whole down into understandable components

## Code smells
avoid the following code smells:
* **Rigidity**: software is difficult to change; a small change causes several subsequent changes.
* **Fragility**: single change can cause breaking of software in many places 
* **Immobility**: parts of the code can hardly be reused in other projects.
* **Viscosity of Design**: shortcuts and introducing technical debt requires less effort than doing it the right way.
* **Viscosity of Environment**: tasks like building or testing are not executed properly and technical debt is introduced.
* **Needless Complexity**: design contains currently not useful elements, which adds complexity and makes the code harder to comprehend and changes more complex than necessary.
* **Needless Repetition**: exact code duplications or design duplicates, changes are more expensive and more error-prone 
* **Opacity**: changes in code that is hard to understand takes additional time and can result in defects due to not understanding the side effects.

## General Rules
follow these general rules:
* **Follow Standard Conventions**: follow coding-, architecture-, design guidelines and check them with tools
* **Keep it Simple, Stupid (KISS)**: simpler is always better, reduce complexity as much as possible.
* **Boy Scout Rule**: Leave the campground cleaner than you found it. ;-)
* **Root Cause Analysis**: look for the root cause of a problem.
* **Avoid Multiple Languages in One Source File**: JavaScript, HTML, CSS...

## Dependencies
* **Make Logical Dependencies Physical**: If module A depends upon module B, the dependency should be physical,
not just logical. Don’t make assumptions!!!
* **Singletons / Service Locator**: Use dependency injection. Singletons hide dependencies.
* **Base Classes Depending On Their Derivatives**: Base classes should work with any derived class.
* **Avoid Too Much Information**: Minimise interface to minimise coupling
* **Avoid Feature Envy**: methods of a class should be interested in own variables and functions
not the ons of others.
* **Avoid Artificial Coupling**: Do not artificially couple s.o. that doesn't depend upon each other
* **Avoid Hidden Temporal Coupling**: If the order of some method calls is important, make sure they have to be called in that order.
* **Law of Demeter/Transitive Navigation**: A module should know only its direct dependencies.

