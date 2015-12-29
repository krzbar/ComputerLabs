#How many students in the exam?
n=40
#To which folder should the solutions be copied?
path="Z:\\inlamn"

zz <- file("copyexam.bat", "w")  # open an output file connection

cat("cd", path, "\n", file = zz, sep = " ")
for(i in 1:n) {
  current=sprintf("tenta%02d",i);
  cat("md", current , "\n", sep=" ", file=zz)
  cat("xcopy \\\\uranus.helix.ida.liu.se\\tentahomes$","\\", current, "\\solutions ", path, "\\",current, " /E \n", sep="", file=zz)
}
  
close(zz)
