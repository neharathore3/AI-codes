a=int(input("Enter jug A Capacity:"))
b=int(input("Enter jug B Capacity:"))
ai=int(input("Initial Water in jug A:"))
bi=int(input("Initial water in jug B:"))
af=int(input("Final State of Jug A:"))
bf=int(input("Final State of Jug B:"))

if(a%b==0):
  print("no solution")
  exit()
 
print("List of operation\n")
print("1.Fill Jug A Completely\n")
print("2.Fill Jug B Completely\n")
print("3.Empty Jug A Completely\n")
print("4.Empty Jug B Completely\n")
print("5.Pour from Jug A till Jug B filled Completely or A becomes empty\n")
print("6.Pour from Jug B till Jug A filled Completely or B becomes empty\n")
print("7.Pour all from jug B to jug A\n")
print("8.Pour all from JUg A to Jug B\n")


while((ai!=af or bi!=bf)):
 op=int(input("Enter the operation"))
 if(op==1):
  ai=a

 elif(op==2):
  bi=b

 elif(op==3):
  ai=0

 elif(op==4):
  bi=0

 elif(op==5):
  if(b-bi>ai):
   bi=ai+bi
   ai=0
  else:
   ai=ai-(b-bi)
   bi=b

 elif(op==6):
  if(a-ai>bi):
   ai=ai+bi
   bi=0
  else:
   bi=bi-(a-ai)
   ai=a

 elif(op==7):
  if(ai==a):
   print("Overflow")
   break
  else:
   ai=ai+bi
   bi=0

 elif(op==8):
  if bi<b:
   bi=bi+ai
   ai=0
  else:
   print("overflow")
   break
 
 print(ai,bi)