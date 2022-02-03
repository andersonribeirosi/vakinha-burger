import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/ui/vakinha_state.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_textformfield.dart';
import 'package:vakinha_burger_mobile/app/modules/auth/register/register_controller.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState
    extends VakinhaState<RegisterPage, RegisterController> {
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VakinhaAppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cadastro',
                    style: context.textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.theme.primaryColorDark),
                  ),
                  Text(
                    'Preencha os campos abaixo para concluir o seu cadastro',
                    style: context.textTheme.bodyText1,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  VakinhaTextFormField(
                    label: 'Nome',
                    controller: nameEC,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  VakinhaTextFormField(
                    label: 'E-mail',
                    controller: emailEC,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  VakinhaTextFormField(
                    label: 'Senha',
                    controller: passwordEC,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const VakinhaTextFormField(label: 'Confirmar senha'),
                  const SizedBox(
                    height: 30,
                  ),
                  VakinhaButton(
                      width: context.width,
                      label: 'Cadastrar',
                      onPressed: () {
                        Get.find<RegisterController>().qualquer();
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
