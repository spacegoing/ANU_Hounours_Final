p(X) &= \frac{1}{Z}\prod_{C}{\psi_C(X_C)}\\
     &= \frac{1}{Z}exp(-\sum_{C}{E(X_C))}

arg\max_{X}{P(X)} = arg\min_{X}{E(X)}

\psi_C^H = \min_{k=1,...,K}{a_k\sum_{i \in c}{w_i^Cy_i}+b_k}=\min_{k=1,...,K}{a_kW_C(Y_C)+b_k}

a_{k-1}x+b_{k-1}&>a_{k}x + b_k\\
a_{k+1}x+b_{k+1}&>a_{k}x + b_k

a_k&>a_{k+1}\\
b_k&<b_{k+1}

E(y) = \sum{\psi_i^U(y_i)}+\sum{\psi_{i,j}^P(y_i,y_j)} + \sum_{c \in C}{\psi_c^H(y_c)}

E^c(y_c,z)=&a_1W_c(y_c)+b_1\\
&+\sum_{k=1}^{K-1}z_k((a_{k+1}-a_k)W_c(y_c)+b_{k+1}-b_k)


E^c(y_c,z)=&\sum_{k=1}^{K-1}{(b_{k+1}-b_k)z_k} + \sum_{k=1}^{K-1}{(a_{k+1}-a_k)\bar{z_k}}\\
&\sum_{i \in c}{a_1w_i^cy_i}+\sum_{k=1}^{K-1}\sum_{i \in c}(a_k - a_{k+1})w_i^c\bar{y_i}z_k

f_w(x) = arg\max_{(y,h) \in \mathcal{Y}\times\mathcal{H}}[w\cdot \phi(x,y,h)]

&\Delta((y_i,h_i^*(w)),(\hat{y}_i(w),\hat{h}_i(w)))\\
\leq&\bigg(\max_{(\hat{y},\hat{h}) \in \mathcal{Y}\times\mathcal{H}}[w\cdot \phi(x_i,\hat{y},\hat{h})+\Delta(y_i,\hat{y},\hat{h})]\bigg)-\max_{h \in \mathcal{H}}{w\cdot\phi(x_i,y_i,h)}

E^c(y_c,z)&=a_1W_c(y_c)+b_1+\sum_{k=1}^{K-1}z_k((a_{k+1}-a_k)W_c(y_c)+b_{k+1}-b_k)\\
&=a_1W_c(y_c)+b_1+\sum_{k=1}^{K-1}(a_{k+1}-a_k)z_kW_c(y_c)+\sum_{k=1}^{K-1}(b_{k+1}-b_k)z_k

k^*=arg\max_{k}{\big[\big[z_k=1\big]\big]}

\tilde{\psi}_c^H(y_c) = \min_{k=1,\dots,K}{a_kW_c(y_c)+b_k+b^{const}}

arg\min_{y_c}{\psi_c^H(y_c)}=arg\min_{y_c}{\tilde{\psi}_c^H(y_c)}
