<?php
/**
 * A test class
 *
 * PHP version 5
 *
 * @category Test
 * @package  Test
 * @author   Pete Lawrence <pete@carltonsoftware.co.uk>
 * @license  All rights reserved
 * @link     http://www.carltonsoftware.co.uk
 */


/**
 * A test class
 *
 * @category  Test
 * @package   Test
 * @author    Pete Lawrence <pete@carltonsoftware.co.uk>
 * @copyright 2014 Carlton Software
 * @license   All rights reserved
 * @link      http://www.carltonsoftware.co.uk
 */
class Demo
{

    /**
     * Prints hello world
     *
     * @return void
     */
    public function hello()
    {
        print 'hello world';
    }

}


$demo = new Demo();
$demo->hello();
