# README
![](https://img.shields.io/gem/v/rails?color=blue&label=rails&logo=ruby&logoColor=red)
![](https://img.shields.io/badge/license-MIT-green)

This project is an simple api to code snippets. Its objective is help developers creating tools to facilitate beginners in learning an programing language or finding an specific algorithm.

## API V1

### Definition and routers

An object in this api will have the following format:

```json
{
    "author": "jose",
    "source": "https://github.com/jadsonlucio/code_snippets/printcplus",
    "language": "C++",
    "code_snippet": "std:cout << 'teste';",
    "description": "print on c++",
    "algorithm": "none",
    "library": "std",
    "category": "learning",
    "difficulty": 1,
    "language_version": "0.1.0",
    "library_version": "0.1.0",
    "dependencies": "numpy==0.10, pandas==0.1.1"
}
```

The difficulty varying from 1 to 10. Where one is the simplest code and 10 the hardest code to understand.

The categories are inicialy divided into 5 groups: learning (code to learning the language syntax), bugfix (code that fix an problem), example (code that shows an example of something working), setup (code that helps the programmer to create an programing environment) and the category of 


# How to test

1. Install ruby and rails dependencies running the following command:
    ```bash
    bundle install
    ```

2. Populate the test database running:
    ```bash
    ruby db:migrate
    ruby db:reset
    ```

3. Run the server with the command
    ```bash
    rails server
    ```

4. Test the api endpoints installing extension `REST Client` in vscode and opening the `test-api-V1.http` file
