#include "src/module.h"
#include "/var/lib/gems/2.7.0/gems/ceedling-0.31.1/vendor/unity/src/unity.h"


void setUp()

{



}



void tearDown()

{



}



void test_addition()

{

    UnityAssertEqualNumber((UNITY_INT)((8)), (UNITY_INT)((module_addition(4, 4))), (

   ((void *)0)

   ), (UNITY_UINT)(16), UNITY_DISPLAY_STYLE_INT);

}



void test_addition_to_fail()

{

    UnityAssertEqualNumber((UNITY_INT)((9)), (UNITY_INT)((module_addition(4, 3))), (

   ((void *)0)

   ), (UNITY_UINT)(21), UNITY_DISPLAY_STYLE_INT);

}
