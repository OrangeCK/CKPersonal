[TOC]
# log4j2的配置，不同级别日志保存在不同文件夹（基于Springboot)
## 1.前言汇总
>* 目的是想按照按照规定的格式打印在控制台，以及以文件的形式保存下来，并且按照日志的级别，保存为不同的log文件.
>* 首先你得搭建一个简单的springboot项目，这个就直接在网上查，例子数不胜数
>* 然后在pom.xml文件中添加依赖：
	
	<dependency>
		<groupId>org.springframework.boot</groupId>
		<artifactId>spring-boot-starter-web</artifactId>
		<exclusions>
			<exclusion>
				<groupId>org.springframework.boot</groupId>
				<artifactId>spring-boot-starter-logging</artifactId>
			</exclusion>
		</exclusions>
	</dependency>
	<!--添加log4j的依赖-->
	<dependency>
		<groupId>org.springframework.boot</groupId>
		<artifactId>spring-boot-starter-log4j2</artifactId>
	</dependency>

>* 至于为什么要加上exclusions那一段标签，原因是因为springboot有个默认的日志，叫logback,
其实这个日志也是比较好用的，可以看我的下篇文章阐述；所以要把他排除，不然也许会报出错误。
>* 然后是在resources目录下加入日志的配置文件，至于名字,在log4j2里，配置文件检测的过程如下：
>>1. log4j会检测名为"log4j.configurationFile"的系统属性值，如果这个值被设置了，则会尝试通过ConfigurationFactory来加载这个值对应的文件。
>>2. 否则它会尝试查找log4j2-test.properties这个文件。
>>3. 否则它会尝试查找文件log4j2-test.yaml 和 log4j2-test.yml。
>>4. 否则它会尝试查找文件log4j2-test.json 和 log4j2-test.jsn。
>>5. 否则查找文件log4j2-test.xml。
>>6. 否则查找文件log4j2.properties。
>>7. 否则查找文件log4j2.yaml 和 log4j2.yml。
>>8. 否则查找文件log4j2.json 和 log4j2.jsn。
>>9. 否则查找文件log4j2.xml。

>* 我直接取的是log4j2.xml
## log4j2.xml的实际配置
>* 这里我直接po出整个log4j2.xml吧，详细的解释我就直接写在配置文件中的注释了吧

	<?xml version="1.0" encoding="UTF-8"?>
	<Configuration packages="com.example.baseframe.myspringboot.config">
    <Properties>
        <property name="Log_Home">d:/logs/myspringboot/</property>
    </Properties>
    <appenders>
        <!--这个输出控制台的配置-->
        <Console name="Console" target="SYSTEM_OUT">
            <!--控制台只输出level及以上级别的信息（onMatch），其他的直接拒绝（onMismatch）,ACCEPT(接受其及以上)，DENY(拒绝以下)，NEUTRAL(中立，由下一个ThresholdFilter处理)-->
            <ThresholdFilter level="TRACE" onMatch="ACCEPT" onMismatch="DENY" />
            <!--输出日志格式-->
            <PatternLayout pattern="%d{yyyy-MM-dd HH:mm:ss}| %-5level|%ip|%thread| %logger{50}| %msg%n" />
        </Console>
        <!--这个会打印出所有的信息，每次大小超过size，则这size大小的日志会自动存入按年份-月份建立的文件夹下面并进行压缩，作为存档-->
        <RollingFile name="RollingFile_Debug" fileName="${Log_Home}/debug/debug.log" filePattern="${Log_Home}$${date:yyyy-MM}/app-%d{yyyyMMddHHmmssSSS}.log.gz">
            <PatternLayout pattern="%d{yyyy-MM-dd HH:mm:ss}| %-5level|%ip|%thread| %logger{50}| %msg%n" />
            <!-- 日志文件大小 -->
            <SizeBasedTriggeringPolicy size="20MB" />
            <!-- 最多保留文件数 -->
            <DefaultRolloverStrategy max="20"/>
            <Filters>
                <ThresholdFilter level="INFO" onMatch="DENY" onMismatch="NEUTRAL"/>
                <ThresholdFilter level="DEBUG" onMatch="ACCEPT" onMismatch="DENY"/>
            </Filters>
        </RollingFile>
        <RollingFile name="RollingFile_Info" fileName="${Log_Home}/info/info.log" filePattern="${Log_Home}$${date:yyyy-MM}/app-%d{yyyyMMddHHmmssSSS}.log.gz">
            <PatternLayout pattern="%d{yyyy-MM-dd HH:mm:ss}| %-5level|%ip|%thread| %logger{50}| %msg%n" />
            <SizeBasedTriggeringPolicy size="20MB" />
            <DefaultRolloverStrategy max="20"/>
            <Filters>
                <ThresholdFilter level="WARN" onMatch="DENY" onMismatch="NEUTRAL"/>
                <ThresholdFilter level="INFO" onMatch="ACCEPT" onMismatch="DENY"/>
            </Filters>
        </RollingFile>
        <RollingFile name="RollingFile_Warn" fileName="${Log_Home}/warn/warn.log" filePattern="${Log_Home}$${date:yyyy-MM}/app-%d{yyyyMMddHHmmssSSS}.log.gz">
            <PatternLayout pattern="%d{yyyy-MM-dd HH:mm:ss}| %-5level|%ip|%thread| %logger{50}| %msg%n" />
            <SizeBasedTriggeringPolicy size="20MB" />
            <DefaultRolloverStrategy max="20"/>
            <Filters>
                <ThresholdFilter level="ERROR" onMatch="DENY" onMismatch="NEUTRAL"/>
                <ThresholdFilter level="WARN" onMatch="ACCEPT" onMismatch="DENY"/>
            </Filters>
        </RollingFile>
        <RollingFile name="RollingFile_Error" fileName="${Log_Home}/error/error.log" filePattern="${Log_Home}$${date:yyyy-MM}/app-%d{yyyyMMddHHmmssSSS}.log.gz">
            <PatternLayout pattern="%d{yyyy-MM-dd HH:mm:ss}| %-5level|%ip|%thread| %logger{50}| %msg%n" />
            <SizeBasedTriggeringPolicy size="20MB" />
            <DefaultRolloverStrategy max="20"/>
            <Filters>
                <ThresholdFilter level="ERROR" onMatch="ACCEPT" onMismatch="DENY"/>
            </Filters>
        </RollingFile>
    </appenders>

    <Loggers>
        <!--然后定义logger，只有定义了logger并引入的appender，appender才会生效-->
        <logger name="com.example.baseframe.myspringboot" level="DEBUG" additivity="true">
            <AppenderRef ref="RollingFile_Debug" />
            <AppenderRef ref="RollingFile_Info" />
            <AppenderRef ref="RollingFile_Warn" />
            <AppenderRef ref="RollingFile_Error" />
        </logger>
        <!--建立一个默认的root的logger-->
        <root level="DEBUG">
            <AppenderRef ref="Console" />
        </root>
    </Loggers>
	</Configuration>

>* 在java代码中怎么使用

	public class Log4j2DemoApplication implements ApplicationRunner {
    	private static final Logger logger = LogManager.getLogger(Log4j2DemoApplication.class);

	    public static void main(String[] args) {
	        SpringApplication.run(Log4j2DemoApplication.class, args);
	    }

	    @Override
	    public void run(ApplicationArguments applicationArguments) throws Exception {
	        logger.debug("Debugging log");
	        logger.info("Info log");
	        logger.warn("Hey, This is a warning!");
	        logger.error("Oops! We have an Error. OK");
	        logger.fatal("Damn! Fatal error. Please fix me.");
	    }
	}
