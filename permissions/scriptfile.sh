#!/bin/bash
touch 2-groups  3-new_owner  4-empty hello 
echo -e '#!/bin/bash\groups' > 2-groups
echo -e '#!/bin/bash\betty/hello' > 3-new_owner
chmod +x 2-groups  3-new_owner  4-empty 
git add .
git commit -m "main script file"
git push 
