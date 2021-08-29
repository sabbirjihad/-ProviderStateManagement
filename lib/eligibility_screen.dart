import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sm_app/eligibility_screen_provider.dart';
class EligibilityScreen extends StatelessWidget {
 // const EligibilityScreen({Key? key}) : super(key: key);
  final ageController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EligibilityScreenProvider>(
        create: (context)=>EligibilityScreenProvider(),
      child: Builder(
        builder: (context){
          return Scaffold(
            appBar: AppBar(
              title: Text('Provider Demo'),
            ),
            body: Container(
              padding: EdgeInsets.all(16),
              child: Form(
                child: Consumer<EligibilityScreenProvider>(
                  builder: (context,provider,child){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget> [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: provider.isEligible?Colors.green: Colors.redAccent
                          ),
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          controller: ageController,
                          decoration: InputDecoration(
                              hintText: 'Give you age'
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: 16,),
                        Container(
                          width: double.infinity,
                          child: FlatButton(
                            child: Text('Check'),
                            color: Colors.blue,
                            textColor: Colors.white,
                            onPressed: () {
                              final int age = int.parse(ageController.text.trim());
                              provider.checkEligibility(age);
                            },
                          ),
                        ),
                        SizedBox(height: 16,),
                        Text(provider.messege)
                      ],
                    );
                  }
                )
                ,
              ),
            ),
          );
        },
      ),
    );
  }
}
