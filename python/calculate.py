class Calculate():    
    def sum(self,one,two):
        result = one + two
        print(f"this is my result to sum: {result}")

    def rest(self,one,two):
        result = one - two
        print(f"this is my result to rest: {result}")

    def multiplication(self,one,two):
        result = one * two
        print(f"this is my result to multiplication: {result}")

    def division(self,one,two):
        result = one / two
        print(f"this is my result to division: {result}")

x  = Calculate()
while x:
    try:
        one = int(input("enter his firt number: "))
        two = int(input("enter his second number: "))
        option = int(input("enter one option: sum[1], rest[2], multiplication[3], divisions[4]: "))
    except: 
        one = int(input("enter his firt number: "))
        two = int(input("enter his second number: "))
        option = int(input("enter one option: sum[1], rest[2], multiplication[3], divisions[4]: "))

    if option == 1:
        x.sum(one, two)
    elif option == 2:
        x.rest(one, two)
    elif option == 3:
        x.multiplication(one, two)
    elif option == 4:
        x.division(one, two)
    else:
        print("end to program")
        break