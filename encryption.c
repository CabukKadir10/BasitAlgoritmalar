#include<stdio.h>

int Sifreleme(int Mesaj){
	int mesaj,a, b, c, d ,YeniMesaj;

	a= Mesaj/1000 +7;
	b= Mesaj/100%10 +7;
	c= Mesaj/10%10 +7;
	d= Mesaj%10 +7;
	if(a >=10){
		a=a%10;
	}
	if(b>=10){
		b=b%10;
	}
	if(c>=10){
		c=c%10;
	}
	if(d>=10){
		d=d%10;
	}
	
	YeniMesaj= c*1000+ d*100 +a*10+b;

	return YeniMesaj;
}
int SifreCozme(int sifre){
	int SifreliMesaj, Mesaj, a, b, c, d;
	
	a= SifreliMesaj/1000 - 7;
	b= SifreliMesaj/100%10 - 7;
	c= SifreliMesaj/10%10 - 7;
	d= SifreliMesaj%10 - 7;
	
	if(a<0){
		a= a + 10;
	}
	if(b<0){
		b= b + 10;
	}
	if(c<0){
		c= c + 10;
	}
	if(d<0){
		d= d + 10;
	}
	
	Mesaj= c*1000+ d*100+a*10+b;

	return Mesaj;
}

int main(){
	int Mesaj, sifreliMesaj, CozulenMesaj;
	printf("gondermek istediginiz mesaji giriniz.\n");
	scanf("%d",&Mesaj);
	
	sifreliMesaj= Sifreleme(Mesaj);
	printf("göndermek istediginiz mesajin sifrelenmis hali: %d\n",sifreliMesaj);
	
	CozulenMesaj= SifreCozme(sifreliMesaj);
	printf("sifrelenmis mesajin cozulmus hali: %d\n",CozulenMesaj);
	
	return 0;
}
