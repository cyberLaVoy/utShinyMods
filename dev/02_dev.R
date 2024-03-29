# Building a Prod-Ready, Robust Shiny Application.
#
# README: each step of the dev files is optional, and you don't have to
# fill every dev scripts before getting started.
# 01_start.R should be filled at start.
# 02_dev.R should be used to keep track of your development during the project.
# 03_deploy.R should be used once you need to deploy your app.
#
#
###################################
#### CURRENT FILE: DEV SCRIPT #####
###################################

# Engineering

## Dependencies ----
## Amend DESCRIPTION with dependencies read from package code parsing
attachment::att_amend_desc()

## Add modules ----
## Create a module infrastructure in R/
golem::add_module(name = "rate_metric_bar_chart",
                  fct = "plot_generation",
                  with_test = TRUE) # Rate metric bar chart
golem::add_module(name = "over_time_line_chart",
                  fct = "plot_generation",
                  with_test = TRUE) # Over time line chart
golem::add_module(name = "summarized_data_table",
                  with_test = TRUE) # Interactive data table, summarized version
golem::add_module(name = "downloadable_data_table",
                  with_test = TRUE) # Interactive data table, downloadable version
golem::add_module(name = "help",
                  with_test = TRUE) # help module
golem::add_module(name = "sunburst_diagram",
                  with_test = TRUE) # Sunburst diagram
golem::add_module(name = "sankey_diagram",
                  with_test = TRUE) # Sankey diagram

## Add internal datasets ----
## If you have data in your package
usethis::use_data_raw(name = "entity_time_metric_categories_df", open = FALSE)
# ACTION: Code to generate this data frame will need to be written and ran to save the data in the package.

# IMPORTANT: There may be more random datasets to add, as module development continues...

# ACTION: created a sql directory in inst/
# this is where any custom sql for this project should be stored.

# install.packages("devtools")
devtools::install_github("dsu-effectiveness/utVizSunburst")

usethis::use_dev_package("utVizSunburst")

devtools::install_github("dsu-effectiveness/utVizSankey")

usethis::use_dev_package("utVizSankey")


## Add helper functions ----
## Creates fct_* and utils_*
golem::add_utils("style", with_test = TRUE)
#golem::add_fct("helpers", with_test = TRUE)
#golem::add_utils("helpers", with_test = TRUE)


## Continuation of DEV ####
## this is where the project currently is in development,
## any code after this has not been ran.
## The decision to use (or not use) the dev code below is up to the developer,
## and should be well documented here.

## External resources
## Creates .js and .css files at inst/app/www
golem::add_js_file("script")
golem::add_js_handler("handlers")
golem::add_css_file("custom")
# golem::add_sass_file("custom")

## Tests ----
## Add one line by test you want to create
usethis::use_test("app")

# Documentation

## Vignette ----
usethis::use_vignette("utShinyMods")
devtools::build_vignettes()

## Code Coverage----
## Set the code coverage service ("codecov" or "coveralls")
usethis::use_coverage()

# Create a summary readme for the testthat subdirectory
covrpage::covrpage()

## CI ----
## Use this part of the script if you need to set up a CI
## service for your application
##
## (You'll need GitHub there)
usethis::use_github()

# GitHub Actions
usethis::use_github_action()
# Chose one of the three
# See https://usethis.r-lib.org/reference/use_github_action.html
usethis::use_github_action_check_release()
usethis::use_github_action_check_standard()
usethis::use_github_action_check_full()
# Add action for PR
usethis::use_github_action_pr_commands()

# Travis CI
# usethis::use_travis()
# usethis::use_travis_badge()

# AppVeyor
# usethis::use_appveyor()
# usethis::use_appveyor_badge()

# Circle CI
# usethis::use_circleci()
# usethis::use_circleci_badge()

# Jenkins
# usethis::use_jenkins()

# GitLab CI
# usethis::use_gitlab_ci()

# You're now set! ----
# go to dev/03_deploy.R
rstudioapi::navigateToFile("dev/03_deploy.R")
