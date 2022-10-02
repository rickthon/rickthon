FROM rickthoniq/rickthon:slim-buster

#clonning repo 
RUN git clone https://github.com/rick1128/sbb_b1.git /root/sbb_b
#working directory 
WORKDIR /root/sbb_b

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/sbb_b/bin:$PATH"

CMD ["python3","-m","sbb_b"]
