package utility;  // You can change the package name based on your structure

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class BrowserDriver
{

    // Static method to get the WebDriver instance
    public static WebDriver GetDriver()
    {
        ChromeOptions options = new ChromeOptions();
        options.addArguments("--headless");
        return new ChromeDriver(options); // Return an instance of ChromeDriver (WebDriver)
    }
}
