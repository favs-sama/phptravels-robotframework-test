*** Variables ***
${VALID_EMAIL}  admin@phptravels.com

&{VALID_CREDENTIALS}  email=${VALID_EMAIL}  password=demoadmin  expected_message=DASHBOARD
&{INVALID_CREDENTIALS}  email=${VALID_EMAIL}  password=invalidpassword  expected_message=Invalid Login Credentials