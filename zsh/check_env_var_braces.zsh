#! /usr/bin/env zsh

# man zshexpn(1)
#    ${+name}
#        If name is the name of a set parameter `1' is substituted, otherwise
#        `0' is substituted.

print '${+KAMA} = ' ${+KAMA}
print '${+PWD} = ' ${+PWD}
