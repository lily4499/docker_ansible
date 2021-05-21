FROM arm32v7/python:3 
WORKDIR /usr/src/app 
COPY requirements.txt ./ 
RUN pip install — no-cache-dir -r requirements.txt 
COPY . . 
ENTRYPOINT [ “python”, “./main.py” ]

# From tomcat:8-jre8 
# Take the war and copy to webapps of tomcat
# COPY target/*.war /usr/local/tomcat/webapps/dockeransible.war
