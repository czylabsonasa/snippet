#
# various snippets for kitchen usage
#


#
# dd iso image
# just for remember, always forget it
dd bs=4M if=/path/to/archlinux.iso of=/dev/sdx status=progress && sync


# after a fresssh install xubuntu 17.04:
sudo apt install python3-pip
#
# jupyter related
#
python3 -m pip install --upgrade pip
python3 -m pip install --user jupyter
# mcedit for quick edits:
# sudo apt install mc 
# disable the annoying f1 help key for the terminal (setting/special...)
# ~/.profile, + in a terminal
export PATH=$PATH:~/.local/bin
python3 -m pip install --user scipy # also installs numpy
#python3 -m pip install --user numpy
python3 -m pip install --user matplotlib

#
# jupyter/R
#
sudo apt install r-base
#inside R:
install.packages(c('repr', 'IRdisplay', 'evaluate', 'crayon', 'pbdZMQ'))
apt install libssl-dev libcurl3-openssl-dev
# ezutan ezekkel nem volt problema
install.packages(c('devtools', 'uuid', 'digest'))
devtools::install_github('IRkernel/IRkernel')
IRkernel::installspec()
#
#test it, now R,python3(numpy) should work with jupyter
apt install git
git clone http://github.com/czylabsonasa/barabasinb
#
# jupyter/julia
#
apt install julia
# inside julia:
Pkg.add("IJulia") #it will take a while
Pkg.add("Winston") # a rajzolgatashoz

#
# jupyter/octave
#
python3 -m pip install --user octave_kernel
#
# python sympy
#
python3 -m pip install --user sympy



