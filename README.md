This Docker image is based on CentOS 7 and includes Python 3.6 installed and 
the archive with Teradata tools and utilities. 

You can find this image in Docker Hub and use it as a parent image: 
`FROM katorig/python36teradatautilities:teradatautils`

To build this image locally:
`docker build -t python36teradatautilities:main --network=host --build-arg proxy="" .` (insert proxy host and port)


List of Teradata utilities, choose the necessary one and print the number of it in shell command inside the container 
for installation `/bin/bash /tmp/TeradataToolsAndUtilitiesBase/.setup.sh {}` where {} is a place for number of utility:
 
 1. bteq        - 16.20.00.07 - Teradata BTEQ Application                  872 KB
 2. bteq32      - 16.20.00.07 - Teradata BTEQ 32-bit Application           857 KB
 3. fastexp     - 16.20.00.03 - Teradata FastExport Utility                759 KB
 4. fastld      - 16.20.00.03 - Teradata FastLoad Utility                  540 KB
 5. jmsaxsmod   - 16.20.00.04 - Teradata JMS Access Module                 210 KB
 6. mload       - 16.20.00.03 - Teradata MultiLoad Utility                 762 KB
 7. mqaxsmod    - 16.20.00.02 - WebSphere(r) Access Module for Teradata    779 KB
 8. npaxsmod    - 16.20.00.02 - Teradata Named Pipes Access Module         197 KB
 9. s3axsmod    - 16.20.00.05 - Teradata Access Module for Amazon S3      9349 KB
10. azureaxsmod - 16.20.00.01 - Teradata Access Module for Azure          9742 KB
11. kafkaaxsmod - 16.20.00.05 - Teradata Kafka Access Module              3299 KB
12. sqlpp       - 16.20.00.03 - Teradata C Preprocessor                   1990 KB
13. tdodbc      - 16.20.00.54 - Teradata ODBC Driver                    199304 KB
14. tdwallet    - 16.20.00.14 - Teradata Wallet Utility                  11565 KB
15. tptbase     - 16.20.00.09 - Teradata Parallel Transporter Base      128377 KB
16. tptstream   - 16.20.00.09 - Teradata Parallel Transporter Stream      3124 KB
17. tpump       - 16.20.00.03 - Teradata TPump Utility                     961 KB
18. teragssAdmin- 16.20.29.01 - Teradata GSS Administration Package      24489 KB
