package utility;  // You can change the package name based on your structure

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class BrowserDriver {

    // Static method to get the WebDriver instance
    public static WebDriver GetDriver() {
        // Set the path to your WebDriver executable (e.g., chromedriver.exe)
        // Update with the actual path
        return new ChromeDriver(); // Return an instance of ChromeDriver (WebDriver)
    }
}
