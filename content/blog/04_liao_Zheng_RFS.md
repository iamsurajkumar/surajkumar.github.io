---
title: "Summary of Liao and Zheng (RFS) - Exchange Rate Dynamics and Country External Imbalance"
date: 2025-12-07T20:30:00+05:30
draft: False
author: ["Suraj Kumar"]
# description: "Analyzing the role of large firms in economic dynamics"
summary: "Summary of Liao and Zheng (RFS) - Exchange Rate Dynamics and Country External Imbalance"
cover:
    image: "/images/lz_2025_short.png"
    alt: "Hedging Behavior in Exchange Rate Dynamics"
    relative: false
---


![](/images/lz_2025_big.png)

---
# Motivation
1. This paper helps to explain, how the slow moving macro-financial variable such as the Net Foreign Asset or External imbalance can be linked to the exchange rate movement through the hedging behavior
2. Basically $$\uparrow \text{Financial Distress} \Rightarrow \uparrow \text{Currency Hedging} \quad \text{in proportion to NFA or Country Imbalance}$$
---


# Mechanism
1. During the period of distress or volatility, investors wants to hedge a greater portion of their foreign bond portfolios, not the equity portfolio. In order to do that, the constrained intermediary bank has to absorb this extra demand, for which it requires extra payments. This fees is basically the basis. The bank need this because in order to provide the hedge they have to part scarce capital in the form of reserves which earns less interest rate then the risk-free interest rate. 


**Main contribution**
1. Dollar debt imbalance more important than the net foreign asset position within the G-10 currencies. 

---

# Model
 
- $S_n, F_n$ quoted as foreign currency per dollar
- Two-period model where a investor from the country $n$ with pre-existing external position of $X^n$ in US-dollar denomated debt which matures in period 2. In-period 2, the investor converts that into domestic currency for consumption

**Budget Constraint**

The second period wealth

$$
W^n_2 = h^n X^n R^D F^n + (1-h^n) X^n R^D S^n_2
$$

The investor maximizes the mean-variance utility over there second-period wealth

$$
U^n = E[W^n_2] - \frac{\gamma}{2} Var[W^n_2]
$$

The **optimal hedge ratio** by first order condition is 

$$
h^n = 1 - \frac{E[\frac{S^n_2}{S^n_1}] - \frac{F^n}{S^n_1}}{\gamma Var[\frac{S^n_2}{S^n_1}] X^n S^n_1 R^D}
$$
## Assumptions


### Assumption 1

$$\begin{align*}
&\text{1.} \quad  \frac{E[\frac{S^n_2}{S^n_1}] - \frac{F^n}{S^n_1}}{X^n } > 0 \\
&\text{2.} \quad  \gamma Var[\frac{S^n_2}{S^n_1}] X^n S^n_1 R^D \geq \frac{E[\frac{S^n_2}{S^n_1}] - \frac{F^n}{S^n_1}}{X^n}
\end{align*}
$$

Assumption  means
1. Expected currency returns >  0 for countries with positive external imbalances and negative for countries with negative external imbalance. 
2. Optimal hedge ration never drops below zero. as imbalanes are large enough. 
3. Dynamics under the assumption 
	1.  $\uparrow X^n, \uparrow \gamma, \uparrow Var[S^n_2/S^n_1] \Rightarrow \uparrow h$ 


### Assumption 2

The currency forward trader has an alternative investment opportunity $I >0$ that provides the profit $G(I)$  such that    $G(I)> 0, G'(I)>0,G''(I)<0$ 


Let $q^n$ denotes the trader's position in dollar in period. So, if the trader is short on dollars in spot leg than $q^n <0$ which is the case when the investor from the country with positive external balance, $X^n > 0$, like Japan wants to hedge. Thus, the trader profit is 

$$
q^n b^n = q^n \left[ (1 + r^D) - \frac{S^n}{F^n} (1+ r^n)     \right] 
$$

The, $b^n$ is also called the cross-currency basis, its difference between the actural dollar risk-free rate, in the cash market, and synthetic dollar rate in the FX Forward market. The banks wants to borrow at the rate which is lower and lend at the rate which is higher. 

$b^n < 0 \text{ when } X_n <0$ as the dealer has to short dollars in the spot market (i.e borrow dollars in the sport market) in the period 1 to provide liquidity for the investor in forward market in period 2 (lend at the synthetic FX-implied dollar rate). 

By the CIP

$(1+ r^D) =(1+r^n)*\frac{S_n}{F_n}$

$r^D \sim r^n + s_n - f_n \Rightarrow f_n-s_n \sim r^n_t-r^D_t$


Thus the cross -currency basis is

$$\begin{align*}
b_t &= (f_n - s_n) -(r^n_t-r^D_t) \\
b_t & =r^D_t -\left[r^n_t - (f_n -s_n) \right]
\end{align*}
$$

### Assumption 3

When the trader lends in the forward market, it has to set aside a haircut $\kappa H(q^n)$ with $\kappa >0$. Thus 
$$
H(q) > 0, \quad
H'(q) > 0 \quad \text{if} \quad q > 0, \quad
H'(q) < 0 \quad \text{if} \quad q < 0, \quad
H''(q) > 0
$$

Thus, the trader selects how much capital $q^n$ to allocate to provide liquidity in each currency

$$
\max_{q^n} \sum_n b^n q^n + G\left( W - \kappa \sum H(q^n)  \right) 
$$

The FOC yields

$$
b^n = \kappa G'\left( W - \kappa \sum H(q^n)  \right) H'(q^n)
$$

Or the marginal gain = marginal profitability of the alternative investment


---
# Propositions


### Proposition 1
1. A country with positive external imbalance ($X > 0$) $\Rightarrow$  has negative basis and implies the currency forward is overvalued relative to spot.
2. A country with negative external imbalance ($X < 0$) $\Rightarrow$  has positive basis and implies the currency forward is undervalued relative to spot.
3. The magnitude of the the basis increases as magnitude of imbalance increase:  $\frac{d|b^n|}{d|X|} >0$ 

### Proposition 2
1. The magnitude of currency basis, $|b^n|$ increases because of its own currency volatility $Var[S^n_2]$ and also because of other country $m$ $Var[S^m_2]$ for $m \neq n$. 
2. $\frac{d|b^n|}{d Var[S^n_2]} \propto |X^n|, \frac{d|b^n|}{d Var[S^m_2]} \propto |X^n|$ 

Mechanism
$$
 Var[S^n_2 ] \uparrow \Rightarrow  h^n \uparrow \Rightarrow |b^n|  \uparrow \xrightarrow{\text{Intermediary balance sheet constraints }  \uparrow } |b^m| \uparrow
$$
### Proposition 3

1. The currency spot exchange rates also vary with the domestic exchange rate volatility in proportion  to their external imbalance. 

$$
X^n > 0: Var[S^n] \uparrow \xrightarrow{} \text{Currency appreciate} \propto |X^n|
$$
$$
X^n < 0: Var[S^n] \uparrow \xrightarrow{} \text{Currency depreciate}  \propto |X^n|
$$

### Proposition 4
1. The term structure is
	1. upward slopping in magnitude when the short-term basis is narrow.
	2. downward slopping in magnitude when the short-term basis is wide. 