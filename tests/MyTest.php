<?php

require_once 'src/test.php';

class MyTest extends PHPUnit_Framework_TestCase
{

    /**
     * A test that always passes
     *
     * @return void
     */
    public function testPass()
    {
        $this->assertTrue(true);
    }

    /**
     * Test the HelloWorld::getMessage() function
     *
     * @return void
     */
    public function testMessage()
    {
        $helloWorld = new HelloWorld();
        $this->assertEquals('Hello World!', $helloWorld->getMessage());
    }

}
