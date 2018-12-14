#' hkpopr: A package for getting Hong Kong public opinion data.
#'
#' The hkpopr package provides two datasets and one function:
#' pop_list, pop_score and hkpop().
#'
#' @section pop_list dataset:
#' The pop_list dataset is a list based on 39 survey tables from the Public Opinion
#' Porgramme (POP) at the University of Hong Kong. Each survey table is a collection of
#' surveys that conducted on a half-yearly basis on the same topic.
#'
#' @section pop_score dataset:
#' The pop_score dataset is a data frame based on 39 survey tables from the Public
#' Opinion Porgramme (POP) at the University of Hong Kong. Each row is a half-yearly
#' summary of surveys on different topics.
#'
#' @section hkpop function:
#' The hkpop function allows the user to get Hong Kong public opinion data from the
#' Public Opinion Programme (POP) survey center at the University of Hong Kong. It
#' asks the user to enter the url of a particular survey from the POP website:
#' \url{https://www.hkupop.hku.hk/english/popexpress/index.html}, and returns a cleaned
#' data frame.
#'
#' @docType package
#' @name hkpopr
NULL
