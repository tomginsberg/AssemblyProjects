import sys 

def hexcomp():
    a = int("0x"+sys.argv[1],16)
    b = "{0:b}".format(a)
    b = "0"*(7-len(b))+b
    c=""
    print(b)
    for bb in b:
        c += str(int(not int(bb)))
    print(c)
    print("#"+hex(int(c,2)))

def rotate(s):
    return s[-1] + s[:-1]
def roll():
    number = "43464163"
    for i in range(8):
        num = number[0:6]
        lookup = {"1": "ONE", "4" : "FOUR", "6": "SIX", "3":"THREE"}
        temp = "mov HEX{}, {}\n"
        out = ""
        for i in range(6):
            out += temp.format(5-i,lookup[num[i]])
        out += "lcall Delay\n"
        print(out)
        number = rotate(number)

def unroll():
    for i in range(7):
        number = "43464163"
        lookup = {"1": "ONE", "4" : "FOUR", "6": "SIX", "3":"THREE"}
        temp = "mov HEX{}, {}\n"
        out = ""
        for k in range(i):
            out += temp.format(5-k,lookup[number[k]])
        for k in range(i,6):
            out += temp.format(5-k,"BLANK")
        out += "lcall Delay\n"
        print(out)

def create():
    for i in range(5):
        number = "4346"
        lookup = {"1": "ONE", "4" : "FOUR", "6": "SIX", "3":"THREE"}
        temp = "mov HEX{}, {}\n"
        out = ""
        for k in range(i):
            out += temp.format(5-k,lookup[number[k]])
        for k in range(i,6):
            out += temp.format(5-k,"BLANK")
        out += "lcall Delay\n"
        print(out)
    for i in range(1,5):
        number = "4163"
        lookup = {"1": "ONE", "4" : "FOUR", "6": "SIX", "3":"THREE"}
        temp = "mov HEX{}, {}\n"
        out = ""
        for k in range(i):
            out += temp.format(5-k,lookup[number[k]])
        for k in range(i,6):
            out += temp.format(5-k,"BLANK")
        out += "lcall Delay\n"
        print(out)

create()