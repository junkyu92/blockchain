const Hello = artifacts.require("Hello");

contract('Hello', function([user0,user1,user2]){
    let hello;

    beforeEach(async() =>{
        console.log('');
        console.log('Before each');
        hello = await Hello.new('Big Start Hello');
    })

    afterEach(async()=>{
        console.log('After each');
        console.log('Good bye');
    })

    it('Basic test', async () =>{
        console.log('Basic test');
        let igreet = await hello.greet();
        let ivalue1 = await hello.getGreet();

        console.log(`user0 addr : ${user0}`);
        console.log(`vari greet : ${igreet}`);
        console.log(`fun getGreet1 : ${ivalue1}`);
    })

    it('greet value change test', async()=>{
        console.log('Change test');
        let value1 = 'greet change';
        let value2 = await hello.greet();
        console.log(`change value2:${value2}`);
    })
});