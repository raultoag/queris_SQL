SELECT COUNT(*) FROM `flights`;

SELECT `Origin`, AVG(`ArrTime`), AVG(`DepTime`) FROM `flights` GROUP BY Origin

SELECT `Origin`, colYear,colMonth, AVG(`ArrTime`) FROM `flights` GROUP BY Origin, colYear, colMonth

SELECT `usairports`.`City`, `flights`.`colYear`, `flights`.`colMonth`, AVG(`flights`.`ArrTime`)
FROM `usairports`
	LEFT JOIN `flights` ON `flights`.`flightID` = `usairports`.`IATA`
    ORDER BY `usairports`.`City`, `flights`.`colYear`, `flights`.`colMonth`


SELECT `UniqueCarrier`,`colYear`,`colMonth`,SUM(`Cancelled`) FROM `flights` ORDER BY `Cancelled` DESC 

SELECT `TailNum`,`Distance` FROM `flights` ORDER BY `Distance` DESC LIMIT 10

SELECT `UniqueCarrier`, AVG(`ArrTime`) FROM `flights`WHERE DepDelay = 10 ORDER BY UniqueCarrier

