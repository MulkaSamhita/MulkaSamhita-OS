#include<stdio.h> 
#include<conio.h>
	


	main() 
	{	
	
		int processIndicator = 0;
		int processWait = 0;
		int processTUT = 0;
		int ProcessNumber,numberNO,CurrentTime,remainingProcesses,timeQuantum;
		int timeART[10],busTime[10],remainingTime[10];
		int j,x=1;
		
		
		printf("Enter for how many processes do you want to check --> "); 
		scanf("%d",&numberNO);
		remainingProcesses = numberNO;
		
	
		printf("Now enter the arrival time and bus time of each processes -->\n");
		for(ProcessNumber = 0;ProcessNumber < numberNO;ProcessNumber++) 
		{
	
			printf("Arrival time of process P%d = ",ProcessNumber+1); 
			scanf("%d",&timeART[ProcessNumber]);
			printf("Burst time of process P%d = ",ProcessNumber+1); 
			scanf("%d",&busTime[ProcessNumber]); 
			remainingTime[ProcessNumber]=busTime[ProcessNumber]; 
			printf("\n");
		} 
