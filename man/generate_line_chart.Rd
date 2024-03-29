% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mod_over_time_line_chart_fct_plot_generation.R
\name{generate_line_chart}
\alias{generate_line_chart}
\title{Generate Line Chart}
\usage{
generate_line_chart(
  df,
  x,
  y,
  x_label,
  y_label,
  x_is_continuous = TRUE,
  x_angle = 45,
  x_format = function(x) {
     x
 },
  y_format = function(x) {
     x
 },
  grouping = 0,
  group_labeling = "",
  legend_title = "",
  legend_position = "right",
  lin_reg = FALSE
)
}
\arguments{
\item{df}{The data frame containing the data to be plotted.}

\item{x}{The column name of the data frame containing the x-axis values.}

\item{y}{The column name of the data frame containing the y-axis values.}

\item{x_label}{The label to be used for the x-axis.}

\item{y_label}{The label to be used for the y-axis.}

\item{x_is_continuous}{A Boolean indicating whether the x-axis values are continuous or not. Defaults to TRUE.}

\item{x_angle}{The angle, in degrees, at which to rotate the x-axis tick labels. Defaults to 45.}

\item{x_format}{A function used to format the x-axis values. Defaults to the identity function (i.e. no formatting).}

\item{y_format}{A function used to format the y-axis values. Defaults to the identity function (i.e. no formatting).}

\item{grouping}{The column name of the data frame to use for grouping the data. Defaults to 0 (no grouping).}

\item{group_labeling}{A string to be used as a label for the group. This is used in the tooltip for each data point. Defaults to the empty string.}

\item{legend_title}{The title for the legend. Defaults to the empty string.}

\item{legend_position}{The position of the legend on the plot. Defaults to "right".}

\item{lin_reg}{A boolean indicating whether to include a linear regression line on the plot. Defaults to FALSE.}
}
\value{
Returns a plotly object containing the line chart, this chart can be further customized using plotly functions.
}
\description{
The generate_line_chart function is used to create a line chart from a given data frame.
}
