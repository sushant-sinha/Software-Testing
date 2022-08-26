/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample;

/**
 *
 * @author 91932
 */
import net.sourceforge.jwebunit.junit.WebTestCase;
import net.sourceforge.jwebunit.util.TestingEngineRegistry;
import org.junit.*;

import static net.sourceforge.jwebunit.junit.JWebUnit.*;

import static net.sourceforge.jwebunit.junit.JWebUnit.*;

public class temp {
	
    @Before
    public void prepare() {
        setBaseUrl("http://localhost:8080/TestingProject");
    }

    @Test
    public void test1() {
        
        // below code section is for Index.html
        
        beginAt("Index.html"); //Open the browser on http://localhost:8080/test/home.xhtml
        //clickLink("login");
        assertTitleEquals("Index");
        
        //setTextField("userid", "customer");
        //setTextField("password", "password");
        clickButton("but1");
        // submit();
        assertTitleEquals("Login");
        
    }
    
    @Test
    public void test2() {
        
        // this code section is for AddProduct.html
        // for testing date
        // returns valid
        
        beginAt("AddProduct.html"); //Open the browser on http://localhost:8080/test/home.xhtml
        //clickLink("login");
        assertTitleEquals("Add Product");
        setTextField("prname", "temp");
        setTextField("mfname", "test");
        setTextField("mdate", "30-12-2022");
        setTextField("edate", "16-09-2023");
        setTextField("quantity", "55");
        setTextField("price", "55");
        //setTextField("password", "password");
        
        //assertButtonPresent("but1");
        submit();
        assertTitleEquals("ReStock");
    }
    
    @Test
    public void test3() {
        
        // this code section is for AddProduct.html
        // for testing date
        // invalid date input
        
        beginAt("AddProduct.html"); //Open the browser on http://localhost:8080/test/home.xhtml
        //clickLink("login");
        assertTitleEquals("Add Product");
        setTextField("prname", "temp");
        setTextField("mfname", "test");
        setTextField("mdate", "30-10-2025");
        setTextField("edate", "16-09-2023");
        setTextField("quantity", "55");
        setTextField("price", "55");
        //setTextField("password", "password");
        
        //assertButtonPresent("but1");
        submit();
        assertTitleEquals("ReStock");
    }
    
    @Test
    public void test4() {
        
        // this code section is for AddProduct.html
        // for testing date
        // not permitted date
        
        beginAt("AddProduct.html"); //Open the browser on http://localhost:8080/test/home.xhtml
        //clickLink("login");
        assertTitleEquals("Add Product");
        setTextField("prname", "temp");
        setTextField("mfname", "test");
        setTextField("mdate", "55-12-2022");
        setTextField("edate", "16-09-2023");
        setTextField("quantity", "55");
        setTextField("price", "55");
        //setTextField("password", "password");
        
        //assertButtonPresent("but1");
        submit();
        assertTitleEquals("ReStock");
    }
    
    @Test
    public void test5() {
        
        // this code section is for AddProduct.html
        // for testing product name
        // return valid
        
        beginAt("AddProduct.html"); //Open the browser on http://localhost:8080/test/home.xhtml
        //clickLink("login");
        assertTitleEquals("Add Product");
        setTextField("prname", "dolo2020");
        setTextField("mfname", "DrReddy");
        setTextField("mdate", "01-12-2022");
        setTextField("edate", "16-09-2023");
        setTextField("quantity", "55");
        setTextField("price", "55");
        //setTextField("password", "password");
        
        //assertButtonPresent("but1");
        submit();
        assertTitleEquals("ReStock");
    }
    
    @Test
    public void test6() {
        
        // this code section is for AddProduct.html
        // for testing product name
        // return invalid
        
        beginAt("AddProduct.html"); //Open the browser on http://localhost:8080/test/home.xhtml
        //clickLink("login");
        assertTitleEquals("Add Product");
        setTextField("prname", "dolo@2020");
        setTextField("mfname", "DrReddy");
        setTextField("mdate", "01-12-2022");
        setTextField("edate", "16-09-2023");
        setTextField("quantity", "55");
        setTextField("price", "55");
        //setTextField("password", "password");
        
        //assertButtonPresent("but1");
        submit();
        assertTitleEquals("ReStock");
    }
    
    @Test
    public void test7() {
        
        // this code section is for AddProduct.html
        // for testing manufacturer name
        // return invalid
        
        beginAt("AddProduct.html"); //Open the browser on http://localhost:8080/test/home.xhtml
        //clickLink("login");
        assertTitleEquals("Add Product");
        setTextField("prname", "dolo2020");
        setTextField("mfname", "Dr#150Reddy");
        setTextField("mdate", "01-12-2022");
        setTextField("edate", "16-09-2023");
        setTextField("quantity", "55");
        setTextField("price", "55");
        //setTextField("password", "password");
        
        //assertButtonPresent("but1");
        submit();
        assertTitleEquals("ReStock");
    }
    
    @Test
    public void test8() {
        
        // this code section is for AddProduct.html
        // for testing quantity
        // return invalid
        
        beginAt("AddProduct.html"); //Open the browser on http://localhost:8080/test/home.xhtml
        //clickLink("login");
        assertTitleEquals("Add Product");
        setTextField("prname", "dolo2020");
        setTextField("mfname", "DrReddy");
        setTextField("mdate", "01-12-2022");
        setTextField("edate", "16-09-2023");
        setTextField("quantity", "-5");
        setTextField("price", "55");
        //setTextField("password", "password");
        
        //assertButtonPresent("but1");
        submit();
        assertTitleEquals("ReStock");
    }
    
