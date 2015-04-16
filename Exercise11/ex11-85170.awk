BEGIN { filename= "TOTALS.TXT"; printf("-----------------------------------------\nName                  Total\n") > filename }
	{sumLine = $2 + $3 + $4 + $5}
	{printf("%-22s %d\n", $1, sumLine) >> filename}
	{sum = sum + sumLine}
END  { printf("----------------------------------------------\nGrand Total: %14d\n",sum) >> filename}
