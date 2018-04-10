#include <boost/test/unit_test.hpp>
#include <integers.h>
#include <iostream>
#include <fstream>
#include <vector>

BOOST_AUTO_TEST_CASE(test_integers) {
    std::ifstream ifs("src/fixed_struct.bin", std::ifstream::binary);
    kaitai::kstream ks(&ifs);
    integers_t* r = new integers_t(&ks);

    BOOST_CHECK_EQUAL(r->uint8(), 255);
    BOOST_CHECK_EQUAL(r->uint16(), 65535);
    BOOST_CHECK_EQUAL(r->uint32(), 4294967295);
    BOOST_CHECK_EQUAL(r->uint64(), 18446744073709551615ULL);
    BOOST_CHECK_EQUAL(r->sint8(), -1);
    BOOST_CHECK_EQUAL(r->sint16(), -1);
    BOOST_CHECK_EQUAL(r->sint32(), -1);
    BOOST_CHECK_EQUAL(r->sint64(), -1);
    BOOST_CHECK_EQUAL(r->uint16le(), 66);
    BOOST_CHECK_EQUAL(r->uint32le(), 66);
    BOOST_CHECK_EQUAL(r->uint64le(), 66);
    BOOST_CHECK_EQUAL(r->sint16le(), -66);
    BOOST_CHECK_EQUAL(r->sint32le(), -66);
    BOOST_CHECK_EQUAL(r->sint64le(), -66);
    BOOST_CHECK_EQUAL(r->uint16be(), 66);
    BOOST_CHECK_EQUAL(r->uint32be(), 66);
    BOOST_CHECK_EQUAL(r->uint64be(), 66);
    BOOST_CHECK_EQUAL(r->sint16be(), -66);
    BOOST_CHECK_EQUAL(r->sint32be(), -66);
    BOOST_CHECK_EQUAL(r->sint64be(), -66);

    delete r;
}
