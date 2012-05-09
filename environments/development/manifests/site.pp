node basenode {
    include "base"
    include "user"
} 

node "web" inherits basenode {
   include "apache"
}
