numbers=input("Enter numbers Separated by commas(eg: 1,2,3) :")
numbers_list=[int(num) for num in numbers.split(',')]
sumoflist=sum(numbers_list)
#tuple
std_name=input("enter the name :")
std_age=int(input("Enter the age :"))
std_major=input("Enter your major :")
std_info=(std_name,std_age,std_major)
#set
set1_values=input("Enter numbers Separated by commas(eg: 1,2,3) :")
set1={int(x) for x in set1_values.split(',')}
set2_values=input("Enter numbers Separated by commas(eg: 1,2,3) :")
set2={int(x) for x in set2_values.split(',')}
intersection=set1.intersection(set2)
union=set1.union(set2)
#dictionary
contact_info={}
num_dict=int(input("How many contacts do you need to save ? :"))
for _ in range(num_dict):
    name=input("Enter your name :")
    email=input("Enter your email :")
#assigning key values, name as key and email as value in " contact_info dictionary"
    contact_info[name]=email
print("\n --------- RESULTS----------\n")
print(f"LIST IS {numbers_list}\n")
print(f"SUM OF LIST IS {sumoflist}\n")
print(f"Student information as tuple : {std_info}")
print(f"NAME : {std_info[0]}")
print(f"AGE : {std_info[1]}")
print(f"EMAIL : {std_info[2]}")
print(f"SET 1: {set1}")
print(f"SET 2: {set2}")
print(f"Union : {union}")
print(f"INTERSECTION : {intersection}")
print(f"CONTACT_INFORAMTION : {contact_info}")
for name,email in contact_info.items():
    print("KEY :", name)
    print("Values :", email)
name_to=input("enter the name to look up :")
if name_to in contact_info:
    email=contact_info[name_to]
    print(f"{name_to}s email is {email}")
else:
    print("INVALID")



