import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AgentPage extends StatefulWidget {
  const AgentPage({super.key});

  @override
  State<AgentPage> createState() => _AgentPageState();
}

class _AgentPageState extends State<AgentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 69,
            margin: const EdgeInsets.only(left: 11, right: 8, top: 29),
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 11, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 50,
                  offset: const Offset(0, 30),
                  color: Colors.black.withOpacity(0.05),
                )
              ],
            ),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/earth_icon.svg'),
                      const SizedBox(width: 17),
                      const Text('States', style: TextStyle(fontSize: 18)),
                      const SizedBox(width: 6),
                      SvgPicture.asset('assets/images/down_arrow_icon.svg'),
                    ],
                  ),
                )),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFFEEE9D),
                    ),
                    height: 40,
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/search.png'),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Search',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              height: 1.0,
                              color: Colors.black,
                              fontFamily: 'Helvetica',
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 22, right: 16),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF9F9F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.only(bottom: 14),
                  padding: const EdgeInsets.only(left: 30, bottom: 19, top: 41),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Image.asset('assets/images/agent_logo.png')),
                      const SizedBox(height: 35),
                      const Text(
                        'ABC HOLIDAYS SDN BHD',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 11),
                      const Text(
                        'MALAYSIA, KUALA LUMPUR LOT 126 - 129, 1ST FLOOR, WISMA NEW ASIA, JALAN RAJA CHULAN, 50200 KUALA LUMPUR, MALAYSIA.',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF858585),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'T: ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: '+603-21480666',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFFFCB08),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'F: ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: '+603-21459170',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
