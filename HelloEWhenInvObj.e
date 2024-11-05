eclass HelloEWhenInvObj
{
  EInteger anEInteger;
  emethod StartHelloEWhenInstance() {
    HelloEWhenInvObj2 first = new HelloEWhenInvObj2();
    first <- hello(anEInteger);
    &anEInteger <- forward ((new EInteger(7)) );
    System.out.println("In HelloEWhenInvObj after forward");
    }
  }
}

eclass HelloEWhenInvObj2 
{
  emethod hello(EInteger putEIntHere) {
    System.out.println("In HelloEWhenInvObj2");
    ewhen putEIntHere (int thisInt) ) {
      System.out.println("Hello World with " + thisInt);
    }
  }
}
