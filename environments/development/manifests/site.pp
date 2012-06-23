node basenode {
    include "base"
    include "user"
} 

node "development.example.com" inherits basenode {
   include "apache"
}
