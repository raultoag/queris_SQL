SELECT COUNT(*) FROM `flights`;

SELECT `Origin`, AVG(`ArrDelay`) AS 'prom_llegadas', AVG(`DepDelay`) as "prom_salidas" FROM `flights` GROUP BY Origin

SELECT `Origin`, colYear,colMonth, AVG(`ArrDelay`) FROM `flights` GROUP BY Origin, colYear, colMonth

SELECT `usairports`.`City`, `flights`.`colYear`, `flights`.`colMonth`, AVG(`flights`.`ArrDelay`)
FROM `usairports`
	LEFT JOIN `flights` ON `flights`.`flightID` = `usairports`.`IATA`
    ORDER BY `usairports`.`City`, `flights`.`colYear`, `flights`.`colMonth`


SELECT `UniqueCarrier`,`colYear`,`colMonth`,SUM(`Cancelled`) as "total_cancelled" FROM `flights` ORDER BY `Cancelled` DESC 

SELECT TailNum, SUM(distance) as "total_distance"  FROM flights GROUP BY TailNum ORDER BY total_distance desc LIMIT 1, 10

SELECT `UniqueCarrier`, AVG(`ArrDelay`) as "avg_delay" FROM `flights`WHERE DepDelay = 10 ORDER BY UniqueCarrier

