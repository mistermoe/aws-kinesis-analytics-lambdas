FROM public.ecr.aws/lambda/python:3.8

# Create function directory
WORKDIR /app

# Install the function's dependencies 
# Copy file requirements.txt from your project folder and install
# the requirements in the app directory. 

COPY requirements.txt  .
RUN  pip3 install -r requirements.txt

COPY app.py   ./
CMD ["/app/app.handler"]