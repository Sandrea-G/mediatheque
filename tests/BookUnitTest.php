<?php

namespace App\Tests;


use App\Entity\Book;
use PHPUnit\Framework\TestCase;

class BooksUnitTest extends TestCase
{
    public function testIsTrue()
    {
        $books = new Book();
     

        $books->setTitle('title')
            ->setPublication('publication')
            ->setDescription('description')
            ->setAuthor('author')
            ->setCategory('category')
            ->setFile('file');
            
          

        $this->assertTrue($books->getTitle() === 'title');
        $this->assertTrue($books->getPublication() === 'publication');
        $this->assertTrue($books->getDescription() === 'description');
        $this->assertTrue($books->getAuthor() === 'author');
        $this->assertTrue($books->getCategory() === 'category');
        $this->assertTrue($books->getFile() === 'file');
       
    }

    public function testIsFalse()
    {
        $books = new Book();
    
       $books->setTitle('title')
        ->setPublication('publication')
        ->setDescription('description')
        ->setAuthor('author')
        ->setCategory('categorie')
        ->setFile('file');

        $this->assertFalse($books->getTitle() === 'false');
        $this->assertFalse($books->getPublication() === 'false');
        $this->assertFalse($books->getDescription() === 'false');
        $this->assertFalse($books->getAuthor() === 'false');
        $this->assertFalse($books->getCategory() === 'false');
        $this->assertFalse($books->getFile() === 'false');
    }

    public function testIsEmpty()
    {
        $books = new Book();
            


        $this->assertEmpty($books->getTitle());
        $this->assertEmpty($books->getPublication());
        $this->assertEmpty($books->getDescription());
        $this->assertEmpty($books->getAuthor());
        $this->assertEmpty($books->getCategory());
        $this->assertEmpty($books->getFile());
        
    }
}
