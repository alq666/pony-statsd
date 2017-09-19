use "ponytest"

actor Main is TestList
	new create(env: Env) =>
		PonyTest(env, this)

	new make() =>
		None

	fun tag tests(test: PonyTest) =>
		StatsDClientTests.make().tests(test)
		StatsDFormatTests.make().tests(test)
		StatsDUDPTests.make().tests(test)
