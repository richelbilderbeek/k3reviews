# Leve De Cowboys

 * Category: 
 * Richel's rating: 6/10
 * Richel's  favorite lyric: 'Het wordt heet en da's waar ik van houd'

```
[VERSE 1]
Het wordt heet, en de krekels zingen [1]
Het wordt heet in die wilde woestijn
Ik slaak een kreet, wil die rodeo winnen!
Ik slaak een kreet, wil je cowgirl zijn

[CHORUS]
Hey, hey, hey, yippie-ya, yippie-ya, yippie-yey!
Hey, hey, hey, 'k weet een plekje [2] alleen 
Voor ons twee!
Hey hey

Yippie yaya, leve de liefde
Yippie yaya, leve de cowboys
Yippie yaya, leve de liefde
Hey ya, yippie-ya yey
Hey ya, yippie-ya yey

[VERSE 2]
Het wordt heet, en de krekels zingen
Het wordt heet en da's waar ik van houd [3]
Neem me mee [4], waar ze ons nooit vinden [5]
Neem me mee, naar die prairie van jou [6]

[CHORUS]

[BRIDGE]

[CHORUS]
```

## Richel's review

The song is called 'Leve de cowboys', which translates to 'Long live the
cowboys'. In it, K3 sings about having a cowboy for themselves.

There is, however, not a single trait of a cowboy mentioned! Sure, the
scenery (a desert, a prairie, crickets) is in the style of cowboys,
but that's as far as it goes. The song could just as easily have been
about native Americans or a barber from Kansas.

There is not even a single trait of the boy described, except that
he is a cowboy. This makes the song a very simple and shallow ode
to someone. A better name for the song would be 'Long live people I like'.

Although the content of this song is short and shallow, it is also conflicting:
first K3 sings about that *she* know a place [2] to be together alone, 
later K3 sings about that *he* should know a place [6] to be together alone.

Going into more depth into the text, I think, excluding the content,
the text is fine. As a biologist, I am fond to hear a species name [1] 
in a K3 song. Sure, there are some cases of K3 self-plagiarism: 
'waar ze ons nooit vinden' [5] is exactly the same line as 
in [Heyah Mama](HeyahMama.md), and 'neem me mee' [4] is a very common 
lyric, as it can be found in, 
among others, [Jupiter](Jupiter.md), [Alice in Wonderland](AliceInWonderland.md),
[Parapluutje](Parapluutje.md), [Ali Baba](AliBaba.md) and
[Kuma He](KumaHe.md). I enjoy they naughtiness 
of 'Het wordt heet en da's waar ik van houd' ('it's getting hot and
that's what I like) [3], yet a superior wording would be 'Ik voel het 
heet' (K3 can get away with such wording!), insinuating the hotness may
reside within the K3 girl herself.

That 'neem me mee' ('take me with you') is so general in the K3 repetoire,
makes me dedicate a paragraph about taking initiative. Already in this song,
there is a conflict in who decide the place to go (she: [2], he:[6]).
There are 6 songs (including this one) in which he takes 
her somewhere ([Jupiter](Jupiter.md), [Alice in Wonderland](AliceInWonderland.md),
[Parapluutje](Parapluutje.md), [Ali Baba](AliBaba.md), [Kuma He](KumaHe.md)
and [Leve de cowboys](LeveDeCowboys.md), where there are only
3 songs in which she takes him somewhere ([MaMaSe](MaMaSe.md), 
[Hey hallo](HeyHallo.md) and 
[Alleen Door Jou](AlleenDoorJou.md)) (see [7] for the regular expressions).
It would fit K3 to leave an equal amount of initiative to both sides.
Sure, with some statistics [8] we cannot reject that K3 actually 
does so, but by chance the song fell more in favor of letting him take
initiative. Nevertheless, it would be good to equalize who takes
initiative in future songs.

My favorite part about the song is the guitarist (or is it a banjo?)
involved in this country music. It is cool to again have some non-pop music
among a CD.

My conclusions of this song are, that it is a country songe with shallow, 
yet conflicting ten-dimes-a-dozen lyrics.

## References

[7]

```
egrep -Rizl "ik neem (je|jou) mee"
egrep -Rizl "neem (me|mij) mee"
```

[8]

According to R code:

```{r}
binom.test(x = 6, n = 9, p = 0.5, conf.level = 0.05)
```

the null-hypothesis 'H0: the coin is fair' is not rejected, as
the p-value is 0.5078.
