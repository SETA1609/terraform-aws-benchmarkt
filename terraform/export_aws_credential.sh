#!/bin/bash

PROFILES=$(awk -F"\\\]|\\\[" '/^\[/{print $2}' ~/.aws/credentials)

echo "Here are your current aws Profiles";

for PROFILE in $PROFILES;  
do 
	echo $PROFILE;
done

echo "Please select your local aws profile";

read profile;

crt_profile=$profile;

echo "You have choosen the following profile: $crt_profile";

export AWS_PROFILE=$crt_profile;

