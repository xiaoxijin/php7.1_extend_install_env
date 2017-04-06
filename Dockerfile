FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/pcm_local:latest

Maintainer Xijin Xiao (http://github.com/xiaoxijin/)

ADD composer-setup.php /root/
ADD build_extend.sh /root/

RUN sh /root/build_extend.sh


ENTRYPOINT ["/bash/sh"]
CMD ["ls"]

