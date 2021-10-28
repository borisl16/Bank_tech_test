# Bank Tech Test

Simple program to interact with your bank account: do deposits and withdraws, check your statments.

## Set up

Forked or Cloned this repo and then run: 
```
> bundle
```

## Running tests

Just type:

```
% rspec
```

## Do you want to use it?

You can easily do it as open the command line and open up IRB and run:
```
> require '.lib/bank_account.rb'
```
Before we do something with our money, we need to create account: 
```
> account = BankAccount.new
```
Let's put some deposit:
```
> account.deposit(1000)
```
You need money, no problem, you can easily witdraw some:
```
> account.witdraw(500)
```
And finally you can track your income/outcome and see the statement:
```
> account.statements
 => Date || Credit || Debit || Balance
    27/10/2021 || || 500.00 || 500.00
    26/10/2021 || 1000.00 || || 1000.00
```




### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2023  
**And** a deposit of 2000 on 13-01-2023  
**And** a withdrawal of 500 on 14-01-2023  
**When** she prints her bank statement  
**Then** she would see

```
Date || Credit || Debit || Balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```