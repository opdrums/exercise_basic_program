class Student():
    def __init__(self):
        self.list_student = []
        self.list_matter = []
        self.student = []
        self.matter = []
      
    def insert_student(self, new):
        self.list_student.append(new)
    
    def insert_matter(self, matters):
        self.list_matter.append(matters)

    def match_student(self, name):
        for _, elm in enumerate(self.list_student):
            if name in elm:
                self.student.append(name)
                self.list_student.remove(name)
                print(self.student)
                break
    
    def match_matter(self, mtrs):
        for _, elm in enumerate(self.list_matter):
            if mtrs in elm:
                self.matter.append(mtrs)
                self.list_matter.remove(mtrs)
                print(self.matter)
                break
    
    def imformation_list(self):
        print("+" * 30)
        print(f"this is my list_student: {self.list_student}")
        print("+" * 30)
        print(f"this is my list_student: {self.list_matter}")
        print("+" * 30)
        print(f"this is my list_student_match: {self.student}")
        print("+" * 30)
        print(f"this is my list_matter_match: {self.matter}")
    
    def calification_student(self, calification):
        for  i in self.student:
            for mtr in self.matter:
                students = i
                matters = mtr
                if calification in range(0, 2):
                    print(f"Sr. {students} your calificacion is reproved of the matter {matters}.")
                elif calification in range(3, 6):
                    print(f"Sr. {students} your calificacion is medium of the matter {matters}.")
                elif calification in range(7, 9):
                    print(f"Sr. {students} your calificacion is higher of the matter {matters}.")
                elif calification in range(10, 11):
                    print(f"Sr. {students} your calificacion is exelent of the matter {matters}.")
                else:
                    print("calification not found")
        self.student.clear()
        self.matter.clear()

x = Student()
while x:
    try:
        option = int(input("Enter option: Insert_student[1], insert_matter[2], match_student[3], match_matter[4], calification_studen[5], imformation[6]: "))
    except:
        option = int(input("Enter option: Insert_student[1], insert_matter[2], match_student[3], match_matter[4], calification_studen[5], imformation[6]: "))


    if option == 1:
        new = input("Enter name: ")
        x.insert_student(new)
    elif option == 2:
        matters = input("Enter matters: ")
        x.insert_matter(matters)
    elif option == 3:
        name = input("Enter match student: ")
        x.match_student(name)
    elif option == 4:
        mtrs = input("Enter match matter: ")
        x.match_matter(mtrs)
    elif option == 5:
        calification = int(input("Enter calification of the student: "))
        x.calification_student(calification)
    elif option ==  6:
        x.imformation_list()
    else:
        print("end to program")
        break