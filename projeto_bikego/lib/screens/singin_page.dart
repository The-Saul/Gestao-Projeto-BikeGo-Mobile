import 'package:flutter/material.dart';

class SinginPage extends StatefulWidget {
	const SinginPage({super.key});

	@override
	State<SinginPage> createState() => _SinginPageState();
}

class _SinginPageState extends State<SinginPage> {
	bool passwordVisible = false;
	bool confirmationVisible = false;

	static const Color green = Color(0xFF00B978);
	static const Color hintGreen = Color(0xFF65CDA9);

	InputDecoration fieldDecoration({
		required String hintText,
		required IconData icon,
		Widget? suffixIcon,
	}) {
		return InputDecoration(
			hintText: hintText,
			hintStyle: const TextStyle(color: hintGreen, fontSize: 9),
			prefixIcon: Icon(icon, color: green, size: 16),
			suffixIcon: suffixIcon,
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

	Widget buildField({
		required String hintText,
		required IconData icon,
		bool obscureText = false,
		Widget? suffixIcon,
	}) {
		return Container(
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
				obscureText: obscureText,
				style: const TextStyle(fontSize: 12, color: Color(0xFF385C50)),
				decoration: fieldDecoration(
					hintText: hintText,
					icon: icon,
					suffixIcon: suffixIcon,
				),
			),
		);
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
											const SizedBox(height: 18),
											const Text(
												'Cadastre-se',
												style: TextStyle(
													color: green,
													fontSize: 24,
													fontWeight: FontWeight.w700,
												),
											),
											const SizedBox(height: 18),
											buildField(
												hintText: 'Nome',
												icon: Icons.lock_outline,
											),
											const SizedBox(height: 10),
											buildField(
												hintText: 'E-mail',
												icon: Icons.mail_outline,
											),
											const SizedBox(height: 10),
											buildField(
												hintText: 'Telefone',
												icon: Icons.phone_outlined,
											),
											const SizedBox(height: 10),
											buildField(
												hintText: 'Senha',
												icon: Icons.lock_outline,
												obscureText: !passwordVisible,
												suffixIcon: IconButton(
													onPressed: () {
														setState(() => passwordVisible = !passwordVisible);
													},
													icon: Icon(
														passwordVisible
																? Icons.visibility_off_outlined
																: Icons.visibility_outlined,
														color: green,
														size: 15,
													),
												),
											),
											const SizedBox(height: 10),
											buildField(
												hintText: 'Confirmar Senha',
												icon: Icons.lock_outline,
												obscureText: !confirmationVisible,
												suffixIcon: IconButton(
													onPressed: () {
														setState(
															() => confirmationVisible = !confirmationVisible,
														);
													},
													icon: Icon(
														confirmationVisible
																? Icons.visibility_off_outlined
																: Icons.visibility_outlined,
														color: green,
														size: 15,
													),
												),
											),
											const SizedBox(height: 68),
											SizedBox(
												width: double.infinity,
												height: 35,
												child: OutlinedButton(
																onPressed: () {
																	Navigator.pop(context);
																},
													style: OutlinedButton.styleFrom(
														foregroundColor: green,
														side: const BorderSide(color: green, width: 1),
														shape: RoundedRectangleBorder(
															borderRadius: BorderRadius.circular(22),
														),
														padding: EdgeInsets.zero,
													),
													child: const Text(
														'Cadastre-se',
														style: TextStyle(
															fontSize: 10,
															fontWeight: FontWeight.w700,
														),
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
