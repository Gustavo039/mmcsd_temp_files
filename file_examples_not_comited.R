########## 1. MAIN

#' Fit fixed and random effects longitudinal model.
#'
#' Estimate the fixed effects of the model, also known as β parameters of the regression,taking into account the sampling plan of the research, and also estimating the covariance matrix of the model considering the estimates of β
#'
#' @param formula A formula
#' @param waves a dataframe column or an array
#' @param ids a dataframe column or an array
#' @param weights a dataframe column or an array
#' @param stratum a dataframe column or an array
#' @param cluster a dataframe column or an array
#' @param data A dataframe or tibble
#' @param sigma A character or a square matrix
#'
#' @return The fit model with class 'mmcsd'.
#'
#' @export
#' 
#' @examples  
#' fit <- mmcsd(
#'  score ~ wave + ageg + ecacg + qualifg,
#'  waves = wave, ids = id,
#'  weights = weight, stratum = strata, cluster = cluster,
#'  data = example_data, sigma = "exchangeable"
#' )


########## 2. MAIN

#' Fit covariance structered longitudinal model.
#'
#' Responsible for performing the modeling of the model's covariance matrix through the use of covariance structures.
#'
#' @param fit A fit model with class 'mmcsd'
#' @param fittingType A character with the fitting function type. See optins above
#' @param sigmaThetaExpr A character with the covariance structure type or a list of expressions
#' @param optimParams A list with configuration for optim function. 'Par' is required.
#'
#' @return The fit model with class 'mmcsd.theta'.
#'
#' @export
#' 
#' @examples
#' fit <- mmcsd(
#'  score ~ wave + ageg + ecacg + qualifg,
#'  waves = wave, ids = id,
#'  weights = weight, stratum = strata, cluster = cluster,
#'  data = example_data, sigma = "exchangeable"
#' )
#' fitTheta_ucm <- cov_mmcsd(fit,
#'  fittingType = "PML", sigmaThetaExpr = "UCM",
#'  optimParams = list(par = c(7, 5))
#' )


########## 2.10. MAIN 

#' covariance structure viewer to preview sigmaThetaExpr to be used in 'cov_mmcsd'.
#' 
#' Knowing the difficulty of visualizing the covariance structure, especially when the user chooses to determine his own structure. This function was developed,that allows the user to view the provided structure even before it is evaluated, that is, through mathematics symbolic.
#' 
#' @param sigmaThetaExpr A character with the covariance structure type or a list of expressions
#' @param numWaves An integer with the size of the square matrix to be printed.
#'
#' @return Return NULL and print in terminal the sigmaThetaExpr.
#'
#' @export
#' 
#' @examples 
#' sigmaThetaExpr_viewer("UCM", 5)


########## 2.11. MAIN

#' Summarise the results of 'cov_mmcsd' fit.
#'
#' @param object A mmcsd.theta fitted model
#' @param ... Additional params passed to summary
#'
#' @return Return NULL and print in terminal the results.
#'
#' @export
#' 
#' @examples
#' fit <- mmcsd(
#'  score ~ wave + ageg + ecacg + qualifg,
#'  waves = wave, ids = id,
#'  weights = weight, stratum = strata, cluster = cluster,
#'  data = example_data, sigma = "exchangeable"
#' )
#' fitTheta_ucm <- cov_mmcsd(fit,
#'  fittingType = "PML", sigmaThetaExpr = "UCM",
#'  optimParams = list(par = c(7, 5))
#' )
#' summary(fitTheta_ucm)


