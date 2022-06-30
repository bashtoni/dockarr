# Dockarr

I wanted to run the *arr apps as rootless containers but all the pre-existing
containers had init systems and were trying to be clever switching UIDs
which made it difficult to match.

These are simple containers which run as 'root' so you can easily run as the 
actual user in a rootless podman container.
