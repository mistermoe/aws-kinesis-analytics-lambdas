FROM public.ecr.aws/lambda/python:3.8

ARG lambda
ENV lambda=${lambda}

COPY ./lambdas/${lambda} /code

# Create function directory
WORKDIR /code

# Install the function's dependencies 
# Copy file requirements.txt from your project folder and install
# the requirements in the app directory. 
RUN  pip3 install -r requirements.txt

CMD ["/code/app.handler"]