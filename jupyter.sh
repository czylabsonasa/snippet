#
# various snippets for kitchen usage
#


#
# dd iso image
#
dd bs=4M if=/path/to/archlinux.iso of=/dev/sdx status=progress && sync



#
# jupyter related
#
python3 -m pip install --upgrade pip
python3 -m pip install --user jupyter
# ezt .profile-ba
export PATH=$PATH:~/.local/bin
python3 -m pip install --user numpy
python3 -m pip install --user matplotlib

#
# jupyter/R
#
install.packages(c('repr', 'IRdisplay', 'evaluate', 'crayon', 'pbdZMQ'))
apt install libssl-dev libcurl3-openssl-dev
# ezutan ezekkel nem volt problema
install.packages(c('devtools', 'uuid', 'digest'))
devtools::install_github('IRkernel/IRkernel')
IRkernel::installspec()

#
# jupyter/julia
#
Pkg.add("IJulia")
Pkg.add("Winston") # a rajzolgatashoz

#
# jupyter/octave
#
python3 -m pip install --user octave_kernel




