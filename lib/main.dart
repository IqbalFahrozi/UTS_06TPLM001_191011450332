import 'package:flutter/material.dart';

void main() {
  runApp(const Uts());
}

class Uts extends StatelessWidget {
  const Uts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Shoes',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        actions: [
          Image.network(
            'https://cdn-icons-png.flaticon.com/512/2593/2593863.png',
            scale: 15,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 150,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: .2,
                  blurRadius: 50,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.network(
                        'https://s1.bukalapak.com/img/18520400561/s-330-330/data.jpeg.webp',
                        scale: 3,
                      )),
                  right: 0,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Nike SB Zoom Blazer'),
                      Text(
                        'Mid Premium',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.attach_money_outlined),
                          Text('8,795')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 150,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: .2,
                  blurRadius: 50,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.network(
                        'data:image/jpeg;base64,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',
                        scale: 2,
                      )),
                  right: 0,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Nike Air Zoom Pegasus'),
                      Text(
                        "Men's Rood Running Shoes",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.attach_money_outlined),
                          Text('9,995')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 150,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: .2,
                  blurRadius: 50,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDDY9YJyS4xE4XscEUnxbgfJfyeKV_VXzYng&usqp=CAU',
                        scale: 2,
                      )),
                  right: 0,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Nike ZoomX Vaporfly'),
                      Text(
                        "Men's Rood Racing Shoe",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.attach_money_outlined),
                          Text('19,695')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 150,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: .2,
                  blurRadius: 50,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5tfaELplz9jprLEkebsqkgCRwD9cUw3B3og&usqp=CAU',
                        scale: 2,
                      )),
                  right: 0,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Nike Air Force 1 S50'),
                      Text(
                        "Older Kids' Shoe",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.attach_money_outlined),
                          Text('6,295')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 150,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: .2,
                  blurRadius: 50,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.network(
                        'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSExAWEhUVFxUVFxcWFhAWFhkSGBIYGhgWFxYYHSggGBomGxUVITEjJSkrLi4vGB8zODMtOCgtLi0BCgoKDQ0OFxAPFS0dFxkuMistLS0tLSstLSsrLSsrNy8tKzctKy0tKzgrKys3Ny03Kzg4NCsrLTguKzc3LSsrK//AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABQYBAwQHAgj/xAA9EAACAQIDBQUFBwIFBQAAAAABAgADEQQSIQUxQVFhBhNScZEiMoGhsQcUQoLB4fAj0UNTYpLCM0Ryo+L/xAAXAQEBAQEAAAAAAAAAAAAAAAAAAQID/8QAHBEBAQEBAAMBAQAAAAAAAAAAAAERAgMhMUES/9oADAMBAAIRAxEAPwD2Dvm8Rjvm8RmuIGzvm8Rjvm8RmuIGzvm8Rjvm8RmuIGzvm8Rjvm8RmuIGzvm8Rjvm8RmuIGzvm8Rjvm8RmuIGzvm8Rjvm8RmuIGzvm8Rjvm8RmuIGzvm8Rjvm8RmuIGzvm8Rjvm8RmuIGzvm8Rjvm8RmuIGzvm8Rjvm8RmuIGzvm8Rjvm8RmuIGzvm8Rjvm8RmuIGzvm8Ria4gIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICImYGIkbs7blGtVq0FJFSkdVYWJXT215rcj1HMSSgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiDAxUcKCSbAC5PQSlYPtWcSarKv9JHtTbUZxz6j9CJM7awDOmJKO2atRKBCxyBwrAMORNwNNNJFL2f7jDIU1CoLqBa2mvmb74i/iK7Rr3dXDY5CUdKiK1vxUm3g89CR+Y8hPSDPKu3pZsJSy3y51zEEaKabC48iRLj2E7SpjcOCWHfUgErKDqGGgqAeFwMwPUjeDCLHERAREQEREBERAREQEREBERAREQEREBERAREQEREDKjWc+MYoRf3SbA9eRm/NYi+k24hAwKkXB3iFiIqPPvD1raHcfkec5Kymm2VtVPut+h6/WfQk+NODbOxVNN6eXNSqX0G9CeK9L6zympsTGbOxAr0may+7Up21S/tI4NxlsBe9x8Rp7fhq3A6+fHoev86zkxmyb+1TNtblWvbqOandztymmFLofa/TGbvcG6gXyFHRrngGDBct9dRecS/alj6wLYfZgK3tmy4isB0JQKL2tpJjavZhKn/VwettXp6km519g35bx05W07AwNPBFrPVWm9i1Op7ga9s65lBDac9QRxGgRGzvtaxTOEfCU6hLZctIV1cm+4Altelp6zSxBKqxQoWAJU2upIuVNiRcbtJXtnYPDUsQcV3K53Q5q9x7IAvm1P4hpmGugvpJ+u2gOov6/KTVxvDCZkTQr3cqpvpe+tt9rCSOEq5lv8IRtiIgIiICIiAiIgIiICIiAiIgIiICKdmvYg2Nj0NgbHloRMyJ7K1GV8XRe+ZMQ1RSb+1RrAMjC/C+dfyERBMtYixE+GcjrPqqs0M9t8o+a9Nai2OoMiWBRsrbj7rc+h6/WSp5iaq6hhZh/PPhFmtOKbxUZhZWCuNxOqno1v5x5icbgocrag+63Pof9X1n1cjdv3jzH8tM/CuCr2n7tilaiyMu+1iLeIcwec0bR7UUjTYBHckEBStgbjiTpaTW09nU8XS1JU65XXerbiDzF9CDy4EXHnO1cBWoVMlTQ6kMNzjmDx6jeJplYuzYK0MuIyulS606fssWBuHBG4Jfnz66zlWu1S97g7iDpPNVYjn9NZZNibdYladQXJIVW3kkkAK3MdZLFlWfCstJCb3J1PO/Lykrs1LJ5m/qBpIUqCdRex1HUHVT1nZQxJNRbXGhJ8uXraZi1MRPmnUDbjfh8Z9TTJERAREQEREBERAREQEREBERAzIrb1TuEbFqbNQpuzA6K9IDMyNy3AhuB6EgyTvlBZiAACSd1gBqZWO0GTH0UpIaz06jXNTD90FAUHRzVsCpJ3Lc3UQJHs/2nw+NW9F/aA9um1hUXzXiOouJJsZW32DhlCnucjoioKoAWoFQaEOhzA6bx9JXqf2kUaGIOGr1O9p2XLiVAINxucLvt4lH5eM0PQGHLSfBfnNGFx1Oqoem6ujahlIIPkRNjPeFKiAgqRcHh/N04mUpoTcHc36N1+s6w0+mAItvHKSxVTwm3jh8XXRzeiXUnjkY0kuw6XOo+Pna9oYGniKeRwGVrEEbxpoynn1/SVzbPZsNmdCQTqTqTcc+JHzHXdOTs9ttsK/3fEXCfhY7luefFDz4eW5iVG7Y7M4mi3soa6cGQXb8yDUHqNPLdJTsdsGoKnfVqZQL7ga4YsRa5U7gBz4+Uu4IIvvEWhFRxmI7rHNSO6qi1FHDNqGUeeUnzJ5yUoVcuosQd/lr6a29JU/tGrgYqiFNmWne43glzlPqCZMbE2mKyX3OLZ16+MdD+3KSxqVP7LqNdmO4kettfqJKq1xcbpXs5ANjoR8PMST2c2VQCwN/lfUD0khY7oiJWSIiAiIgIiICIiAiIgIiIFT7f49gKGFR8hxNTI5G8ULqj/Oqks1OkqKFUWVQFA4AAWAnlv2p44nF5FNjSw4AI3h6rlrDlpTpn0npGzseK9ClWH+LTR/8AcoNvnLBp2qwK5PHdfy8ZWdqdgMEKJpLSyNUsL3Y5RzCk2vLEgz4hV4L+msY+veuBf3bD47z9RKrz3H9nsds8s2FqvWNgVFks5uARUQ+/ZRw9rdYzp7P/AGk0ah7vFL91qjQlrinfkc2tM9G06z0bHUsyHyuPOVDb/Z7D46nlqrZxuqLYOp87ajodJNMWOnVBAIIIOoINwRzB4ibUflPI8bsfG7GpirhsYa1K9mpVFJXzVQdPhaTfZr7T8PWITED7s54kk0j+e3s/HTrA9JpyO2vsVKy2tY7xbeDzX9RuM7cNUDAEEEHUEEEEcweM6gJUefUdoYrAHIbPT1sGvl/K29fLhfdOjFdvny2TDAPzapdR1sFBPylv2hs5KqkMoN+fPgeh6ytUeylJSS9310GqgDXkbn1+Ei4odepUq1Gq1WLOxuT+nQW0m7CV2psHQ5WH8seYl8bs7hv8of7qn95G4/smmppOVPJtV9RqPnJpjr2Vtday6ey34k/5LzHSSObTQ6bxy85SvulTDsO9QqL2DA8easOPQyfo41kAL2Kt7tQe62m8rvB/losWVcsJiAQBmufr+86ZVqGJvr8xqPgRLDgK+dATvGhPPrIWOiIiVkiIgIiICIiAiIgIiYdwASdwFz5CB4/9pTH745CZQci5spsxCeIbzqRz0EvHYlrbPwoPCmPQXt8rTz/trtxK1MCmxZmqZmWxDCwJsQRxPw0no2CodzhKdPwU0T42A/SZ8XV6m2Y7+fx88dSc3fTr2ELs9Q8j8zIPDVS1Vm8bFh0N9Plb0k0jd3hajcToPjpIXDCzL0K/WatcotdZv6ZP+k/SVmi+ssG0GtRqeRHrpK7SGsdEdzUxUUqRfQ23b/jPz52v2FWwVa7t3i1LlKmt2HHMODcwNJ7fsvaBriplDUjTqNTB33I4gcpw7Y7PrXpGjXAZGN1Ye8jncy3iFjzr7Pts4ynn+61e8WmhqvQa9sisAxVeOjA3TXfcT17sr20w+M9i/dVhvpMRckcUP4x8+Ynge1tm4jZWKUq5DIQ1Oou4jgbdRcEHQ6iWbYGAo4wU8QQ1ICpTFU0zlt/VAa3h01B37o1l7+GmqrTDDWVzbm022YqvVdq+HZxTF7d/TJDEe0f+stltrZuZaS+ytsUMSneUKq1F42OoPJlOqnoZofFakV6jn/eac0lSZyVsMPw6dOH7TNjWo/EvZCSmfhlFjcHpxGsiK+yqdRQ1MmnvIX8N72Ps8N3CTVRSDYi30+BmsCRVaC1KJ9oFR4gSV9R+smsDtF0swOYcd506zpYXnI2DAN0OU8h7vp/aNMWjA41aoup14jjOqU6lUKG/unmuq/tLHs7HioLGwb5HqJWcdsTMxCEREBERAREQEqv2k7UahgyEbLUrOlFTxszXf/1q4+MtUp/bvYtXE1MMEYBVaoDcE2dlFnPCwVHHmwgef9k9kNicYvGnTIqObbrNdFvzLKNOQM9Vxx0VeZ+gnxsbZFPC0xTp3PFmNszOd7G38AtMYiqveKlxfLmt0J3/ACmlY2w9qNNPE1/gAT9bTk2dRzOOQ1Pw4TZtcFqtNQQAqEnibsf/AJnZgqYFuA+Z85LPavvbNS1LLxdh6DX6yFquEUsdAoLHcNAL7zpOzaeKDVLX93T48f50kRt1Kj0WSkAWf2SSQLKd53i/837jmrHP2Np2w+b/ADHepuQbzyT2eHDSb+0lcgUgN5cfIfvO3B0RTRUGoUAeg3yLxuJWrUAGopM1yLG5AX/kSPyyQUD7WqgLJuuEvob/AOKwGv8Auli+xzYTNgMY1UFUrCyX4BUJz+uU/ATkfZ5xmLrVvu74inQy0kIC5c6AlrgkBiC50EuGHOIrUxhqdFsNR/xKlWwdr+8Ag3X8zppccbamLn3dPEUQKiLUSoikqwDKQyg6g+chNn9hcFQNRqSPTZyCGWpUDpb8NNr3C31Km4O43AAkvhnVEVF3KoUeQFh9JvGIEupij4rtViMDWNLG4ao9HPlpYpFU51JAXvFT2Q5vuGU8llowW0aVa/duGK6Muqup5OjWZD0IEke/B4yF7V7HGLokIy0q4saVb2gyG4uM6+0ARcWHoZdMSDa6EXE5amEH4TbpvH7Sr9mqW2kqNSxBoPTVSVqOb52uLIGp2I0vcshOnGbMZ27o4ascNjEahVAVrr/VpFW3FWUBiNDvQR6qpiqhXePjw9Z8hp94Hb2FrW7vEU2zC4GYBiOitY/Kdb4QcPZ8t3pJ/K64YWkL3At5Tc9Bhwv5f2mp6gUEscoAuSdLAc7zImtlVwVKZizLYm+pCtfLr8D6TtlW7CYtqwxGItalUrWoni1KnTVC3/iXD2+MtN5WaRF4vKYRMzEGEREITDLMxA5cTg8+6oyeQX9QZVdsdiq9Wp3qbRKMFVR/RQ6KWIN82/2j5y6RA86xXZDahriuuPokhFQqadQKwW+pGY2Op3SRr4HawQhBhs9rBi9QgHnkya+sukQuvH6fY7bq/wDc0W899+e6b8L2Z20rXqPSqcgGAH7z1mJMNeNv2V2yXZjlsx3LVKrblYToodktpZStxSB40xTDfBix9bXnrkQa812Z2PxNCmKaMyKNwDcTvOh3kySo7AxY/wAZz5teXi0Rhqq09j4ni/znSmyK3F/mZYpiMNQi7JqeOYOyav8Am/KTkSmoBtkV+FYek4to9m61ZclU0aq8qiZh8Lg2lsiTDVGx3ZXEvh/up7g0QoUJZgFA3FdNCDqDK7gPs5x1FwVxLlBe9Pv6qX0NvaTKRY2PwnrcSmvKMd2Y22HvQxJRbD2WrtUF+jPc+t5NbL7OYxkC48jFWIJVmQUrg3F0UDPb/USOkvsQajsNQZFCrTVFUABVsFAG4ADcJ0BG5fMTqiTDWgUzMhDN0RhrVkMTbMRhpERKhERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQETOU8oynlAxEzlPKMp5QMRM5TyjKeUDETOU8oynlAxEzlPKMp5QMRM5TyjKeUDETOU8oynlAxEzlPKMp5QMRM5TyjKeUDETOU8oynlAxEzlPKMp5QMRM5TyjKeUDETOU8oynlAxEzlPKMp5QMRM5TyiBKREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERA//2Q==',
                        scale: 2,
                      )),
                  right: 0,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Nike Waffle One'),
                      Text(
                        "Men's Shoes",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.attach_money_outlined),
                          Text('8,295')
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
    );
  }
}
