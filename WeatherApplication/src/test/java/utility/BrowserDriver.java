package utility;  // You can change the package name based on your structure

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.RemoteWebDriver;

public class BrowserDriver
{

    // Static method to get the WebDriver instance
    public static WebDriver GetDriver()
    {
        ChromeOptions options = new ChromeOptions();
        //options.addArguments("--headless", "--no-sandbox", "--disable-dev-shm-usage");

        return new RemoteWebDriver(options); // Return an instance of ChromeDriver (WebDriver)
    }
}
