package runners;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
        features = "src/Features/WAW_01.feature",
        glue = "stepdefinition"
)
public class TestNGCucumberRunner extends AbstractTestNGCucumberTests {
}
