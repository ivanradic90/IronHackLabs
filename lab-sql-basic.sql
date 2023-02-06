## Get the id values of the first 5 clients from district_id with a value equals to 1.

SELECT * FROM bank.client
where district_id = 1
limit 5;

## In the client table, get an id value of the last client where the district_id equals to 72.

select * from bank.client
where district_id = 72
order by client_id desc
limit 1;

## Get the 3 lowest amounts in the loan table.

select * from bank.loan
order by amount
limit 3
;

## What are the possible values for status, ordered alphabetically in ascending order in the loan table?

select status from bank.loan
order by status asc;

## What is the loan_id of the highest payment received in the loan table

select * from bank.loan
order by payments
limit 1;

## What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount

select account_id, amount from bank.loan
order by account_id
;

## What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?

select * from bank.loan
where  duration = 60
order by amount;

## What are the unique values of k_symbol in the order table?

select distinct k_symbol from bank.order;


## In the order table, what are the order_ids of the client with the account_id 34?

select order_id from bank.order
where account_id = 34;

## In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?

select distinct account_id from bank.order
where order_id < 29560 and order_id > 29540;

## In the order table, what are the individual amounts that were sent to (account_to) id 30067122?

select amount from bank.order
where account_to = 30067122;

## In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.

select trans_id, date, type, amount from bank.trans
where account_id = 793
order by date desc
limit 10
;

## In the client table, of all districts with a district_id lower than 10, how many clients are from each district_id? Show the results sorted by the district_id in ascending order.

SELECT district_id, COUNT(*)
FROM bank.client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

## in the card table, how many cards exist for each type? Rank the result starting with the most frequent type.

select card_id, count(*) as no_of_card, type from bank.card
group by type;

## Using the loan table, print the top 10 account_ids based on the sum of all of their loan amounts.

SELECT account_id, SUM(amount) AS total_amount
FROM bank.loan
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 10;

## In the loan table, retrieve the number of loans issued for each day, before (excl) 930907, ordered by date in descending order.

select * from bank.loan
where date < 930907
group by date
order by date desc ;


## In the loan table, for each day in December 1997, count the number of loans issued for each unique loan duration, ordered by date and duration, both in ascending order.
## You can ignore days without any loans in your output.

SELECT date, duration, COUNT(*)
FROM bank.loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;








