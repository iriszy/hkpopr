#' Hong Kong public opinion data (data frame)
#'
#' A data frame based on 39 survey tables from the Public Opinion Porgramme (POP)
#' at the University of Hong Kong. Each row is a half-yearly summary of surveys
#' on different topics.
#'
#' @format A data frame with 53 rows and 48 columns:
#' \describe{
#'   \item{Date of survey}{Date of survey (half-yearly)}
#'   \item{CE_name}{Name of Chief Executive}
#'   \item{CE_score}{Rating of Chief Executive, 0-100, 0 indicating the most negative}
#'   \item{gov_overall}{Rating of overall performance of HK government, 1-5, 1 indicating the most negative}
#'   \item{gov_econ}{Rating of HK government on economic growth, 1-5, 1 indicating the most negative}
#'   \item{gov_live}{Rating of HK government on improving livelihood, 1-5, 1 indicating the most negative}
#'   \item{gov_demo}{Rating of HK government on democratization, 1-5, 1 indicating the most negative}
#'   \item{gov_human_rights}{Rating of HK government on protecting human rights and freedom, 1-5, 1 indicating the most negative}
#'   \item{gov_china}{Rating of HK government on handling its relation with central government, 1-5, 1 indicating the most negative}
#'   \item{hk_future}{People's confidence in HK's future, net value, percentage of confident minus percentage of not confident}
#'   \item{china_future}{People's confidence in China's Future, net value, percentage of confident minus percentage of not confident}
#'   \item{system}{People's confidence in one-country-two-systems, net value, percentage of confident minus percentage of not confident}
#'   \item{political_concern}{Percentage of people who think political problems are their most concerned problems}
#'   \item{economic_concern}{Percentage of people who think economic problems are their most concerned problems}
#'   \item{livelihood_concern}{Percentage of people who think livelihood problems are their most concerned problems}
#'   \item{democracy}{Degree of democracy, 0-10, 0 indicating the most negative}
#'   \item{freedom}{Degree of freedom, 0-10, 0 indicating the most negative}
#'   \item{rule_of_law}{Compliance with the rule of law, 0-10, 0 indicating the most negative}
#'   \item{prosperity}{Degree of prosperity, 0-10, 0 indicating the most negative}
#'   \item{stability}{Degree of stability, 0-10, 0 indicating the most negative}
#'   \item{fairness}{Degree of fairness, 0-10, 0 indicating the most negative}
#'   \item{civilization}{Degree of civilization, 0-10, 0 indicating the most negative}
#'   \item{corruption_free}{Degree of corruption-free, 0-10, 0 indicating the most negative}
#'   \item{equality}{Degree of equality, 0-10, 0 indicating the most negative}
#'   \item{efficiency}{Degree of efficiency, 0-10, 0 indicating the most negative}
#'   \item{social_welfare}{Sufficiency of social welfare, 0-10, 0 indicating the most negative}
#'   \item{public_order}{Degree of public order, 0-10, 0 indicating the most negative}
#'   \item{free_speech}{Freedom of speech, 0-10, 0 indicating the most negative}
#'   \item{free_press}{Freedom of press, 0-10, 0 indicating the most negative}
#'   \item{free_publication}{Freedom of publication, 0-10, 0 indicating the most negative}
#'   \item{free_protest}{Freedom of procession and demonstration, 0-10, 0 indicating the most negative}
#'   \item{free_association}{Freedom of sssociation, 0-10, 0 indicating the most negative}
#'   \item{free_strike}{Freedom to strike, 0-10, 0 indicating the most negative}
#'   \item{free_move}{Freedom to Enter or Leave Hong Kong, 0-10, 0 indicating the most negative}
#'   \item{free_academic}{Freedom to engage in academic research, 0-10, 0 indicating the most negative}
#'   \item{free_art}{Freedom to engage in artistic/literary creation, 0-10, 0 indicating the most negative}
#'   \item{free_religion}{Freedom of religious belief, 0-10, 0 indicating the most negative}
#'   \item{media_credibility}{Credibility rating of the news media, 0 indicating the most negative}
#'   \item{hker}{percentage of people who identify themselves as Hongkonger}
#'   \item{hker_in_china}{percentage of people who identify themselves as Hongkonger in China}
#'   \item{chinese_in_hk}{percentage of people who identify themselves as Chinese in Hong Kong}
#'   \item{chinese}{percentage of people who identify themselves as Chinese}
#'   \item{mixed_identity}{percentage of people who think they have mixed identities}
#'   \item{very_trust_cg}{percentage of people who think they very trust central government}
#'   \item{quite_trust_cg}{percentage of people who think they quite trust central government}
#'   \item{half_half}{percentage of people who think their trust in central government is half-half}
#'   \item{quite_distrust_cg}{percentage of people who think they quite distrust central government}
#'   \item{very_distrust_cg}{percentage of people who think they very distrust central government}
#' }
#' @source \url{https://www.hkupop.hku.hk/english/popexpress/index.html}
"pop_score"
