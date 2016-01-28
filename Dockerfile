from rpi-java8:8u71
maintainer Richard Tjerngren <richodemus@gmail.com>

run mkdir /maven
add http://apache.mirrors.spacedump.net/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz /maven
workdir /maven
run tar -xf apache-maven-3.3.9-bin.tar.gz

ENV M2_HOME /maven/apache-maven-3.3.9
ENV PATH $M2_HOME/bin:$PATH

run mkdir /root/.m2
run mkdir /source
workdir /source

entrypoint ["mvn"]
CMD ["-version"]

