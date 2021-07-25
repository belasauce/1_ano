//1
for (int i = 0; i < funcao.length; i++){ //ler valores funcao
	funcao[i]=sc.nextInt();
}
//1
		
//2 
for (int i = 0; i < funcao.length; i++){ // calculo do maximo
	if (imax < funcao[i]){
		imax = funcao[i]; 
	}
}
//2
		
//3
int [] s = new int [arr.length-1/*7*/];		//ler s derivada
for(int i =0; i < s.length /*arr.length-1*/;i++){
	s[i] = arr[i+1] - arr[i];
}
d = s;
//3
	
//4
for(int i = 0; i < arr.length-1 ; i++){		//ler zeros
	if(arr[i] > 0 && arr[i+1] < 0){
		posZeros[nzeros] = (i+1);
		nzeros++;
	}
}
//4
