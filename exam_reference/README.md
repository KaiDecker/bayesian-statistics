# Exam Reference

[简体中文](README.zh-CN.md)

A compact reference for Bayesian Statistics Chapters 1 and 2. The PDF is three A4 pages: two pages of formula summaries and one page for the textbook's joint normal mean-variance model. It is designed as a study and hand-copy reference, not as a one-page exam sheet.

## Scope

The reference covers common distributions and Gamma/Beta functions, conjugate priors, the three information sources, posterior weighted means and additive precision, posterior estimation and MSE, sufficient statistics, inverse-Gamma/chi-square credible bounds, three types of hypothesis tests, posterior prediction, and the joint normal model.

The five conjugate families follow textbook Table 1.3.1: binomial, Poisson, exponential, normal mean, and normal variance. The distribution summaries include support, parameterization, and moment-existence conditions. Posterior MSE and frequentist MSE are distinguished.

Textbook Example 1.5.1 covers the likelihood, joint prior, completing the square, posterior updates and factorization, the marginal t posterior for the mean, moments, and the variance credible upper bound. Hyperparameter selection, HPD intervals, and the likelihood principle are outside this sheet's scope.

## Notation and sources

Symbols are reused within each model, following the textbook and classroom notation. The joint normal model uses `mu`, `sigma^2`, `mu_0`, `kappa_0`, `nu_0`, and `sigma_0^2`.

The reference was checked against *Bayesian Statistics*, 2nd edition, by Mao Shisong and Tang Yincai (《贝叶斯统计》, 茆诗松、汤银才), the Chapter 1 and Chapter 2 slides, and the repository's blackboard transcription. The following are printed textbook page numbers; the source scan's page index is 13 pages higher.

| Topic | Textbook location | Course material |
| --- | --- | --- |
| Information sources, Bayes' assumption, posterior formula | Sections 1.1–1.2, pp. 1–9 | Chapter 1 slides and board Sections 1.1–1.2 |
| Conjugacy, weighted means, additive precision | pp. 11–16; Table 1.3.1 on p. 16 | Slides and board Section 1.3 |
| Joint normal mean-variance model | Example 1.5.1, pp. 20–22 | Slides and board Section 1.5 |
| Distributions and Gamma/Beta functions | Integrals used for Chapter 1 conjugate priors | Board Section 1.3 and standard distribution properties |
| Sufficient statistics | Section 1.6, pp. 24–25 | Slides and board Section 1.6 |
| Posterior MSE and estimation | Section 2.2, especially pp. 33–35 | Slides and board Section 2.2 |
| Inverse-Gamma/chi-square relation and credible limits | Section 2.3, pp. 38–41 | Slides and board Section 2.3 |
| Three types of hypothesis tests | Section 2.4, pp. 44–52 | Slides and board Section 2.4 |
| Predictive integrals | Section 2.5, pp. 55–56 | Slides and board Section 2.5 |

`Ga(alpha,lambda)` uses a **rate**, with density `lambda^alpha x^(alpha-1) exp(-lambda*x) / Gamma(alpha)` and mean `alpha/lambda`. This explicitly follows the density even where the textbook calls the second parameter a scale.

Bayes' uniform-prior assumption here refers to `U(0,1)` for a success probability, not to all parameters. All quantiles use left-tail probabilities: `P(Y <= q_p) = p`. For `IGa(alpha,beta)` and credibility `1-gamma`, the upper bound uses the chi-square `gamma` quantile and the lower bound uses its `1-gamma` quantile.

The sheet uses mathematically checked formulas rather than reproducing the board slips deliberately retained in the faithful transcription.

## Build

From this directory, run:

```sh
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
```

Use XeLaTeX with `ctex` and the Windows Chinese font set; `main.tex` explicitly selects `fontset=windows`. On another operating system, choose an available font set (for example, `fandol` with TeX Live) and inspect the rebuilt layout.

The PDF is A4 portrait, black-and-white, with two columns, 9 pt body text, 9 mm side margins, and 8 mm top/bottom margins. Print at A4, actual size / 100%. Its three pages require two sheets if printed double-sided. Recheck overflow, clipping, and missing glyphs after font or formula changes; do not remove formulas merely to meet a page limit.
