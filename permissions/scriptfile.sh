#!/bin/bash
touch 2-groups  3-new_owner  4-empty hello 5-execute  6-multiple_permissions 7-everybody  8-James_Bond 9-John_Doe 10-mirror_permissions  11-directories_permissions 12-directory_permissions 13-change_group 14-change_owner_and_group 15-symbolic_link_permissions  16-if_only
echo -e '#!/bin/bash\ngroups' > 2-groups
echo -e '#!/bin/bash\nchown betty hello' > 3-new_owner
echo -e '#!/bin/bash\ntouch hello' > 4-empty
echo -e '#!/bin/bash\nchmod ug+x,o+r hell' >  6-multiple_permissions
echo -e '#!/bin/bash\nchmod ugo+x hello' > 7-everybody
echo -e '#!/bin/bash\nchmod 007 hell' > 8-James_Bond
echo -e '#!/bin/bash\nchmod 753 hello' > 9-John_Doe
echo -e '#!/bin/bash\nchmod --reference=olleh hello' > 10-mirror_permissions
echo -e '#!/bin/bash\nchmod -R ugo+x .' >  11-directories_permissions
echo -e '#!/bin/bash\nmkdir -m 751 my_dir' > 12-directory_permissions
sudo groupadd school
echo -e '#!/bin/bash\nchgrp school hello' > 13-change_group
echo -e '#!/bin/bash\nchown vincent:staff *' > 14-change_owner_and_group
echo -e '#!/bin/bash\nchown -h vincent:staff _hello' > 15-symbolic_link_permissions
echo -e '#!/bin/bash\nchown --from=guillaume vincent hello' > 16-if_only


chmod +x 2-groups  3-new_owner  4-empty hello 5-execute 6-multiple_permissions 7-everybody 8-James_Bond 9-John_Doe 10-mirror_permissions 11-directories_permissions 12-directory_permissions 13-change_group 14-change_owner_and_group 15-symbolic_link_permissions 16-if_only
git add .
git commit -m "main script file"
git push 
