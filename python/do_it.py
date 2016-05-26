import subprocess

def do_it(cmd, debug=0, dry=0):
    if (debug):
        print(cmd)
    if (not dry):
        subprocess.call([cmd], shell=True)

do_it("whoami")
