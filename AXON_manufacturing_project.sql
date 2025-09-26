select * from manufacturing_data;
--  1.Total Qty
select count(`Cust Code`) as Total_orders from manufacturing_data;
-- 2.Manufacturing Qty
select sum(`today Manufactured qty`) as manufacturing_Qty from manufacturing_data;
-- 3.Rejection qty
select sum(`Rejected Qty`) as rejection_Qty from manufacturing_data;
-- 4.processed Qty
SELECT SUM(`Processed Qty`) as processed_Qty FROM manufacturing_data;
-- 5.Acceptance Rate %
select concat(round(((sum(`Produced Qty`)-sum(`Rejected Qty`))/sum(`Produced Qty`)*100),2),'%') as Acceptance_Rate from manufacturing_data;
-- 6.Waste Qty
select concat(round(sum(`Rejected Qty`)*100/sum(`Processed Qty`),2),'%') as waste_Qty from manufacturing_data;
-- 7.total Revenue
select round(sum(`TotalValue`),0) as Total_revenue from manufacturing_data;




--- charts
-- 1.emp wise rejection Qty
select `Emp Name` , count(`Rejected Qty`) as employee_Reg from manufacturing_data group by `Emp Name` order by employee_Reg desc;


-- 2.mechine wisse reg
select `Machine Code` , count(`Rejected Qty`) as mechine_Wise_Reg from manufacturing_data group by `Machine Code` order by mechine_Wise_Reg desc limit 5;
