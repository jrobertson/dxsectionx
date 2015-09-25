# Introducing the Dynarex SectionX (dxsectionx) gem

The following example demonstrates how text with very little modification can transformed into HTML separated by section tags.

    require 'dxsectionx'

    dxsx = DxSectionX.new '/home/james/media/dynarex/d250915T1907.txt'
    puts dxsx.to_doc.xml pretty: true


file: d250915T1907.txt

<pre>
&lt;?dynarex schema="sections[title, original_article]/section(x)" format_mask="[!x]"?&gt;
title: Lessons from Ralph Waldo Emerson
original_article: http://attitudes4innovation.com/7-important-lessons-from-ralph-waldo-emerson/
--#

# Lesson 1: Thoughts Rule the World

    â€œGreat men are they who see that spiritual is stronger than any material force â€“ that thoughts rule the world.â€

If what I preach is truth, if weâ€™re truly â€œin chargeâ€ of our destiny, if weâ€™re really the captain of our souls, it is for the singular cause that we are in charge of our thoughts. The power of our kingdom resides exclusively in our thoughts. If you are ever to succeed and master your world, the first step, is to master your thoughts. Have you mastered your thoughts yet? Do you control your thoughts, or do your thoughts control you?

Thoughts rule the world! Your thoughts rule your world, they are king.

# Lesson 2: You Need To Be Rich

    â€œEvery man is a consumer, and ought to be a producer. He is by constitution expensive, and needs to be rich.â€

You should be a producer, a creator, and your creations should make you rich. What are you producing? Who are you producing it for? What are they giving you in exchange for your production? Is it making you rich? â€¦Why isnâ€™t it making your rich?

Ponder these questions, they hold the key to your wealth.

# Lesson 3: Be Thankful for Your Faults

    â€œEvery man in his lifetime needs to thank his faults.â€

Iâ€™ve fallen down on my knees and given thanks for my faults. My faults have brought me to where I am today. My faults have taught me, theyâ€™ve trained me, theyâ€™ve prepared me; theyâ€™ve made me a better me. I am more relevant to today because of my faults. I am grateful for the faults that Iâ€™ve made; theyâ€™ve strategically positioned me for success.

</pre>

## Output

<pre>
&lt;?xml version='1.0' encoding='UTF-8'?&gt;
&lt;sections&gt;
  &lt;summary&gt;
    &lt;title&gt;7 Lessons from Ralph Waldo Emerson&lt;/title&gt;
    &lt;original_article&gt;http://attitudes4innovation.com/7-important-lessons-from-ralph-waldo-emerson/&lt;/original_article&gt;
    &lt;recordx_type&gt;dynarex&lt;/recordx_type&gt;
    &lt;format_mask&gt;[!x]&lt;/format_mask&gt;
    &lt;schema&gt;sections[title, original_article]/section(x)&lt;/schema&gt;
    &lt;default_key&gt;x&lt;/default_key&gt;
    &lt;rawdoc_type&gt;sectionx&lt;/rawdoc_type&gt;
  &lt;/summary&gt;
  &lt;records&gt;
    &lt;section id='1' created='2015-09-25 21:10:18 +0100' last_modified=''&gt;
      &lt;details open='open'&gt;
        &lt;summary&gt;
          &lt;h1&gt;Lesson 1: Thoughts Rule the World&lt;/h1&gt;
        &lt;/summary&gt;
        &lt;pre&gt;
          &lt;code&gt;â€œGreat men are they who see that spiritual is stronger than any material force â€“ that thoughts rule the world.â€
&lt;/code&gt;
        &lt;/pre&gt;
        &lt;p&gt;If what I preach is truth, if weâ€™re truly â€œin chargeâ€ of our destiny, if weâ€™re really the captain of our souls, it is for the singular cause that we are in charge of our thoughts. The power of our kingdom resides exclusively in our thoughts. If you are ever to succeed and master your world, the first step, is to master your thoughts. Have you mastered your thoughts yet? Do you control your thoughts, or do your thoughts control you?&lt;/p&gt;
        &lt;p&gt;Thoughts rule the world! Your thoughts rule your world, they are king.&lt;/p&gt;
      &lt;/details&gt;
    &lt;/section&gt;
    &lt;section id='2' created='2015-09-25 21:10:18 +0100' last_modified=''&gt;
      &lt;details open='open'&gt;
        &lt;summary&gt;
          &lt;h1&gt;Lesson 2: You Need To Be Rich&lt;/h1&gt;
        &lt;/summary&gt;
        &lt;pre&gt;
          &lt;code&gt;â€œEvery man is a consumer, and ought to be a producer. He is by constitution expensive, and needs to be rich.â€
&lt;/code&gt;
        &lt;/pre&gt;
        &lt;p&gt;You should be a producer, a creator, and your creations should make you rich. What are you producing? Who are you producing it for? What are they giving you in exchange for your production? Is it making you rich? â€¦Why isnâ€™t it making your rich?&lt;/p&gt;
        &lt;p&gt;Ponder these questions, they hold the key to your wealth.&lt;/p&gt;
      &lt;/details&gt;
    &lt;/section&gt;
    &lt;section id='3' created='2015-09-25 21:10:18 +0100' last_modified=''&gt;
      &lt;details open='open'&gt;
        &lt;summary&gt;
          &lt;h1&gt;Lesson 3: Be Thankful for Your Faults&lt;/h1&gt;
        &lt;/summary&gt;
        &lt;pre&gt;
          &lt;code&gt;â€œEvery man in his lifetime needs to thank his faults.â€
&lt;/code&gt;
        &lt;/pre&gt;
        &lt;p&gt;Iâ€™ve fallen down on my knees and given thanks for my faults. My faults have brought me to where I am today. My faults have taught me, theyâ€™ve trained me, theyâ€™ve prepared me; theyâ€™ve made me a better me. I am more relevant to today because of my faults. I am grateful for the faults that Iâ€™ve made; theyâ€™ve strategically positioned me for success.&lt;/p&gt;
      &lt;/details&gt;
    &lt;/section&gt;
  &lt;/records&gt;
&lt;/sections&gt;
</pre>

Notes: 

* The quotes are rendered as code blocks because the text was indented 4 spaces. This could be changed to a blockquote by removing the indent and prepending the text with a greater than symbol (>). This feature works in the Markdown gem, yet isn't a feature of the Martile gem at present.
* The code used in the dxsectionx gem originated from the LiveBlog gem.

## Resources

* dxsectionx https://rubygems.org/gems/dxsectionx
* liveblog https://rubygems.org/gems/liveblog

dxsectionx
