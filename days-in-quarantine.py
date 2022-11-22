from datetime import date
f_date = date(2020,3,20)
l_date = date.today()
delta = l_date - f_date
print(delta.days)
