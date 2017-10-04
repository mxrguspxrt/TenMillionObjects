
import subprocess

def run_command(command):
    p = subprocess.Popen(command, shell = True, stdout = subprocess.PIPE, stderr = subprocess.PIPE)
    stdout, stderr = p.communicate()

    result = stdout.decode('utf-8')
    error = stderr.decode('utf-8')

    # print('%s result: %s, error: %s' % (command, result.strip(), error.strip()))

    return [result, error]



start_free_ram = int(run_command('ruby free-ram.rb')[0])
start_time = int(run_command('ruby timestamp.rb')[0])


class SomeObject:

    def __init__(self, name):
        self.name = name

million = 1000000
objects = []

for i in range(1, 10 * million):
    obj = SomeObject('tere')
    objects.append(obj)


end_free_ram = int(run_command('ruby free-ram.rb')[0])
end_time = int(run_command('ruby timestamp.rb')[0])

objects

print('Python3 used %sMB and ran %s seconds.' % (start_free_ram-end_free_ram, end_time-start_time))
