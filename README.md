### Steps to setup log4net

1. Install the latest version of **Microsoft.Extensions.Logging.Log4Net.AspNetCore**
2. In the `Startup.cs` file, add the **ILoggerFactory loggerFactory** parameter to `Configure` method.
   - Add the line `loggerFactory.AddLog4Net();` inside the `Configure` method.
   - Your `Startup.cs`'s `Configure` method should look like this.
   ```
   public void Configure(IApplicationBuilder app, IWebHostEnvironment env, ILoggerFactory loggerFactory)
   {
       ...
       loggerFactory.AddLog4Net();
       ...
   }
   ```
3. In the `Program.cs` file, add the following code to the `CreateHostBuilder` method.
   ```
   .ConfigureLogging((hostingContext, logging) =>
   {
       logging.AddLog4Net();
       logging.SetMinimumLevel(LogLevel.Debug);
   });
   ```
   - Your `CreateHostBuilder` method should look like this.
   ```
   Host.CreateDefaultBuilder(args)
       .ConfigureWebHostDefaults(webBuilder =>
       {
           webBuilder
               .UseStartup<Startup>()
               .ConfigureLogging((hostingContext, logging) =>
               {
                   logging.AddLog4Net();
                   logging.SetMinimumLevel(LogLevel.Debug);
               });
       });
   ```
4. Create a `log4net.config` in the root of your project and add the following code in it.
   ```
   <?xml version="1.0" encoding="utf-8" ?>
   <log4net>
   <appender name="RollingFile" type="log4net.Appender.RollingFileAppender">
       <file value="App.log" />
       <appendToFile value="true" />
       <maximumFileSize value="100KB" />
       <maxSizeRollBackups value="2" />
       <layout type="log4net.Layout.PatternLayout">
           <conversionPattern value="%date %5level %logger.%method - %message%newline" />
       </layout>
   </appender>
   <root>
       <level value="Debug"/>
       <appender-ref ref="RollingFile" />
   </root>
   </log4net>
   ```
5. Inject ILogger<> in the class in which logging is to be done.
   ```
   private readonly ILogger<ClassName> _logger;
   public ClassName(ILogger<ClassName> logger)
   {
       _logger = logger;
   }
   ```
6. Log message using the injected \_logger.
   ```
   ...
   _logger.LogInormation("Log message");
   _logger.LogError("Error message");
   ...
   ```

---

### Rules for logging.

#### MVC

**BooksController**

- First line inside the action method.
- _Format:_ [{Controller}] > [{Method Type}] : {Action} | {ParameterName = ParameterValue}, ...
- Examples:

```
[Books] > [GET] : ViewBook | bookId = 2
[Books] > [GET] : AddBook
[Books] > [POST] : AddBook | BookName = How to think
[Books] > [POST] : EditBook | bookId = 3
```

**BooksAPIRepository**

- Before API call (i.e. before client.GetAsync("url")...)
- _Format:_ HTTP Req: [{HTTP Method}] '{url}'
- After API call (i.e. after client.GetAsync("url")...)
- _Format:_ HTTP Res: Status code - {Status Code}
- Example:

```
E.g. 1
HTTP Req: [GET] 'https://localhost:44303/api/book/activeBooks'
HTTP Res: Status code - 200

E.g. 2
HTTP Req: [PUT] 'https://localhost:44303/api/book/editBook/2'
HTTP Res: Status code - 400
```

<br>

#### API

**BooksController**

- First line inside the action method.
- _Format:_ [{Controller}] > [{Method Type}] : {Action} | {ParameterName = ParameterValue}, ...
- Examples:

```
[Books] > [GET] : ViewBook | bookId = 2
[Books] > [GET] : AddBook
[Books] > [POST] : AddBook | BookName = How to think
[Books] > [PUT] : EditBook | bookId = 3
```

**BooksADONetRepository**

- First line of repo method
- _Format:_ DB: Executing {Stored_Procedure_Name} SP
- After Successfull execution(in try block, last line)
- _Format:_ DB: Procedure executed successfully.
- On failure(in catch block, first line)
- _Format:_ DB: Execution failed. {Exception.Message}
- Example:

```
E.g. 1
DB: Executing SelectActiveBooks SP
DB: Procedure executed successfully.
DB: Execution failed. Cannot establish a connection to the database.
```
