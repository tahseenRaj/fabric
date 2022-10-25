import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool visible = false;
  Widget signInFor = const FabricLogin();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                alignment: Alignment.centerRight,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.75,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(140, 400),
                      bottomLeft: Radius.elliptical(140, 400)),
                ),
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.elliptical(140, 400),
                        bottomLeft: Radius.elliptical(140, 400)),
                    child: Image.asset('assets/images/login_overlay.png')),
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 500,
                    width: MediaQuery.of(context).size.width * 0.18,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                          width: double.infinity,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                visible = true;
                                signInFor = const FabricLogin();
                              });
                            },
                            icon: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Image(
                                    image: const AssetImage(
                                        'assets/images/fabric.png'),
                                    color: (visible == true &&
                                                signInFor ==
                                                    const FabricLogin()) ==
                                            true
                                        ? const Color(0XFF0172B6)
                                        : const Color(0xFF9E9E9E),
                                    width: 30,
                                  ),
                                ),
                                const Spacer(),
                                const Text(
                                  'Fabric',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          height: 100,
                          width: double.infinity,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                visible = true;
                                signInFor = const DesignerLogin();
                              });
                            },
                            icon: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Image(
                                    image: const AssetImage(
                                        'assets/images/designer.png'),
                                    color: (visible == true &&
                                                signInFor ==
                                                    const DesignerLogin()) ==
                                            true
                                        ? const Color(0XFF0172B6)
                                        : const Color(0xFF9E9E9E),
                                    width: 30,
                                  ),
                                ),
                                const Spacer(),
                                const Text(
                                  'Designer',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          height: 100,
                          width: double.infinity,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                visible = true;
                                signInFor = const FactoryLogin();
                              });
                            },
                            icon: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Image(
                                    image: const AssetImage(
                                        'assets/images/factory.png'),
                                    color: (visible == true &&
                                                signInFor ==
                                                    const FactoryLogin()) ==
                                            true
                                        ? const Color(0XFF0172B6)
                                        : const Color(0xFF9E9E9E),
                                    width: 30,
                                  ),
                                ),
                                const Spacer(),
                                const Text(
                                  'Factory',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          height: 100,
                          width: double.infinity,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                visible = true;
                                signInFor = const StylistLogin();
                              });
                            },
                            icon: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Image(
                                    image: const AssetImage(
                                        'assets/images/stylist.png'),
                                    color: (visible == true &&
                                                signInFor ==
                                                    const StylistLogin()) ==
                                            true
                                        ? const Color(0XFF0172B6)
                                        : const Color(0xFF9E9E9E),
                                    width: 30,
                                  ),
                                ),
                                const Spacer(),
                                const Text(
                                  'Stylist',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Fabric',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Manufacturer, Wholesaler, Retailer',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 500,
                          child: Visibility(
                            visible: visible,
                            child: signInFor,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'assets/images/logo.png',
                              scale: 1.8,
                              colorBlendMode: BlendMode.overlay,
                            ),
                            const SizedBox(height: 15),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    visible = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(200, 46),
                                    shape: const StadiumBorder(),
                                    backgroundColor: const Color(0XFF0172B6)),
                                child: const Text('Register your Business'))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FabricLogin extends StatelessWidget {
  const FabricLogin({super.key});

  @override
  Widget build(BuildContext context) {
    String? dropdownValue = 'Admin';
    return Container(
      padding: const EdgeInsets.all(20),
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          const Text(
            'SIGN IN FOR FABRIC',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 30),
          DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DropdownButton(
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Color(0XFF0172B6),
                      size: 30,
                    ),
                    value: dropdownValue,
                    items: ['Admin', 'Worker', 'Client']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(fontSize: 14),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {},
                    isExpanded: true,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                    dropdownColor: Colors.white,
                  ))),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: TextField(
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  labelText: 'Store ID',
                  hintText: 'Enter Store ID',
                  floatingLabelStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: Image.asset('assets/images/store.png',
                      scale: 1.5, color: const Color(0XFF0172B6))),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: TextField(
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  labelText: 'Email',
                  hintText: 'Enter Your Email',
                  floatingLabelStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: const Icon(Icons.email_outlined,
                      color: Color(0XFF0172B6))),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: TextField(
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  labelText: 'Password',
                  hintText: 'Enter Your Password',
                  floatingLabelStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: Image.asset('assets/images/key.png',
                      scale: 1.5, color: const Color(0XFF0172B6))),
            ),
          ),
          const SizedBox(height: 15),
          Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: const Text(
                  'Forget Password?',
                  style: TextStyle(fontSize: 13, color: Color(0XFF0172B6)),
                ),
              )),
          const SizedBox(height: 50),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 52),
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.black),
              child: const Text(
                'LOGIN',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}

