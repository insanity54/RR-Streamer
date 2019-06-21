# rr-streamer

## Usage

Edit `inventory` file with ssh connection details of the Ubuntu PC which will become the streamer.

Execute `ansible-playbook -i ./inventory --ask-pass --ask-sudo-pass ./setup.yml` and the PC will be provisioned as a rr-streamer PC.


### Future plans: redundancy using Icecast fallbacks

https://serverfault.com/questions/549192/i-have-an-issue-with-fallback-in-an-icecast-setup
http://sourcefabric.booktype.pro/airtime-25-for-broadcasters/icecast-handover/
