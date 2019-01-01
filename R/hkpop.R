#' Get Hong Kong Public Opinion Data.
#'
#' This function allows the user to get Hong Kong public opinion data from the
#' Public Opinion Programme (POP) survey center at the University of Hong Kong.
#'
#' The function asks the user to enter the url of a particular survey from the
#' POP website: \url{https://www.hkupop.hku.hk/english/popexpress/index.html}.
#' It works on selected surveys: Popularity of Chief Executive (half-yearly only);
#' Popularity of the Government; Appraisal of Current Conditions; Social Indicators;
#' Freedom Indicators; Rule of Law Indicators; Media Performance; People's Ethnic Identity;
#' some National Issues.
#'
#' @param url the url of a particular survey
#' @usage hkpop(url)
#' @return a data frame of the survey table which can be worked with in R
#' @examples
#' hkpop("https://www.hkupop.hku.hk/english/popexpress/sargperf/sarg/halfyr/datatables.html")
#' @export


hkpop <- function(url = "https://www.hkupop.hku.hk/english/popexpress/sargperf/sarg/halfyr/datatables.html") {
  library(rvest)
  library(xml2)
  library(dplyr)
  library(stringr)
  if (url %in% c(
    "https://www.hkupop.hku.hk/english/popexpress/ce2017/cl/halfyr/datatables.html",
    "https://www.hkupop.hku.hk/english/popexpress/ce2012/cy/halfyr/datatables.html",
    "https://www.hkupop.hku.hk/english/popexpress/ce2005/donald_new/halfyr/datatables.html")) {
    pop <- read_html(url)
    pop_node <- html_node(pop, xpath = '//*[@id="popexpress"]/span/span/table')
    pop_table <- html_table(pop_node)
    colnames_pop <- pop_table[1, ] %>% str_remove_all("[^A-Za-z\\s()-]")
    colnames(pop_table) <- colnames_pop
    pop_table <- pop_table[-1, ]
    pop_table[, 1] <- pop_table[, 1] %>% str_remove_all("[^0-9/-]")
    pop_table[, 2:ncol(pop_table)] <- as.data.frame(gsub("[^0-9\\.%-]", "",
                                                         as.matrix(pop_table[, 2:ncol(pop_table)])))
    for (i in 2:ncol(pop_table)) {
      if (str_detect(pop_table[, i], "%")) {
        pop_table[, i] <- as.numeric(sub("%","", pop_table[, i]))/100
      } else {
        pop_table[, i] <- as.numeric(as.character(pop_table[, i]))
      }
    }
    return(pop_table)
  } else {
    pop <- read_html(url)
    pop_node <- html_node(pop, xpath = '//*[@id="popexpress"]/table')
    pop_table <- html_table(pop_node)
    colnames_pop <- pop_table[1, ] %>% str_remove_all("[^A-Za-z\\s()-]")
    colnames(pop_table) <- colnames_pop
    pop_table <- pop_table[-1, ]
    pop_table[, 1] <- pop_table[, 1] %>% str_remove_all("[^0-9/-]")
    pop_table[, 2:ncol(pop_table)] <- as.data.frame(gsub("[^0-9\\.%-]", "",
                                                         as.matrix(pop_table[, 2:ncol(pop_table)])))
    for (i in 2:ncol(pop_table)) {
      if (str_detect(pop_table[, i], "%")) {
        pop_table[, i] <- as.numeric(sub("%","", pop_table[, i]))/100
      } else {
        pop_table[, i] <- as.numeric(as.character(pop_table[, i]))
      }
    }
    return(pop_table)
  }
}


