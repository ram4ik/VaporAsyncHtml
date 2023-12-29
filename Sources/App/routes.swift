import Vapor

func routes(_ app: Application) throws {
    
    app.logger.info("Setting up migrations...")
    
    let customLogger = Logger(label: "dev.customLogger.myAppLogs")
    
    app.get { req async in
        customLogger.info("Some info log, from custom logger")
        return "It works!"
    }

    app.get("hello") { req async -> String in
        req.logger.info("Hello, logs!")
        return "Hello, world!"
    }
}
