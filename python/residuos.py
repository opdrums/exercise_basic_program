class Operation():
    def __init__(self):
        self.list = []
        self.list_par = []
        self.list_impar = []    

    def insert_number_list(self, number):
        self.list.append(number)
        print(self.list)

    def operation(self):
        for i in self.list:
            if i % 2 == 1:
                self.list_impar.append(i)
            elif i % 2 == 0:
                self.list_par.append(i)
        print(f"this is my list impar: {self.list_impar}")
        print(f"this is my list par: {self.list_par}")
        
x = Operation()
while x:
    try:
        option = int(input("enter option: insert_number[1], operation[2]: "))
    except:
        option = int(input("enter option: insert_number[1], operation[2]: "))
    if option == 1:
        number = int(input("Enter number: "))
        x.insert_number_list(number)
    elif option == 2:
        x.operation()
    else:
        print("end to program")
        break
        
