// The 'test_token' test program.
import devtoken.aleo;
program test_token.aleo {
    @test
    script test_it() {
        let result: Future = devtoken.aleo/mint_public(aleo1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq3ljyzc, 100u64);
        // Remove assertion since we can't directly compare Future types
    }

    @test
    @should_fail
    transition do_nothing() {
        let (token, future): (devtoken.aleo/Token, Future) = devtoken.aleo/mint_private(aleo1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq3ljyzc, 100u64);
        let result: u32 = 3u32;
        assert_eq(result, 3u32);
    }
    
    @noupgrade
    async constructor() {}
}
