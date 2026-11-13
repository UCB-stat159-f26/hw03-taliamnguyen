# tenniscareer
### Creating R Package for Tennis Abstract Data

`tenniscareer` retrieves and plots professional tennis career match data from Tennis Abstract. This builds off of the previous two homework assignments on data from the Tennis Abstract.

## Installation

You can install this developmental version via the following:

    # install.packages("remotes")
    remotes::install_github("UCB-stat159-f26/hw03-taliamnguyen")

## Usage

#### Loading the package

    library(tenniscareer)

#### Get career data

Use `career_data()` with a player's name:

    serena <- career_data("Serena Williams")
    head(serena)

This function can also take common variations of a given player's name, such as:

    career_data("serena williams")
    career_data("SerenaWilliams")

The returned data frame includes the following:

- `data` = match date
- `opponent` = opponent's name
- `opponent_age` = age of the opponent at time of the match
- `result` = match result for the given player

#### Plot career data

Use the vector assigned with `career_data()` for a given player:

    plot_career(serena)

This produces a scatter plot showing the opponent's age over the player's career, with points distinguished by match result via color.

## Data Source

Career match data are retrieved from Tennis Abstract.

## Development

This package includes mock Tennis Abstract JavaScript files (provided by `instructions.md`) in `inst/extdata/` for testing the parsing and cleaning functions without relying on a live server.

Tests can be run with:

    testthat::test_dir("tests/testthat")

### File Structure

## Personal Reflections
