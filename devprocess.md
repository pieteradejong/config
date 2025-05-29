# My Software Development Process

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



