# My Software Development Process

Purpose: Documenting my development process.
Audience: Myself. For my own future reference.

## Documentation
* Utilize auto-documentation wherever possible, e.g. `FastAPI`.
* `README` describes design choices. Includes colored badges for build status, tests passing etc.

## Coding style and practices
* Always as strictly typed as possible, even in Python where type annotations are not enforced during compilation to bytecode. They are still useful for tools such as IDEs and linters, and for code readability.
* Always as much pre-defined and pre-allocated as possible. For example, if we know a list/array will have `exactly N`, or `at most N` elements, this should be made clear at time of declararion or assignment.

## Python local development workflow:
Write code -> lint using Ruff -> Run all tests e.g. pytest -> 

## Testing


## Profiling: database, network, CPU


## Deployment: local, remote, prod

## Useful/reusable readme snippets:
:white_check_mark: - "completed"

:clock8: or :pencil: - "work in progress"

&#9744; - "not yet started"
