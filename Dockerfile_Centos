FROM centos
MAINTAINER alphayan "664184741"
#修改yum源为阿里源
RUN cp /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup\
    && curl -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo \
    && yum makecache
CMD ["/bin/bash"]
