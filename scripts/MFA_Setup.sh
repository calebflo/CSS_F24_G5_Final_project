##MFA Setup
sudo apt install libpam-google-authenticator
##configure PAM
auth required pam_google_authenticator.so
##run "google-authenticator" on each user account to generate the necessary tokens and QR codes for google authenticator app