class DesignerLogin extends StatelessWidget {
  const DesignerLogin({super.key});

  @override
  Widget build(BuildContext context) {
    String? dropdownValue = 'Head Designer';
    return Container(
      padding: const EdgeInsets.all(20),
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          const Text(
            'SIGN IN FOR DESIGNER',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 30),
          DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DropdownButton(
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Color(0XFF0172B6),
                      size: 30,
                    ),
                    value: dropdownValue,
                    items: ['Head Designer', 'Worker', 'Internee']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(fontSize: 14),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {},
                    isExpanded: true,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                    dropdownColor: Colors.white,
                  ))),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: TextField(
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  labelText: 'Store ID',
                  hintText: 'Enter Store ID',
                  floatingLabelStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: Image.asset('assets/images/store.png',
                      scale: 1.5, color: const Color(0XFF0172B6))),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: TextField(
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  labelText: 'Email',
                  hintText: 'Enter Your Email',
                  floatingLabelStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: const Icon(Icons.email_outlined,
                      color: Color(0XFF0172B6))),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: TextField(
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  labelText: 'Password',
                  hintText: 'Enter Your Password',
                  floatingLabelStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: Image.asset('assets/images/key.png',
                      scale: 1.5, color: const Color(0XFF0172B6))),
            ),
          ),
          const SizedBox(height: 15),
          Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: const Text(
                  'Forget Password?',
                  style: TextStyle(fontSize: 13, color: Color(0XFF0172B6)),
                ),
              )),
          const SizedBox(height: 50),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 52),
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.black),
              child: const Text(
                'LOGIN',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}

class FactoryLogin extends StatelessWidget {
  const FactoryLogin({super.key});

  @override
  Widget build(BuildContext context) {
    String? dropdownValue = 'Manager';
    return Container(
      padding: const EdgeInsets.all(20),
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          const Text(
            'SIGN IN FOR FACTORY',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 30),
          DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DropdownButton(
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Color(0XFF0172B6),
                      size: 30,
                    ),
                    value: dropdownValue,
                    items: ['Manager', 'Engineer', 'Technician']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(fontSize: 14),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {},
                    isExpanded: true,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                    dropdownColor: Colors.white,
                  ))),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: TextField(
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  labelText: 'Employee ID',
                  hintText: 'Enter Your Employee ID',
                  floatingLabelStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: Image.asset('assets/images/store.png',
                      scale: 1.5, color: const Color(0XFF0172B6))),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: TextField(
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  labelText: 'Email',
                  hintText: 'Enter Your Email',
                  floatingLabelStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: const Icon(Icons.email_outlined,
                      color: Color(0XFF0172B6))),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: TextField(
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  labelText: 'Password',
                  hintText: 'Enter Your Password',
                  floatingLabelStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: Image.asset('assets/images/key.png',
                      scale: 1.5, color: const Color(0XFF0172B6))),
            ),
          ),
          const SizedBox(height: 15),
          Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: const Text(
                  'Forget Password?',
                  style: TextStyle(fontSize: 13, color: Color(0XFF0172B6)),
                ),
              )),
          const SizedBox(height: 50),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 52),
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.black),
              child: const Text(
                'LOGIN',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}

class StylistLogin extends StatelessWidget {
  const StylistLogin({super.key});

  @override
  Widget build(BuildContext context) {
    String? dropdownValue = 'Senior Stylist';
    return Container(
      padding: const EdgeInsets.all(20),
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          const Text(
            'SIGN IN STYLIST',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 30),
          DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DropdownButton(
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Color(0XFF0172B6),
                      size: 30,
                    ),
                    value: dropdownValue,
                    items: ['Senior Stylist', 'Fashion Model', 'Helper']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(fontSize: 14),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {},
                    isExpanded: true,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                    dropdownColor: Colors.white,
                  ))),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: TextField(
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  labelText: 'Store ID',
                  hintText: 'Enter Store ID',
                  floatingLabelStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: Image.asset('assets/images/store.png',
                      scale: 1.5, color: const Color(0XFF0172B6))),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: TextField(
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  labelText: 'Email',
                  hintText: 'Enter Your Email',
                  floatingLabelStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: const Icon(Icons.email_outlined,
                      color: Color(0XFF0172B6))),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: TextField(
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey)),
                  labelText: 'Password',
                  hintText: 'Enter Your Password',
                  floatingLabelStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: Image.asset('assets/images/key.png',
                      scale: 1.5, color: const Color(0XFF0172B6))),
            ),
          ),
          const SizedBox(height: 15),
          Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: const Text(
                  'Forget Password?',
                  style: TextStyle(fontSize: 13, color: Color(0XFF0172B6)),
                ),
              )),
          const SizedBox(height: 50),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 52),
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.black),
              child: const Text(
                'LOGIN',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
