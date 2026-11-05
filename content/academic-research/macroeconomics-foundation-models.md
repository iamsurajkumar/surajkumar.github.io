---
title: "Macroeconomics with Foundation Models: Forecasting, Identification, and Structural Scenario Analysis"
date: 2026-07-19
draft: false
weight: 1
author: ["Pablo Guerrón-Quintana", "Suraj Kumar", "Zhihang Liang"]
Summary: "Working paper. Benchmarks the Chronos-2 time-series foundation model against BVARs for macroeconomic forecasting, structural identification, and scenario analysis."
---

*Working paper (with Pablo Guerrón-Quintana and Zhihang Liang), July 2026*

#### Download
[Paper (PDF)](https://drive.google.com/file/d/1vJMwqr3p0q3tF08YYZMNQ6GhdDPPSYsE/view?usp=share_link)

---

#### Abstract
Time series foundation models offer a promising alternative to Bayesian Vector Autoregressions (BVARs) for macroeconomic forecasting, structural identification, and scenario analysis. We evaluate Chronos-2, a state-of-the-art probabilistic foundation model, and benchmark its forecasting performance against BVAR across small, medium, and large variable sets drawn from the FRED-MD database. Chronos-2 outperforms BVAR on average, with its advantage most pronounced in crisis periods: while BVAR deteriorates markedly post-COVID, Chronos-2 remains robust under strong nonlinearity and short samples. We further show that this advantage persists at scale on the state-level FRED-SD panel: Chronos-2 jointly forecasts more than 1,400 state-level series in seconds — a regime in which the BVAR cannot be estimated — retaining its edge over the random-walk benchmark in roughly two-thirds of cases. Beyond forecasting, we make three further contributions. First, in the spirit of double machine learning, we use Chronos-2's forecast errors as a flexible nonparametric reduced form; combining a Cholesky decomposition with local projections (Jordà, 2005) then yields monetary policy IRFs consistent with the established SVAR literature. Second, we extend Antolín-Díaz et al. (2021)'s structural scenario analysis to a nonlinear, non-Gaussian setting by feeding Chronos-2 both observable paths and identified monetary shocks; under easing, output, consumption, and employment respond as theory predicts, but a price puzzle persists and investment responds with reversed sign. Third, we exploit Chronos-2's long-horizon forecasting to project seven macroeconomic variables over 50 years, documenting that the predictive distribution for Real GDP is markedly left-skewed: the lower 5% scenario implies an annualized contraction of 3% against a median of 1.22% — asymmetric downside risk that emerges endogenously without any structural prior, speaking to the Growth-at-Risk (Adrian et al., 2019) and rare disaster (Barro, 2006) literatures.

---

#### Presentations
RBA Continuing Education in Macroeconometrics Workshop, Sydney (November 2026, upcoming)
