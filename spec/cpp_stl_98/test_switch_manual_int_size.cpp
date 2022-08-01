#include <boost/test/unit_test.hpp>
#include "switch_manual_int_size.h"
#include <iostream>
#include <fstream>
#include <vector>
#include "helpers.h"

BOOST_AUTO_TEST_CASE(test_switch_manual_int_size) {
    std::ifstream ifs("src/switch_tlv.bin", std::ifstream::binary);
    kaitai::kstream ks(&ifs);
    switch_manual_int_size_t* r = new switch_manual_int_size_t(&ks);

    BOOST_CHECK_EQUAL(r->chunks()->size(), 4);
    BOOST_CHECK_EQUAL(r->chunks()->at(0)->code(), 17);
    BOOST_CHECK_EQUAL(static_cast<switch_manual_int_size_t::chunk_t::chunk_meta_t*>(r->chunks()->at(0)->body())->title(), std::string("Stuff"));
    BOOST_CHECK_EQUAL(static_cast<switch_manual_int_size_t::chunk_t::chunk_meta_t*>(r->chunks()->at(0)->body())->author(), std::string("Me"));
    BOOST_CHECK_EQUAL(r->chunks()->at(1)->code(), 34);
    COMPARE_ARRAY(std::string, static_cast<switch_manual_int_size_t::chunk_t::chunk_dir_t*>(r->chunks()->at(1)->body())->entries(), std::string("AAAA"), std::string("BBBB"), std::string("CCCC"));
    BOOST_CHECK_EQUAL(r->chunks()->at(2)->code(), 51);
    BOOST_CHECK_EQUAL(r->chunks()->at(2)->_raw_body(), std::string("\x10\x20\x30\x40\x50\x60\x70\x80", 8));
    BOOST_CHECK_EQUAL(r->chunks()->at(3)->code(), 255);
    BOOST_CHECK_EQUAL(r->chunks()->at(3)->_raw_body(), std::string("", 0));

    delete r;
}
