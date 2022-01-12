FROM centos:latest

VOLUME ["/Marmotplots", "/PlexosSolutionH5"]

WORKDIR /marmot

COPY Marmot .
COPY run_marmot.sh /
COPY install_conda.sh /

RUN yum -y update
RUN yum -y install git
RUN /install_conda.sh
RUN /opt/conda/bin/conda env create -f marmot-env.yml

ENTRYPOINT ["/run_marmot.sh"]