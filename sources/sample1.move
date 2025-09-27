module aceCodes_addr::Sample1{
    use std::debug;
    use std::string::{String, utf8};

    const ID: u64 = 100;
    
    fun set_value(): u64{
        let value_id: u64 = 200;
        let string_val: String = utf8(b"Hi it'sAceCodes");
        let string_byte: vector<u8> = b"this is a byte String";
        debug::print(&string_val);
        debug::print(&value_id);
        debug::print(&string_byte);
        debug::print(&utf8(string_byte));
        return ID
    }

    //#[test]
    fun test_func(){
        let id_value = set_value();
        debug::print(&id_value);
    }

}