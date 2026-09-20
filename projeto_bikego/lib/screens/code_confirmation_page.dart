import 'package:flutter/material.dart';

class CodeConfirmationPage extends StatelessWidget {
	const CodeConfirmationPage({super.key});

	static const Color green = Color(0xFF00B978);
	static const Color hintGreen = Color(0xFF65CDA9);

	InputDecoration fieldDecoration() {
		return InputDecoration(
			hintText: 'Digite o código',
			hintStyle: const TextStyle(color: hintGreen, fontSize: 9),
			filled: true,
			fillColor: Colors.white,
			contentPadding: const EdgeInsets.symmetric(horizontal: 14),
			border: OutlineInputBorder(
				borderRadius: BorderRadius.circular(22),
				borderSide: BorderSide.none,
			),
			enabledBorder: OutlineInputBorder(
				borderRadius: BorderRadius.circular(22),
				borderSide: BorderSide.none,
			),
			focusedBorder: OutlineInputBorder(
				borderRadius: BorderRadius.circular(22),
				borderSide: const BorderSide(color: green, width: 1),
			),
		);
	}

	void returnToLogin(BuildContext context) {
		Navigator.popUntil(context, (route) => route.isFirst);
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.black,
			body: SafeArea(
				child: Container(
					width: double.infinity,
					constraints: const BoxConstraints(minHeight: 600),
					decoration: const BoxDecoration(
						color: Color(0xFFFFFEFE),
						borderRadius: BorderRadius.vertical(
							top: Radius.circular(22),
							bottom: Radius.circular(22),
						),
					),
					child: LayoutBuilder(
						builder: (context, constraints) {
							return SingleChildScrollView(
								padding: const EdgeInsets.fromLTRB(20, 58, 20, 14),
								child: ConstrainedBox(
									constraints: BoxConstraints(
										minHeight: constraints.maxHeight - 72,
									),
									child: Column(
										children: [
											const _BikeGoLogo(),
											const SizedBox(height: 20),
											const Text(
												'Informe o código',
												textAlign: TextAlign.center,
												style: TextStyle(
													color: green,
													fontSize: 23,
													fontWeight: FontWeight.w700,
												),
											),
											const SizedBox(height: 5),
											const Text(
												'Informe Informe o código enviado ao seu e-mail.\n'
												'Caso não tenha recebido clique em reenviar.',
												textAlign: TextAlign.center,
												style: TextStyle(
													color: Color(0xFF719188),
													fontSize: 9,
													height: 1.45,
												),
											),
											const SizedBox(height: 87),
											Container(
												height: 42,
												decoration: BoxDecoration(
													borderRadius: BorderRadius.circular(22),
													boxShadow: [
														BoxShadow(
															color: Colors.black.withValues(alpha: 0.14),
															blurRadius: 9,
															offset: const Offset(0, 5),
														),
													],
												),
												child: TextField(
													keyboardType: TextInputType.number,
													style: const TextStyle(
														fontSize: 12,
														color: Color(0xFF385C50),
													),
													decoration: fieldDecoration(),
												),
											),
											const SizedBox(height: 14),
											SizedBox(
												width: double.infinity,
												height: 35,
												child: ElevatedButton(
													onPressed: () => returnToLogin(context),
													style: ElevatedButton.styleFrom(
														backgroundColor: green,
														foregroundColor: Colors.white,
														elevation: 5,
														shadowColor: Colors.black.withValues(alpha: 0.2),
														shape: RoundedRectangleBorder(
															borderRadius: BorderRadius.circular(22),
														),
														padding: EdgeInsets.zero,
													),
													child: const Text(
														'Enviar',
														style: TextStyle(
															fontSize: 10,
															fontWeight: FontWeight.w700,
														),
													),
												),
											),
											const SizedBox(height: 4),
											TextButton(
												onPressed: () {},
												style: TextButton.styleFrom(
													foregroundColor: green,
													padding: EdgeInsets.zero,
													minimumSize: Size.zero,
													tapTargetSize: MaterialTapTargetSize.shrinkWrap,
												),
												child: const Text(
													'Reenviar código',
													style: TextStyle(
														color: green,
														fontSize: 8,
														decoration: TextDecoration.underline,
														decorationColor: green,
													),
												),
											),
											const SizedBox(height: 79),
											TextButton(
												onPressed: () => returnToLogin(context),
												style: TextButton.styleFrom(
													foregroundColor: green,
													padding: EdgeInsets.zero,
													minimumSize: Size.zero,
													tapTargetSize: MaterialTapTargetSize.shrinkWrap,
												),
												child: const Text(
													'Voltar para entrar',
													style: TextStyle(
														color: green,
														fontSize: 9,
														decoration: TextDecoration.underline,
														decorationColor: green,
													),
												),
											),
											const SizedBox(height: 32),
										],
									),
								),
							);
						},
					),
				),
			),
		);
	}
}

class _BikeGoLogo extends StatelessWidget {
	const _BikeGoLogo();

	@override
	Widget build(BuildContext context) {
		return SizedBox(
			height: 38,
			child: Stack(
				alignment: Alignment.center,
				children: [
					const Icon(
						Icons.directions_bike,
						color: Color(0xFF00B978),
						size: 40,
					),
					Positioned(
						bottom: 0,
						child: Text(
							'ECO',
							style: TextStyle(
								color: const Color(0xFFFFB800),
								fontSize: 11,
								fontWeight: FontWeight.w900,
								shadows: [
									Shadow(
										color: Colors.white.withValues(alpha: 0.9),
										blurRadius: 2,
									),
								],
							),
						),
					),
				],
			),
		);
	}
}
