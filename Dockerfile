#FROM base
#RUN apt-get update

FROM scipy
RUN apt-get -y install r-base
RUN pip install rpy2

#setup R configs
RUN echo "r <- getOption('repos'); r['CRAN'] <- 'http://cran.us.r-project.org'; options(repos = r);" > ~/.Rprofile
RUN Rscript -e "install.packages('yhatr')"


