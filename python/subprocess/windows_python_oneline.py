import subprocess

a = subprocess.Popen('python -c "import math; print(math.pi)"',
                     stdout=subprocess.PIPE,
                     stderr=subprocess.STDOUT).communicate()[0].strip()
print(a)
