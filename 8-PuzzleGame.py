from gbfs import Greedy

#initial state
n=int(input("Enter n\n"))
print("Enter your",n,"*","puzzle")
root=[]
for i in range(0,n*n):
    p=int(input())
    root.append(p)

print("The given state is:",root)

#COUNT THE NO.OF INVERSION
def inv_num(puzzle):
    inv=0
    for i in range(len(puzzle)-1):
        for j in range(i+1,len(puzzle)):
            if((puzzle[i]>puzzle[j])and puzzle[i] and puzzle[j]):
                inv+=1
    return inv

def solvable(puzzle):#CHECK IF INITIAL STATE PUZZLE IS SOLVABLE
    inv_counter=inv_num(puzzle)
    if(inv_counter%2==0):
        return True
    return False

from time import time
if solvable(root):
    print("Solvable,please wait.\n")

    time3=time()
    Greedy_solution=Greedy(root,n)
    Greedy_time=time()-time3
    print('Greedy Solution is',Greedy_solution[0])
    print('No.of explored nodes is',Greedy_solution[1])
    print('Greedy Time',Greedy_time,"\n")
else:
    print("Not Solvable")

    
