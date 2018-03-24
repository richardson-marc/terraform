# notes on the terraform assignment
I don't actually belive that this assignment was tested before it was sent to me.  There are number of issues with the configuration as it was presented.  I feel like I was the guinea pig for something which had not actually been solved prior to the assignment.  

1) both the bootstrap scripts to install mongodb and ruby would fail as the line "apt-get update" did not use sudo; this command failed, so the following apt-get install command would fail as well, and neither software package would be installed.
2) the instructions mention the bootstrap scripts, but are not clear if the expectation was that these should be installed and run on the AMIs by terraform, or if that is to be done by hand once they are provisioned.  If it's to be done my hand, there is nothing to set up ssh keys.
3) the aws_nat_gateway resource requires the arguement allocation_id (The Allocation ID of the Elastic IP address for the gateway.), which was not provided in the vars.tf or main.tf file.  According to the instructions given, neither would not need to be updated by the candidate.  The instructions did not mention creating an Elastic IP.  That was not mentioned in the list "In the end we'll have..."
4) The mongo_volume variables require creating an EBS volume as well; that was not specified clearly in the instructions as a required object, and was confusing.  I just used local a volume for this.  
5) in the user_data.tmpl file how would this value even be set?  It is not referenced anywhere else in the configuration.  If it is static, perhaps it should be set explicitly.  
   "{record_count: #{settings.mongo_db.count}}"
6) Nothing in the configuration mentions opening port 27017 on the mongo AMI so that the app AMI can connect to the mongo AMI, and nothing mentions opening port 8080 on the app AMI, so that the web server can be tested.  Those are not open by default.




3) useful outputs
I could not think that there were a lot of useful outputs.  I added the app IP address.  I don't think this needs to be exceptionally verbose and report on every object that was created

4) See above for the difficulty I found.

5) I would bind to the specific ip address rather than the global 0.0.0.0 address in modules/mongodb/files/user_data.sh.  Binding to the global address increases the surface area for an attack vector if this system has multiple IP addresses.


