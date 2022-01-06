# compile last helpthehomelessd
cd /tmp && git clone https://github.com/HTHcoin/helpthehomeless && cd helpthehomeless && ./autogen.sh && ./configure && make && 
cp /tmp/helpthehomeless/src/{helpthehomelessd,helpthehomeless-cli} /usr/bin && rm -rf /tmp/helpthehomeless && # setup and switch to user bitcore
/usr/sbin/useradd -s /bin/helpthehomeless -m -d /bitcore bitcore && chown bitcore:bitcore -R /bitcore &&
su bitcore
HOME=/bitcore
NODE_VERSION=4.0.0
NVM_VERSION=0.33.2
NVM_DIR=$HOME/.nvm && curl https://raw.githubusercontent.com/creationix/nvm/v$NVM_VERSION/install.sh | bash && source $NVM_DIR/nvm.sh && nvm install $NODE_VERSION && nvm alias default $NODE_VERSION && nvm use default && cd $HOME && source $NVM_DIR/nvm.sh && nvm use v4.0.0 && mkdir -p $HOME/.bitcore/data && ln -s /usr/bin/helpthehomelessd $HOME/.bitcore/data && git clone https://github.com/dashpay/bitcore-dash -b nodownload && && cd bitcore-dash && npm install dashpay/insight-api-dash#master_jaxx --save 
&& npm install -g && cd $HOME && echo "#!/bin/bash" >> launch_bitcore-dash.sh && echo "source $NVM_DIR/nvm.sh" >> launch_bitcore-dash.sh && echo "cd $NVM_DIR/versions/node/v4.0.0/bin/" >> launch_bitcore-dash.sh \
&& echo "bitcored" >> launch_bitcore-dash.sh && chmod a+x launch_bitcore-dash.sh && Then start with : ./bitcore/launch_bitcore-dash.sh
