num1=int(input("Enter an integer :"))
num2=int(float(input("Enter an Float :")))
str1=input("Enter String 1 :")
str2=input("Enter the string 2:")
my_list=[num1,num2,str1,str2]
my_tuple=(num1,num2,str1,str2)
my_set={num1,num2,str1,str2}
my_dict={
                   'integer':num1,
                    'float':num2,
                    'first':str1,
                    'second':str2
    }
bool1=True
bool2=False
#OPERATION BEGINS
sumof=num1+num2
diff=num1-num2
mul=num1*num2
div=num1/num2 if num2!=0 else "Undefined (Cannot be divided by zero)"
remainder=num1%num2
expo=num1**num2
floor=num1//num2
equal=num1==num2
notequal=num1!=num2
great=num1>num2
less=num1<num2
logicaland=bool1 and bool2
logicalor=bool1 or bool2
not_logical=not bool1
bitwise_and=num1 & num2
bitwise_or=num1|num2
bitwise_xor=num1^num2
#membership
is_in_list=num1 in my_list
is_in_dict='first' in my_dict
#print
print(sumof)
print(diff)
print(mul)
print(div)
print(remainder)
print(expo)
print(floor)
print(equal)
print(notequal)
print(great)
print(less)
print(logicaland)
print(logicalor)
print(not_logical)
print(bitwise_and)
print(bitwise_or)
print(bitwise_xor)
print(is_in_list)
print(is_in_dict)
#data structures
print(f"MY LIST IS {my_list}")
print(f"MY TUPLE IS {my_tuple}")
print(f"MY SET IS {my_set}")
print(f"MY DICTIONARY IS {my_dict}")
