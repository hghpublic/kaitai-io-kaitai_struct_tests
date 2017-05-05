#include <boost/test/unit_test.hpp>

#include <switch_integers2.h>

#include <iostream>
#include <fstream>
#include <vector>

BOOST_AUTO_TEST_CASE(test_switch_integers2) {
    std::ifstream ifs("src/switch_integers.bin", std::ifstream::binary);
    kaitai::kstream ks(&ifs);
    switch_integers2_t* r = new switch_integers2_t(&ks);

    BOOST_CHECK_EQUAL(r->code(), 1);
    BOOST_CHECK_EQUAL(r->len(), 7);
    BOOST_CHECK_EQUAL(r->ham(), "\x02\x40\x40\x04\x37\x13\x00");
    BOOST_CHECK_EQUAL(r->padding(), 0);
    BOOST_CHECK_EQUAL(r->len_mod_str(), "13");

    delete r;
}
