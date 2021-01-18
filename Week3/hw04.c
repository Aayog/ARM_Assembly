#include<stdio.h>

main()
{
char word[80];
int i,j;

printf("Enter any word: ");
scanf("%s", word);
i=0;
while(word[i]!='\0')
{
if(word[i] ==  word[i+1])
{
	j=1;
	while(word[i] == word[i+j])
		j++;
	printf("%d consecutive %c\n",j,word[i]);
	//Previously i was not changed so program printed multiple
	//consecutive characters
	//adding i with the value of (j-1) solves the problem
	i+=j-1;
}
i++;
}
}
