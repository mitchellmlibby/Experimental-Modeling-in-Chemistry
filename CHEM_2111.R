


# tools  ------------------------------------------------------------------

#if you match the units correctly, this calculates an enzyme's Micahelis-Menten constant  
K_m<- function(v_max, S, v_0){
  K_m <- (v_max*S/v_0)-S
  print(K_m)
}
#if you match the units correctly, this calculates an enzyme's maximum rate in xM/min
V_max <- function(v_0, K_m, S){
  V_max <- (v_0*K_m/S) + v_0
  print(V_max)
}
#if you match the units correctly, this calculates an enzymes's turnover number in 1/seconds
k_cat <- function(V_max, n, E){
  k_cat <- V_max/(n*E)
  print(k_cat)
}


K_m(v_max = 16, S = 0.1, v_0= 1.3)
V_max(v_0 = 1.7, K_m = 8.5, S = 100)
k_cat(V_max = 208, E = 24, n = 1)
