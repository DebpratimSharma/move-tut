module aceCodes_addr::Sample2{

    use std::debug;

    const MY_ADDR: address = @aceCodes_addr;

    fun condition(argument: u64): (bool, u64){
        if(argument >10)
            return (true, argument)
        else
            return (false, argument)
    }

    #[test]
    fun test_func(){
        debug::print(&@std);
        debug::print(&MY_ADDR);
        let (res, arg) = condition(20);
        
        debug::print(&res);
        
        debug::print(&arg);
        //debug::print(&condition(5));
        
    }
}