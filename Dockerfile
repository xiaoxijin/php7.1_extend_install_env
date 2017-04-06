FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/pcm_local:latest

Maintainer Xijin Xiao (http://github.com/xiaoxijin/)

ADD composer-setup.php /work/
ADD build_extend.sh /work/
ADD entrypoint.sh /work/

RUN sh /work/build_extend.sh


ENTRYPOINT ["/work/entrypoint.sh"]
CMD ["install"]