#!/usr/bin/env iriscli

zn "%sys"
set p("Enabled") = 0
do ##class(Security.Users).Modify("_SYSTEM",.p)
do ##class(Security.Users).Modify("Admin",.p)
#;do ##class(Security.Users).Modify("SuperUser",.p)
set sc=##class(Security.Users).UnExpireUserPasswords("*", .count) 
kill p
set p("NameSpace") = "CONDUIT"
do ##class(Security.Users).Modify("irisowner",.p)
