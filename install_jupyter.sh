#
# Install Jupyter, R, Octave and Julia
# Run as ./install_jupyter without sudo
#

sudo apt install python3-pip r-base libssl-dev libcurl3-openssl-dev git julia
python3 -m pip install --upgrade pip
python3 -m pip install --user jupyter scipy matplotlib sympy.b  octave_kernel
sudo R --no-save <<< "install.packages(c('repr', 'IRdisplay', 'evaluate', 'crayon', 'pbdZMQ'), repos='http://cran.us.r-project.org')"
sudo R --no-save <<< "install.packages(c('devtools', 'uuid', 'digest'), repos='http://cran.us.r-project.org')"
sudo R --no-save <<< "devtools::install_github('IRkernel/IRkernel')"
sudo R --no-save <<< "IRkernel::installspec()"
julia <<< 'Pkg.add("IJulia")'
julia <<< 'Pkg.add("Winston")'
