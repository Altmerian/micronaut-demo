FROM frolvlad/alpine-glibc
WORKDIR /app
ARG NATIVE_IMAGE_NAME
COPY build/native/nativeCompile/$NATIVE_IMAGE_NAME /app/application
EXPOSE 8080
ENTRYPOINT ["/app/application"]
