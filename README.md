# rr-streamer

## Usage

Edit `inventory` file with ssh connection details of the Ubuntu PC which will become the streamer.

Put icecast source connection details and credentials in ./vars/secret.yml

Execute ansible-playbook and the PC will be provisioned as a rr-streamer PC.


## Operation Choices

Use tags to choose which streaming method and system service manager to use on the target machine.

### Examples

#### Upstart with FFmpeg

    ansible-playbook -i ./inventory --ask-pass --ask-sudo-pass --tags=upstart,ffmpeg ./setup.yml

#### Upstart with libconv

    ansible-playbook -i ./inventory --ask-pass --ask-sudo-pass --tags=upstart,libconv ./setup.yml

#### Systemd with Liquidsoap

    ansible-playbook -i ./inventory --ask-pass --ask-sudo-pass --tags=systemd,liquidsoap ./setup.yml



### Future plans: redundancy using Icecast fallbacks

https://serverfault.com/questions/549192/i-have-an-issue-with-fallback-in-an-icecast-setup
http://sourcefabric.booktype.pro/airtime-25-for-broadcasters/icecast-handover/
