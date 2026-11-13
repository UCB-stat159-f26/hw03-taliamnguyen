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

The package uses `roxygen2` for generating documentation and `testthat` for testing. These are only needed in developing and testing the package.

Tests can be run with:

    testthat::test_dir("tests/testthat")

### Repository Structure

| File | Purpose |
|---|---|
| `DESCRIPTION` | Includes package metadata, dependencies, author information, and package description |
| `inst/extdata/FemalePlayerCareer.js` | Mock Tennis Abstract JavaScript data used to test parsing and cleaning of female player career data; provided by `instructions.md` |
| `inst/extdata/MalePlayerCareer.js` | Mock Tennis Abstract JavaScript data used to test parsing and cleaning of male player career data; provided by `instructions.md` |
| `instructions.md` | Includes the instructions to complete the assignment, as well as specific requirements specifically for this class. |
| `LICENSE` | This specifically specifies the MIT license under which the package is distributed. |
| `man/career_data.Rd` | This is automatically generated documentation for `career_data()` function. |
| `man/plot_career.Rd` | This is automatically generated documentation for `plot_career()` function. |
| `NAMESPACE` | Specifies the functions to be exported by the package and its package-level namespace information. |
| `R/career_data.R` | Defines the main `career_data()` function, which retrieves and cleans a player's career match data. |
| `R/clean_femaledata.R` | Cleans and transforms female player career data, including calculating opponent age from date-of-birth information. |
| `R/clean_maledata.R` | Cleans and transforms male player career data using the opponent age provided in the source data. |
| `R/download_career_js.R` | Downloads a player's career JavaScript data from Tennis Abstract. |
| `R/normalize_playername.R` | This normalizes player names into the format needed to construct Tennis Abstract URLs. |
| `R/parse_career_js.R` | This parses the JavaScript career data and converts it into a tabular structure for further processing. |
| `R/plot_career.R` | Defines `plot_career()`, which creates a scatter plot of opponent age over the player's career. |
| `R/url_player.R` | This creates the Tennis Abstract URL corresponding to a player's name. |
| `README.md` | Provides an overview of the package, installation instructions, usage examples, and repository structure. |
| `tenniscareer.Rproj` | This is an RStudio project file used to organize and work on the package. |
| `tests/testthat.R` | This sets up the `testthat` framework for running the package's tests. |
| `tests/testthat/test_cleaner.R` | Tests the functions that clean female and male career data. |
| `tests/testthat/test_parser.R` | Tests that the mock JavaScript career files are parsed into the expected dimensions and structure. |

## Personal Reflections
