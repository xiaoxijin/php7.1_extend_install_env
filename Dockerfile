FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/pcm_local:latest

Maintainer Xijin Xiao (http://github.com/xiaoxijin/)

ADD composer-setup.php $WORK_DIR
ADD build_extend.sh $WORK_DIR
ADD entrypoint.sh $WORK_DIR

RUN sh ${WORK_DIR}build_extend.sh


ENTRYPOINT ["/bin/sh"]
