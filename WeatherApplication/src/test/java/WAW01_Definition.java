import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.commons.io.FileUtils;
import org.junit.Assert;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.io.File;
import java.time.Duration;
import java.util.List;
import java.util.concurrent.TimeUnit;
import Utility.*;


public class WAW01_Definition {
    WebDriver driver = null;

    public WAW01_Definition() {

        driver = BrowserDriver.GetDriver();
    }

    @Given("Website is up and running")
    public void websiteIsUpAndRunning() {

        driver.get("https://weather-app-02.netlify.app/");
        String actual = driver.findElement(By.className("coverTitle")).getText();
        Assert.assertEquals("Reading the text from homepage", "My Weather Application\n", actual);

    }

    @And("website is opened in browser")
    public void websiteIsOpenedInBrowser() {
        boolean isDisplayed = driver.findElement(By.id("btn btn-secondary")).isDisplayed();
        Assert.assertTrue(isDisplayed);
    }


    @When("user search for <City Name> city")
    public void userSearchForCityNameCity() {
        driver.findElement(By.className("form-control")).sendKeys("Amravati");

    }

    @And("click on {string} button or hitting enter key from keyboard")
    public void clickOnButtonOrHittingEnterKeyFromKeyboard(String arg0) {

    }

    @Then("user should see weather information with respective to that city")
    public void userShouldSeeWeatherInformationWithRespectiveToThatCity() {
        String errorText = null;
        try {
            errorText = driver.findElement(By.cssSelector(".error > span")).getText();

        } catch (NoSuchElementException nse) {
            System.out.println("Exception occured");
        }
        Assert.assertNull("Request failed with status code 404", errorText);


        FluentWait wait = new FluentWait(driver);

        wait.withTimeout(Duration.ofSeconds(30));
        wait.pollingEvery(Duration.ofMillis(2));//frequency
        wait.ignoring(org.openqa.selenium.NoSuchElementException.class);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.className("res_title")));

        String CityName = driver.findElement(By.className("res_title")).getText();
        String cityName = null;
        Assert.assertEquals("Amravati",cityName);
    }

    @When("click on Search button or hitting enter key from keyboard")
    public void clickOnSearchbuttonOrHittingEnterkeyFromKeyboard() {
        Actions actionProvider = new Actions(driver);
        Action enter = actionProvider.sendKeys(Keys.ENTER).build();
        enter.perform();

    }

}

