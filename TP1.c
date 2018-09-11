#include <stdlib.h>
#include <stdio.h>
#include <setjmp.h>


 int* adr_depth;
 int* sauv_addr;

void dump_mem(int *deb, int *end){

	int *cur;
	int val;
	int cpt_facade=0;

	for(cur=deb;cur<end;cur++){
		val=*cur;
		printf("%p -> %08x \n",cur,val);

		if(val==0xFACADE00){
			cpt_facade++;
		}
	}

	printf("nombre de cpt_facade = %d\n",cpt_facade);

}

void rec(int depth){

	int p=0xFACADE00;

	if(depth>=1){
		rec(depth-1);
	}
	else{
		asm("mov %%rsp, %0" : "=r"(adr_depth) ::);
	}
}

int main(){

	int* adr_base;
	asm("mov %%rsp, %0" : "=r"(adr_base) ::);
	rec(10);
	dump_mem(adr_depth,adr_base);

}




/**

Afficher le contenu de la pile 
 		 adresse du main
 		 adresse de la fonction récursive

On doit voir à chaque appels l'adresse de retour
	- la variable "l"
	- la variable "depth"
	les adresse sont codé sur du 64 bits on les voit don en deux morceaux

un Readme
**/