    @Test
    public void test9() {
        
        // this code section is for AddProduct.html
        // for testing price
        // return invalid
        
        beginAt("AddProduct.html"); //Open the browser on http://localhost:8080/test/home.xhtml
        //clickLink("login");
        assertTitleEquals("Add Product");
        setTextField("prname", "dolo2020");
        setTextField("mfname", "DrReddy");
        setTextField("mdate", "01-12-2022");
        setTextField("edate", "16-09-2023");
        setTextField("quantity", "55");
        setTextField("price", "-67");
        //setTextField("password", "password");
        
        //assertButtonPresent("but1");
        submit();
        assertTitleEquals("ReStock");
    }
    
    @Test
    public void test10() {
        
        // this code section is for AddProduct.html
        // for testing price
        // return valid
        
        beginAt("AddProduct.html"); //Open the browser on http://localhost:8080/test/home.xhtml
        //clickLink("login");
        assertTitleEquals("Add Product");
        setTextField("prname", "dolo2020");
        setTextField("mfname", "DrReddy");
        setTextField("mdate", "01-12-2022");
        setTextField("edate", "16-09-2023");
        setTextField("quantity", "55");
        setTextField("price", "0");
        //setTextField("password", "password");
        
        //assertButtonPresent("but1");
        submit();
        assertTitleEquals("ReStock");
    }
    
    @Test
    public void test11() {
        
        // this code section is for AddProduct.html
        // for testing price
        // return valid
        
        beginAt("AddProduct.html"); //Open the browser on http://localhost:8080/test/home.xhtml
        //clickLink("login");
        assertTitleEquals("Add Product");
        setTextField("prname", "Aspirin100Mg");
        setTextField("mfname", "Zuventus");
        setTextField("mdate", "22-06-2022");
        setTextField("edate", "12-10-2025");
        setTextField("quantity", "20");
        setTextField("price", "349");
        //setTextField("password", "password");
        
        //assertButtonPresent("but1");
        submit();
        assertTitleEquals("ReStock");
    }

@Test
    public void test12() {
        
        // this code section is for AddProduct.html
        // for expiry date month
        // return invalid
        
        beginAt("AddProduct.html"); //Open the browser on http://localhost:8080/test/home.xhtml
        //clickLink("login");
        assertTitleEquals("Add Product");
        setTextField("prname", "Aspirin100Mg");
        setTextField("mfname", "Zuventus");
        setTextField("mdate", "22-14-2022");
        setTextField("edate", "12-67-2025");
        setTextField("quantity", "20");
        setTextField("price", "349");
        //setTextField("password", "password");
        
        //assertButtonPresent("but1");
        submit();
        assertTitleEquals("ReStock");
    }
    
    @Test
    public void test13() {
        
        // this code section is for AddProduct.html
        // for expiry date month
        // return invalid
        
        beginAt("AddProduct.html"); //Open the browser on http://localhost:8080/test/home.xhtml
        //clickLink("login");
        assertTitleEquals("Add Product");
        setTextField("prname", "Aspirin100Mg");
        setTextField("mfname", "Zuventus");
        setTextField("mdate", "22-06-2022");
        setTextField("edate", "12-67-2025");
        setTextField("quantity", "10");
        setTextField("price", "200");
        //setTextField("password", "password");
        
        //assertButtonPresent("but1");
        submit();
        assertTitleEquals("ReStock");
    }

@Test
    public void test14() {
        
        // this code section is for AddProduct.html
        // for expiry date month
        // return invalid
        
        beginAt("AddProduct.html"); //Open the browser on http://localhost:8080/test/home.xhtml
        //clickLink("login");
        assertTitleEquals("Add Product");
        setTextField("prname", "Aspirin100Mg");
        setTextField("mfname", "Zuventus");
        setTextField("mdate", "31-11-2022");
        setTextField("edate", "12-10-2025");
        setTextField("quantity", "3");
        setTextField("price", "150");
        //setTextField("password", "password");
        
        //assertButtonPresent("but1");
        submit();
        assertTitleEquals("ReStock");
    }

@Test
    public void test15() {
        
        // this code section is for AddProduct.html
        // for expiry date month
        // return invalid
        
        beginAt("AddProduct.html"); //Open the browser on http://localhost:8080/test/home.xhtml
        //clickLink("login");
        assertTitleEquals("Add Product");
        setTextField("prname", "Covaxin");
        setTextField("mfname", "BharatbioTech");
        setTextField("mdate", "31-12-2022");
        setTextField("edate", "30-02-2030");
        setTextField("quantity", "200");
        setTextField("price", "320");
        //setTextField("password", "password");
        
        //assertButtonPresent("but1");
        submit();
        assertTitleEquals("ReStock");
    }

@Test
    public void test16() {
        
        // this code section is for AddProduct.html
        // for expiry date month
        // return valid
        
        beginAt("AddProduct.html"); //Open the browser on http://localhost:8080/test/home.xhtml
        //clickLink("login");
        assertTitleEquals("Add Product");
        setTextField("prname", "Covaxin");
        setTextField("mfname", "BharatbioTech");
        setTextField("mdate", "31-12-2022");
        setTextField("edate", "26-02-2030");
        setTextField("quantity", "200");
        setTextField("price", "320");
        //setTextField("password", "password");
        
        //assertButtonPresent("but1");
        submit();
        assertTitleEquals("ReStock");
    }
    
    @Test
    public void test17() {
        
        // this code section is for AddProduct.html
        // for testing price
        // return valid
        
        beginAt("Buy.jsp"); //Open the browser on http://localhost:8080/test/home.xhtml
        //clickLink("login");
        assertTitleEquals("Buy");
        //setTextField("password", "password");
        setTextField("orderquantity", "2");
        //clickButton("order");
        submit();
        assertTitleEquals("PlaceOrder");
    }
    
    
    
}