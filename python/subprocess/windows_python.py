import subprocess

p = subprocess.Popen('python -c "import math; print(math.pi)"',
                     stdout=subprocess.PIPE,
                     stderr=subprocess.STDOUT)
a = p.communicate()[0].strip()
print(a)