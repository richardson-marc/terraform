# notes on the terraform assignment

I found these errors when I run terraform plan or terraform init:

Provider "app" not available for installation.
Provider "mongo" not available for installation.
Provider "subnets" not available for installation.

I am not sure what is causing this, as these are defined as modules, and not providers within main.tf

3) useful outputs
I could not think that there were a lot of useful outputs.  I added the app IP address.  I don't think this needs to be exceptionally verbose and report on every object that was created

4) See above for the difficulty I found.

5) I would bind to the specific ip address rather than the global 0.0.0.0 address in modules/mongodb/files/user_data.sh.  Binding to the global address increases the surface area for an attack vector if this system has multiple IP addresses.


