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
	printf("let's see the details of time quantum we declared, it as follows -->:\n");
		printf("For the first round time quantum is --> 3.\n"); 
		timeQuantum=3;         // Time quantum is -> 3
		CurrentTime=0;
		for(ProcessNumber=0;remainingProcesses!=0;) 
		{
			if(remainingTime[ProcessNumber]<=timeQuantum && remainingTime[ProcessNumber]>0)
			{ 
				CurrentTime+=remainingTime[ProcessNumber]; 
				remainingTime[ProcessNumber]=0; 
				processIndicator=1; 
			} 
			else if(remainingTime[ProcessNumber]>0)
			{ 
				remainingTime[ProcessNumber]-=timeQuantum; 
				CurrentTime+=timeQuantum; 
			} 
	if(remainingTime[ProcessNumber]==0 && processIndicator==1)			
			{ printf("%d",ProcessNumber);
				remainingProcesses--;				
				printf("P %d",ProcessNumber+1); 
				printf("\t\t\t%d",CurrentTime-timeART[ProcessNumber]);
				printf("\t\t\t%d\n",CurrentTime-busTime[ProcessNumber]-timeART[ProcessNumber]);
				processWait+=CurrentTime-timeART[ProcessNumber]-busTime[ProcessNumber]; 
				processTUT+=CurrentTime-timeART[ProcessNumber]; 
				processIndicator=0; 
	                       
