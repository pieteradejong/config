# My Software Development Process

<<<<<<< HEAD
_Documenting my development process._

## Project Usage/Audience

## Version Management
`git`

## Documentation
* In code: utilize auto-documentation, especially for APIs.
* Describe design choices including alternatives and reasoning.
* In GitHub README, include green/red badges for "does it still work."

## Code
* Always as strictly typed as possible, even in Python where type annotations are not enforced during compilation to bytecode. They are still useful for tools such as IDEs and linters, and for code readability.
* Always as much pre-defined and pre-allocated as possible. For example, if we know a list/array will have `exactly N`, or `at most N` elements, this should be made clear at time of declararion or assignment.

## Testing
=======
Purpose: Documenting my development process.
Audience: Myself. For my own future reference.

## Documentation
* Utilize auto-documentation wherever possible, e.g. `FastAPI`.
* `README` describes design choices. Includes colored badges for build status, tests passing etc.

## Coding style and practices
* Always as strictly typed as possible, even in Python where type annotations are not enforced during compilation to bytecode. They are still useful for tools such as IDEs and linters, and for code readability.
* Always as much pre-defined and pre-allocated as possible. For example, if we know a list/array will have `exactly N`, or `at most N` elements, this should be made clear at time of declararion or assignment.
>>>>>>> 2a0dd642242261c49cabbb0ae2c945681ac8d572

## Python: local development workflow:
Write code -> lint using Ruff -> Run all tests e.g. pytest -> 

<<<<<<< HEAD
## Profiling: database, network, CPU


## Deployment: local, remote, prod

## Useful/reusable readme snippets:
:white_check_mark: - "completed"

:clock8: or :pencil: - "work in progress"

&#9744; - "not yet started"


# Dev process

Python:
* local: run `ruff`, `black`, `pytest`. Include each in `pre-commit`.
* GitHub action (as my personal CI): run the same.

TypeScript/JavaScript: 
* local: run `eslint` for syntax/style errors, `prettier` for style issues.
* GitHub action (as my personal CI): 
=======
## Python profiling: database, network, CPU
TODO: research integration of profiling tools into workflow.
>>>>>>> 2a0dd642242261c49cabbb0ae2c945681ac8d572

## README personal template/guidelines
* descriptive title
* screenshot if possible, or a diagram of architecture / code flow
* if applicable, a note about project status (alpha, beta, production ready, just a script, etc.)
* tech stack with links
  * relevant URLs if "based on" other projects
* Feature roadmap

<<<<<<< HEAD

=======
### Useful emojis / graphics
- [x] Feature completed
- [-] Feature in progress
- [ ] Feature not started
- :white_check_mark: - "completed"
- :clock8: or :pencil: - "work in progress"
- &#9744; - "not yet started"
>>>>>>> 2a0dd642242261c49cabbb0ae2c945681ac8d572
