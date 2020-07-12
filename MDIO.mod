/*********************************************
 * OPL 12.8.0.0 Model
 * Author: Kenny
 * Creation Date: 27/11/2018 at 20:42:31
 *********************************************/
 
int n = ...;
float c[1..n][1..n]=...;

/* MODELO PL Exercicio 1 */ 

dvar float x[1..n][1..n];

minimize sum(i in 1..n, j in 1..n) c[i][j]*x[i][j];

subject to {
	forall(j in 1..n) sum(j in 1..n) x[1][j] == n-1;
	
	forall(i in 1..n, j in 1..n) sum(i in 1..n,j in 1..n) x[i][j] -  x[j][i] == -48;
}

/* MODELO PL Exercicio 2
int delta = ...;
int g = ...;
dvar float t[1..n];
dvar boolean r[1..n];

minimize sum(i in 1..n) r[i];

subject to {
	forall (i in 1..n) t[1] == 0;
	forall (i in 1..n, j in 1..n) t[j]<=t[i]+c[i][j]+delta*r[i];  //reconhece o conjunto A dos custos no excel?
}*/