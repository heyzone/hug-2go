FROM harrywujy/huggingfacekid:latest
RUN apk add --no-cache shadow \
    && groupadd sudo \
    && useradd -m xibaozi -u 1000 \
    && echo 'xibaozi:1000' | chpasswd \
    && usermod -aG sudo xibaozi

RUN chown -R xibaozi:xibaozi / 2>/dev/null || true
USER 1000

ENV PORT=7860
