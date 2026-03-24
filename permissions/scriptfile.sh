#!/bin/bash
touch 2-groups  3-new_owner  4-empty hello 5-execute  6-multiple_permissions 7-everybody
echo -e '#!/bin/bash\ngroups' > 2-groups
echo -e '#!/bin/bash\nchown betty hello' > 3-new_owner
echo -e '#!/bin/bash\ntouch hello' > 4-empty
echo -e '#!/bin/bash\nchmod 744 hello' > 5-execute
echo -e '#!/bin/bash\nchomd 774 hello' >  6-multiple_permissions
echo -e '#!/bin/bash\nchmod 777 hello' > 7-everybody


chmod +x 2-groups  3-new_owner  4-empty 
git add .
git commit -m "main script file"
git push 
