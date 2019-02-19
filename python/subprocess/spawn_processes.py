import sys
from subprocess import Popen, PIPE, STDOUT
ON_POSIX = 'posix' in sys.builtin_module_names
cmd = '{} -c "import math"'.format(sys.executable)
processes = []
for i in range(500):
    p = Popen(cmd, stdout=PIPE, stderr=STDOUT, close_fds=ON_POSIX)  # close input_fd in children
    processes.append(p)
for p in processes:
    p.wait()
