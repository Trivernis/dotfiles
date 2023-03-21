let fact = (try { http get https://uselessfacts.jsph.pl/api/v2/facts/random | get text } catch { "I wasn't able to provide a fact." });
echo $"Hello (ansi purple_bold)($env.USER)(ansi reset),
it's the (ansi purple_bold)(date now | date format '%d.%m.%Y')(ansi reset) at (ansi purple_bold)(date now | date format '%H:%M:%S')(ansi reset)
Did you know: (ansi purple_bold)($fact)(ansi reset)"
