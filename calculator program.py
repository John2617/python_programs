import math
print("\n AVAILABLE OPERATIONS : \n")
print("1.ADDITION")
print("2.SUBRACTION")
print("3.MULTIPLICATION")
print("4.DIVISION")
print("5.SQUARE ROOT")
print("6.EXPONENTIATION(x^y)")
print("7.SIN (SINE) IN RADIANS")
print("8.COS(COSINE) IN RADIANS")
print("9.TAN(TANGENT) IN RADIANS")
print("10.LOGARTHIM(LOG BASE 10)")
choice=int(input("Enter the Choice (1/2/3/4/5/6/7/8/9/10) :"))
if  choice in [1,2,3,4,6]:
    num1=int(input("enter the number1 :"))
    num2=int(input("enter the number2 :"))
elif choice in [5,7,8,9,10]:
    num1=int(input("Enter the number :"))
else :
    print("INVALID CHOICE ! PLEASE SELECT AGAIN !")
    exit()
if choice==1:
    result=num1+num2
elif choice==2:
    result=num1-num2
elif choice==3:
    result=num1*num2
elif choice==4:
    result=num1/num2
elif choice==5:
    result=math.sqrt(num1)
elif choice==6:
    result=math.pow(num1,num2)
elif choice==7:
    result=math.sin(math.radians(num1))
elif choice==8:
    result=math.cos(math.radians(num1))
elif choice==9:
    result=math.tan(math.radians(num1))
elif choice==10:
    result=math.log10(num1)
print(f"The Result is {result}")
print("THE CALCULATOR PROGRAM ENDED !")
