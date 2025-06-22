# String Calculator (TDD Kata)

This is a simple Ruby implementation of the [String Calculator TDD Kata](https://kata-log.rocks/string-calculator-kata), built using Test-Driven Development (TDD) principles with RSpec.

## ✨ Features

- Returns `0` for an empty string
- Returns a single number as-is
- Handles comma `,` and newline `\n` as default delimiters
- Supports custom delimiters using `//[delimiter]\n[numbers]` syntax
- Throws an exception when negative numbers are passed
- Includes detailed tests using RSpec

---

## 🛠️ Project Structure

├── lib/
│ └── string_calculator.rb
├── spec/
│ ├── lib/
│ │ └── string_calculator_spec.rb
│ └── spec_helper.rb
├── Gemfile
├── Gemfile.lock
├── .rspec
└── README.md

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/anishraheja/string_calculator.git
cd string_calculator
```

### 2. Install dependencies
`bundle install`

### 3. Run tests
`bundle exec rspec spec/lib/string_calculator_spec.rb`

📦 Requirements
Ruby 2.5 or newer

Bundler (`gem install bundler`)
