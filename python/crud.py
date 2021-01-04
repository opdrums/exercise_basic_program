class Person():
    def __init__(self):
        self.list = []

    def create_list_person(self, person):
        self.list.append(person)
    
    def insert_new_person(self, name, index):
        for i , _ in enumerate(self.list): 
            if i <= index:
                self.list.insert(index , name)
                print(self.list)
                break

    def delete_person(self, name):
        for _ , elem in enumerate(self.list):
            if name.upper() in elem.upper():
                self.list.remove(name)
                print(self.list) 
                break             

    
    def update_name_person(self, opt, new):
        for i, elem in enumerate(self.list):
            if opt.upper() in elem.upper() :
                self.list[i] = new
                print(self.list)
                break
    
    def imformation(self):
        print("+" *30)
        print(f"this is my list {sorted(self.list)}")
        print("+" *30)

x = Person()
while x:
    try:
        option = int(input("Enter option: create_person[1], insert_person[2], delete_person[3], update_person[4], imformation[5]: "))
    except:
        option = int(input("Enter option: create_person[1], insert_person[2], delete_person[3], update_person[4], imformation[5]: "))

    if option == 1:
        person = input("enter a name: ")
        x.create_list_person(person)
    elif option == 2:
        name = input("enter a new person: ")
        index = int(input("enter index to array: "))
        x.insert_new_person(name, index)
    elif option == 3:
        name = input("enter a name for delete: ")
        x.delete_person(name)
    elif option == 4:
        opt = input("enter name match ")
        new = input("enter new name: ")
        x.update_name_person(opt, new)
    elif option == 5:
        x.imformation()
    else:
        print("end to program")
        break
