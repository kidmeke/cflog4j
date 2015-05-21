Log4j Abstract API for ColdFusion.

Log4j Introduction:
Log4j is an open source Java project that gives the developer the ability to control which log statements are output with arbitrary granularity. It is fully configurable at runtime using external configuration files and most important, it can be utilized within ColdFusion

Project Description:

Coldfusion include log4j internally which is used whenever 

&lt;cflog&gt;

 tag is employed. However the specified log files can only be saved in a folder which is sometime not accessible (especially in shared hosting). This CFC will enable logging to an arbitary log file without the above mentioned limitation. It also provide additional benefit of setting the max size of the log file created, along with configuration of backup files, the level of logging to output (debug, info, warn, error, fatal), and formatting of the messages.

I would like to thank the Author(s) mentioned in the links as without these I am not sure if I could have written this utility.

Comments and feedback are always welcome. Happy logging












