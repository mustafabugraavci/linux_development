#include "unity.h"
#include "module.h"

void setUp()
{

}

void tearDown()
{

}

void test_addition()
{
    TEST_ASSERT_EQUAL(8, module_addition(4, 4));
}

void test_addition_to_fail()
{
    TEST_ASSERT_EQUAL(9, module_addition(4, 3));
}

