<?php

namespace App\Tests;

use App\Entity\User;
use PHPUnit\Framework\TestCase;

class UserUnitTest extends TestCase
{
    public function testIsTrue()
    {
        $user = new User();

        $user->setEmail('true@test.com')
            ->setName('name')
            ->setFirstname('firstname')
            ->setBirthday('birthday')
            ->setAddress('adress')
            ->setPassword('password');

        $this->assertTrue($user->getEmail() === 'true@test.com');
        $this->assertTrue($user->getName() === 'name');
        $this->assertTrue($user->getFirstname() === 'firstname');
        $this->assertTrue($user->getBirthday() === 'birthday');
        $this->assertTrue($user->getAddress() === 'adress');
        $this->assertTrue($user->getPassword() === 'password');
    }

    public function testIsFalse()
    {
        $user = new User();

        $user->setEmail('true@test.com')
            ->setName('name')
            ->setFirstname('firstname')
            ->setBirthday('birthday')
            ->setAddress('adress')
            ->setPassword('password');

        $this->assertFalse($user->getEmail() === 'fals@test.com');
        $this->assertFalse($user->getName() === 'false');
        $this->assertFalse($user->getFirstname() === 'false');
        $this->assertFalse($user->getBirthday() === 'false');
        $this->assertFalse($user->getAddress() === 'false');
        $this->assertFalse($user->getPassword() === 'false');
    }

    public function testIsEmpty()
    {
        $user = new User();
            


        $this->assertEmpty($user->getEmail());
        $this->assertEmpty($user->getName());
        $this->assertEmpty($user->getFirstname());
        $this->assertEmpty($user->getBirthday());
        $this->assertEmpty($user->getAddress());
       
        
    }
}
