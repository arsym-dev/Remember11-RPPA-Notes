# got data
sub get_data { return
MAKE_BASE_DATA
  (
    MAKE_COMMENT ('raw_0x00'),
    MAKE_RAW ("\x9f\x00\xa3\x00\x9b\x00\x9c\x00\x9d\x00\x9e\x00"),
    MAKE_COMMENT ('dwords_0x04 ??'),
    MAKE_DWORDS (0x18d, 0x6, 0x0, 0xa6, 0x0, 0x0, 0x86, 0x0, 0x0, 0x8a, 0x0, 0x0, 0x5e, 0x5, 0x0, 0xc9, 0x4, 0x0, 0xbd, 0x2, 0x0, 0x13, 0x0, 0x0, 0x103, 0x4, 0x0, 0x44, 0x2, 0x0, 0xfa, 0x3, 0x0, 0x116, 0x0, 0x0, 0x10f, 0x2, 0x0, 0xcb, 0x2, 0x0, 0x28f, 0x4, 0x0, 0x260, 0x5, 0x0, 0x167, 0x6, 0x0, 0x13b, 0x3, 0x0, 0x5e, 0x2, 0x0, 0x59, 0x0, 0x0, 0xed, 0x4, 0x0, 0xa6, 0x2, 0x0, 0x7, 0x0, 0x0, 0x106, 0x4, 0x0, 0x1ee, 0x2, 0x0, 0x12b, 0x2, 0x0, 0x6b, 0x2, 0x0, 0x71, 0x0, 0x0, 0x17c, 0x0, 0x0, 0xc1, 0x4, 0x0, 0xe3, 0x2, 0x0, 0xae, 0x0, 0x0, 0xf8, 0x2, 0x0, 0x149, 0x4, 0x0, 0x76, 0x2, 0x0, 0x10d, 0x4, 0x0, 0xf7, 0x2, 0x0, 0x168, 0x2, 0x0, 0xad, 0x4, 0x0, 0xb8, 0x0, 0x0, 0x1ba, 0x6, 0x0, 0x126, 0x0, 0x0, 0x181, 0x2, 0x0, 0xc9, 0x2, 0x0, 0x24c, 0x6, 0x0, 0x5b, 0x0, 0x0, 0x173, 0x2, 0x0, 0x44, 0x0, 0x0, 0x10b, 0x6, 0x0, 0x22a, 0x2, 0x0, 0xe9, 0x2, 0x0, 0x80, 0x0, 0x0, 0x120, 0x0, 0x0, 0x233, 0x6, 0x0, 0x12c, 0x4, 0x0, 0xa6, 0x0, 0x0, 0x219, 0x8, 0x0, 0x176, 0x4, 0x0, 0x5f, 0x2, 0x0, 0x7c, 0x0, 0x0, 0x77, 0x0, 0x0, 0xa3, 0x0, 0x0, 0xa1, 0x0, 0x0, 0x93, 0x0, 0x0, 0x10a, 0x0, 0x0, 0xc9, 0x0, 0x0, 0x78, 0x0, 0x0, 0x8d, 0x2, 0x0, 0x241, 0x4, 0x0, 0x120, 0x2, 0x0, 0xec, 0x0, 0x0, 0x14f, 0x0, 0x0, 0x2d, 0x0, 0x0, 0x2d, 0x0, 0x0, 0x21, 0x0, 0x0, 0xfa, 0x2, 0x0, 0x127, 0x4, 0x0, 0xf3, 0x0, 0x0, 0xc0, 0x2, 0x0, 0x24d, 0x8, 0x0, 0xb9, 0x0, 0x0, 0xd7, 0x0, 0x0, 0x9e, 0x0, 0x0, 0xd0, 0x0, 0x0, 0x112, 0x4, 0x0, 0xeb, 0x8, 0x0, 0xab, 0x2, 0x0, 0x5e, 0x0, 0x0, 0xc0, 0x4, 0x0, 0xbf, 0x2, 0x0, 0x58, 0x0, 0x0, 0x2b1, 0xc, 0x0, 0x70, 0x0, 0x0, 0x65, 0x2, 0x0, 0x229, 0x8, 0x0, 0x133, 0x0, 0x0, 0x8e, 0x0, 0x0, 0x1c, 0x0, 0x0, 0x3a, 0x0, 0x0, 0xa2, 0x2, 0x0, 0x65, 0x0, 0x0, 0xeb, 0x8, 0x0, 0x13b, 0x4, 0x0, 0x6c, 0x2, 0x0, 0x62, 0x0, 0x0, 0x74, 0x0, 0x0, 0x94, 0x7, 0x0, 0x43, 0x0, 0x0, 0xa1, 0x0, 0x0, 0x44, 0x0, 0x0, 0x52, 0x0, 0x0, 0x4e, 0x0, 0x0, 0x2ad, 0x4, 0x0, 0xd7, 0x0, 0x0, 0x129, 0x4, 0x0, 0x49, 0x0, 0x0, 0x119, 0x2, 0x0, 0x28, 0x0, 0x0, 0x54, 0x0, 0x0, 0xe5, 0x0, 0x0, 0x93, 0x0, 0x0, 0x134, 0x6, 0x0, 0xa7, 0x0, 0x0, 0x62, 0x0, 0x0, 0xad, 0x0, 0x0, 0xa3, 0x0, 0x0, 0x6e, 0x0, 0x0, 0xcc, 0x0, 0x0, 0x8, 0x0, 0x0, 0x169, 0x0, 0x0, 0x46, 0x0, 0x0, 0x191, 0x4, 0x0, 0x12e, 0x2, 0x0, 0x89, 0x0, 0x0, 0xab, 0x0, 0x0, 0xdc, 0x0, 0x0, 0x8d, 0x0, 0x0, 0x174, 0x6, 0x0, 0x7a, 0x0, 0x0, 0x79, 0x0, 0x0, 0x1d2, 0x0, 0x0, 0x1ec, 0xa, 0x0, 0xeb, 0x2, 0x0, 0x1f8, 0x2, 0x0, 0x1d2, 0x0, 0x0, 0x2f, 0x0, 0x0, 0x3c, 0x0, 0x0, 0xc0, 0x0, 0x0, 0xed, 0x0, 0x0, 0x12e, 0x0, 0x0, 0x123, 0x2, 0x0, 0x1a, 0x0, 0x0, 0xf, 0x0, 0x0, 0x4c, 0x0, 0x0, 0x24, 0x0, 0x0, 0x0, 0x0, 0x0, 0x18e, 0xe, 0x0, 0x290, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8bf4, 0x123, 0x0, 0xffffffff),
    MAKE_COMMENT ('string table 08 - section names'),
    MAKE_ESCAPED_STRING_TABLE
      (
        ## MAX LENGTH IS 31 CHARACTERS. Any longer and it becomes corrupted when the title fades in at the start of a scene
        "Prologue",
        "Heaven Is Here",
        "Prologue",
        "The α and the ω",
        "Prologue",
        "FALL/DOWN",
        "Kokoro Chapter",
        "In the Bosom of Motherhood",
        "Kokoro Chapter",
        #"Current State of the Closed-Off Structure",
        "The Closed-Off Structure",
        "Kokoro Chapter",
        "Ethereal \"Girl\"",
        "Kokoro Chapter",
        #"Obstacles in Childhood and Puberty",
        #"Obstacles in Youth",
        "Youth Behavioral Disorders",
        "Kokoro Chapter",
        "O Great Sephirot, Our Master",
        "Kokoro Chapter",
        "Liberation of Self",
        "Kokoro Chapter",
        #"Personality Development in Childhood and Puberty",
        "Youth Personality Development",
        "Kokoro Chapter",
        "The Animus Within the Anima",
        "Kokoro Chapter",
        "The Inescapable Reality",
        "Kokoro Chapter",
        #"The Moment Of Falling Into Autism",
        #"Falling into Autism",
        "Falling into Egocentrism",
        "Kokoro Chapter",
        #"Kokoro/Heart, Body and Tranquilizers",
        #"Heart, Body and Tranquilizers",
        "Heart, Body, and Sedatives",
        "Kokoro Chapter",
        #"Collective Symptoms of an Abnormal Dissociation",
        #"Collective Symptoms",
        "Group Dissociative Symptoms",
        "Kokoro Chapter",
        "Alice in Disorderly Clothes",
        "Kokoro Chapter",
        #"Basic Discrepancies Between Men and Women",
        #"Discrepancies Between Genders",
        "Distinctions Between Genders",
        "Kokoro Chapter",
        #"Eating Breakfast is Good For You",
        "Breakfast Is Good for You",
        "Kokoro Chapter",
        "What Is Mutual Understanding?",
        "Kokoro Chapter",
        "Cause and Reason",
        "Kokoro Chapter",
        "Trust and Deception",
        "Kokoro Chapter",
        #"Alarm! Official Announcement of a Bad Situation!?",
        "Alarm!",
        "Kokoro Chapter",
        "A Taste of the Primordial Sea",
        "Kokoro Chapter",
        #"The Discord of Group Consciousness",
        #"Discord of Group Consciousness",
        "Discord of Group Consciousness",
        "Kokoro Chapter",
        "Scars Taste Like Paranoia",
        "Kokoro Chapter",
        "The Place Where Bliss Resides",
        "Kokoro Chapter",
        "I'm Here",
        "Kokoro Chapter",
        #"Shadow of Falsehood",
        "False Shadow",
        "Kokoro Chapter",
        "The Desire to Change",
        "Kokoro Chapter",
        "Human and Heart",
        "Kokoro Chapter",
        #"The Will to Live and a Decision",
        "Meaning of Life, and a Decision",
        "Kokoro Chapter",
        "Her Illness",
        "Kokoro Chapter",
        "Do You Believe in \"Fate\"?",
        "Kokoro Chapter",
        #"Results of a Certain Psychiatric Examination",
        "Psychiatric Examination Results",
        "Kokoro Chapter",
        "Whom I Can Rely Upon",
        "Kokoro Chapter",
        "Chainlike Spiral",
        "Kokoro Chapter",
        #"Memories and Predictions",
        "Memories and Speculations",
        "Kokoro Chapter",
        "New Life",
        "Kokoro Chapter",
        #"Emotional Trauma, Crucified",
        "Crucified Emotional Trauma",
        "Kokoro Chapter",
        "The Feeling You Believe In",
        "Kokoro Chapter",
        #"Manufactured Personality Exchange",
        "Artificial Personality Exchange",
        "Kokoro Chapter",
        "The Beginning of Ego Collapse",
        "Kokoro Chapter",
        "Choosing Life",
        "Kokoro Chapter",
        "White World",
        "Kokoro Chapter",
        #"At the Boundary Line between Anxiety and Nervous Breakdown",
        "Between Anxiety and Collapse",
        "Kokoro Chapter",
        #"DID Breakout",
        "DID Emergence",
        "Kokoro Chapter",
        "Abyss of Despair I",
        "Kokoro Chapter",
        "A Small Respite",
        "Kokoro Chapter",
        "At the End of Self-Interests...",
        "Kokoro Chapter",
        #"At the End of Personal Grudges...",
        "At the End of Grudges...",
        "Kokoro Chapter",
        "At the End of Private Plans...",
        "Kokoro Chapter",
        #"The One That Frightens, the One That is Frightened",
        "Frightens and Is Frightened",
        "Kokoro Chapter",
        #"Legitimate Self-Defence or False Accusation",
        #"Self-Defense/False Accusation",
        "Self-Defense/False Accusation",
        "Kokoro Chapter",
        "Cruel Harmony",
        "Kokoro Chapter",
        "Mother and Child",
        "Kokoro Chapter",
        "The Hope That Visits in the End",
        "Kokoro Chapter",
        "Endless Mantled Environment",
        "Kokoro Chapter",
        "End of Self-Sacrifice",
        "Kokoro Chapter",
        "Disappearing Light",
        "Kokoro Chapter",
        "While Receiving Blessings",
        "Kokoro Chapter",
        #"At Least A Little Bit of Happiness",
        #"A Little Bit of Happiness",
        "Bare Minimum of Happiness",
        "Kokoro Chapter",
        "Eternal Boy",
        "Kokoro Chapter",
        "Man-Made Miracle",
        "Kokoro Chapter",
        #"Revealed Feelings",
        "Revealed Intentions",
        "Kokoro Chapter",
        "Angel Descending in Darkness",
        "Kokoro Chapter",
        "Struggle Against the End",
        "Kokoro Chapter",
        "Knocking on the Door of Hope",
        "Kokoro Chapter",
        #"The Promised Land To Which We Must Someday Return",
        #"The Promised Land",
        "The Promised Land to Return to",
        "Kokoro Chapter",
        "Determined Fate",
        "Kokoro Chapter",
        "The Shadow That Couldn't Live",
        "Kokoro Chapter",
        "God Descends to the New World",
        "Kokoro Chapter",
        "Abyss of Despair II",
        "Kokoro Chapter",
        "Within the Cage...",
        "Satoru Chapter",
        "Ｐｒｅｎａｔａｌ",
        "Satoru Chapter",
        "Ｐｅｒｓｏｎａ",
        "Satoru Chapter",
        "Ａｎｉｍｕｓ",
        "Satoru Chapter",
        "Ｔｒｉｃｋｓｔｅｒ",
        "Satoru Chapter",
        "Ｓｈａｄｏｗ",
        "Satoru Chapter",
        "Ｇｒｅａｔ\x01Ｍｏｔｈｅｒ",
        "Satoru Chapter",
        "Ｓｅｐａｒａｔｉｏｎ",
        "Satoru Chapter",
        "Ｕｎｉｆｏｒｍ",
        "Satoru Chapter",
        "Ｄｉｍｌｙ",
        "Satoru Chapter",
        "Ｃａｌｍｎｅｓｓ",
        "Satoru Chapter",
        "Ｅｘａｍｉｎｅ",
        "Satoru Chapter",
        "Ｂｒｅａｋ-Ｔｉｍｅ",
        "Satoru Chapter",
        "Ｍｉｎｄ-Ｅｄｕｃａｔｉｏｎ",
        "Satoru Chapter",
        "Ｔｒａｎｓｍｉｔ",
        "Satoru Chapter",
        "Ｖｉｒｇｉｎ-Ｃｅｉｌｉｎｇ",
        "Satoru Chapter",
        "Ｍｉｓｅｒａｂｌｅ",
        "Satoru Chapter",
        #"Ｒｅｆｌｅｃｔｉｏｎ・\x02",
        "Ｒｅｆｌｅｃｔｉｏｎ・Ⅰ",
        "Satoru Chapter",
        "Ｐｏｌｙｈｅｄｒｏｎ",
        "Satoru Chapter",
        "Ｏｌｄ\x01Ｗｉｓｅ\x01Ｍａｎ",
        "Satoru Chapter",
        "Ｓｅｉｚｅｄ",
        "Satoru Chapter",
        "Ｒｅｃｅｉｖｅ",
        "Satoru Chapter",
        #"Ｒｅｆｌｅｃｔｉｏｎ・\x03",
        "Ｒｅｆｌｅｃｔｉｏｎ・Ⅱ",
        "Satoru Chapter",
        #"Ｃｒｕｃｉｆｙ’ｓ\x01Ｒａｔ",
        "Ｃｒｕｃｉｆｉｅｄ\x01Ｒａｔ",
        "Satoru Chapter",
        "Ｒｅｑｕｉｅｍ",
        "Satoru Chapter",
        "Ｒｅｓｐｉｔｅ",
        "Satoru Chapter",
        "Ｄ-Ｈ-Ａ！！",
        "Satoru Chapter",
        "Ｎ-Ｂ-Ａ？？",
        "Satoru Chapter",
        "Ｐｉｅｃｅ\x01Ｏｆ\x01Ｃｈｅｅｓｅ",
        "Satoru Chapter",
        "Ｄｙｉｎｇ",
        "Satoru Chapter",
        "Ｄｅｐｅｎｄｅｎｃｅ",
        "Satoru Chapter",
        "Ｆｉｂｂｅｒ？",
        "Satoru Chapter",
        "Ｓａｂｂａｔｈ\x01Ｔｉｍｅ",
        "Satoru Chapter",
        "Ａｙａｈｕａｓｃａ\x01Ｍａｔｔｅｒ",
        "Satoru Chapter",
        "Ｐｒｅｇｎａｎｔ\x01Ｇｉｒｌ",
        "Satoru Chapter",
        "Ｓｔａｒ’ｓ\x01Ｐｒｉｎｃｅ",
        "Satoru Chapter",
        "Ｈｅｔｅｒｏｎｏｍｉｅ",
        "Satoru Chapter",
        "Ｉｓｏｍｏｒｐｈｉｓｍ",
        "Satoru Chapter",
        "Ｌｉｂｅｒａｔｉｏｎ",
        "Satoru Chapter",
        "ＴＲＡＵＭＡ",
        "Satoru Chapter",
        "Ｎｕｃｌｅｏｔｉｄｅ",
        "Satoru Chapter",
        "Ｆｉｔｆｕｌ",
        "Satoru Chapter",
        "Ｊｅｓｔｉｎｇ",
        "Satoru Chapter",
        "Ｐｕｅｒ\x01Ａｅｔｅｒｎｕｓ",
        "Satoru Chapter",
        "Ａｗａｋｅｎｉｎｇ",
        "Satoru Chapter",
        "Ｔｒａｎｓｆｅｒｅｎｃｅ",
        "Satoru Chapter",
        "Ｒｅａｌ",
        "Satoru Chapter",
        "Ｔｒｉｎｉｔｙ",
        "Satoru Chapter",
        "Ｑｕａｎｔｕｍ\x01Ｔｅｌｅｐｏｒｔａｔｉｏｎ",
        "Satoru Chapter",
        "Ｄｅｓｔｒｕｃｔｉｏｎ",
        "Satoru Chapter",
        "Ｉｎｓａｎｉｔｙ",
        "Satoru Chapter",
        "Ｆａｔａｌ",
        "Satoru Chapter",
        "Ｄｉｓｃｌｏｓｅ",
        "Satoru Chapter",
        "Ｌｅｔｈａｌ",
        "Satoru Chapter",
        "Ａｎｔｉｄｏｔｅ",
        "Satoru Chapter",
        "Ｍｉｒａｃｌｅ\x01Ｃｈｉｌｄ",
        "Satoru Chapter",
        "Ｒｅｃｏｌｌｅｃｔ",
        "Satoru Chapter",
        "Ｐｈｏｂｉａ",
        "Satoru Chapter",
        "Ｉｎｓｅｒｔｉｏｎ",
        "Satoru Chapter",
        "Ｐｒｏｍｉｓｅ",
        "Satoru Chapter",
        "Ｈｅｋａｔｅ",
        "Satoru Chapter",
        "Ｕｎｍａｓｋ",
        "Satoru Chapter",
        "Ａｎｏｔｈｅｒ\x01Ｓｈａｄｏｗ",
        "Satoru Chapter",
        "Ｒｅｊｅｃｔｉｏｎ",
        "Satoru Chapter",
        "Ｒｅｖｅｎｇｅｒ",
        "Satoru Chapter",
        "Ｏｌｄ\x01Ｗｉｓｅ\x01Ｗｏｍａｎ",
        "Satoru Chapter",
        "Ｒｅｓｅａｒｃｈ",
        "Satoru Chapter",
        "Ｃｏｎｓｃｉｏｕｓｎｅｓｓ",
        "Satoru Chapter",
        "Ｓｙｍｂｏｌｉｃ",
        "Satoru Chapter",
        "Ｔｈｅ\x01Ｔｈｉｒｄ\x01Ａｒｅａ",
        "Satoru Chapter",
        "Ａｐｏｐｔｏｓｉｓ",
        "Satoru Chapter",
        "Ａｍｂｉｖａｌｅｎｃｅ",
        "Satoru Chapter",
        "Ｔｈｅ\x01Ｅｎｄ\x01Ｏｆ\x01Ｗｏｒｌｄ",
        "Satoru Chapter",
        "Ｔｈｅ\x01Ｅｎｄ\x01Ｏｆ\x01Ｍｉｎｄ",
        "Satoru Chapter",
        "Ｉｄｅｎｔｉｆｉｃａｔｉｏｎ",
        "Satoru Chapter",
        "Ａｎｉｍａ",
        "Satoru Chapter",
        "Ｄｅｌｔａ",
        "Satoru Chapter",
        "Ｉｎｆｉｎｉｔｅ\x01Ｈｉｓｔｏｒｙ",
        "Satoru Chapter",
        "Ｎｅｖｅｒ\x01Ｍｏｒｅ",
        "Satoru Chapter",
        "Ｅｖｅｒ\x01Ｍｏｒｅ",
        "Satoru Chapter",
        "Ｍｏｒｅ\x01Ｒｅｍｅｍｂｅｒ",
        "Satoru Chapter",
        "Ｗｈｅｒｅ\x01Ｉｓ\x01“Ｓｅｌｆ”？"
      ),
    MAKE_COMMENT ('string table 0c - character names'),
    MAKE_STRING_TABLE
      (
        "???",
        "Kokoro",
        "Satoru",
        "Mayuzumi",
        "Yomogi",
        "Utsumi",
        "Inubushi",
        "Yuni",
        "Hotori",
        "Enomoto",
        "Man",
        "Woman",
        "Boy",
        "Girl",
        "Pilot",
        "Rescue Team",
        "Yuni . Yomogi . Mayuzumi",
        "Kokoro . Yuni . Mayuzumi",
        "Yuni . Hotori . Utsumi",
        "Yuni . Satoru . Hotori",
        "Yomogi . Mayuzumi",
        "Sayaka",
        "YUKIDOH"
      ),
    MAKE_COMMENT ('string table 10 ??'),
    MAKE_STRING_TABLE
      (
        "Start Game",
        "Debug Mode",
        "Unused",
        "Unused",
        "Unused",
        "Unused",
        "Unused",
        "Unused",
        "Album Unlocked",
        "Music Unlocked",
        "Clear List Unlocked",
        "Shortcuts Unlocked",
        "Unused",
        "Unused",
        "Unused",
        "Unused",
        "All Endings Unlocked",
        "All Titles Unlocked",
        "Album Fully Unlocked",
        "All Music Unlocked",
        "All Messages Unlocked",
        "All Choices Unlocked",
        "Play Time Fully Unlocked",
        "TIPS Fully Unlocked",
        "Unused",
        "Unused",
        "Unused",
        "Unused",
        "Unused",
        "Unused",
        "Unused",
        "Maximum Choices",
        "Kokoro Chapter - Clear",
        "Didn't Take the Sleeping Pills BAD - Clear",
        "Drank Water BAD - Clear",
        "Mayuzumi's Madness A BAD - Clear",
        "Incident at SPHIA BAD - Clear",
        "Killed by Enomoto BAD - Clear",
        "Killed by Enomoto BAD - Clear",
        "Mayuzumi's Madness B Bad - Clear",
        "Yomogi's Madness BAD - Clear",
        "Meal at SPHIA BAD - Clear",
        "Mayuzumi's Madness C BAD - Clear",
        "Incident at Mount Akakura 1 BAD - Clear",
        "Incident at Mount Akakura 2 BAD - Clear",
        "Death from Cold at the Crash Site 1 BAD - Clear",
        "Death from Cold at the Crash Site 2 BAD - Clear",
        "Yuni Dies From Cold BAD - Clear",
        "Avalanche 1 BAD - Clear",
        "Avalanche 2 BAD - Clear",
        "Avalanche 3 BAD - Clear",
        "Dream of the Butterfly 2 - Clear",
        "Satoru Good End - Clear",
        "Satoru Bad End A - Clear",
        "Didn't Take the Sleeping Pills BAD - Clear",
        "Drank Water BAD - Clear",
        "Mayuzumi's Madness A BAD - Clear",
        "Incident at SPHIA BAD - Clear",
        "Killed by Enomoto BAD - Clear",
        "Mayuzumi's Madness B Bad - Clear",
        "Yomogi's Madness BAD - Clear",
        "Fingers Cut Off BAD - Clear",
        "Roll BAD - Clear",
        "Nobody at the Cabin BAD - Clear",
        "Yuni Dies From Cold BAD - Clear",
        "To-Be-Deleted",
        "To-Be-Deleted",
        "Tyramine and DMT BAD - Clear",
        "Satoru Chapter Epilogue - Clear",
        "Kokoro 1st Day Unlocked",
        "Kokoro 1st Day - Midday Unlocked",
        "Kokoro 2nd Day Unlocked",
        "Kokoro 2nd Day - Midday Unlocked",
        "Kokoro 3rd Day Unlocked",
        "Kokoro 3rd Day - Midday Unlocked",
        "Kokoro 4th Day Unlocked",
        "Kokoro 4th Day - Midday Unlocked",
        "Kokoro 5th Day Unlocked",
        "Kokoro 5th Day - Midday Unlocked",
        "Kokoro 6th Day Unlocked",
        "Kokoro 6th Day - Midday Unlocked",
        "Kokoro 7th Day Unlocked",
        "Kokoro 7th Day - Midday Unlocked",
        "Kokoro Epilogue Unlocked",
        "Satoru 1st Day Unlocked",
        "Satoru 1st Day - Midday Unlocked",
        "Satoru 2nd Day Unlocked",
        "Satoru 2nd Day - Midday Unlocked",
        "Satoru 3rd Day Unlocked",
        "Satoru 3rd Day - Midday Unlocked",
        "Satoru 4th Day Unlocked",
        "Satoru 4th Day - Midday Unlocked",
        "Satoru 5th Day Unlocked",
        "Satoru 5th Day - Midday Unlocked",
        "Satoru 6th Day Unlocked",
        "Satoru 6th Day - Midday Unlocked",
        "Satoru 7th Day Unlocked",
        "Satoru 7th Day - Midday Unlocked",
        "Satoru Epilogue Unlocked",
        "Satoru SYSMES Already Read",
        "MES100%"
      ),
    MAKE_COMMENT ('string table 14 ??'),
    MAKE_STRING_TABLE
      (
        "Playthroughs",
        "Mayuzumi Stress Level - Bio",
        "Message Illustration - Bio",
        "The Cardboard Boxes Collapsed - Bio",
        "Yuni's a Twin Theory - Bio",
        "Kokoro Manages the Rations - Bio",
        "Very Worried - Bio",
        "Didn't Drink Coffee on the Second Day - Bio BAD",
        "Glad Kokoro's Alive - Bio BAD",
        "Didn't Speak with Lin About the \"Round and Round\" - Bio BAD",
        "Didn't Take the Sleeping Pills - Bio BAD",
        "Ate at SPHIA on the Third and Fourth Day - Bio BAD",
        "Killed By Enomoto - Bio BAD",
        "Incident at SPHIA - Bio BAD",
        "Mayuzumi's Madness A - Bio BAD",
        "Yomogi's Madness - Bio BAD",
        "Mayuzumi's Madness B - Bio BAD",
        "Mayuzumi's Madness C - Bio BAD",
        "Incident at Mount Akakura - Bio BAD",
        "Death From Cold at the Crash Site - Bio BAD",
        "Yuni's Death From Hypothermia - Bio BAD",
        "Kokoro's Death on the Seventh Day A - Bio BAD",
        "Kokoro's Death on the Seventh Day B - Bio BAD",
        "Satoru Bad End A - Bio BAD",
        "Drank Water BAD - Bio BAD",
        "Fingers cut off BAD - Bio BAD",
        "Roll BAD - Bio BAD",
        "ED Count",
        "Shortcuts Unlocked Register",
        "Shortcuts Unlocked Register",
        "Shortcuts Unlocked Register",
        "Previous Play Discrimination"
      ),
    MAKE_COMMENT ('string table 18 ??'),
    MAKE_STRING_TABLE
      (
        "Temporary Flag 00",
        "Temporary Flag 01",
        "Temporary Flag 02",
        "Temporary Flag 03",
        "Unused",
        "Unused",
        "Unused",
        "Unused",
        "Unused",
        "Unused",
        "Unused",
        "Unused",
        "Unused",
        "Unused",
        "Unused",
        "Unused",
        "You went to Yuni's room",
        "You went outside once",
        "You met Inubushi",
        "You can't handle rats",
        "You told you're Kokoro",
        "Who are you?",
        "You're bothered by the words \"I missed you\"",
        #"カンパン食べた",
        "Ate hard tack",
        "You didn't drink the sleeping pill",
        "You ate at SPHIA the 3rd and 4th day",
        "You explained the destination to Mayuzumi",
        "You had your fortune told by Yuni",
        "Mayuzumi manages the supplies",
        "You walked along the wall",
        "Incident at SPHIA",
        "You left Yomogi behind",
        "You carried Yomogi",
        "Yuni's death by hypothermia",
        "Death from cold at crash site",
        "Yuni's death by hypothermia",
        "You swore to protect Hotori",
        "You don't know them",
        "You asked why you climbed the clock tower",
        "You like black coffee",
        "You climbed the clock tower",
        "You're hungry",
        "Yuni's room",
        "Inubushi's room",
        "You don't know the name of Yomogi and the others",
        "Snowboard",
        "Basket",
        "Yuni 2PL",
        "You won against Hotori at basketball",
        "You lost against Hotori at basketball",
        "You drank coffee (4th day)",
        "You want to kill Hotori",
        "You want to kill Hotori and think she's the culprit",
        "Tobilin is enraged",
        "Inubushi and Hotori aren't the same person",
        "You notice there are three exchange points",
        "You reasoned there are four exchange points",
        "UV Lamp",
        "UV Lamp",
        "UV Lamp",
        "UV Lamp",
        "UV Lamp",
        "UV Lamp",
        "The cardboards collapsed - Bio local",
        "Yuni's a Twin Theory - Bio local",
        "Kokoro manages the rations - Bio local",
        "Very worried - Bio local",
        "Didn't drink coffee on the second day - Bio local",
        "Glad Kokoro's alive - Bio local",
        "Didn't speak with Lin about the \"Round and Round\" - Bio local",
        "Didn't drink the sleeping pill - Bio BAD local",
        "Ate at SPHIA on the third and fourth day - Bio BAD local",
        "Killed By Enomoto - Bio BAD local",
        "Incident at SPHIA - Bio BAD local",
        "Mayuzumi's madness A - Bio BAD Local",
        "Yomogi's madness - Bio BAD Local",
        "Mayuzumi's madness B - Bio BAD Local",
        "Mayuzumi's madness C - Bio BAD Local",
        "Incident at Mt Akakura - Bio BAD local",
        "Death from cold at the crash site - Bio BAD local",
        "Yuni's death from hypothermia - Bio BAD local",
        "Kokoro's death on the seventh day A - Bio BAD",
        "Kokoro's death on the seventh day B - Bio BAD",
        "Satoru Bad End A - Bio BAD Local",
        "Drank water BAD - Bio BAD local",
        "Fingers cut off BAD - Bio BAD Local",
        "Roll BAD - Bio BAD Local",
        "UV Lamp"
      ),
    MAKE_COMMENT ('string table 1c ??'),
    MAKE_STRING_TABLE
      (
        "Program Register 0",
        "Program Register 1",
        "Program Register 2",
        "Program Register 3",
        "Temporary Register 0",
        "Temporary Register 1",
        "Temporary Register 2",
        "Temporary Register 3",
        "Mode",
        "Choice",
        "Month",
        "Day",
        "Weekday",
        "Hours",
        "Minutes",
        "Ｇ００",
        "First Choice",
        "Mayuzumi Stress Level - Biolocal",
        "Kokoro Physical Strength Value",
        "Meal",
        "ｉ(Satoru Chapter Calculation Register)",
        "Score",
        "Random Number",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "Memo Illustration - Biolocal",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "Chapter",
        "Satoru Epilogue Criteria",
        "Shortcut Unlocked Criteria",
        "Shortcut Unlocked Criteria",
        "Previous Play Discrimination",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "MACLOCAL Register",
        "MACLOCAL Register"
      ),
    MAKE_COMMENT ('string table 20 - script names - files 0###, length = 0xab = 171'),
    MAKE_STRING_TABLE
      (
        "PR_01",
        "PR_02",
        "PR_03",
        "CO1_01",
        "CO1_02",
        "CO1_03",
        "CO1_04",
        "CO1_05",
        "CO1_06",
        "CO1_07",
        "CO1_08",
        "CO1_09",
        "CO1_10",
        "CO1_11",
        "CO1_12",
        "CO1_13",
        "CO2_01",
        "CO2_02",
        "CO2_03",
        "CO2_04",
        "CO2_05",
        "CO2_06",
        "CO2_07",
        "CO2_08",
        "CO2_09A",
        "CO2_09B",
        "CO2_10",
        "CO2_11",
        "CO2_12",
        "CO3_01",
        "CO3_02",
        "CO3_03",
        "CO3_04",
        "CO3_05",
        "CO3_06",
        "CO3_07",
        "CO3_08",
        "CO3_09",
        "CO3_10",
        "CO4_01",
        "CO4_02",
        "CO4_03",
        "CO4_04",
        "CO4_05",
        "CO4_06",
        "CO4_07",
        "CO4_08",
        "CO4_09",
        "CO5_01",
        "CO5_02",
        "CO5_03",
        "CO5_04",
        "CO5_05",
        "CO5_06",
        "CO5_07",
        "CO5_08",
        "CO5_09",
        "CO5_10",
        "CO5_11",
        "CO5_12",
        "CO5_13",
        "CO6_01",
        "CO6_02",
        "CO6_03",
        "CO6_04",
        "CO6_05",
        "CO7_01",
        "CO7_02",
        "CO7_03",
        "CO7_04",
        "CO7_05",
        "CO7_06",
        "CO7_07",
        "COEP_01",
        "SA1_01",
        "SA1_02",
        "SA1_03",
        "SA1_04",
        "SA1_05",
        "SA1_06",
        "SA1_07",
        "SA1_08",
        "SA1_09",
        "SA2_01",
        "SA2_02",
        "SA2_03",
        "SA2_04",
        "SA2_05",
        "SA2_06",
        "SA2_07",
        "SA2_08",
        "SA2_09",
        "SA2_10",
        "SA2_11",
        "SA2_12",
        "SA2_13",
        "SA2_14",
        "SA2_15",
        "SA3_01",
        "SA3_02",
        "SA3_03",
        "SA3_04",
        "SA3_05",
        "SA3_06",
        "SA3_07",
        "SA3_08",
        "SA3_09",
        "SA3_10",
        "SA3_11",
        "SA3_12",
        "SA3_13",
        "SA3_14",
        "SA3_15",
        "SA4_01",
        "SA4_02",
        "SA4_03",
        "SA4_04",
        "SA4_05",
        "SA4_06",
        "SA4_07",
        "SA4_08",
        "SA4_09",
        "SA4_10",
        "SA4_11",
        "SA4_12",
        "SA4_13",
        "SA5_01",
        "SA5_02",
        "SA5_03",
        "SA5_04",
        "SA5_05",
        "SA5_06",
        "SA5_07",
        "SA5_08",
        "SA5_09",
        "SA6_01",
        "SA6_02",
        "SA6_03",
        "SA6_04",
        "SA6_05",
        "SA7_01",
        "SA7_02",
        "SA7_03",
        "SA7_04",
        "SA7_05",
        "SA7_06",
        "SA7_07",
        "SA7_08",
        "SA7_09",
        "SAEP_01",
        "SAEP_02",
        "SAEP_03",
        "SAEP_04",
        "SAEP_05",
        "SAEP_06",
        "SHORTCUT",
        "SHORTCUT01",
        "SHORTCUT02",
        "APPEND",
        "STARTUP",
        "SCR_INIT",
        "SCR_SCUT",
        "DBG_TEST",
        "DBG_MENU",
        "DBG_CHR",
        "DBG_BG",
        "DBG_EV",
        "DBG_BGM",
        "DBG_SE",
        "DBG_MAC",
        "DBG_EFT"
      ),
    MAKE_COMMENT ('string table 24 - background images - files 1###, length = 0x1e7 = 487'),
    MAKE_STRING_TABLE
      (
        "BG_00",
        "BG_01",
        "BG_02",
        "BG_03",
        "BG_99",
        "BG_A01A",
        "BG_A01AR",
        "BG_A01E",
        "BG_A01N1",
        "BG_A01N2",
        "BG_A01NR1",
        "BG_A01NR2",
        "BG_A02A1",
        "BG_A02A2",
        "BG_A02A3",
        "BG_A02A4",
        "BG_A02AR1",
        "BG_A02AR2",
        "BG_A02AR3",
        "BG_A02AR4",
        "BG_A02E1",
        "BG_A02E2",
        "BG_A02N1",
        "BG_A02N2",
        "BG_A02N3",
        "BG_A02N4",
        "BG_A02E3",
        "BG_A02E4",
        "BG_A02N5",
        "BG_A02N6",
        "BG_A02N7",
        "BG_A02N8",
        "BG_A02NR1",
        "BG_A02NR2",
        "BG_A02NR3",
        "BG_A02NR4",
        "BG_A02NR5",
        "BG_A02NR6",
        "BG_A02NR7",
        "BG_A02NR8",
        "BG_A03A1",
        "BG_A03A2",
        "BG_A03A3",
        "BG_A03A4",
        "BG_A03AR1",
        "BG_A03AR2",
        "BG_A03AR3",
        "BG_A03AR4",
        "BG_A03E1",
        "BG_A03E2",
        "BG_A03E3",
        "BG_A03E4",
        "BG_A03N1",
        "BG_A03N2",
        "BG_A03N3",
        "BG_A03N4",
        "BG_A03N5",
        "BG_A03N6",
        "BG_A03N7",
        "BG_A03N8",
        "BG_A03NR1",
        "BG_A03NR2",
        "BG_A03NR3",
        "BG_A03NR4",
        "BG_A03NR5",
        "BG_A03NR6",
        "BG_A03NR7",
        "BG_A03NR8",
        "BG_A04A",
        "BG_A04AR",
        "BG_A04E",
        "BG_A04N1",
        "BG_A04N2",
        "BG_A04NR1",
        "BG_A04NR2",
        "BG_A05A1",
        "BG_A05A2",
        "BG_A05A3",
        "BG_A05A4",
        "BG_A05AR1",
        "BG_A05AR2",
        "BG_A05AR3",
        "BG_A05AR4",
        "BG_A05E1",
        "BG_A05E2",
        "BG_A05E3",
        "BG_A05E4",
        "BG_A05N1",
        "BG_A05N2",
        "BG_A05N3",
        "BG_A05N4",
        "BG_A05N5",
        "BG_A05N6",
        "BG_A05N7",
        "BG_A05N8",
        "BG_A05NR1",
        "BG_A05NR2",
        "BG_A05NR3",
        "BG_A05NR4",
        "BG_A05NR5",
        "BG_A05NR6",
        "BG_A05NR7",
        "BG_A05NR8",
        "BG_A06A1",
        "BG_A06A2",
        "BG_A06A3",
        "BG_A06A4",
        "BG_A06AR1",
        "BG_A06AR2",
        "BG_A06AR3",
        "BG_A06AR4",
        "BG_A06E1",
        "BG_A06E2",
        "BG_A06E3",
        "BG_A06E4",
        "BG_A06N1",
        "BG_A06N2",
        "BG_A06N3",
        "BG_A06N4",
        "BG_A06N5",
        "BG_A06N6",
        "BG_A06N7",
        "BG_A06N8",
        "BG_A06NR1",
        "BG_A06NR2",
        "BG_A06NR3",
        "BG_A06NR4",
        "BG_A06NR5",
        "BG_A06NR6",
        "BG_A06NR7",
        "BG_A06NR8",
        "BG_A07A",
        "BG_A07AR",
        "BG_A07E",
        "BG_A07N1",
        "BG_A07N2",
        "BG_A07NR1",
        "BG_A07NR2",
        "BG_A08A1",
        "BG_A08A2",
        "BG_A08A3",
        "BG_A08A4",
        "BG_A08AR1",
        "BG_A08AR2",
        "BG_A08AR3",
        "BG_A08AR4",
        "BG_A08E1",
        "BG_A08E2",
        "BG_A08E3",
        "BG_A08E4",
        "BG_A08N1",
        "BG_A08N2",
        "BG_A08N3",
        "BG_A08N4",
        "BG_A08N5",
        "BG_A08N6",
        "BG_A08N7",
        "BG_A08N8",
        "BG_A08NR1",
        "BG_A08NR2",
        "BG_A08NR3",
        "BG_A08NR4",
        "BG_A08NR5",
        "BG_A08NR6",
        "BG_A08NR7",
        "BG_A08NR8",
        "BG_A09N1",
        "BG_A09N2",
        "BG_A09N3",
        "BG_A09N4",
        "BG_A09N5",
        "BG_A09N6",
        "BG_A09N7",
        "BG_A09N8",
        "BG_A10A",
        "BG_A10AR",
        "BG_A10E",
        "BG_A10N",
        "BG_A10NR",
        "BG_A11A",
        "BG_A11AR",
        "BG_A11E",
        "BG_A11N",
        "BG_A11NR",
        "BG_A12N1",
        "BG_A12N2",
        "BG_A12N3",
        "BG_A12N4",
        "BG_A13A",
        "BG_A13AR",
        "BG_A13E",
        "BG_A13N",
        "BG_A13NR",
        "BG_B01A1",
        "BG_B01A2",
        "BG_B01AR1",
        "BG_B01AR2",
        "BG_B01E1",
        "BG_B01E2",
        "BG_B01N1",
        "BG_B01N2",
        "BG_B01N3",
        "BG_B01N4",
        "BG_B01NR1",
        "BG_B01NR2",
        "BG_B01NR3",
        "BG_B01NR4",
        "BG_B02A1",
        "BG_B02A2",
        "BG_B02AR1",
        "BG_B02AR2",
        "BG_B02E1",
        "BG_B02E2",
        "BG_B02N1",
        "BG_B02N2",
        "BG_B02N3",
        "BG_B02N4",
        "BG_B03A1",
        "BG_B03A2",
        "BG_B03AR1",
        "BG_B03AR2",
        "BG_B03E1",
        "BG_B03E2",
        "BG_B03N1",
        "BG_B03N2",
        "BG_B03N3",
        "BG_B03N4",
        "BG_B04A1",
        "BG_B04A2",
        "BG_B04AR1",
        "BG_B04AR2",
        "BG_B04E1",
        "BG_B04E2",
        "BG_B04N1",
        "BG_B04N2",
        "BG_B04N3",
        "BG_B04N4",
        "BG_B05A1",
        "BG_B05A2",
        "BG_B05AR1",
        "BG_B05AR2",
        "BG_B05E1",
        "BG_B05E2",
        "BG_B05N1",
        "BG_B05N2",
        "BG_B05NR1",
        "BG_B05NR2",
        "BG_B06A",
        "BG_B06A2",
        "BG_B06N1",
        "BG_B06N2",
        "BG_B07N1",
        "BG_B07N2",
        "BG_B07N3",
        "BG_B07N4",
        "BG_B08A",
        "BG_B08AR",
        "BG_B08E",
        "BG_B08N1",
        "BG_B08N2",
        "BG_B08NR1",
        "BG_B08NR2",
        "BG_B09A",
        "BG_B09AR",
        "BG_B09E",
        "BG_B09N",
        "BG_B09NR",
        "BG_B10A",
        "BG_B10AR",
        "BG_B10E",
        "BG_B10N",
        "BG_B10NR",
        "BG_B11A",
        "BG_B11AR",
        "BG_B11E",
        "BG_B11N",
        "BG_B11NR",
        "BG_B12A",
        "BG_B12AR",
        "BG_B12E",
        "BG_B12N",
        "BG_B12NR",
        "BG_B13A",
        "BG_B13AR",
        "BG_B13E",
        "BG_B13N",
        "BG_B13NR",
        "BG_B14A",
        "BG_B14AR",
        "BG_B14E",
        "BG_B14N",
        "BG_B14NR",
        "BG_B15A1",
        "BG_B15A2",
        "BG_B15AR1",
        "BG_B15AR2",
        "BG_B15E1",
        "BG_B15E2",
        "BG_B15N1",
        "BG_B15N2",
        "BG_B15NR1",
        "BG_B15NR2",
        "BG_B16A",
        "BG_B16AR",
        "BG_B16E",
        "BG_B16N1",
        "BG_B16N2",
        "BG_B16NR1",
        "BG_B16NR2",
        "BG_B17A",
        "BG_B17AR",
        "BG_B17E",
        "BG_B17N",
        "BG_B17NR",
        "BG_B18N1",
        "BG_B18N2",
        "BG_B18N3",
        "BG_B19N1",
        "BG_B19N2",
        "BG_B19N3",
        "BG_B19N4",
        "BG_B20N1",
        "BG_B20N2",
        "BG_B21N1",
        "BG_B21N2",
        "BG_B22A",
        "BG_B22AR",
        "BG_B22E",
        "BG_B22N",
        "BG_B22NR",
        "BG_B23A",
        "BG_B23AR",
        "BG_B23E",
        "BG_B23N",
        "BG_B23NR",
        "BG_B24A1",
        "BG_B24A2",
        "BG_C01A",
        "BG_C01AR",
        "BG_C02A1",
        "BG_C02A2",
        "BG_C03N1",
        "BG_C03N2",
        "BG_C04A",
        "IT01A",
        "IT01B",
        "IT02A",
        "IT03A",
        "IT04A",
        "IT05A",
        "IT06A",
        "IT06B",
        "IT07A",
        "IT07B",
        "IT08A",
        "IT08B",
        "IT08C",
        "IT08D",
        "IT09A",
        "IT10A",
        "IT11A",
        "IT12A",
        "IT13A",
        "IT13B",
        "IT14A",
        "IT14B",
        "IT15A",
        "IT16A",
        "IT17A",
        "IT18A",
        "IT19A",
        "IT19B",
        "IT19C",
        "IT19D",
        "IT20A",
        "IT20B",
        "IT21A",
        "IT22A",
        "IT23A",
        "IT23B",
        "IT24A",
        "IT25A",
        "IT26A",
        "IT27A",
        "IT28A",
        "IT29A",
        "EBG01A",
        "EBG01AR1",
        "EBG01E",
        "EBG01N1",
        "EBG01N2",
        "EBG01NR1",
        "EBG01NR2",
        "EBG02A",
        "EBG03A",
        "EBG03B",
        "EBG04A",
        "EBG04B",
        "EBG05A",
        "EBG05AR1",
        "EBG05AR2",
        "EBG05E",
        "EBG05N1",
        "EBG05N2",
        "EBG05NR1",
        "EBG05NR2",
        "EBG06A",
        "EBG06B",
        "EBG06C",
        "EBG06D",
        "EBG06E",
        "EBG06F",
        "EBG06G",
        "EBG06H",
        "EBG06I",
        "EBG07A",
        "EBG08A",
        "EBG08B",
        "EBG09A",
        "EBG10A",
        "EBG11A",
        "EBG12A",
        "EBG13A",
        "EBG13B",
        "EBG13C",
        "EBG13D",
        "EBG15A",
        "EBG15B",
        "EBG15C",
        "EBG15D",
        "EBG16A",
        "EBG17A",
        "EBG17B",
        "EBG17C",
        "EBG17D",
        "EBG18A",
        "EBG18B",
        "EBG19A",
        "EBG19B",
        "EBG19C",
        "EBG19D",
        "EBG20A",
        "EBG20B",
        "EBG20C",
        "EBG20D",
        "EBG20E",
        "EBG20F",
        "EBG21A",
        "EBG21B",
        "EBG21C",
        "EBG21D",
        "EBG21E",
        "EBG21F",
        "EBG22A",
        "EBG22B1",
        "EBG22B2",
        "EBG22C",
        "EBG22D",
        "EBG22E",
        "EV_CO04A1",
        "EV_CO05A1",
        "EV_CO06A4",
        "CAL_A00",
        "CAL_A01",
        "CAL_A02",
        "CAL_A03",
        "CAL_A04",
        "CAL_A05",
        "CAL_A06",
        "CAL_A07",
        "CAL_B00",
        "CAL_B01",
        "CAL_B02",
        "CAL_B03",
        "CAL_B04",
        "CAL_B05",
        "CAL_B06",
        "CAL_B07",
        "BEV_CO30A",
        "BEV_CO33A",
        "BEV_SA02A",
        "BEV_SA24A",
        "BPOST01",
        "BPOST02",
        "BPOST03",
        "BPOST04",
        "BPOST05"
      ),
    MAKE_COMMENT ('string table 28 - CGs - files 2###, length = 0x9e = 158'),
    MAKE_STRING_TABLE
      (
        "EV_PR01A",
        "EV_PR02A",
        "EV_PR03A",
        "EV_CO01A",
        "EV_CO01B",
        "EV_CO01C",
        "EV_CO02A",
        "EV_CO02B",
        "EV_CO02C",
        "EV_CO02D",
        "EV_CO03A",
        "EV_CO03B",
        "EV_CO03C",
        "EV_CO04A",
        "EV_CO05A",
        "EV_CO05B",
        "EV_CO05C",
        "EV_CO06A",
        "EV_CO06B",
        "EV_CO07A",
        "EV_CO07B",
        "EV_CO08A",
        "EV_CO09A",
        "EV_CO10A",
        "EV_CO10B",
        "EV_CO11A",
        "EV_CO12A",
        "EV_CO13A",
        "EV_CO13B",
        "EV_CO13C",
        "EV_CO14A",
        "EV_CO14B",
        "EV_CO15A",
        "EV_CO15B",
        "EV_CO16A",
        "EV_CO17A",
        "EV_CO18A",
        "EV_CO19A",
        "EV_CO20A",
        "EV_CO21A",
        "EV_CO22A",
        "EV_CO23A",
        "EV_CO24A",
        "EV_CO25A",
        "EV_CO25B",
        "EV_CO26A",
        "EV_CO27A",
        "EV_CO27B",
        "EV_CO28A",
        "EV_CO29A",
        "EV_CO29B",
        "EV_CO30A",
        "EV_CO30B",
        "EV_CO30C",
        "EV_CO30D",
        "EV_CO31A",
        "EV_CO32A",
        "EV_CO32B",
        "EV_CO32C",
        "EV_CO33A",
        "EV_CO33B",
        "EV_CO34A",
        "EV_CO35A",
        "EV_CO36A",
        "EV_SA01A",
        "EV_SA02A",
        "EV_SA02B",
        "EV_SA02C",
        "EV_SA02D",
        "EV_SA03A",
        "EV_SA03B",
        "EV_SA04A",
        "EV_SA05A",
        "EV_SA06A",
        "EV_SA06B",
        "EV_SA06C",
        "EV_SA06D",
        "EV_SA07A",
        "EV_SA08A",
        "EV_SA09A",
        "EV_SA10A",
        "EV_SA11A",
        "EV_SA12A",
        "EV_SA13A",
        "EV_SA13B",
        "EV_SA14A",
        "EV_SA14B",
        "EV_SA15A",
        "EV_SA15B",
        "EV_SA16A",
        "EV_SA16B",
        "EV_SA17A",
        "EV_SA18A",
        "EV_SA18B",
        "EV_SA19A",
        "EV_SA20A",
        "EV_SA21A",
        "EV_SA22A",
        "EV_SA23A",
        "EV_SA24A",
        "EV_SA24B",
        "POST01",
        "POST02",
        "POST03",
        "POST04",
        "POST05",
        "REME01",
        "REME02",
        "REME03",
        "REME04",
        "REME05",
        "REME06",
        "REME07",
        "REME08",
        "REME09",
        "REME10",
        "REME11",
        "REME12",
        "REME13",
        "REME14",
        "REME15",
        "REME16",
        "REME17",
        "REME18",
        "REME19",
        "REME20",
        "REME21",
        "REME22",
        "REME23",
        "REME24",
        "REME25",
        "REME26",
        "REME27",
        "REME28",
        "REME29",
        "REME30",
        "REME31",
        "REME32",
        "REME33",
        "REME34",
        "REME35",
        "EV_MV00",
        "EV_MV01",
        "EV_MV02",
        "EV_MV03",
        "EV_MV04",
        "EV_MV05",
        "EV_MV06",
        "EV_MV08",
        "EV_MV09",
        "EV_MV12",
        "EV_MV13",
        "EV_MV14",
        "EV_MV15",
        "EV_MVED1",
        "EV_MVED2",
        "EV_MVED3",
        "EV_MVOP"
      ),
    MAKE_COMMENT ('string table 2c - Sprites - files 3###, length = 0x3b3 = 947'),
    MAKE_STRING_TABLE
      (
        "CHR_99",
        "CO01AS",
        "CO02AS",
        "CO03AS",
        "CO04AS",
        "CO05AS",
        "CO06AS",
        "CO07AS",
        "CO08AS",
        "CO09AS",
        "CO10AS",
        "CO11AS",
        "CO01AM",
        "CO02AM",
        "CO03AM",
        "CO04AM",
        "CO05AM",
        "CO06AM",
        "CO07AM",
        "CO08AM",
        "CO09AM",
        "CO10AM",
        "CO11AM",
        "CO01AL",
        "CO02AL",
        "CO03AL",
        "CO04AL",
        "CO05AL",
        "CO06AL",
        "CO07AL",
        "CO08AL",
        "CO09AL",
        "CO10AL",
        "CO11AL",
        "CO01AX",
        "CO02AX",
        "CO03AX",
        "CO04AX",
        "CO05AX",
        "CO06AX",
        "CO07AX",
        "CO08AX",
        "CO09AX",
        "CO10AX",
        "CO11AX",
        "CO01BS",
        "CO02BS",
        "CO03BS",
        "CO04BS",
        "CO05BS",
        "CO06BS",
        "CO07BS",
        "CO08BS",
        "CO09BS",
        "CO10BS",
        "CO11BS",
        "CO01BM",
        "CO02BM",
        "CO03BM",
        "CO04BM",
        "CO05BM",
        "CO06BM",
        "CO07BM",
        "CO08BM",
        "CO09BM",
        "CO10BM",
        "CO11BM",
        "CO01BL",
        "CO02BL",
        "CO03BL",
        "CO04BL",
        "CO05BL",
        "CO06BL",
        "CO07BL",
        "CO08BL",
        "CO09BL",
        "CO10BL",
        "CO11BL",
        "CO01BX",
        "CO02BX",
        "CO03BX",
        "CO04BX",
        "CO05BX",
        "CO06BX",
        "CO07BX",
        "CO08BX",
        "CO09BX",
        "CO10BX",
        "CO11BX",
        "SA01AS",
        "SA02AS",
        "SA03AS",
        "SA04AS",
        "SA05AS",
        "SA06AS",
        "SA07AS",
        "SA08AS",
        "SA09AS",
        "SA10AS",
        "SA11AS",
        "SA01AM",
        "SA02AM",
        "SA03AM",
        "SA04AM",
        "SA05AM",
        "SA06AM",
        "SA07AM",
        "SA08AM",
        "SA09AM",
        "SA10AM",
        "SA11AM",
        "SA01AL",
        "SA02AL",
        "SA03AL",
        "SA04AL",
        "SA05AL",
        "SA06AL",
        "SA07AL",
        "SA08AL",
        "SA09AL",
        "SA10AL",
        "SA11AL",
        "SA01AX",
        "SA02AX",
        "SA03AX",
        "SA04AX",
        "SA05AX",
        "SA06AX",
        "SA07AX",
        "SA08AX",
        "SA09AX",
        "SA10AX",
        "SA11AX",
        "SA01BS",
        "SA02BS",
        "SA03BS",
        "SA04BS",
        "SA05BS",
        "SA06BS",
        "SA07BS",
        "SA08BS",
        "SA09BS",
        "SA10BS",
        "SA11BS",
        "SA01BM",
        "SA02BM",
        "SA03BM",
        "SA04BM",
        "SA05BM",
        "SA06BM",
        "SA07BM",
        "SA08BM",
        "SA09BM",
        "SA10BM",
        "SA11BM",
        "SA01BL",
        "SA02BL",
        "SA03BL",
        "SA04BL",
        "SA05BL",
        "SA06BL",
        "SA07BL",
        "SA08BL",
        "SA09BL",
        "SA10BL",
        "SA11BL",
        "SA01BX",
        "SA02BX",
        "SA03BX",
        "SA04BX",
        "SA05BX",
        "SA06BX",
        "SA07BX",
        "SA08BX",
        "SA09BX",
        "SA10BX",
        "SA11BX",
        "SA01CS",
        "SA02CS",
        "SA03CS",
        "SA04CS",
        "SA05CS",
        "SA06CS",
        "SA07CS",
        "SA08CS",
        "SA09CS",
        "SA10CS",
        "SA11CS",
        "SA01CM",
        "SA02CM",
        "SA03CM",
        "SA04CM",
        "SA05CM",
        "SA06CM",
        "SA07CM",
        "SA08CM",
        "SA09CM",
        "SA10CM",
        "SA11CM",
        "SA01CL",
        "SA02CL",
        "SA03CL",
        "SA04CL",
        "SA05CL",
        "SA06CL",
        "SA07CL",
        "SA08CL",
        "SA09CL",
        "SA10CL",
        "SA11CL",
        "SA01CX",
        "SA02CX",
        "SA03CX",
        "SA04CX",
        "SA05CX",
        "SA06CX",
        "SA07CX",
        "SA08CX",
        "SA09CX",
        "SA10CX",
        "SA11CX",
        "MA01AS",
        "MA02AS",
        "MA03AS",
        "MA04AS",
        "MA05AS",
        "MA06AS",
        "MA07AS",
        "MA08AS",
        "MA09AS",
        "MA10AS",
        "MA11AS",
        "MA01AM",
        "MA02AM",
        "MA03AM",
        "MA04AM",
        "MA05AM",
        "MA06AM",
        "MA07AM",
        "MA08AM",
        "MA09AM",
        "MA10AM",
        "MA11AM",
        "MA01AL",
        "MA02AL",
        "MA03AL",
        "MA04AL",
        "MA05AL",
        "MA06AL",
        "MA07AL",
        "MA08AL",
        "MA09AL",
        "MA10AL",
        "MA11AL",
        "MA01AX",
        "MA02AX",
        "MA03AX",
        "MA04AX",
        "MA05AX",
        "MA06AX",
        "MA07AX",
        "MA08AX",
        "MA09AX",
        "MA10AX",
        "MA11AX",
        "MA01BS",
        "MA02BS",
        "MA03BS",
        "MA04BS",
        "MA05BS",
        "MA06BS",
        "MA07BS",
        "MA08BS",
        "MA09BS",
        "MA10BS",
        "MA11BS",
        "MA01BM",
        "MA02BM",
        "MA03BM",
        "MA04BM",
        "MA05BM",
        "MA06BM",
        "MA07BM",
        "MA08BM",
        "MA09BM",
        "MA10BM",
        "MA11BM",
        "MA01BL",
        "MA02BL",
        "MA03BL",
        "MA04BL",
        "MA05BL",
        "MA06BL",
        "MA07BL",
        "MA08BL",
        "MA09BL",
        "MA10BL",
        "MA11BL",
        "MA01BX",
        "MA02BX",
        "MA03BX",
        "MA04BX",
        "MA05BX",
        "MA06BX",
        "MA07BX",
        "MA08BX",
        "MA09BX",
        "MA10BX",
        "MA11BX",
        "YO01AS",
        "YO02AS",
        "YO03AS",
        "YO04AS",
        "YO05AS",
        "YO06AS",
        "YO07AS",
        "YO08AS",
        "YO09AS",
        "YO10AS",
        "YO11AS",
        "YO01AM",
        "YO02AM",
        "YO03AM",
        "YO04AM",
        "YO05AM",
        "YO06AM",
        "YO07AM",
        "YO08AM",
        "YO09AM",
        "YO10AM",
        "YO11AM",
        "YO01AL",
        "YO02AL",
        "YO03AL",
        "YO04AL",
        "YO05AL",
        "YO06AL",
        "YO07AL",
        "YO08AL",
        "YO09AL",
        "YO10AL",
        "YO11AL",
        "YO01AX",
        "YO02AX",
        "YO03AX",
        "YO04AX",
        "YO05AX",
        "YO06AX",
        "YO07AX",
        "YO08AX",
        "YO09AX",
        "YO10AX",
        "YO11AX",
        "YO01BS",
        "YO02BS",
        "YO03BS",
        "YO04BS",
        "YO05BS",
        "YO06BS",
        "YO07BS",
        "YO08BS",
        "YO09BS",
        "YO10BS",
        "YO11BS",
        "YO01BM",
        "YO02BM",
        "YO03BM",
        "YO04BM",
        "YO05BM",
        "YO06BM",
        "YO07BM",
        "YO08BM",
        "YO09BM",
        "YO10BM",
        "YO11BM",
        "YO01BL",
        "YO02BL",
        "YO03BL",
        "YO04BL",
        "YO05BL",
        "YO06BL",
        "YO07BL",
        "YO08BL",
        "YO09BL",
        "YO10BL",
        "YO11BL",
        "YO01BX",
        "YO02BX",
        "YO03BX",
        "YO04BX",
        "YO05BX",
        "YO06BX",
        "YO07BX",
        "YO08BX",
        "YO09BX",
        "YO10BX",
        "YO11BX",
        "KA01AS",
        "KA02AS",
        "KA03AS",
        "KA04AS",
        "KA05AS",
        "KA06AS",
        "KA07AS",
        "KA08AS",
        "KA09AS",
        "KA10AS",
        "KA11AS",
        "KA01AM",
        "KA02AM",
        "KA03AM",
        "KA04AM",
        "KA05AM",
        "KA06AM",
        "KA07AM",
        "KA08AM",
        "KA09AM",
        "KA10AM",
        "KA11AM",
        "KA01AL",
        "KA02AL",
        "KA03AL",
        "KA04AL",
        "KA05AL",
        "KA06AL",
        "KA07AL",
        "KA08AL",
        "KA09AL",
        "KA10AL",
        "KA11AL",
        "KA01AX",
        "KA02AX",
        "KA03AX",
        "KA04AX",
        "KA05AX",
        "KA06AX",
        "KA07AX",
        "KA08AX",
        "KA09AX",
        "KA10AX",
        "KA11AX",
        "KA01BS",
        "KA02BS",
        "KA03BS",
        "KA04BS",
        "KA05BS",
        "KA06BS",
        "KA07BS",
        "KA08BS",
        "KA09BS",
        "KA10BS",
        "KA11BS",
        "KA01BM",
        "KA02BM",
        "KA03BM",
        "KA04BM",
        "KA05BM",
        "KA06BM",
        "KA07BM",
        "KA08BM",
        "KA09BM",
        "KA10BM",
        "KA11BM",
        "KA01BL",
        "KA02BL",
        "KA03BL",
        "KA04BL",
        "KA05BL",
        "KA06BL",
        "KA07BL",
        "KA08BL",
        "KA09BL",
        "KA10BL",
        "KA11BL",
        "KA01BX",
        "KA02BX",
        "KA03BX",
        "KA04BX",
        "KA05BX",
        "KA06BX",
        "KA07BX",
        "KA08BX",
        "KA09BX",
        "KA10BX",
        "KA11BX",
        "KA01CS",
        "KA02CS",
        "KA03CS",
        "KA04CS",
        "KA05CS",
        "KA06CS",
        "KA07CS",
        "KA08CS",
        "KA09CS",
        "KA10CS",
        "KA11CS",
        "KA01CM",
        "KA02CM",
        "KA03CM",
        "KA04CM",
        "KA05CM",
        "KA06CM",
        "KA07CM",
        "KA08CM",
        "KA09CM",
        "KA10CM",
        "KA11CM",
        "KA01CL",
        "KA02CL",
        "KA03CL",
        "KA04CL",
        "KA05CL",
        "KA06CL",
        "KA07CL",
        "KA08CL",
        "KA09CL",
        "KA10CL",
        "KA11CL",
        "KA01CX",
        "KA02CX",
        "KA03CX",
        "KA04CX",
        "KA05CX",
        "KA06CX",
        "KA07CX",
        "KA08CX",
        "KA09CX",
        "KA10CX",
        "KA11CX",
        "IN01AS",
        "IN02AS",
        "IN03AS",
        "IN04AS",
        "IN05AS",
        "IN06AS",
        "IN07AS",
        "IN08AS",
        "IN09AS",
        "IN10AS",
        "IN11AS",
        "IN01AM",
        "IN02AM",
        "IN03AM",
        "IN04AM",
        "IN05AM",
        "IN06AM",
        "IN07AM",
        "IN08AM",
        "IN09AM",
        "IN10AM",
        "IN11AM",
        "IN01AL",
        "IN02AL",
        "IN03AL",
        "IN04AL",
        "IN05AL",
        "IN06AL",
        "IN07AL",
        "IN08AL",
        "IN09AL",
        "IN10AL",
        "IN11AL",
        "IN01AX",
        "IN02AX",
        "IN03AX",
        "IN04AX",
        "IN05AX",
        "IN06AX",
        "IN07AX",
        "IN08AX",
        "IN09AX",
        "IN10AX",
        "IN11AX",
        "IN01BS",
        "IN02BS",
        "IN03BS",
        "IN04BS",
        "IN05BS",
        "IN06BS",
        "IN07BS",
        "IN08BS",
        "IN09BS",
        "IN10BS",
        "IN11BS",
        "IN01BM",
        "IN02BM",
        "IN03BM",
        "IN04BM",
        "IN05BM",
        "IN06BM",
        "IN07BM",
        "IN08BM",
        "IN09BM",
        "IN10BM",
        "IN11BM",
        "IN01BL",
        "IN02BL",
        "IN03BL",
        "IN04BL",
        "IN05BL",
        "IN06BL",
        "IN07BL",
        "IN08BL",
        "IN09BL",
        "IN10BL",
        "IN11BL",
        "IN01BX",
        "IN02BX",
        "IN03BX",
        "IN04BX",
        "IN05BX",
        "IN06BX",
        "IN07BX",
        "IN08BX",
        "IN09BX",
        "IN10BX",
        "IN11BX",
        "IN01CS",
        "IN02CS",
        "IN03CS",
        "IN04CS",
        "IN05CS",
        "IN06CS",
        "IN07CS",
        "IN08CS",
        "IN09CS",
        "IN10CS",
        "IN11CS",
        "IN01CM",
        "IN02CM",
        "IN03CM",
        "IN04CM",
        "IN05CM",
        "IN06CM",
        "IN07CM",
        "IN08CM",
        "IN09CM",
        "IN10CM",
        "IN11CM",
        "IN01CL",
        "IN02CL",
        "IN03CL",
        "IN04CL",
        "IN05CL",
        "IN06CL",
        "IN07CL",
        "IN08CL",
        "IN09CL",
        "IN10CL",
        "IN11CL",
        "IN01CX",
        "IN02CX",
        "IN03CX",
        "IN04CX",
        "IN05CX",
        "IN06CX",
        "IN07CX",
        "IN08CX",
        "IN09CX",
        "IN10CX",
        "IN11CX",
        "UN01AS",
        "UN02AS",
        "UN03AS",
        "UN04AS",
        "UN05AS",
        "UN06AS",
        "UN07AS",
        "UN08AS",
        "UN09AS",
        "UN10AS",
        "UN11AS",
        "UN01AM",
        "UN02AM",
        "UN03AM",
        "UN04AM",
        "UN05AM",
        "UN06AM",
        "UN07AM",
        "UN08AM",
        "UN09AM",
        "UN10AM",
        "UN11AM",
        "UN01AL",
        "UN02AL",
        "UN03AL",
        "UN04AL",
        "UN05AL",
        "UN06AL",
        "UN07AL",
        "UN08AL",
        "UN09AL",
        "UN10AL",
        "UN11AL",
        "UN12AL",
        "UN13AL",
        "UN14AL",
        "UN15AL",
        "UN16AL",
        "UN01AX",
        "UN02AX",
        "UN03AX",
        "UN04AX",
        "UN05AX",
        "UN06AX",
        "UN07AX",
        "UN08AX",
        "UN09AX",
        "UN10AX",
        "UN11AX",
        "UN01BS",
        "UN02BS",
        "UN03BS",
        "UN04BS",
        "UN05BS",
        "UN06BS",
        "UN07BS",
        "UN08BS",
        "UN09BS",
        "UN10BS",
        "UN11BS",
        "UN01BM",
        "UN02BM",
        "UN03BM",
        "UN04BM",
        "UN05BM",
        "UN06BM",
        "UN07BM",
        "UN08BM",
        "UN09BM",
        "UN10BM",
        "UN11BM",
        "UN01BL",
        "UN02BL",
        "UN03BL",
        "UN04BL",
        "UN05BL",
        "UN06BL",
        "UN07BL",
        "UN08BL",
        "UN09BL",
        "UN10BL",
        "UN11BL",
        "UN01BX",
        "UN02BX",
        "UN03BX",
        "UN04BX",
        "UN05BX",
        "UN06BX",
        "UN07BX",
        "UN08BX",
        "UN09BX",
        "UN10BX",
        "UN11BX",
        "UN01CS",
        "UN02CS",
        "UN03CS",
        "UN04CS",
        "UN05CS",
        "UN06CS",
        "UN07CS",
        "UN08CS",
        "UN09CS",
        "UN10CS",
        "UN11CS",
        "UN01CM",
        "UN02CM",
        "UN03CM",
        "UN04CM",
        "UN05CM",
        "UN06CM",
        "UN07CM",
        "UN08CM",
        "UN09CM",
        "UN10CM",
        "UN11CM",
        "UN01CL",
        "UN02CL",
        "UN03CL",
        "UN04CL",
        "UN05CL",
        "UN06CL",
        "UN07CL",
        "UN08CL",
        "UN09CL",
        "UN10CL",
        "UN11CL",
        "UN01CX",
        "UN02CX",
        "UN03CX",
        "UN04CX",
        "UN05CX",
        "UN06CX",
        "UN07CX",
        "UN08CX",
        "UN09CX",
        "UN10CX",
        "UN11CX",
        "HO01AS",
        "HO02AS",
        "HO03AS",
        "HO04AS",
        "HO05AS",
        "HO06AS",
        "HO07AS",
        "HO08AS",
        "HO09AS",
        "HO01AM",
        "HO02AM",
        "HO03AM",
        "HO04AM",
        "HO05AM",
        "HO06AM",
        "HO07AM",
        "HO08AM",
        "HO09AM",
        "HO01AL",
        "HO02AL",
        "HO03AL",
        "HO04AL",
        "HO05AL",
        "HO06AL",
        "HO07AL",
        "HO08AL",
        "HO09AL",
        "HO01AX",
        "HO02AX",
        "HO03AX",
        "HO04AX",
        "HO05AX",
        "HO06AX",
        "HO07AX",
        "HO08AX",
        "HO09AX",
        "EN01AS",
        "EN02AS",
        "EN03AS",
        "EN04AS",
        "EN05AS",
        "EN06AS",
        "EN07AS",
        "EN08AS",
        "EN09AS",
        "EN01AM",
        "EN02AM",
        "EN03AM",
        "EN04AM",
        "EN05AM",
        "EN06AM",
        "EN07AM",
        "EN08AM",
        "EN09AM",
        "EN01AL",
        "EN02AL",
        "EN03AL",
        "EN04AL",
        "EN05AL",
        "EN06AL",
        "EN07AL",
        "EN08AL",
        "EN09AL",
        "EN01AX",
        "EN02AX",
        "EN03AX",
        "EN04AX",
        "EN05AX",
        "EN06AX",
        "EN07AX",
        "EN08AX",
        "EN09AX",
        "EN01BS",
        "EN02BS",
        "EN03BS",
        "EN04BS",
        "EN05BS",
        "EN06BS",
        "EN07BS",
        "EN08BS",
        "EN09BS",
        "EN01BM",
        "EN02BM",
        "EN03BM",
        "EN04BM",
        "EN05BM",
        "EN06BM",
        "EN07BM",
        "EN08BM",
        "EN09BM",
        "EN01BL",
        "EN02BL",
        "EN03BL",
        "EN04BL",
        "EN05BL",
        "EN06BL",
        "EN07BL",
        "EN08BL",
        "EN09BL",
        "EN01BX",
        "EN02BX",
        "EN03BX",
        "EN04BX",
        "EN05BX",
        "EN06BX",
        "EN07BX",
        "EN08BX",
        "EN09BX",
        "SY01CS",
        "SY02CS",
        "SY03CS",
        "SY04CS",
        "SY05CS",
        "SY06CS",
        "SY07CS",
        "SY08CS",
        "SY09CS",
        "SY01CM",
        "SY02CM",
        "SY03CM",
        "SY04CM",
        "SY05CM",
        "SY06CM",
        "SY07CM",
        "SY08CM",
        "SY09CM",
        "SY01CL",
        "SY02CL",
        "SY03CL",
        "SY04CL",
        "SY05CL",
        "SY06CL",
        "SY07CL",
        "SY08CL",
        "SY09CL",
        "SY01CX",
        "SY02CX",
        "SY03CX",
        "SY04CX",
        "SY05CX",
        "SY06CX",
        "SY07CX",
        "SY08CX",
        "SY09CX",
        "EV_CO04A2",
        "EV_CO05A2",
        "EV_CO06A1",
        "EV_CO06A2",
        "EV_CO06A3"
      ),
    MAKE_COMMENT ('string table 30 - BGM - files 4###, length = 0x4a = 74'),
    MAKE_STRING_TABLE
      (
        "BGM01",
        "BGM01NL",
        "BGM02",
        "BGM02NL",
        "BGM03",
        "BGM03NL",
        "BGM04",
        "BGM04NL",
        "BGM05",
        "BGM05NL",
        "BGM06",
        "BGM06NL",
        "BGM07",
        "BGM07NL",
        "BGM08",
        "BGM08NL",
        "BGM09",
        "BGM09NL",
        "BGM10",
        "BGM10NL",
        "BGM11",
        "BGM11NL",
        "BGM12",
        "BGM12NL",
        "BGM13",
        "BGM13NL",
        "BGM14",
        "BGM14NL",
        "BGM15",
        "BGM15NL",
        "BGM16",
        "BGM16NL",
        "BGM17",
        "BGM17NL",
        "BGM18",
        "BGM18NL",
        "BGM19",
        "BGM19NL",
        "BGM20",
        "BGM20NL",
        "BGM21",
        "BGM21NL",
        "BGM22",
        "BGM22NL",
        "BGM23",
        "BGM23NL",
        "BGM24",
        "BGM24NL",
        "BGM25",
        "BGM25NL",
        "BGM26",
        "BGM26NL",
        "BGM27",
        "BGM27NL",
        "BGM28",
        "BGM28NL",
        "BGM29",
        "BGM29NL",
        "BGM30",
        "BGM30NL",
        "BGM31",
        "BGM31NL",
        "BGM32",
        "BGM32NL",
        "BGM33",
        "BGM33NL",
        "BGM34",
        "BGM34NL",
        "BGM35",
        "BGM35NL",
        "BGM36",
        "BGM36NL",
        "BGM37",
        "BGM37NL"
      ),
    MAKE_COMMENT ('string table 34 - SFX - files 5###, length = 0x1d4 = 468'),
    MAKE_STRING_TABLE
      (
        "SE00_00",
        "SE00_01",
        "SE00_02",
        "SE00_03",
        "SE00_04",
        "SE00_05",
        "SE00_06",
        "SE00_07",
        "SE00_08",
        "SE00_09",
        "SE00_10",
        "SE00_11",
        "SE00_12",
        "SE00_13",
        "SE00_14",
        "SE00_15",
        "SE00_16",
        "SE00_17",
        "SE00_18",
        "SE00_19",
        "SE00_20",
        "SE00_21",
        "SE01_00",
        "SE01_01L",
        "SE01_02",
        "SE01_02L",
        "SE01_03",
        "SE01_04",
        "SE01_05",
        "SE01_06",
        "SE01_07",
        "SE01_08",
        "SE01_09",
        "SE01_09L",
        "SE01_10",
        "SE01_11",
        "SE01_12",
        "SE01_13",
        "SE01_14",
        "SE01_15",
        "SE01_16",
        "SE01_17",
        "SE01_18",
        "SE01_19",
        "SE01_20",
        "SE01_21",
        "SE01_22",
        "SE01_23",
        "SE01_24",
        "SE01_25",
        "SE01_26",
        "SE01_27",
        "SE01_28",
        "SE01_29",
        "SE01_30",
        "SE01_31",
        "SE01_32",
        "SE01_33",
        "SE01_34",
        "SE01_35",
        "SE01_36",
        "SE01_37",
        "SE01_38",
        "SE01_39",
        "SE01_40",
        "SE01_41",
        "SE02_00",
        "SE02_01",
        "SE02_02",
        "SE02_03",
        "SE02_04",
        "SE02_05",
        "SE02_06",
        "SE02_07",
        "SE02_08",
        "SE02_09",
        "SE02_10",
        "SE02_11",
        "SE02_12",
        "SE02_13",
        "SE02_14",
        "SE02_15",
        "SE02_16",
        "SE02_17",
        "SE02_18",
        "SE02_19",
        "SE02_20",
        "SE02_21",
        "SE02_22",
        "SE02_23",
        "SE02_24",
        "SE02_25",
        "SE02_26",
        "SE02_27",
        "SE02_28",
        "SE02_29",
        "SE02_30",
        "SE02_31",
        "SE02_32",
        "SE02_33",
        "SE02_34",
        "SE02_35",
        "SE02_36",
        "SE02_37",
        "SE02_38",
        "SE02_39",
        "SE02_40",
        "SE02_41",
        "SE02_42",
        "SE02_43",
        "SE02_44",
        "SE02_45",
        "SE02_46",
        "SE02_47",
        "SE02_48",
        "SE02_49",
        "SE02_50",
        "SE02_51",
        "SE02_52",
        "SE02_53",
        "SE02_54",
        "SE02_55",
        "SE02_56",
        "SE02_57",
        "SE02_58",
        "SE02_59",
        "SE02_60",
        "SE02_61",
        "SE02_62",
        "SE02_63",
        "SE02_64",
        "SE02_65",
        "SE02_66",
        "SE02_67",
        "SE02_68",
        "SE02_69",
        "SE02_70",
        "SE02_71",
        "SE02_72",
        "SE02_73L",
        "SE02_74",
        "SE02_75",
        "SE02_76",
        "SE02_77",
        "SE02_78",
        "SE02_79",
        "SE02_80",
        "SE02_81",
        "SE02_82",
        "SE02_83",
        "SE02_84",
        "SE02_85",
        "SE02_86",
        "SE02_87",
        "SE02_88",
        "SE02_89",
        "SE02_90",
        "SE02_91",
        "SE02_92",
        "SE02_93",
        "SE02_94",
        "SE02_95",
        "SE02_96",
        "SE02_97",
        "SE02_98",
        "SE02_99",
        "SE02_a0",
        "SE02_a1",
        "SE02_a2",
        "SE03_00",
        "SE03_01",
        "SE03_02",
        "SE03_03",
        "SE03_04",
        "SE03_05",
        "SE03_06",
        "SE03_07",
        "SE03_08",
        "SE03_09",
        "SE03_10",
        "SE03_11",
        "SE03_12",
        "SE03_13",
        "SE03_14",
        "SE03_15",
        "SE03_16",
        "SE03_17",
        "SE03_18",
        "SE03_19",
        "SE03_20",
        "SE03_21",
        "SE03_21L",
        "SE03_22",
        "SE03_23",
        "SE03_24",
        "SE03_25",
        "SE03_26",
        "SE03_27",
        "SE03_28",
        "SE03_29",
        "SE03_30",
        "SE03_31",
        "SE03_32",
        "SE03_33",
        "SE03_34",
        "SE03_35",
        "SE03_36",
        "SE03_37",
        "SE03_38",
        "SE03_39",
        "SE03_40",
        "SE03_41",
        "SE03_42",
        "SE03_43",
        "SE03_44",
        "SE03_45",
        "SE03_46",
        "SE03_47",
        "SE03_48",
        "SE03_49",
        "SE03_50",
        "SE03_51L",
        "SE03_52",
        "SE03_53",
        "SE03_54",
        "SE03_55",
        "SE03_56",
        "SE03_57",
        "SE03_58",
        "SE03_59",
        "SE03_60",
        "SE03_61",
        "SE03_62",
        "SE03_63",
        "SE03_64",
        "SE03_65",
        "SE03_66",
        "SE03_67",
        "SE03_68",
        "SE03_69",
        "SE03_70",
        "SE03_71",
        "SE03_72",
        "SE03_73",
        "SE03_74",
        "SE03_75",
        "SE03_76",
        "SE03_77",
        "SE03_78",
        "SE03_79",
        "SE03_80",
        "SE03_81",
        "SE03_82",
        "SE03_83",
        "SE03_84",
        "SE03_85",
        "SE03_86",
        "SE03_87",
        "SE03_88",
        "SE03_89",
        "SE03_90",
        "SE03_91",
        "SE03_92",
        "SE03_93",
        "SE03_94",
        "SE03_95",
        "SE03_96",
        "SE03_97",
        "SE03_98",
        "SE03_99",
        "SE03_a0",
        "SE03_a1",
        "SE03_a2",
        "SE03_a3",
        "SE03_a4",
        "SE03_a5",
        "SE03_a6",
        "SE03_a7",
        "SE03_a8",
        "SE03_a9",
        "SE03_b0",
        "SE03_b1",
        "SE03_b2",
        "SE03_b3",
        "SE03_b4",
        "SE03_b5",
        "SE03_b6",
        "SE03_b7",
        "SE03_b8",
        "SE03_b9",
        "SE03_c0",
        "SE03_c1",
        "SE03_c2",
        "SE03_c3",
        "SE03_c4",
        "SE03_c5",
        "SE03_c6",
        "SE03_c7",
        "SE04_00L",
        "SE04_01",
        "SE04_02",
        "SE04_03",
        "SE04_04",
        "SE04_05",
        "SE04_05L",
        "SE04_06",
        "SE04_07",
        "SE04_08L",
        "SE04_09",
        "SE04_10",
        "SE04_11",
        "SE04_12",
        "SE04_13",
        "SE05_00",
        "SE05_01L",
        "SE05_02",
        "SE05_03L",
        "SE05_04L",
        "SE05_05",
        "SE05_06",
        "SE05_07",
        "SE05_08",
        "SE05_09",
        "SE05_10",
        "SE05_11",
        "SE05_12",
        "SE05_13",
        "SE05_14",
        "SE05_15",
        "SE05_16",
        "SE05_17",
        "SE05_18",
        "SE05_19",
        "SE05_20",
        "SE05_21",
        "SE05_22L",
        "SE05_23",
        "SE05_24",
        "SE05_25",
        "SE05_26",
        "SE06_00",
        "SE06_01",
        "SE06_02",
        "SE06_03",
        "SE06_04",
        "SE06_05",
        "SE06_06",
        "SE07_00",
        "SE07_00L",
        "SE07_01",
        "SE07_01L",
        "SE07_02",
        "SE07_03",
        "SE07_04",
        "SE07_05",
        "SE07_06",
        "SE07_07",
        "SE07_07L",
        "SE07_08",
        "SE07_09",
        "SE07_10",
        "SE07_11",
        "SE07_12",
        "SE07_13",
        "SE07_14",
        "SE07_15",
        "SE07_16",
        "SE07_17",
        "SE07_18",
        "SE07_19",
        "SE07_20",
        "SE07_21",
        "SE07_22",
        "SE07_23L",
        "SE07_24",
        "SE07_24L",
        "SE07_25",
        "SE07_25L",
        "SE07_26",
        "SE08_00",
        "SE08_01",
        "SE08_02",
        "SE08_03",
        "SE09_00",
        "SE09_00L",
        "SE09_01",
        "SE09_01L",
        "SE09_02",
        "SE09_02L",
        "SE09_03",
        "SE09_03L",
        "SE09_04",
        "SE09_05",
        "SE09_06",
        "SE09_07",
        "SE09_08",
        "SE09_09",
        "SE09_09L",
        "SE09_10",
        "SE09_11",
        "SE09_12",
        "SE09_13",
        "SE09_14",
        "SE09_15",
        "SE10_00",
        "SE10_01",
        "SE10_02",
        "SE10_03",
        "SE10_04",
        "SE10_04L",
        "SE10_05",
        "SE10_06",
        "SE10_07",
        "SE10_08",
        "SE10_09L",
        "SE10_10",
        "SE10_11",
        "SE10_12",
        "SE10_13",
        "SE10_14",
        "SE10_15",
        "SE10_16",
        "ADX00",
        "ADX01",
        "ADX02",
        "ADX03",
        "ADX04",
        "ADX05",
        "ADX06",
        "ADX07",
        "ADX08",
        "ADX09",
        "ADX10",
        "ADX11",
        "ADX12",
        "ADX13",
        "BGM01ADX",
        "BGM02ADX",
        "BGM03ADX",
        "BGM04ADX",
        "BGM05ADX",
        "BGM06ADX",
        "BGM07ADX",
        "BGM08ADX",
        "BGM09ADX",
        "BGM10ADX",
        "BGM11ADX",
        "BGM12ADX",
        "BGM13ADX",
        "BGM14ADX",
        "BGM15ADX",
        "BGM16ADX",
        "BGM17ADX",
        "BGM18ADX",
        "BGM19ADX",
        "BGM20ADX",
        "BGM21ADX",
        "BGM22ADX",
        "BGM23ADX",
        "BGM24ADX",
        "BGM25ADX",
        "BGM27ADX",
        "BGM28ADX",
        "BGM29ADX",
        "BGM30ADX",
        "BGM31ADX",
        "BGM32ADX",
        "BGM33ADX"
      ),
    MAKE_COMMENT ('string table 38 - endings, length = 0x21 = 33'),
    MAKE_ESCAPED_STRING_TABLE
      (
        "Kokoro Chapter Good End",
        "Satoru Murdered in the Bathroom End A",
        "Satoru Stabbed to Death After a Transfer End",
        #"Annihilation of the SPHIA Residents End",
        "Genocide of the SPHIA Residents End",
        #"Annihilation of the Mountain Shelter Refugees End (Mayuzumi 1)",
        "Annihilation End (Mayuzumi 1)",
        "Incident at SPHIA End",
        #"Stabbed to Death by Someone in the Bathroom End A",
        "Stabbed to Death in the Bathroom End A",
        #"Annihilation of the Mountain Shelter Refugees End (Mayuzumi 2)",
        "Annihilation End (Mayuzumi 2)",
        #"Annihilation of the Mountain Shelter Refugees End (Yomogi)",
        "Annihilation End (Yomogi)",
        "Poisoned Food End",
        "Death Before Reaching the Crash Site End",
        #"Annihilation of the Mountain Shelter Refugees End (Mayuzumi 3)",
        "Annihilation End (Mayuzumi 3)",
        #"Died Without Being Able to Return From the Crash Site End",
        "Died Without Returning End",
        "Roaming Around the Crash Site End",
        "Kokoro Crushed by Guilt; Suicide End",
        "Kokoro Falls from the Cornice End",
        "Location X Avalanche Encounter End",
        "Alone in the Shelter Cabin, Disaster End",
        "Satoru Chapter Good End",
        "Satoru Chapter Epilogue",
        "Satoru Murdered in the Bathroom End B",
        "Killed by the Mysterious Shadow End",
        "Utsumi's Plan's Execution End",
        #"Annihilation of the Mountain Shelter Refugees End B (Mayuzumi 1)",
        "Annihilation End B (Mayuzumi 1)",
        "Satoru Freezes End",
        #"Stabbed to Death by Someone in the Bathroom End B",
        "Stabbed to Death in the Bathroom End B",
        #"Blood Vessels Burst Due to MAO Inhibitor's Effect End",
        "Blood Vessels Burst End",
        #"Annihilation of the Mountain Shelter Refugees End B (Mayuzumi 2)",
        "Annihilation End B (Mayuzumi 2)",
        "Genocide of the Mountain Shelter Refugees End",
        #"Utsumi on a Rampage, Satoru Stabbed to Death End",
        "Utsumi on a Rampage, Satoru Stabbed End",
        "YUKIDOH's Plan's Failure End",
        "Peace of Mind, Alone in the Shelter Cabin End",
        #"Annihilation of the Mountain Shelter Refugees End (Kokoro)",
        "Annihilation End (Kokoro)"
      ),
    MAKE_COMMENT ('raw 3c ?? - length 0x44 = 68'),
    MAKE_RAW ("\x20\x80\x21\x80\x22\x80\x23\x80\x24\x80\x25\x80\x26\x80\x27\x80\x28\x80\x29\x80\x2b\x80\x2a\x80\x2c\x80\x2d\x80\x2f\x80\x30\x80\x31\x80\x33\x80\x34\x80\x45\x80\x36\x80\x35\x80\x37\x80\x38\x80\x39\x80\x3a\x80\x44\x80\x3b\x80\x3c\x80\x3d\x80\x3e\x80\x3f\x80\x40\x80\x00\x00"),
    MAKE_COMMENT ('raw 40 ?? - length 0x1e7 = 487'),
    MAKE_RAW ("\x00\x00\x00\x00\x00\x02\x02\x02\x02\x02\x02\x02\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x01\x01\x01\x01\x02\x02\x02\x02\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
    MAKE_COMMENT ('raw 44 ?? - length 0x1d5 = 469'),
    MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x01\x00\x00\x01\x00\x00\x00\x00\x00\x00\x01\x00\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x02\x90"),
    MAKE_COMMENT ('raw 48 ?? - length 0x27c = 636'),
    MAKE_RAW ("\x08\x3b\x00\x00\x0a\x3b\x00\x00\x2e\x3b\x00\x00\x52\x3b\x00\x00\x48\x3c\x00\x00\x9a\x3c\x00\x00\x08\x3d\x00\x00\x2c\x3d\x00\x00\x2e\x3d\x00\x00\x30\x3d\x00\x00\x32\x3d\x00\x00\x34\x3d\x00\x00\x36\x3d\x00\x00\x38\x3d\x00\x00\x3a\x3d\x00\x00\x3c\x3d\x00\x00\x00\x00\x00\x00\xff\xff\x06\x10\xaf\x10\xb4\x10\xbd\x10\x00\x11\x07\x11\x0c\x11\x11\x11\x16\x11\x1b\x11\x20\x11\x26\x11\x27\x11\x2f\x11\x36\x11\x46\x11\x4b\x11\xff\xff\x07\x10\xb0\x10\xb5\x10\xbe\x10\x01\x11\x08\x11\x0d\x11\x12\x11\x17\x11\x1c\x11\x21\x11\x28\x11\x29\x11\x30\x11\x37\x11\x47\x11\x4c\x11\xff\xff\x0c\x10\x0d\x10\x0e\x10\x0f\x10\x10\x10\x11\x10\x12\x10\x13\x10\x14\x10\x15\x10\x1a\x10\x1b\x10\x16\x10\x18\x10\x1c\x10\x1e\x10\x20\x10\x22\x10\x24\x10\x26\x10\x28\x10\x29\x10\x2a\x10\x2b\x10\x2c\x10\x2d\x10\x2e\x10\x2f\x10\x30\x10\x31\x10\x32\x10\x33\x10\x34\x10\x36\x10\x38\x10\x3a\x10\x3c\x10\x3e\x10\x40\x10\x42\x10\x44\x10\x45\x10\x46\x10\x47\x10\x49\x10\x4b\x10\x4c\x10\x4d\x10\x4e\x10\x4f\x10\x50\x10\x51\x10\x52\x10\x53\x10\x54\x10\x55\x10\x56\x10\x57\x10\x59\x10\x5b\x10\x5d\x10\x5f\x10\x61\x10\x63\x10\x65\x10\x67\x10\x68\x10\x69\x10\x6a\x10\x6b\x10\x6c\x10\x6d\x10\x6e\x10\x6f\x10\x70\x10\x71\x10\x72\x10\x73\x10\x75\x10\x77\x10\x79\x10\x7b\x10\x7d\x10\x7f\x10\x81\x10\x83\x10\x84\x10\x85\x10\x86\x10\x88\x10\x8a\x10\x8b\x10\x8c\x10\x8d\x10\x8e\x10\x8f\x10\x90\x10\x91\x10\x92\x10\x93\x10\x94\x10\x95\x10\x96\x10\x98\x10\x9a\x10\x9c\x10\x9e\x10\xa0\x10\xa2\x10\xa4\x10\xa6\x10\xa7\x10\xac\x10\xad\x10\xb8\x10\xbb\x10\xfb\x10\xfe\x10\x3d\x11\x3f\x11\x41\x11\x43\x11\xff\xff\x08\x10\x09\x10\x0a\x10\x0b\x10\xb1\x10\xb2\x10\xb6\x10\xb7\x10\xbf\x10\xc0\x10\x02\x11\x03\x11\x04\x11\x05\x11\x09\x11\x0a\x11\x0e\x11\x0f\x11\x13\x11\x14\x11\x18\x11\x19\x11\x1d\x11\x1e\x11\x22\x11\x23\x11\x2a\x11\x2b\x11\x2c\x11\x2d\x11\x31\x11\x32\x11\x33\x11\x34\x11\x38\x11\x39\x11\x48\x11\x49\x11\x4d\x11\x4e\x11\xff\xff\x17\x10\x19\x10\x1d\x10\x1f\x10\x21\x10\x23\x10\x25\x10\x27\x10\x35\x10\x37\x10\x39\x10\x3b\x10\x3d\x10\x3f\x10\x41\x10\x43\x10\x48\x10\x4a\x10\x58\x10\x5a\x10\x5c\x10\x5e\x10\x60\x10\x62\x10\x64\x10\x66\x10\x74\x10\x76\x10\x78\x10\x7a\x10\x7c\x10\x7e\x10\x80\x10\x82\x10\x87\x10\x89\x10\x97\x10\x99\x10\x9b\x10\x9d\x10\x9f\x10\xa1\x10\xa3\x10\xa5\x10\xa8\x10\xa9\x10\xaa\x10\xab\x10\xb9\x10\xba\x10\x3e\x11\x40\x11\x42\x11\x44\x11\xff\xff\xc8\x10\xca\x10\xcc\x10\xce\x10\xd6\x10\xd8\x10\xe0\x10\xe2\x10\xea\x10\xec\x10\xf5\x10\xf6\x10\xfa\x10\xfc\x10\xfd\x10\x3b\x11\x56\x11\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x90\x90"),
    MAKE_COMMENT ('raw 4c ?? - length 0x40 = 64'),
    MAKE_RAW ("\x80\x80\x80\x80\x5a\x5a\x5a\x80\x80\x76\x76\x80\x4b\x5a\x4b\x80\x36\x36\x36\x80\x20\x30\x20\x80\x2a\x2a\x2a\x80\x80\x80\x80\x40\x00\x00\x00\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80\x80"),
    MAKE_COMMENT ('raw 50 ?? - length 0x30 = 48'),
    MAKE_RAW ("\x00\x30\x01\x30\x01\x30\x59\x30\x59\x30\xdd\x30\xdd\x30\x35\x31\x35\x31\x8d\x31\x8d\x31\x11\x32\x11\x32\x95\x32\x95\x32\x1e\x33\x1e\x33\x42\x33\x42\x33\x8a\x33\x8a\x33\xae\x33\xff\xff\xff\xff"),
    MAKE_COMMENT ('raw 54 ?? - null data ??'),
    MAKE_RAW ("\x90\x90"),
    MAKE_COMMENT ('raw 58 ?? - length = 0x156 = 342'),
    MAKE_RAW ("\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x43\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x53\x00\x54\x00\x55\x00\x56\x00\x57\x00\x58\x00\x59\x00\x5a\x00\x5b\x00\x5c\x00\x5d\x00\x5e\x00\x5f\x00\x60\x00\x61\x00\x62\x00\x64\x00\x65\x00\x66\x00\x67\x00\x68\x00\x69\x00\x6a\x00\x6b\x00\x6c\x00\x6d\x00\x6e\x00\x6f\x00\x63\x00\x70\x00\x71\x00\x72\x00\x73\x00\x74\x00\x75\x00\x76\x00\x77\x00\x78\x00\x79\x00\x7a\x00\x7b\x00\x7c\x00\x7d\x00\x7e\x00\x7f\x00\x80\x00\x81\x00\x82\x00\x83\x00\x84\x00\x85\x00\x86\x00\x87\x00\x88\x00\x89\x00\x8a\x00\x8b\x00\x8c\x00\x8d\x00\x8e\x00\x8f\x00\x90\x00\x91\x00\x92\x00\x93\x00\x94\x00\x95\x00\x96\x00\x97\x00\x98\x00\x99\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"),
    MAKE_TABLE_5C
      (
        MAKE_TABLE_5C_MEMBER
          (
            MAKE_RAW ("\x00\x00\x00\x20\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x01\x20\x01\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x03\x20\x03\x20\x04\x20\x05\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x06\x20\x06\x20\x07\x20\x08\x20\x09\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x0a\x20\x0a\x20\x0b\x20\x0c\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x0d\x20\x0d\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x0e\x20\x0e\x20\x0f\x20\x10\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x11\x20\x11\x20\x12\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x13\x20\x13\x20\x14\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x15\x20\x15\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x16\x20\x16\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x17\x20\x17\x20\x18\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x19\x20\x19\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x1a\x20\x1a\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x1b\x20\x1b\x20\x1c\x20\x1d\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x1e\x20\x1e\x20\x1f\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x20\x20\x20\x20\x21\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x22\x20\x22\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x23\x20\x23\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x24\x20\x24\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            ""
          ),
        MAKE_TABLE_5C_MEMBER
          (
            MAKE_RAW ("\x00\x00\x27\x20\x27\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x26\x20\x26\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x25\x20\x25\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x28\x20\x28\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x29\x20\x29\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x49\x20\x49\x20\x4a\x20\x4b\x20\x4c\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x2a\x20\x2a\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x2b\x20\x2b\x20\x2c\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x2d\x20\x2d\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x2e\x20\x2e\x20\x2f\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x3f\x20\x3f\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x30\x20\x30\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x31\x20\x31\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\xde\x11\x33\x20\x34\x20\x35\x20\x36\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x38\x20\x38\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\xdf\x11\x3b\x20\x3c\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x3d\x20\x3d\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            ""
          ),
        MAKE_TABLE_5C_MEMBER
          (
            MAKE_RAW ("\x00\x00\x02\x20\x02\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\xe0\x11\x41\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x45\x20\x45\x20\x46\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x5b\x20\x5b\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x48\x20\x48\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x5c\x20\x5c\x20\x5d\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x3e\x20\x3e\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x4d\x20\x4d\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x4e\x20\x4e\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x47\x20\x47\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x4f\x20\x4f\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x3a\x20\x3a\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x39\x20\x39\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x50\x20\x50\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x51\x20\x51\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x52\x20\x52\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x5f\x20\x5f\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x53\x20\x53\x20\x54\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x5e\x20\x5e\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x60\x20\x60\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            ""
          ),
        MAKE_TABLE_5C_MEMBER
          (
            MAKE_RAW ("\x00\x00\x55\x20\x55\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x57\x20\x57\x20\x58\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x37\x20\x37\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x40\x20\x40\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x5a\x20\x5a\x20\x59\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x61\x20\x61\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x62\x20\x62\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\xe1\x11\x63\x20\x64\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            ""
          ),
        MAKE_TABLE_5C_MEMBER
          (
            MAKE_RAW ("\x00\x00\xe2\x11\x65\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "Promotional flier",
            "",
            MAKE_RAW ("\x00\x00\xe3\x11\x66\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "Promotional poster",
            "",
            MAKE_RAW ("\x00\x00\xe4\x11\x67\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "Magazine frontispiece",
            "",
            MAKE_RAW ("\x00\x00\xe5\x11\x68\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "Magazine frontispiece",
            "",
            MAKE_RAW ("\x00\x00\xe6\x11\x69\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "Package",
            "",
            MAKE_RAW ("\x01\x00\x6a\x20\x6a\x20\x6b\x20\x6c\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "Fuyukawa\x01Kokoro",
            "",
            MAKE_RAW ("\x01\x00\x6d\x20\x6d\x20\x6e\x20\x6f\x20\x70\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "Yukidoh\x01Satoru",
            "（Body：ENOMOTO\x01NAOYA）",
            MAKE_RAW ("\x01\x00\x71\x20\x71\x20\x72\x20\x73\x20\x74\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "Mayuzumi\x01Lin",
            "",
            MAKE_RAW ("\x01\x00\x75\x20\x75\x20\x76\x20\x77\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "Yomogi\x01Seiji",
            "",
            MAKE_RAW ("\x01\x00\x78\x20\x78\x20\x79\x20\x7a\x20\x7b\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "Utsumi\x01Kali",
            "",
            MAKE_RAW ("\x01\x00\x7c\x20\x7c\x20\x7d\x20\x7e\x20\x7f\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "Inubushi\x01Keiko",
            "",
            MAKE_RAW ("\x01\x00\x88\x20\x88\x20\x89\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "Suzukage\x01Hotori",
            "",
            MAKE_RAW ("\x01\x00\x80\x20\x80\x20\x81\x20\x82\x20\x83\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "Kusuda\x01Yuni",
            "",
            MAKE_RAW ("\x01\x00\x8a\x20\x8a\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "Yomogi\x01Junichi",
            "",
            MAKE_RAW ("\x01\x00\x84\x20\x84\x20\x85\x20\x86\x20\x87\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "Enomoto\x01Naoya",
            "（Body：YUKIDOH\x01SATORU）",
            MAKE_RAW ("\x01\x00\x8b\x20\x8b\x20\x8c\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "Yukidoh\x01Sayaka",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            ""
          ),
        MAKE_TABLE_5C_MEMBER
          (
            MAKE_RAW ("\x00\x00\x9d\x20\x9d\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x8f\x20\x8f\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x90\x20\x90\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x8e\x20\x8e\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x91\x20\x91\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x8d\x20\x8d\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x94\x20\x94\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x95\x20\x95\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x98\x20\x98\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x99\x20\x99\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x97\x20\x97\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x96\x20\x96\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x9a\x20\x9a\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x9b\x20\x9b\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x9c\x20\x9c\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            "",
            MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
            "",
            ""
          )
      ),
    MAKE_JUKEBOX_DATA
      (
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｃｈａｉｎｉｎｇ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x00\x40\x01\x40\x78\x2d\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｃｈａｉｎｉｎｇ\x01−β−"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x3e\x40\x3f\x40\x3c\x2d\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｓｃｈｅｍｅ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x02\x40\x03\x40\xbc\x25\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｓｃｈｅｍｅ\x01−β−"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x40\x40\x41\x40\xf4\x29\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ａｎｉｍａ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x04\x40\x05\x40\x50\x28\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ａｎｉｍｕｓ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x06\x40\x07\x40\x0c\x30\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｐｅｒｓｏｎａ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x08\x40\x09\x40\xd0\x20\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｏｌｄ\x01ｗｉｓｅ\x01ｍａｎ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x0a\x40\x0b\x40\xfc\x21\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｇｒｅａｔ\x01ｍｏｔｈｅｒ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x0c\x40\x0d\x40\x60\x27\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｓｈａｄｏｗ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x0e\x40\x0f\x40\x04\x29\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｐｕｅｒ\x01ａｅｔｅｒｎｕｓ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x10\x40\x11\x40\x04\x29\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｔｒｉｃｋｓｔｅｒ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x12\x40\x13\x40\x14\x28\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｓｅｌｆ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x14\x40\x15\x40\x10\x2c\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｃｏｍｍｕｎｉｃａｔｉｏｎ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x16\x40\x17\x40\xd8\x27\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｈｅｕｒｉｓｔｉｃ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x34\x40\x35\x40\x48\x21\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ａｎｘｉｅｔｙ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x18\x40\x19\x40\xe8\x26\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｃｕｅ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x1a\x40\x1b\x40\xf8\x25\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｐａｒａｎｏｉａ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x1c\x40\x1d\x40\xe8\x26\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｆｅａｒ\x01ａｎｄ\x01Ｉｎｓａｎｉｔｙ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x1e\x40\x1f\x40\xa8\x2a\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｔｈａｎａｔｏｓ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x20\x40\x21\x40\xa4\x1f\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｄｅｌｕｓｉｖｅ\x01ｃｏｎｓｃｉｏｕｓｎｅｓｓ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x22\x40\x23\x40\x38\x22\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｄｅｌｕｓｉｖｅ\x01ｃｏｎｓｃｉｏｕｓｎｅｓｓ\x01ａｍｂ．"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x3a\x40\x3b\x40\x74\x22\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｍａｎｔｒａ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x24\x40\x25\x40\x10\x1d\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｍｕｌｔｉｐｌｅ\x01ｍａｚｅ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x26\x40\x27\x40\x40\x29\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｄｒｅａｍｙ\x01ｌｅｎｓ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x28\x40\x29\x40\xd8\x27\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｄｒｅａｍｙ\x01ｌｅｎｓ\x01−Ｐｉａｎｏ−"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x38\x40\x39\x40\x30\x1b\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｄａｒｋ\x01Ｇｅｓｔａｌｔ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x2a\x40\x2b\x40\xec\x22\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｎｕｃｌｅｕｓ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x36\x40\x37\x40\xd4\x2b\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｗｉｌｌ\x01−Ｔｈｅｍｅ−"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x2c\x40\x2d\x40\xa8\x2a\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｃａｔｈａｒｓｉｓ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x2e\x40\x2f\x40\x44\x25\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ａｌｌ\x01ｏｒ\x01Ｎｏｎｅ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x30\x40\x31\x40\xf0\x1e\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ａｌｌ\x01ｏｒ\x01Ｎｏｎｅ\x01−Ｐｉａｎｏ−"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x3c\x40\x3d\x40\x74\x22\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("δ\x01Ｗａｖｅ"),
            MAKE_ESCAPED("Ｍｕｓｉｃ，Ａｒｒａｎｇｅ"),
            MAKE_ESCAPED("Ｔａｋｅｓｈｉ\x01Ａｂｏ"),
            MAKE_RAW ("\x32\x40\xa8\x51\xc8\x46\x00\x00\xff\xff\xff\xff")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("ｌｉｔｔｌｅ\x01ｐｒｏｐｈｅｔ"),
            MAKE_ESCAPED("Lyrics/Composition: Shikura Chiyomaru"),
            MAKE_ESCAPED("Arrangements: Isoe Toshimichi  Vocals: KAORI"),
            MAKE_RAW ("\x46\x40\xa6\x51\xc4\x1d\x00\x00\x01\x00\x00\x00")
          ),
        MAKE_JUKEBOX_ITEM
          (
            MAKE_ESCAPED("Ｄａｒｋｎｅｓｓ\x01ｏｆ\x01ｃｈａｏｓ"),
            MAKE_ESCAPED("Lyrics/Composition: Shikura Chiyomaru"),
            MAKE_ESCAPED("Arrangements: Isoe Toshimichi    Vocals: Minagawa Junko"),
            MAKE_RAW ("\x48\x40\xa7\x51\xb8\x47\x00\x00\x02\x00\x00\x00")
          )
      ),
    MAKE_TABLE_64
      (
        MAKE_TABLE_64_MEMBER
          (
            MAKE_ESCAPED(""),
            35999,
            MAKE_ESCAPED(""),
            35999
          ),
        MAKE_TABLE_64_MEMBER
          (
                        #0, '真っ白の太陽は　今なにを見つめるの？'
            MAKE_ESCAPED("masshiro no taiyou wa / The pure white sun,"),
            0,
            MAKE_ESCAPED("ima nani wo mitsumeru no? / What is it looking down on now?"),
            495,
            #this line has too much screen time EVEN when divided into two, therefore it had to be like this.

            #780, ''
            MAKE_ESCAPED(""),
            890,
            MAKE_ESCAPED(""),
            890,

            #1170, '作詞／作曲：志倉千代丸　編曲：磯江俊道'
            MAKE_ESCAPED("Lyrics/Composition: Shikura Chiyomaru"),
            1170,
            #1170, '歌：ＫＡＯＲＩ'
            MAKE_ESCAPED("Arrangements: Isoe Toshimichi  Vocals: KAORI"),
            1170,

            #1410, ''
            #1410, ''
            MAKE_ESCAPED(""),
            1415,
            MAKE_ESCAPED(""),
            1415,

            #1510, '大きすぎるこの宇宙で　例えば何かが叫んで'
            MAKE_ESCAPED("ookisugiru kono uchuu de"),
            1550,
            MAKE_ESCAPED("For example, if something were to scream out"),
            1550,

            MAKE_ESCAPED("tatoeba nanika ga sakende"),
            1784,
            MAKE_ESCAPED("Inside this too-big universe,"),
            1784,

            #1978, 'でもそれはきっと小さくて　誰にも気づかれない'
            MAKE_ESCAPED("demo sore wa kitto chiisakute"),
            2018,
            MAKE_ESCAPED("It would still be too small"),
            2018,
            MAKE_ESCAPED("dare ni mo kizukarenai"),
            2245,
            MAKE_ESCAPED("For anyone to notice it."),
            2245,

            #2433, '無限に続いてく景色も　優しい嘘なら'
            MAKE_ESCAPED("mugen ni tsuzuiteku"),
            2473,
            MAKE_ESCAPED("If this scenery that stretches on forever"),
            2473,

            MAKE_ESCAPED("keshiki mo yasashii uso nara"),
            2700,
            MAKE_ESCAPED("Is a gentle lie too,"),
            2700,

            #2888, '命の意味さえどこかに　紛れてしまうよ'
            MAKE_ESCAPED("inochi no imi sae"),
            2928,
            MAKE_ESCAPED("Even the meaning of life"),
            2928,

            MAKE_ESCAPED("dokoka ni magireteshimau yo"),
            3168,
            MAKE_ESCAPED("Gets lost somewhere along the way."),
            3168,

            MAKE_ESCAPED(""),
            3413,
            MAKE_ESCAPED(""),
            3413,

            #3444, 'Ｔｈｅ\x01ｔｉｍｅ\x01ｗａｓ\x01ｐｒｏｐｈｅｓｉｅｄ'
            MAKE_ESCAPED("The time was prophesied"),
            3486,

            #3664, 'ｔｈａｔ\x01ｗｉｌｌ\x01ａｐｐｒｏａｃｈ\x01ｓｕｒｅｌｙ．'
            MAKE_ESCAPED("that will approach surely."),
            3717,

            #3888, 'Ｔｈｅ\x01ｓｏｕｌ\x01ｔｈａｔ\x01ｗａｓ\x01ｌｅｆｔ\x01ｉｎ\x01ｔｈｅ\x01ｗｏｒｌｄ'
            MAKE_ESCAPED(""),
            3940,
            MAKE_ESCAPED(""),
            3940,
            MAKE_ESCAPED("The soul that was left in the world"),
            3941,

            #4119, 'ｗｈｅｒｅ\x01ｉｔ\x01ｗａｓ\x01ｔｏｏ\x01ｃｏｌｄ．'
            MAKE_ESCAPED("where it was too cold."),
            4179,

            #4356, '真っ白の太陽は　今なにを見つめるの？'
            MAKE_ESCAPED(""),
            4408,
            MAKE_ESCAPED(""),
            4408,
            MAKE_ESCAPED("masshiro no taiyou wa / The pure white sun,"),
            4409,
            MAKE_ESCAPED("ima nani wo mitsumeru no? / What is it looking down on now?"),
            4873,
            #see the note at the top

            #5263, 'Ｉ\x01ｗａｎｔ\x01ｔｏ\x01ｓｌｅｅｐ．\x01Ｉ\x01ｗａｎｔ\x01ｔｏ\x01ｓｌｅｅｐ\x01ｄｅｅｐｌｙ．'
            MAKE_ESCAPED(""),
            5314,
            MAKE_ESCAPED(""),
            5314,
            MAKE_ESCAPED("I want to sleep. I want to sleep deeply."),
            5315,

            #5718, 'Ｉ\x01ｗａｎｔ\x01ｔｏ\x01ｓｌｅｅｐ．\x01Ｉ\x01ｗａｎｔ\x01ｔｏ\x01ｓｌｅｅｐ\x01ｄｅｅｐｌｙ．'
            MAKE_ESCAPED("I want to sleep. I want to sleep deeply."),
            5775,

            #6600, ''
            MAKE_ESCAPED(""),
            6600,
            #7800, ''
            MAKE_ESCAPED(""),
            7800
          ),
        MAKE_TABLE_64_MEMBER
          (
            MAKE_ESCAPED("Lyrics/Composition: Shikura Chiyomaru"),
            0,
            MAKE_ESCAPED("Arrangements: Isoe Toshimichi    Vocals: Minagawa Junko"),
            0,

            #720, ''
            #720, ''
            MAKE_ESCAPED(""),
            240,
            MAKE_ESCAPED(""),
            240,

            #1066, '偽りの中で　何かがホントで'
            MAKE_ESCAPED("itsuwari no naka de nanika ga honto de"),
            1113,
            MAKE_ESCAPED("There's truth to be found in a lie."),
            1113,

            #1315, '慣れてそのうち染まったら'
            MAKE_ESCAPED("narete sono uchi somattara"),
            1350,
            MAKE_ESCAPED("The moment you grow used to it, it flows into you."),
            1350,

            #1563, '少しは楽になれると信じて　今は叫ばずに過ごそう'
            MAKE_ESCAPED(""),
            1595,
            MAKE_ESCAPED(""),
            1595,
            MAKE_ESCAPED("sukoshi wa raku ni nareru to shinjite"),
            1603,
            MAKE_ESCAPED("Believing it'll be a little better soon"),
            1603,

            MAKE_ESCAPED("ima wa sakebazu ni sugosou"),
            1822,
            MAKE_ESCAPED("For now, I can hold back my screams."),
            1822,

            #2068, '生まれついたエナジー　頼りない君のささやき'
            MAKE_ESCAPED(""),
            2067,
            MAKE_ESCAPED(""),
            2067,
            MAKE_ESCAPED("umaretsuita energy"),
            2084,
            MAKE_ESCAPED("My innate energy,"),
            2084,

            MAKE_ESCAPED("tayorinai kimi no sasayaki"),
            2300,
            MAKE_ESCAPED("Your unreliable whisper."),
            2300,

            #2553, '無機質なるセオリー　ぼんやりと宙に舞うけど'
            MAKE_ESCAPED(""),
            2545,
            MAKE_ESCAPED(""),
            2545,
            MAKE_ESCAPED("mukishitsu naru theory"),
            2569,
            MAKE_ESCAPED("Inorganic theories"),
            2569,

            MAKE_ESCAPED("bonyari to chuu ni mau kedo"),
            2768,
            MAKE_ESCAPED("Mindlessly waver in the air, but..."),
            2768,

            #3003, '深い洞窟目指して　賢者よ導きたまえ'
            MAKE_ESCAPED(""),
            3013,
            MAKE_ESCAPED(""),
            3013,
            MAKE_ESCAPED("fukai doukutsu mezashite kenja yo"),
            3041,
            MAKE_ESCAPED("Guide me, O wise man,"),
            3041,

            MAKE_ESCAPED(""),
            3286,
            MAKE_ESCAPED(""),
            3286,
            MAKE_ESCAPED("michibikitamae"),
            3295,
            MAKE_ESCAPED("Into the deepest cave."),
            3295,

            #3507, '黒い夜には　白い星があり'
            MAKE_ESCAPED(""),
            3540,
            MAKE_ESCAPED(""),
            3540,
            MAKE_ESCAPED("kuroi yoru ni wa"),
            3553,
            MAKE_ESCAPED("In the pitch-black sky,"),
            3553,

            MAKE_ESCAPED(""),
            3798,
            MAKE_ESCAPED(""),
            3798,
            MAKE_ESCAPED("shiroi hoshi ga ari"),
            3868,
            MAKE_ESCAPED("There are white stars."),
            3868,

            #3985, 'キミの光もその一つになる'
            MAKE_ESCAPED("kimi no hikari mo"),
            4034,
            MAKE_ESCAPED("Your light too"),
            4034,

            MAKE_ESCAPED(""),
            4279,
            MAKE_ESCAPED(""),
            4279,
            MAKE_ESCAPED("sono hitotsu ni naru"),
            4313,
            MAKE_ESCAPED("Will become one of them."),
            4313,

            #4475, '仰ぎ見る空　笑ってるみたい'
            MAKE_ESCAPED("aogimiru sora"),
            4513,
            MAKE_ESCAPED("The sky is looking upward"),
            4513,

            MAKE_ESCAPED(""),
            4758,
            MAKE_ESCAPED(""),
            4758,
            MAKE_ESCAPED("waratteru mitai"),
            4831,
            MAKE_ESCAPED("And laughing, it seems."),
            4831,

            #4959, 'それなら\x01Ｉ\x01ｗｒａｐ\x01ｉｔ\x01ｋｉｎｄｌｙ\x01このままでいい'
            MAKE_ESCAPED("sore nara I wrap it kindly"),
            4999,
            MAKE_ESCAPED("So I wrap it up kindly,"),
            4999,

            MAKE_ESCAPED(""),
            5244,
            MAKE_ESCAPED(""),
            5244,
            MAKE_ESCAPED("kono mama de ii"),
            5247,
            MAKE_ESCAPED("And it's fine as it is."),
            5247,

            #5520, ''
            #5760, ''
            MAKE_ESCAPED(""),
            5492,
            MAKE_ESCAPED(""),
            5492,

            #6475, '千年一度の　奇跡を起こしてみてよ'
            MAKE_ESCAPED("sennen ichido no kiseki wo okoshite"),
            6503,
            MAKE_ESCAPED("Go on and try to bring about your once-in-a-lifetime miracle,"),
            6503,

            MAKE_ESCAPED("mite yo sore nara shinjiru kara"),
            6742,
            MAKE_ESCAPED("So that I can believe in you."),
            6742,

            #6964, '約束とか　夢の続きとか　ちょっと今時ないよね'
            MAKE_ESCAPED(""),
            6987,
            MAKE_ESCAPED(""),
            6987,
            MAKE_ESCAPED("yakusoku to ka yume no tsuzuki to ka"),
            7006,
            MAKE_ESCAPED("Promises and sequential dreams,"),
            7006,

            MAKE_ESCAPED(""),
            7251,
            MAKE_ESCAPED(""),
            7251,
            MAKE_ESCAPED("chotto imadoki nai yo ne"),
            7270,
            MAKE_ESCAPED("I'm not getting many of those these days."),
            7270,

            #7474, '生まれつきのベイビー　言い訳はいつもそれだけ'
            MAKE_ESCAPED("umaretsuki no baby"),
            7484,
            MAKE_ESCAPED("Natural-born baby,"),
            7484,

            MAKE_ESCAPED("iiwake wa itsumo sore dake"),
            7703,
            MAKE_ESCAPED("With the same excuse as always."),
            7703,

            #7950, 'どことなくクレイジー　何気ない作り笑い'
            MAKE_ESCAPED(""),
            7948,
            MAKE_ESCAPED(""),
            7948,
            MAKE_ESCAPED("dokotonaku crazy"),
            7960,
            MAKE_ESCAPED("There's something crazy"),
            7960,

            MAKE_ESCAPED("nanigenai tsukuriwarai"),
            8187,
            MAKE_ESCAPED("about that nonchalant forced smile."),
            8187,

            #8404, 'なんだ知らずに大人になったね　嘘もつけるよ'
            MAKE_ESCAPED(""),
            8432,
            MAKE_ESCAPED(""),
            8432,
            MAKE_ESCAPED("nanda shirazu ni otona ni natta ne"),
            8436,
            MAKE_ESCAPED("Before I knew it, I'd become an adult;"),
            8436,

            MAKE_ESCAPED(""),
            8681,
            MAKE_ESCAPED(""),
            8681,
            MAKE_ESCAPED("uso mo tsukeru yo"),
            8691,
            MAKE_ESCAPED("See, I can lie now too."),
            8691,

            #8916, '朝日が昇り　そしてまた落ちる'
            MAKE_ESCAPED(""),
            8936,
            MAKE_ESCAPED(""),
            8936,
            MAKE_ESCAPED("asahi ga nobori"),
            8952,
            MAKE_ESCAPED("The morning sun rises"),
            8952,

            MAKE_ESCAPED(""),
            9197,
            MAKE_ESCAPED(""),
            9197,
            MAKE_ESCAPED("soshite mata ochiru"),
            9263,
            MAKE_ESCAPED("And then sets again."),
            9263,

            #9387, 'キミの影さえ形を変えて'
            MAKE_ESCAPED("kimi no kage sae"),
            9429,
            MAKE_ESCAPED("Even your shadow"),
            9429,

            MAKE_ESCAPED(""),
            9674,
            MAKE_ESCAPED(""),
            9674,
            MAKE_ESCAPED("katachi wo kaete"),
            9714,
            MAKE_ESCAPED("Changes shape."),
            9714,

            #9872, '悪意の夢は　終わって始まる'
            MAKE_ESCAPED("akui no yume wa"),
            9904,
            MAKE_ESCAPED("And the wicked dream"),
            9904,

            MAKE_ESCAPED(""),
            10149,
            MAKE_ESCAPED(""),
            10149,
            MAKE_ESCAPED("owatte hajimaru"),
            10226,
            MAKE_ESCAPED("Begins from its ending."),
            10226,

            #10359, 'それなら\x01Ｉ\x01ｗｒａｐ\x01ｉｔ\x01ｋｉｎｄｌｙ\x01そのままでいい'
            MAKE_ESCAPED("sore nara I wrap it kindly"),
            10412,
            MAKE_ESCAPED("So I wrap it up kindly,"),
            10412,

            MAKE_ESCAPED("kono mama de ii"),
            10646,
            MAKE_ESCAPED("And it's fine as it is."),
            10646,

            #10920, ''
            #11160, ''
            MAKE_ESCAPED(""),
            10891,
            MAKE_ESCAPED(""),
            10891,

            #12520, 'どんな命も　意味があるように'
            MAKE_ESCAPED("donna inochi mo"),
            12547,
            MAKE_ESCAPED("We're all enveloped in light"),
            12547,

            MAKE_ESCAPED(""),
            12792,
            MAKE_ESCAPED(""),
            12792,
            MAKE_ESCAPED("imi ga aru you ni"),
            12867,
            MAKE_ESCAPED("At the moment of our birth,"),
            12867,

            #12988, '生まれゆく瞬間　光につつまれ'
            MAKE_ESCAPED("umareyuku toki"),
            13026,
            MAKE_ESCAPED("So that our lives"),
            13026,

            MAKE_ESCAPED(""),
            13271,
            MAKE_ESCAPED(""),
            13271,
            MAKE_ESCAPED("hikari ni tsutsumare"),
            13313,
            MAKE_ESCAPED("Can have meaning."),
            13313,

            #13472, 'そこから先が　どんな景色でも'
            MAKE_ESCAPED("soko kara saki ga"),
            13509,
            MAKE_ESCAPED("From that point on,"),
            13509,

            MAKE_ESCAPED(""),
            13754,
            MAKE_ESCAPED(""),
            13754,
            MAKE_ESCAPED("donna keshiki demo"),
            13825,
            MAKE_ESCAPED("No matter what awaits me,"),
            13825,

            #13963, 'いつかは\x01Ｉ\x01ｗｒａｐ\x01ｉｔ\x01ｋｉｎｄｌｙ\x01その場所に還る'
            MAKE_ESCAPED("itsuka wa I wrap it kindly"),
            13999,
            MAKE_ESCAPED("One day, I'll wrap it up kindly"),
            13999,

            MAKE_ESCAPED("sono basho ni kaeru"),
            14241,
            MAKE_ESCAPED("And return to that place."),
            14241,

            #14431, '黒い夜には　白い星があり'
            MAKE_ESCAPED("kuroi yoru ni wa"),
            14463,
            MAKE_ESCAPED("In the pitch-black sky,"),
            14463,

            MAKE_ESCAPED(""),
            14708,
            MAKE_ESCAPED(""),
            14708,
            MAKE_ESCAPED("shiroi hoshi ga ari"),
            14782,
            MAKE_ESCAPED("There are white stars."),
            14782,

            #14909, 'キミの光もその一つになる'
            MAKE_ESCAPED("kimi no hikari mo"),
            14947,
            MAKE_ESCAPED("Your light too"),
            14947,

            MAKE_ESCAPED(""),
            15192,
            MAKE_ESCAPED(""),
            15192,
            MAKE_ESCAPED("sono hitotsu ni naru"),
            15231,
            MAKE_ESCAPED("Will become one of them."),
            15231,

            #15393, '仰ぎ見る空　笑ってるみたい'
            MAKE_ESCAPED("aogimiru sora"),
            15431,
            MAKE_ESCAPED("The sky is looking upward"),
            15431,

            MAKE_ESCAPED(""),
            15676,
            MAKE_ESCAPED(""),
            15676,
            MAKE_ESCAPED("waratteru mitai"),
            15742,
            MAKE_ESCAPED("And laughing, it seems."),
            15742,

            #15885, 'それなら\x01Ｉ\x01ｗｒａｐ\x01ｉｔ\x01ｋｉｎｄｌｙ\x01このままでいい'
            MAKE_ESCAPED("sore nara I wrap it kindly"),
            15924,
            MAKE_ESCAPED("So I wrap it up kindly,"),
            15924,

            MAKE_ESCAPED("kono mama de ii"),
            16160,
            MAKE_ESCAPED("And it's fine as it is."),
            16160,

            #16200, ''
            #16200, ''
            MAKE_ESCAPED(""),
            16405,
            MAKE_ESCAPED(""),
            16405
          ),
        MAKE_TABLE_64_MEMBER
          (
            #120, 'たいちょー！　黄泉木たいちょー！'
            MAKE_ESCAPED("Captain! Captain Yomogi!"),
            120,
            #240, 'どうしたんだー！？　ゆに隊員！'
            MAKE_ESCAPED("What's wrong, Private Yuni?!"),
            240,

            #360, 'すさまじい財宝を発見したであります！'
            MAKE_ESCAPED("We have recovered an awesome treasure!"),
            360,
            #480, 'なにー！？　財宝だとー！？'
            MAKE_ESCAPED("Whaaat?! Treasure?!"),
            480,

            #600, 'はい！　これであります！'
            MAKE_ESCAPED("Yes sir! It's this, sir!"),
            600,
            #720, 'ほほぅ、これは『リメンバー１１』とかいう'
            MAKE_ESCAPED("Oho, if it isn't the game"),
            720,

            #840, 'ゲームソフトではないか……'
            MAKE_ESCAPED("\"Remember11\"!"),
            840,
            #960, '黄泉木たいちょー、さっそく再生してみましょー'
            MAKE_ESCAPED("Captain Yomogi, let's try and play it at once!"),
            960,

            #1080, '待て、ゆに隊員。'
            MAKE_ESCAPED("Wait, Private Yuni..."),
            1080,
            #1200, 'このディスクには'
            MAKE_ESCAPED("There may be"),
            1200,

            #1320, '罠が仕掛けられているのかも知れん'
            MAKE_ESCAPED("traps within this game disc!"),
            1320,
            #1440, '罠……ですか？'
            MAKE_ESCAPED("Traps... sir?"),
            1440,

            #1560, 'ああ、そうだ。あるいは、ゲーム専用のものだから、'
            MAKE_ESCAPED("Yes, that's right. Or, since this is a piece of game software,"),
            1560,
            #1680, 'ＣＤプレイヤーでは'
            MAKE_ESCAPED("I fear that the CD player"),
            1680,

            #1800, '再生してはならないという恐れもある'
            MAKE_ESCAPED("won't be able to play it!"),
            1800,
            #1920, 'しかしたいちょー！'
            MAKE_ESCAPED("But, Captain!"),
            1920,

            #2040, '自分は聴きたいであります！'
            MAKE_ESCAPED("I wish to try!"),
            2040,
            #2160, 'このディスクに何が録音されているのか、'
            MAKE_ESCAPED("I must see for myself"),
            2160,

            #2280, '確かめずにはいられません！'
            MAKE_ESCAPED("if there's anything recorded on this disc!"),
            2280,
            #2400, 'うーむ……'
            MAKE_ESCAPED("Hmmmmmmmmh..."),
            2400,

            #2520, 'たとえ罠だとしても、自分が犠牲になります！'
            MAKE_ESCAPED("And even if there are traps, I'll gladly sacrifice myself!"),
            2520,
            #2640, 'ですから……'
            MAKE_ESCAPED("So..."),
            2640,

            #2760, '待て！　ゆに隊員！　早まるな！'
            MAKE_ESCAPED("Wait, Private Yuni! Don't be rash!"),
            2760,
            #2880, 'パカッ、カシャッ、シャコンッ……ぽちっとな……'
            MAKE_ESCAPED("Bakaaan, cashaaan, shakonnn... it went \"click,\" yo..."),
            2880,

            #3000, 'たいちょーー！　黄泉木たいちょーー！'
            MAKE_ESCAPED("Caaaptain! Captain Yomogiiii!"),
            3000,
            #3120, 'どうしたんだー！？　ゆに隊員！'
            MAKE_ESCAPED("What's wrong, Private Yuni?!"),
            3120,

            #3240, 'すーさーまーじぃーーー財宝を、発見したであります！'
            MAKE_ESCAPED("We have recovered an aaaaaawesome treasure!"),
            3240,
            #3360, 'なにー！？　おパンツだとー！？'
            MAKE_ESCAPED("What?! Panties, you say?!"),
            3360,

            #3480, 'ノンノン'
            MAKE_ESCAPED("Non non."),
            3480,
            #3600, '隊長のお好きな、おパンツではありません'
            MAKE_ESCAPED("Not panties, which you love so dearly, Captain."),
            3600,

            #3720, 'これであります！'
            MAKE_ESCAPED("It's this!"),
            3720,
            #3840, 'ほほぅ、これは『リメンバー１１』とかいう'
            MAKE_ESCAPED("Oho, isn't this the soccer game"),
            3840,

            #3960, 'サッカーゲームではないか……'
            MAKE_ESCAPED("\"Remember11\"?"),
            3960,
            #4080, '国立を目指して戦った、あの熱き１１人は今……'
            MAKE_ESCAPED("\"Those fervent eleven, who never wavered in their struggle towards the Nationals, must now face...\""),
            4080,

            #4200, 'とかいうやつだったよな？'
            MAKE_ESCAPED("...or however it went, right?"),
            4200,
            #4320, '全然違いますっ！'
            MAKE_ESCAPED("Completely wrong!"),
            4320,

            #4440, 'まあいいや、とにかくたいちょー、'
            MAKE_ESCAPED("Oh well. Anyway, Captain,"),
            4440,
            #4560, 'さっそく再生してみましょー'
            MAKE_ESCAPED("let's try playing it at once――"),
            4560,

            #4680, '待て、ゆに隊員。'
            MAKE_ESCAPED("Wait, Private Yuni!"),
            4680,
            #4800, 'このディスクには'
            MAKE_ESCAPED("There may be"),
            4800,

            #4920, '縄が仕掛けられているのかも知れん'
            MAKE_ESCAPED("ropes within this game disc!"),
            4920,
            #5040, '縄……ですか？'
            MAKE_ESCAPED("...Ropes... sir?"),
            5040,

            #5160, 'ああ、そうだ'
            MAKE_ESCAPED("Yeah, that's right."),
            5160,
            #5280, 'いろんな縛り方があるぞ？'
            MAKE_ESCAPED("There's all kinds of ways to tie something up with ropes, you know?"),
            5280,

            #5400, '例えば、亀の甲羅のような――'
            MAKE_ESCAPED("For example, like the pattern on the shell of a tortoise――"),
            5400,
            #5520, 'あほか、このオッサン……'
            MAKE_ESCAPED("Have you finally gone senile, you old fart?"),
            5520,

            #5640, 'えーっと、隊長のことはほっといてと……'
            MAKE_ESCAPED("Ummmm, well then, never mind the captain, let's..."),
            5640,
            #5760, '待て！　ゆに隊員！　早まるな！'
            MAKE_ESCAPED("Wait! Don't be hasty, Private Yuni!"),
            5760,

            #5880, 'パカッ、カシャッ、シャコンッ……ぽちっとな……'
            MAKE_ESCAPED("Bakaaan! Cashaaan! Shakooonnn! ...it went \"click,\" yo..."),
            5880,
            #6000, 'たいっちょーーー！　黄泉木たいっちょーーー！'
            MAKE_ESCAPED("Captaaaaaain! Captain Yomoooooogi!"),
            6000,

            #6120, 'どないしたんやー！？　ゆに隊員！'
            MAKE_ESCAPED("What on earth's the matter, Private Yuni?!"),
            6120,
            #6240, 'すーーーーさーーーーまーーーーじぃーーーーーーー'
            MAKE_ESCAPED("We have recoveeeeeeeeered"),
            6240,

            #6360, '財宝を、発見したであります！'
            MAKE_ESCAPED("an aaaaaaaaaaaaaaaaaweeeeeeeeesooooooooommmme treasure!"),
            6360,
            #6480, 'なにー！？　オポッサムだとー！？'
            MAKE_ESCAPED("What?! An opossum, you say?!"),
            6480,

            #6600, 'ノンノン'
            MAKE_ESCAPED("Non non,"),
            6600,
            #6720, 'いま隊長の肩に乗っている、'
            MAKE_ESCAPED("Not the opossum"),
            6720,

            #6840, 'オポッサムではありません'
            MAKE_ESCAPED("that's sitting on your shoulder right now, Captain."),
            6840,
            #6960, 'これであります！'
            MAKE_ESCAPED("It's this!"),
            6960,

            #7080, 'ほほぅ、これは『リメンバー１１』とかいう――'
            MAKE_ESCAPED("Ohooooh, if it isn't \"Remember11\"――"),
            7080,
            #7200, 'はい、ゲームソフトであります。'
            MAKE_ESCAPED("Yes, the game."),
            7200,

            #7320, 'さっそく再生してみましょー'
            MAKE_ESCAPED("Let's play it at once!"),
            7320,
            #7440, '待て、ゆにたん'
            MAKE_ESCAPED("Wait, Yuni-tan!"),
            7440,

            #7560, 'このディスクには穴があいているかも知れん'
            MAKE_ESCAPED("There may be holes within this game disc!"),
            7560,
            #7680, '穴……ですか？　確かに、あいてますけど'
            MAKE_ESCAPED("Holes... sir? Well, there certainly is one, but..."),
            7680,

            #7800, 'いろんな使い方があるぞ？'
            MAKE_ESCAPED("There are many uses for a hole like that, you know?"),
            7800,
            #7920, '例えば、亀の頭に被せて、くるくるくる～っとな、'
            MAKE_ESCAPED("For example, putting it on a tortoise's head and then like wooshswooshwoosh!"),
            7920,

            #8040, 'まわしてみたりとか'
            MAKE_ESCAPED("Spinning it like crazy."),
            8040,
            #8160, 'あーあーあー、聞こえない聞こえない……'
            MAKE_ESCAPED("LA LA LA LA, I'm not listening anymore, not listening...!"),
            8160,

            #8280, 'このあほ隊長のことはほっといてと……'
            MAKE_ESCAPED("Let's leave this idiot captain alone..."),
            8280,
            #8400, 'さむらいて！　ゆにたん！'
            MAKE_ESCAPED("Weight! Yuni-tan!"),
            8400,

            #8520, 'ポリウレタン！　ポリウレタン！'
            MAKE_ESCAPED("Polyurethane! Polyurethane!"),
            8520,
            #8640, 'パカッ、カシャッ、シャコンッ……ぽちっとな……'
            MAKE_ESCAPED("Bakaaan! ...cashan! Shakooonnnnnn! ...IT WENT \"CLICK,\" YO!"),
            8640,

            #8760, 'たいっちょーーーー！　黄泉木たいっちょーーーー！'
            MAKE_ESCAPED("Captaaaaaain! Captain Yooooomooooooooooooogiiii!"),
            8760,
            #8880, 'どぎゃんしたとね！？　ゆにどん！'
            MAKE_ESCAPED("Que pasa, Don Yuni?"),
            8880,

            #9000, 'すんげーすんげー、激レアアイテムを、'
            MAKE_ESCAPED("We found an awesome, astounding ultra cool,"),
            9000,
            #9120, '発見したであります！'
            MAKE_ESCAPED("super rare item!"),
            9120,

            #9240, 'ただし、おパンツでも、オポッサムでもありません'
            MAKE_ESCAPED("Which is of course neither panties nor an opossum."),
            9240,
            #9360, 'なにー！？黛のセミヌードだとー！？'
            MAKE_ESCAPED("What?! Semi-nude photos of Mayuzumi, you say?!"),
            9360,

            #9480, '見たくねー！　見たくねー！　全然見たくねー！'
            MAKE_ESCAPED("I don't want to see them! I don't want to see them! I REALLY don't want to see them!"),
            9480,
            #9600, 'むしろ萎える'
            MAKE_ESCAPED("In fact, I'm going limp just thinking about it..."),
            9600,

            #9720, 'あん！？　なんか言った！？'
            MAKE_ESCAPED("Eh?! Did you say something just now?!"),
            9720,
            #9840, 'まあまあ、落ち着いて、黛案内人'
            MAKE_ESCAPED("Now now, calm down, Pathfinder Mayuzumi."),
            9840,

            #9960, 'それよりも――ババーン！　これであります！'
            MAKE_ESCAPED("More importantly――TADAAAAAH! It's this!"),
            9960,
            #10080, 'ほほぅ、これは『マリンバ１１楽坊』とかいう'
            MAKE_ESCAPED("Ohhohh, isn't this the CD released by the famous new marimba band that everyone's talking about,"),
            10080,

            #10200, '今話題のマリンバ集団のＣＤだな？'
            MAKE_ESCAPED("\"Marimba11\"?!"),
            10200,
            #10320, '違います！'
            MAKE_ESCAPED("Wrong!"),
            10320,

            #10440, 'でも、もうそれでもいいです、この際……'
            MAKE_ESCAPED("But really, who even cares at this point?"),
            10440,
            #10560, 'とにかく再生してみましょー'
            MAKE_ESCAPED("Anyway, let's try and play it!"),
            10560,

            #10680, '待ちんしゃい、ゆにどん、'
            MAKE_ESCAPED("Espera, Don Yuni!"),
            10680,
            #10800, 'この席とっとっとー、この席とっとっとー'
            MAKE_ESCAPED("There arriba, there arriba!"),
            10800,

            #10920, 'このディスクには、２羽鶏がいるのかも知れん'
            MAKE_ESCAPED("There may be two chickens within this disc!"),
            10920,
            #11040, '鶏……ですか？'
            MAKE_ESCAPED("Chickens... sir?"),
            11040,

            #11160, 'ああ、いろんな種類がいるぞ？'
            MAKE_ESCAPED("Yeah, there are many kinds, you know?"),
            11160,
            #11280, 'チキンとか、鶏とかな……？'
            MAKE_ESCAPED("Like domestic fowl, or poultry...?"),
            11280,

            #11400, '………………………………一緒じゃん……'
            MAKE_ESCAPED("............They're exactly the same..."),
            11400,
            #11520, 'あほはほっといてと……'
            MAKE_ESCAPED("Let's forget about this idiot and..."),
            11520,

            #11640, '待たんかい！　ゆにどん！'
            MAKE_ESCAPED("Alto! Don Yuni!"),
            11640,
            #11760, 'ぷち熟女！　ぷち熟女！'
            MAKE_ESCAPED("Wicki-wicki-waah, wicki-wicki-WUT!"),
            11760,

            #11880, 'パカッ、カシャッ、シャコンッ……ぽちっとな……'
            MAKE_ESCAPED("Bakaan! Cashaaan! Shakonnn! ...it went \"click,\" yo..."),
            11880,
            #12000, 'たいっっっちょーーーーーーーーーーーーー！'
            MAKE_ESCAPED("Caaaaaaaaaaaaaaaaaaptaaaaaaaaaaaaaaaaaaaaaain!"),
            12000,

            #12120, '黄泉木たいっちょーーーーーーーーーーーーーーーー！'
            MAKE_ESCAPED("Captain Yoooooooooooooooomooooooooooooooooooooogiiiiiiiiiiiiiiiiiiiiii!"),
            12120,
            #12240, 'おしまい'
            MAKE_ESCAPED("The End."),
            12240,

            #12360, '作：シナリオアップ直後の槻潮　鋼'
            MAKE_ESCAPED("Writer: Tsukishio Hagane"),
            12360,
            #12487, ''
            MAKE_ESCAPED(""),
            12487,

            #12600, ''
            MAKE_ESCAPED(""),
            12600
          )
      ),
    MAKE_TIPS_DATA
      (
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Sociology"),
            "The study of the mechanisms behind social life, social structures, and social issues in relation to human social behaviors. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Insanity"),
            "Madness, foolish actions, mental illness. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Evening"),
            "Even though the term is now used to mean night in general, originally it was used to describe the period of time between twilight and sunset; in other words, the time when night begins. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("SPHIA"),
            "Specified Psychiatric Hospital for Isolation and Aegis%N%NSince the revision of the penal code in 2007, special psychiatric hospitals were constructed in various regions across the country.%N%NThe purpose of these facilities is to administer proper treatments to those who are suffering from mental illnesses and have committed serious crimes so that they can be reintegrated into society.",
            "The layout of these facilities and the course of treatments there are undisclosed to respect the privacy of the patients.%N%NAll that's known about these facilities are their locations.%N%NThe SPHIA in which Inubushi Keiko is institutionalized is located on %TS004Aosagi Island%TE. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Aosagi Island"),
            "Located approximately five kilometers west of Rebun Island, Aosagi Island was uninhabited until the construction of SPHIA.%N%NIt possesses no airport, and the only way to get there is by a boat which departs from Wakkanai Harbor on an irregular basis.%N%NNormally, entry to the island without a government-%Nissued permit is prohibited. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Bivouac"),
            "A mountain-climbing term, meaning to sleep outdoors.%NTo pass the night at a location where there are no cabins or campgrounds. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Russell"),
            "To push through deep layers of snow, creating a path while moving forward.%N%NA mountain-climbing term. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("GPS"),
            "Global Positioning System%N%NA system employing satellites to calculate the position of a receiver (a person, boat, plane, car, etc.) in a 3D space. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Freeze Drying"),
            "A method of rapidly freezing and dehydrating food, allowing it to retain its flavor and nutritional content without losing its shape. Freeze-dried foodstuffs can later be reconstituted with hot or cold water. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Laplace's Demon"),
            "A concept proposed by Pierre-Simon Laplace, a French mathematician and astronomer.%N%NSuppose there exists a \"demon\"; that is, an entity that possesses the ability to know, at a certain moment, the state of all things in the universe.%NThen, no matter how brief this moment is, it would always be enough for the demon to unravel everything that happened in the past and will happen in the future.",
            "What Laplace was trying to say with this is that, basically, \"everything which occurs in the world has been predetermined from the beginning\".%NThat, no matter how big or how small an event is, its occurrence is by no means accidental, but in fact inevitable.%N%NIn philosophy, this is called causal determinism. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Androgynous"),
            "From the Greek, meaning one (a person) who possesses both sexes.%N%NAn existence that is a combination of both the male and female sex. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Gender Identity Disorder"),
            "A state in which a person's body is morphologically normal, but they feel that their physical sex is at odds with their gender, and consider themselves to be in actuality a member of the opposite sex. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Cloning and Laws on Cloning"),
            "The bodies of all living things are derived from biological blueprints called genes (DNA).%NThe methods used to analyze and manipulate the information stored in genes, recombination, synthesis, and other similar technologies, are collectively classified under the umbrella term of genetic engineering.%N%NCurrently, the technology enjoying the limelight in the field of genetic engineering is cloning technology.",
            "The term \"clone\" is from biology. It refers to a life form produced through asexual reproduction, whose cells are perfectly genetically identical to those of its parent.%NThose born from this technology are called human clones.%N%N（As an aside, the word clone is derived from the Greek word \"klon\", meaning \"twig\".)",
            "In 1997, the birth in England of the world's first somatic cell clone, a sheep named Dolly, was announced. The successful creation of Dolly shed new light on the potentials of genetic engineering.%N%NDolly was different from the embryonic cell clones that had previously been born from reproductive cell tissue. She was cloned from the mammary tissue (somatic cells) of an adult sheep, making her the first \"somatic cell clone using nuclear transfer\" (hereinafter simply \"clone\") in the world.",
            "In other words, the success of the technology to create a somatic cell clone using nuclear transfer served to verify the hypothesis that if somatic cells were available, it would be possible to bring any animal back to life as an exact copy, any number of times.%N%NAfter that, various transgenic clones were created, but since the process of their birth (cell development) was viewed as diverging too far from natural means, human cloning research was banned or otherwise strictly regulated.",
            "In the year 2001, the \"human-related cloning regulation law\" (cloning law) was enforced in Japan.%NAdditionally, major countries such as England, France, and Germany prohibited the creation of human clones, calling it \"an affront to human dignity\".%N%NHowever, the combined power of forces such as sheer human curiosity, infertility problems, and possibly the wish to meet with lost loved ones again would not let it be stopped altogether. Thus, illegal research continued behind the scenes, and before long, the birth cries of",
            "the very first human clones were heard in the world.%N%NAs a result, various protests and controversies took root, and in many countries, the question of ethics was back on the table for the furious debate about to unfold.%N%NIn the midst of this, a trial concerning the issue of the birth of clones was held.",
            "——The year was 2010.%NThe accused, a certain lone scientist.%NHe had created a clone of his own son.%NAnd the reason for that, he said, was simply \"I just wanted to see my son, who was killed in an accident, one more time, no matter the cost.\"%NBut before long, his secret had been revealed, and thus judgment was pronounced upon him.%N%NAnd the result of the judges' decision was... life imprisonment.",
            "However, when the content of the cloned boy's testimony was reported, it caused a complete turnover of public opinion, which grew powerful enough to lead to amendment of the law in the end.%N%NSo what was it that the boy said so plaintively through his tears?%N%N\"Papa didn't do anything wrong. I'm so grateful to Papa. Because Papa is the one who gave me this life...\"",
            "And so, that same year saw the lifting of the ban of the birth of human clones.%N%NAnyone was free to use cloning technologies as a form of infertility treatment, as long as permission from the proper authorities has been granted.%N%NSince then, human clones have continued to be born legally; by the year 2019, it became common knowledge that one to two of every 1,000 primary school students were clones.",
            "As for the revised cloning law...%NFor it to have been struck down by public opinion rallied simply for the sake of the happiness of one small boy, perhaps it truly was a law that stood in opposition to human kindness.%N%NHowever, even after the amendment of the law, a large problem still remained.%NCloned people faced opposition and discrimination.%NAs previously stated, the unnatural nature of their birth and existence led many to be shunned.",
            "Since the clones' genetic information was perfectly identical to that of their nucleoplasm provider (\"genome mother\" or \"original\"), they were mockingly referred to as \"copies of the original\".%N%N(However, strictly speaking, this belief is mistaken. At the time of a clone's creation, he or she inherits the mitochondria of the woman who provided the unfertilized egg (\"host mother\"). Since the genome mother and host mother are two different people, the clone cannot be said to be an exact replica of the original.)",
            "In order to solve these problems moving forward, perhaps humanity will need to deepen their understanding of genetic engineering with time.%N%NUntil then, clones and their supporters can only keep on hoping, believing that the day will surely come when clones can live without fear...",
            "Finally, we shall introduce a certain person who had a global influence in the field of genetic engineering.%N%NHe is Japan's Doctor Morino Shigezou.%N%NSince the latter part of the 20th Century, Doctor Morino has taken part in the international Human Genome Project, where he had been credited with the discovery of a groundbreaking method for analyzing the sequence of DNA. Furthermore, the doctor himself is known to have created human clones.",
            "However, there are opinions as to exactly what number of successfully produced clones his achievements amount to (if any at all), and the truth remains uncertain. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("LAN"),
            "Local Area Network%N%NA network of interconnected computers installed in the same area, such as the inside of a building.%NAllows for the sending, receiving, and processing of various types of data in bulk. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Browser"),
            "A software application that retrieves, traverses, and displays the information resources from various sources such as web servers or the Internet on web pages. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Dominant and Alternate Personalities"),
            "In a person exhibiting so-called multiple personality disorder, the personality which is in control of the body for the longest periods of time is called the dominant personality (this is most often the \"original\" baseline personality which the person has had since birth).%N%NOther personalities which sometimes assume control of the body for shorter periods are called alternate personalities. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Rejection"),
            "The refusal of the body to accept foreign substances; a defensive reaction meant to protect it against infection.%N%NWhen an organ or similar tissue from another person is transplanted, it is viewed as a foreign substance by the immune system, which will attempt to destroy the tissue and expel it from the body.%N%NThis type of immune system attack is called rejection. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Neuron"),
            "A nerve cell.%NComposed of a cell body, an axon, and dendrites.%NReceives and transmits stimuli. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Synapse"),
            "A bridge between neurons.%NNeurons send signals to each other via synapses. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Host Computer"),
            "In a network of two or more interconnected computers, the client is a terminal that receives commands from the host computer. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Client"),
            "In a system consisting of two or more interconnected computers, the client is a terminal that receives commands from the host computer. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Dual Surnames"),
            "With the approval of a bill in 2008, married couples may decide to use either partner's surname or retain separate family names. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Teleportation"),
            "The act by which an object or person, by use of powers such as ESP, moves instantaneously to another place.%NAlso referred to as instantaneous movement. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("French Mercenary Legion"),
            "(a.k.a. French Foreign Legion)%NA unit in the French Army. Created in 1831 by Louis Philippe, the then King of the French.%NThe purpose of its creation was to reduce wartime casualties amongst native French soldiers by using mercenaries from other countries and foreign nationals instead.%N%NThe Mercenary Legion troops know not of the word \"surrender\", nor are they taught how to act when captured; they are trained to fight to the death.",
            "The Mercenary Legion has fought in many conflicts, such as the French conquest of Algeria, the Indochina War, and the Algerian Civil War; many foreign soldiers lost their lives in these conflicts.%N%NEven now, any French troops dispatched overseas are almost always from the Mercenary Legion.%NThey were recently deployed in areas such as Afghanistan and Kosovo. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Knife Maintenance"),
            "As a knife is used, it will gradually grow dull over time.%NTo maintain an optimum level of sharpness, daily care is essential.%N%NThe most basic form of daily maintenance is to polish the blade after each use. Water is very bad for knives!%NMost modern knives are made from stainless steel, which is resistant to rust; however, this doesn't mean that they are rustproof.%NTherefore, they should be dried off quickly after coming into contact with water.",
            "To return a dull knife to its sharpened state, different methods such as honing and touch-up exist.%N%NHoning refers to sharpening a knife.%NTo touch up a knife means to improve its ability to cut.%NWhen a knife becomes dull, it's best to think about seeing to it right away. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Okushiri Island"),
            "An island to the southwest of Hokkaido, off the western edge of the Oshima Peninsula.%NIt was severely damaged in the Southwestern Hokkaido Earthquake that struck in July of 1993 (Heisei 5). "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Trilobite"),
            "Arthropods that lived in the Cambrian period.%NMost had a body length of about 2-4 centimeters. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Flight Recorder"),
            "(a.k.a. Black Box)%N%NAn aviation device that automatically records speed, altitude, and other information about the flight in real time.%N%NHoused in a very sturdy casing which makes it highly resistant to damage by fire or force trauma. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Solar Wind"),
            "A stream of plasma which emanates from the upper atmosphere of the sun. It is composed mainly of electrons and protons, and moves at speeds of 350-700 kilometers per second.%NComets which leave trails tracing to the far side of the sun are blown there by the solar wind.%N%NIt does not reach as far as the surface of the Earth due to the Earth's magnetic field; however, magnetic storms, the aurora borealis, and disruptions in the ionosphere are all attributed to this solar wind. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Satellite Phone"),
            "A cellular telephone which works by way of communication satellites.%N%N\"Connecting you from anywhere in the world\" was the catchphrase.%N%NHowever, in practice, due to different company systems, types of available satellites, and so on, there are cases in which signal availability is limited to certain areas. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Brocken Specter"),
            "On a high mountain at sunrise or sunset, when one is standing in front of a bank of fog, the sunlight shining from behind them may project their shadow onto the fog, surrounded by a ring of rainbow light. This is called a Brocken specter.%N%NThe resulting gigantic shadows, like those of a monster, have been called the phantoms of the Brocken.%NThe name of the phenomenon comes from the Brocken, a mountain in Bavaria, Germany, where it has often been observed. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Sample"),
            "A statistics term, meaning a collection of data not representative of the whole population, but a subsection of it. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Ice Ax"),
            "A mountaineering tool.%N%NUsed for aid in balance, to create footholds, security, to prevent the climber from slipping, etc.%N%NThe head is comprised of a blade and pick, to which a shaft with a spike at the base is fastened. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Lombroso"),
            "Italian anatomist.%N%NBelieved that the different types of crimes committed by each criminal corresponded to specific physical traits; also had an interest in the different types of criminals, which is now remembered as the source of modern criminology.%N%NHowever, his theories are now thought to be incorrect. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Phrenology"),
            "A divination method, supposed to be able to foretell a person's character and destiny based on examination of their cranial structure and facial features. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Astrology"),
            "Astrology here refers to Western astrology.%N%NA study, or skill, based on the belief that through the movement of heavenly bodies and their positions at certain times and places, an individual person's horoscope (drawn from the positions of the planets, the twelve signs of the zodiac, and the twelve astrological houses) can be interpreted and used to foretell their future. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("DSM"),
            "The Diagnostic and Statistical Manual of Mental Disorders%N%NA handbook of diagnostic criteria for mental disorders published by the American Psychiatric Association.%NThe title is followed by its revision number.%N%NPublished editions so far include the%NDSM-I (1952), DSM-II (1968),%NDSM-III (1980), DSM-III-R (1987), and%NDSM-IV (1994).",
            "This manual is, so to speak, a simplified guide to the diagnosis of mental illnesses.%N%NMental illnesses may affect a person in many forms, and are notoriously difficult to diagnose. It is also not uncommon for separate examining doctors to differ in their diagnoses. To help eliminate such errors, the DSM is used as a guide for doctors to determine the name of the illness based on observed symptoms.",
            "By asking the patient certain questions, such as about said patient's condition, and checking their responses against the data in the DSM, even an inexperienced doctor can establish a diagnosis and begin appropriate treatment. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("DSM-IV"),
            "The fourth revision of the DSM, published in 1994. In this edition, the name of the illness formerly called multiple personality disorder was changed to dissociative identity disorder.%NIt was there that the illness called DID was \"born\".%N%NIncidentally, dissociative personality disorder is still referred to as multiple personality disorder in other official writings, such as the ICD-10. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Borderline Personality Disorder"),
            "(a.k.a. ambulatory schizophrenia, preschizophrenia, schizotypal disorder)%NFor a patient to be diagnosed with borderline personality disorder, they must display symptoms matching five or more of the following criteria.%N%N".
            " 1)%X035A feeling of abandonment in reality or delusion.%N".
            " 2)%X035A pattern of unstable and intense interpersonal%N".
            "%X035relationships.%N".
            " 3)%X035Identity disturbance: markedly and persistently%N".
            "%X035unstable self-image or sense of self.",
            
            " 4)%X035Feelings of disconnection from reality.%N".
            " 5)%X035Self-abusive thoughts of suicide, self-injury, and so%N".
            "%X035on.%N".
            " 6)%X035Chronic feelings of emptiness.%N".
            " 7)%X035Marked affective instability due to a marked%N".
            "%X035reactivity of mood.%N".
            " 8)%X035Inappropriate anger or difficulty controlling anger.%N".
            " 9)%X035Transient, stress-related paranoid ideation,%N".
            "%X035delusions or severe dissociative symptoms.%N".
            "10)%X035Desperate behavior and self-loathing at that%N".
            "%X035behavior.",
            
            "Additional impulsive behaviors include:%N%N".
            " 1) impulsive spending%N".
            " 2) promiscuous sex%N".
            " 3) substance abuse%N".
            " 4) reckless driving%N".
            " 5) binge eating%N",
            
            "A borderline personality disorder sufferer's personal relationships, self-image, emotional stability, and particularly indulgence in impulsive acts are heavily influenced and impaired by the disorder, with the onset of symptoms typically occurring during adolescence or young adulthood.%N%NThough said to be a severe impairment to normal life, relatively few of the symptoms are detected by most people. It is characterized by fluctuating emotional states and abnormal outbursts of anger or violence.",
            "Furthermore, many sufferers show frantic attempts to avoid abandonment. This feeling often manifests itself in the form of self-harm behaviors.%N%NSufferers often report having a foggy mental state, being unable to perceive things clearly, feeling lost, or feeling as if they will fall to pieces. Many are tortured with doubts about their own identities as well. This lost sense of self-control often causes them to resort to self-harm.",
            "Individuals with borderline personality disorder tend to view the world in black and white, with all people viewed strictly as either enemy or ally; if they think an ally is in danger of leaving them, many individuals will become anxious and deliberately harm themselves or otherwise cause trouble in an effort to get the ally to stay.%N%NHowever, it is important to remember that the individual is not doing these things because they want to, and as with many other similar illnesses of \"the heart\", their behavior does not reflect their true personality. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Jungfrau"),
            "A summit in the Swiss Bernese Alps.%NIts peak stands 4,158 meters above sea level.%NThe name means \"virgin peak\".%NIt was designated a World Heritage Site in 2001. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Court-Appointed Attorney"),
            "In accordance with both the Criminal Procedure Code and the Japanese Constitution, the suspect or defendant in any case is entitled to legal counsel. However, though everyone has the right to counsel, in reality, there are many people who are too poor to hire an attorney to defend themselves.%N%NTherefore, as written in the Constitution, \"When a defendant is not able to appoint an attorney, that duty falls upon the state\" (Article 37, Paragraph 3).",
            "Thus, in cases where the defendant's poverty prevents them from being able to seek the services of an attorney, the court will appoint a public defender to assist them, with the cost being borne by the state. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Andromeda"),
            "A galaxy approximately 2,300,000 lightyears from Earth.%NA spiral galaxy, its shape is that of an elliptical coil.%N%NIn Greek mythology, Andromeda was the name of an Ethiopian princess. Her mother, Cassiopeia, bragged that she was more beautiful than the sea nymphs known as the Nereids. The sea god Poseidon, who was fond of the Nereids, was angered by her words and sent a sea monster to lay waste to the coast of her kingdom.",
            "The king went to consult an oracle for help.%NThis oracle told him that only sacrificing Andromeda would return peace to the kingdom.%N%NAndromeda was chained to a rock and left as a sacrifice to the monster.%N%NAt that time, Perseus, carrying the freshly-severed head of Medusa in a sack, happened to come along.",
            "Uncovering the head before the monster's eyes, Perseus turned it to stone.%NPerseus then took Andromeda as his wife.%N%NWhen Andromeda died, she was placed among the stars and became a constellation alongside her husband Perseus, her father Cepheus, her mother Cassiopeia, and the great sea serpent.%NHowever, because of Cassiopeia's pride, she was placed in the heavens such that the chair in which she sits appears upside-down. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Hypothermia"),
            "A physical condition caused by an abnormal drop in core body temperature.%N%NMay result in death. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Whiteout"),
            "A weather condition in which the field of vision is obscured by white due to windblown snow in the air, greatly diminishing one's ability to discern vertical/horizontal directions and distance. It can be described as a \"white darkness\" of sorts.%N%NThere is also another form of a whiteout which is caused by diffuse reflections from snowy surfaces, clouds, and the like. In this case, the air becomes saturated with white light, rendering movement and the gathering of visual information virtually impossible. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Snow Cornice"),
            "A large overhanging edge of snow on the leeward side of a mountain ridge.%NLarger ones can be in excess of ten meters.%NSince the inside of a cornice is composed entirely of snow, it will collapse if trodden on by a human.%NThe presence of snow cornices make it very difficult to tell where the actual ridge ends. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Deus Ex Machina"),
            "From the Latin, literally meaning \"god from the machine\".%NA frequently-used plot device in old plays and literature, where, in the midst of a seemingly hopeless situation, a previously unseen character or object will suddenly appear and provide a convenient resolution to the story.%N%NUse of this type of device in a story later came to be called by this name.%N%NFrequently seen in the Greek tragedies of Euripides, whose conclusions were often marked by a god",
            "appearing from above and being lowered onto the stage via a mechanism similar to a crane.%N%NAristotle, in his writings on aesthetics, argued that all the elements of a story should arise internally (naturally and necessarily), following up the previous actions in the play, and opposed the use of this device, saying that the sudden deus ex machina appearance of a previously unseen character in the middle of the play (contingent on the needs of the plot) was poor storytelling. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Coacervate"),
            "A small spherical droplet of hydrophilic colloids suspended in a liquid, which forms when solutions of colloids are mixed under suitable conditions to achieve and maintain a stable state.%N%NThere is a theory that considers them to be the first stage in the origin of life on Earth. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Colloid"),
            "A chemical mixture in which particles of one substance are dispersed evenly throughout another substance such that, though they are larger than most molecules, they cannot be seen with ordinary optical microscopes.%N%NExamples include glue, starch, agar, egg white, mayonnaise, and smoke. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Thing-In-Itself"),
            "The central concept of Kant's philosophy.%N%NThe thing-in-itself is not a thing as a phenomenon which is an object of empirical cognition, but the thing itself that exists as the origin of the phenomenon, independently of a subject.%N%NIt is something which cannot be known, only thought about. However, transcendental freedom becomes possible precisely due to that. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Memory Transplant"),
            "Memory loss and memory transplantation——%NThe difference between the two is as follows.%N%NSuppose that a given entity, X, has a contiguous memory (we may also call it a record) composed of ABCDEF.%N%NMemory loss, to put it simply, is a state wherein, for example, parts B, D, and F in the A～F sequence are lost, and the only memories which can be recalled are ACE.",
            "On the other hand, the memory transplant mentioned herein refers to a state where, for example, the memory parts A, C, and E are embedded into an initially empty, \"zero\" state memory.%N%NBoth cases are similar in that X does not remember anything besides ACE; the crucial difference, however, lies in the question of whether the rest is recoverable or not.",
            "In the case of memory loss, it is possible that X would still have parts B, D, and F residing somewhere in the mind. Thus, X might perhaps be able to recover these lost memories.%N%NHowever, if X had had these memories transplanted, then it would mean that BDF had never existed in the first place.%N%NIn this case, X is left with no other alternative but to accumulate new memories over time.",
            "So then, if by any chance, this memory content of mine was transplanted...%NJust whose ACE memories are these, I wonder?%N%NThere's no doubt that \"my consciousness\" belongs to me, but it is in fact possible that \"my memory\" is one that was originally someone else's and not mine.%N%NAnd that this someone had planted the memories limited to ACE inside me, so that even I myself am not aware of how and why that happened exactly.",
            "Why not A～F, but ACE...?%NWhy didn't they transplant BDF as well...?%N%NCould it be that...%NIt's not that they didn't transplant them,%Nbut... that they couldn't?%N%NCould it be that, just like me, this other person lacks BDF?",
            "Can I assume that this limited knowledge composed only of ACE was all that was available to this person...?%NAnd that it was for this reason that this person couldn't put any other memories inside me?%N%NIt might be that I'm only able to know what this person knows, and if this person doesn't know something, neither can I.%NMy memory and this person's memory are the same.%N%N......That's how it feels. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Now"),
            "It is 2011 here in the cabin shelter; in SPHIA, it is 2012.%NShe exists a year in the future for me, so maybe \"now\" is not an appropriate name for it.%NBut there's no way around that anymore.%N%NNo matter how you look at it, the fact remains that it is still \"now\" to me and Fuyukawa Kokoro.%NHaving deviated from the normal flow of history, we are living within our own designated \"time\" now.%NThe flow of time that she and I experience and the flow of time in the rest of the world are different.",
            "If, for example, the latter is represented as%N\"A→B→C→D→E→F→......U→V→W→X→Y→Z\"%Nthen the time flow that I'm experiencing becomes%N\"A→V→C→X→E→Z,\"%Nand that which Fuyukawa Kokoro experiences becomes%N\"U→B→W→D→Y→F.\"%NTherefore, whenever I bring up time-related concepts such as \"now\", \"just now\", \"today\", \"tomorrow\", and so on, these are supposed to be understood and hold meaning in accordance with my individual timeline of%N\"A→V→C→X→E→Z\".",
            "On a side note, ever since I've been experiencing this personality exchange phenomenon, the concepts of \"next year\" and \"last year\" no longer apply to me either.%N%NNow that I'm in the Mount Akakura shelter, both 2011 and 2012 are, in a certain sense, \"this year\" to me. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Rorschach Test"),
            "A type of projective personality test.%N%NThe subject of the test is first asked to interpret a series of cards with ambiguous, bilaterally symmetrical inkblot designs. The answers are then analyzed so as to try and determine that person's personality characteristics.%N%NInvented by Rorschach (Hermann R., 1884-1922), a Swiss psychiatrist. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Rock 'n Roll"),
            "A genre of popular music which originated in the 1950s in America and spread to the rest of the world.%NBased on black musicians' rhythm and blues, with additional influences from white country music.%N%NAlso known as rock. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Capoeira"),
            "A Brazilian martial art.%N%NMoving to a rhythmic, percussion-centric musical performance, a pair of two perform dance-like foot techniques.%N%NIt was originally developed by black slaves from African martial arts.%N%NHistorically, practitioners disguised their training as an ethnic dance to camouflage it from their rulers. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Skepticism"),
            "An ideological attitude which suspends ultimate judgment and doubts the possibility of recognition of absolute truth, given human recognition is subjective and relative. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("I'm a Seagull"),
            "Kokoro had said that these are \"beautiful words\".%NHowever, in reality, this phrase is not exactly something one should be very moved by.%N%N\"Seagull\" in Russian would be \"chayka\".%NAnd incidentally, \"Chayka\" was also the call sign, something akin to a nickname, of Vostok 6.",
            "In other words, just as an astronaut on one of the Apollo spacecraft missions would contact the command center:%N\"This is Apollo, this is Apollo, Houston, do you copy?\"%N%NTereshkova had contacted the respective command center for the Vostok 6 with%N\"This is Seagull, this is Seagull.\"",
            "When this phrase was translated into Japanese,%Nit was mistakenly translated as 『私はカモメ』, i.e. \"I am a seagull.\" As a result, it became widely known in Japan as Tereshkova's poetic description of herself floating in the void of space.%N%NAn interesting fact to note: the Vostok 1 that Gagarin piloted was called \"Kedr\", meaning \"Cedar\".%N%NIf that name was used as the call sign of Vostok 6, perhaps such a mistranslation would not have occurred. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("The Cat Locked in the Box"),
            "Refers to \"Schrödinger's Cat\", a thought experiment intended as a critique of worldviews based on probabilistic theories (the so-called Copenhagen interpretation) which was proposed by Bohr and Heisenberg.%N%NSuppose that a cat is put in a box equipped with a mechanism that would emit poisonous gas if a certain radioactive material decays.",
            "According to the Copenhagen interpretation, this micro-world radiation emission is probabilistic by nature.%NThen even the cat's death caused by it becomes stochastic.%N%NEven if the cat is as lively as ever, it will be, for example, a 30％ dead cat. As a paradox about a cute cat, the phrase became a suitable introduction to quantum mechanics. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Rexenin"),
            "A benzodiazepine, an anti-anxiety agent.%NBinds to BZD receptors, as well as GABA-A receptors, suppresses nerve stimulation, and puts the body in a relaxed state.%N%NResults in anxiolytic (anti-anxiety) action, sedative-hypnotic action, muscle relaxation, and anticonvulsant action.%N%NIts anxiolytic effect is so powerful, it is said that it is five times more potent than average anti-anxiety drugs.",
            "After taking the drug, the highest concentration in the bloodstream will be achieved after an hour.%NThe manifestation of its effects is somewhat faster.%NIts half-life within the bloodstream is 6～20 hours.%NThe drug is classified as having short to medium-term effects.%N%NIt is a very useful drug, because its drowsiness side effect for a minor tranquilizer is relatively weak. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Score: 0-0"),
            "The number on the left represents Hotori's and Utsumi's team score, and the number on the right represents my and Yuni's team score. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Supercomputer"),
            "A computer capable of processing very large amounts of data at ultra high speeds through the employment of technologies such as parallelism.%N%NThe processing speed can be as high as 10^12 operations/second (as of 2003).%N%NIn recent years, supercomputers have come to be used for weather forecasting across Japan, calculating things like temperature, pressure, and the movement of clouds. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Hippocampus"),
            "A part of the cerebrum's paleocortex, the hippocampus controls the functions of desire, instinct, the autonomic nerves, and so on.%N%NDue to its responsibility for deciding the level of urgency of received information and storing memory in other parts of the brain, it is referred to as the \"memory factory\".",
            "It is said that without the hippocampus, a person would be unable to remember what had happened even five minutes ago.%N%NAdditionally, it is not simply the case that one becomes forgetful with age. Rather, adults, because of having a much greater store of memories than children, take much longer to remember a single essential piece of information. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Quantum"),
            "The smallest unit of a physical quantity, not continuous, expressed as values limited to a set of integer multiples of a certain unit amount (quantized values).%NIn 1900, Planck proposed the idea of a quantum energy (the quantum hypothesis) that spawned the beginning of quantum theory.%N%NSubsequently, Albert Einstein suggested the existence of a light quantum (photon), and Niels Bohr demonstrated the angular momentum quantum. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Quantum Mechanics"),
            "The study of molecules, atoms and subatomic particles; in short, the dynamics of matter and energy on a microscopic level.%N%NIt introduced the principles in the %TS063Schrödinger equation%TE, conducted probabilistic explanations between values that can be obtained from observation, postulated the wave-particle duality of matter, and explained the uncertainty relationship in measurements.",
            "Quantum mechanics, as a fundamental theory of modern physics dealing with particles and particle populations, has developed into nuclear and chemically-oriented condensed matter theories on one hand, and elementary particle and field theories on the other. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Schrödinger Equation"),
            "(a.k.a. Wave Equation)%N%NIn quantum mechanics, a differential equation that determines the temporal change of wave functions signifying matter waves.%N%NIt can be shown formally that evolution of the wave function is given in the equation by the Hamiltonian operator, which corresponds to the total energy of the system. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Wave Function"),
            "From the square of its absolute value, it can give the existence probability of a particle.%NIn this sense, the wave function is referred to as the probability amplitude. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("EPR"),
            "An abbreviation composed of the first letters of the names of three physicists:%N%NEinstein = E,%NPodolsky = P,%NRosen = R.%N%NThese three presented the \"%TS067EPR Paper%TE\" to argue against the concept of the \"%TS066Uncertainty Principle%TE\" of quantum mechanics.",
            "This opposition was especially pronounced in the case of Einstein, summed up by his famous remark \"God does not play dice.\"%NAlthough fully recognizing its usefulness, he was known to be uncomfortable with and to oppose quantum mechanics until his death because of its inability to definitively describe the microscopic aspects of physical reality.%NEinstein conducted many thought experiments that criticized quantum mechanics and troubled his opponent Niels Bohr (one of the founders of quantum mechanics). "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Uncertainty Principle"),
            "In regards to quantum mechanics, it refers to the impossibility of determining accurately and simultaneously both a particle's position and momentum, energy and time, or other coupled physical quantities.%N%NIt holds with the uncertain relationships that the product of the two values of these uncertainties cannot be smaller than a fixed value proportional to Planck's Constant.%N%NDeduced by Heisenberg in 1927. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("EPR Paper"),
            "A paper published by Einstein, Podolsky, and Rosen. Also known as the EPR Paradox.%N%NIt presents a thought experiment that is extremely critical of quantum mechanics, and was originally published by Einstein and his coauthors as an attack on it. Ironically, it ended up having the opposite effect, and became the best material for deepening one's understanding of the field.",
            "The details of the experiment are as follows:%N%NAccording to quantum theory, when two particles are created at some location by the same event, they share a certain kind of state.%N%NFor example, a stationary π-meson decays into two photons in opposite directions, but both members of the photon pair are represented with a single Schrödinger equation.",
            "Quantum theory states that as long as they aren't observed, the particles can be expressed by the same equation forever. So even if one of them flies a long distance away, if you observe some information about it——such as spin or polarization——then you should know the state of the particle that remained behind.%NBut at the moment that you observe one particle,the wave function of the other particle collapses accordingly, appearing as if the measured information has been instantly transmitted from one to the other.",
            "However, modern quantum mechanics has successfully come up with a proper explanation, and experimental results that support it have been published one after another. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Particle Pair Generation"),
            "As an example of an established method, the following procedure exists.%N%NWhen a UV laser beam interacts with a crystal of non-linear optical material such as barium borate, each single photon splits into two other photons with long wavelengths. These split photons travel along the contours of two cones that, in turn, are symmetric about the initial beam.",
            "The points where the contours of the two cones intersect have photons in the state of %TS070entanglement%TE, i.e. there is no distinction as to their origins there. What is known about these entangled photons is that their polarization is mutually orthogonal, however it is impossible to definitely know their respective deflection angles.%N%NThis method of creating entangled photons is called parametric down-conversion. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Alice and Bob"),
            "In cryptography, the one conveying the information is commonly referred to as Alice, while the recipient is referred to as Bob.%N%NThis naming convention originated from a paper on quantum teleportation published in 1993.%N%NAdditionally, a person found to be intercepting communications (i.e. through a bug or wiretap) between Alice and Bob is customarily referred to as Eve. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Entanglement"),
            "A state of quantum superposition.%N%NRefers to a situation in which a system of several %TS071quantum bits%TE, in accordance with the laws of quantum mechanics, forms an inseparable state and behaves as if it were a single entity. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Quantum Bit"),
            "Refers to a new unit of information content, different from the classical bit (information represented by a binary digit, 0, off, or 1, on) used in modern computers (von Neumann machines) that have become mainstream by the time of 2003.%N%NA physical state in which \"0\" and \"1\" overlap (a quantum superposition) is treated as an operational unit.",
            "Also known as a qubit. Computers that use them are called %TS072quantum computers%TE, and they are capable of carrying out extremely fast calculations (massively parallel computation). "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Quantum Computer"),
            "A computer which creates a superposition of two states as a single element and performs calculations using both states.%N(A von Neumann computer can only perform a single calculation per element.)%NBecause of this, if there are ten elements, the number of calculations it can perform simultaneously rises to 2^10 (1024). As more elements are added, the computational power grows dramatically. The speed a computer like this boasts of can truly be called wondrous. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Bell Measurement"),
            "A method of placing an isolated pair of particles in an entangled state and then observing both of them at the same time in a way that doesn't permit them to be distinguished from each other (in order to maintain the entanglement).%N%NSince the particles must be passed through a beam splitter (such as a half-silvered mirror) at exactly the same time,this is extremely difficult in practice. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Unitary Transformation"),
            "In a unitary space, a linear transformation which preserves the value of the Hermitian inner product of two arbitrary vectors before and after the transformation.%N%NSuppose we denote the adjoint of an n-by-n matrix M as M*.%N%NThen M is unitary if it is a complex-valued square matrix fulfilling the equation M*M = MM* = E, where E is the identity matrix of order n. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Corporation"),
            "A joint Japanese-German pharmaceutical company.%NIts head office is in Frankfurt, and the majority of its staff are German.%NAn internationally renowned drug manufacturer, its capital is generated worldwide, and it has very strong ties with the governments of several countries.%N%NThe company's area of expertise isn't limited to the pharmaceutical sector, but includes a wide range of business endeavors, such as the management of recreational facilities and so on.",
            "An example of this would be an ocean theme park called LeMU which the company manages (strictly speaking, they provide funding to \"LeMU Ltd.\", the park management organization).%N%NAdditionally, regarding their bacterial research, it is said that the company owns one or two of the leading facilities in the field.%N%NHowever, this business enterprise has a hidden agenda.",
            "They are, in fact, developing biological weapons for military purposes.%NIt seems that the company is amassing huge amounts of capital from several countries for the purpose of developing highly lethal viruses and their respective cures.%N%NNow, it may seem they only have a dark side in bacterial research, but as the structure of their pharmaceutical company would demonstrate, their medical research is conducted with inhumane practices.",
            "Among their activities are using human test subjects without any regard to basic civil rights; the research, development, synthesis, and refinement of illegal drugs; expanding profit by trafficking their drugs on the black market...%N%NFurthermore, according to certain information, the company has recently ventured into the area of long-range missile development as a result of its ties with a certain heavy chemical company. One could argue that all of their devotion to ",
            "research and development of information engineering and quantum physics is an investment toward military use.%N%NIn short, it would take ages to even try and enumerate all of their wrongdoings.%N%NA pharmaceutical company with a reputation this bad——and yet, this is merely a glimpse of all the darkness the world possesses. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Switchblade"),
            "A switch-deployed knife.%NTheir use is highly restricted by law in Japan; none are produced or sold within the country.%NAlso called a jackknife. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Approximately 100 Hours"),
            "The video analyzed runs from the time of my fall from the clock tower on the 11th, a bit past 4 PM, to the time of the final transfer on the 15th, at 10:53 PM.%N%NThe exact total duration would be a little less than 103 hours.%N%NI've concluded that there wouldn't be much point in examining data other than that, so I've excluded it. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Time"),
            "The date and time are indicated by a timestamp in the corner of the videos. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Location"),
            "Cameras are set up everywhere in SPHIA, so there are as many recorded data files as there are cameras.%N%NHowever, there is neither any need to check all of them nor the time to do so.%N%NBasically, I've just excluded all the files I don't appear in from the list of objects to be analyzed. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("--:-- PM"),
            "\"--:-- PM\" indicates that it was impossible for me to check what the time was.%N%NThis was when I saw the shadow holding a knife when the lights went out.%N%NI had no time to look at my watch. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Equilibrium Position"),
            "In fact, there appear to be six positions on Earth where the respective distances between the three points are kept in close balance.%NAs for where these positions lie exactly, it is as follows...%N%NFirst, let's designate the surface distance between \"point: Aosagi Island\" and \"point: Mount Akakura\" as ｒ.%NNext, draw two circles of a radius ｒ, centered on%N\"point: Aosagi Island\" and \"point: Mount Akakura\" respectively.",
            "Let's designate the intersection points of these two circles as ｐ１ and ｐ２.%N%NDraw a straight line passing through ｐ１ and ｐ２.%NAlso, draw another line passing through%N\"point: Aosagi Island\" and \"point: Mount Akakura\".%N\"Lines\" here should be understood in the sense of lying atop a curved surface, and thus forming two more circles around the Earth when fully drawn.%NWith this, we now have two small circles and two large ones.",
            "Now, there should be a total of eight points of intersections between all circles——%N%NSince two of them are \"point: Aosagi Island\" and \"point: Mount Akakura\", we exclude these. Which leaves us with six points——%N%NIf any of these six represents the actual third area, that would mean that the three transfer points are located in equilibrium positions. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Many-Worlds Interpretation"),
            "In science fiction literature and the like, authors sometimes include settings called \"parallel worlds\".%N%NA common setup is for the protagonist to see worlds that are very similar to the one we live in, but are different in subtle ways. Every time the protagonist makes a choice in life, several worlds diverge from that point based on the number of alternatives.%N%N",
            "It turns out that a similar way of thinking also exists in physics.%N%NThis is the so-called \"Many-Worlds Interpretation\", proposed by a scholar named Everett. It elaborates on the quantum mechanical way of thinking and is competitive with the current mainstream interpretation of quantum mechanics.",
            "In quantum mechanics, both matter and energy are seen as a certain kind of \"wave\".%N%NTo avoid confusion, the word \"wave\" here refers strictly to waves in the world of quantum mechanics, rather than the concept of waves in classical theory which are transmitted and spread outward in all directions.%N%NQuantum mechanical waves are basically \"waves of probability\".",
            "When dealing with the world on a microscopic scale, there is a restriction that prevents an object's position and momentum from both being known simultaneously (the uncertainty principle), meaning that you can only say the object exists in a particular place with some probability.%N%NBecause of this, quantum mechanics considers the existence of the object from a probabilistic perspective. The mathematical tool used to describe this phenomenon is called a \"wave function\".",
            "Before looking at the many-worlds interpretation, we'll try thinking about how standard quantum mechanics currently explains the world.%N%NFor example, consider a single electron. Before you perform the act of observing that it exists in a particular location, its existence is spread out in a probabilistic way due to uncertainty.%NUntil it is actually observed, its existence is described by assigning a probability to all of the places where it could possibly exist.",
            "In this state, we call it an \"electron cloud\".%N%NNow, suppose you were to use some method to observe the electron.%N%NAt that moment, assuming that the electron's position was determined, the previously spread-out cloud would immediately gather at that single observed point (likewise for momentum).",
            "This is called a \"wave function collapse\"; it basically means that the act of observing the electron, which was previously viewed as a probability distribution, renders its fixed existence as a real phenomenon.%N%NThis explanation is known as the \"Copenhagen interpretation\" and is considered mainstream in modern quantum mechanics.%N%NNow then, what about the rivaling Many-Worlds Interpretation?",
            "It agrees with the Copenhagen interpretation on the treatment of the electron's existence as a probability distribution.\"%N%NThe question is, what happens after the moment the electron is observed? Under the Many-Worlds Interpretation, the probability distribution is considered to be maintained regardless of whether the electron is observed or not. But what does that mean?%N%NFor example, when an observer confirms that the",
            "electron is in a particular position, the other possibilities don't just disappear.%NInstead, they actually persist in other worlds the observer can't perceive. It's not such a ridiculous idea. Isn't it because we can't perceive them in our world that we say \"they don't exist\"?%N%NCertainly, if an observer observes that a possibility doesn't exist, then it doesn't exist in his world. However, it does exist in the worlds of observers other than that one.",
            "In other words, under the Many-Worlds Interpretation, even the observers are explained probabilistically (the wave function does not only consist of the target of observation, but also the observer's entire space-time).%N%NThat means that every possibility which has a non-zero probability exists at the same time.%N%NEvery possible world advances simultaneously, which can be interpreted as truly \"many-worlds\".",
            "If you think about it, the main point is this:%Nobservers and observed things are made from the same substance to begin with. There's no reason whatsoever for an interpretation to distinguish between the two.%N%NSomeone who dislikes the idea of a person receiving special treatment might find the Many-Worlds Interpretation easy to warm up to.%NIt gives the impression that it was originally created for the purpose of explaining why waves should suddenly collapse at the moment of observation.",
            "In that sense, perhaps we can say it has advanced a step beyond current standard quantum mechanics as a theory. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("That Guy"),
            "For that person, there is no past.%NFor that person, there is no future.%NTo be more accurate, the concept of time does not exist for that person.%NFor that person, the past, the present, and the future are all condensed into a single point.%N%NPoint.%NEmptiness.%N0th dimension.%NThree concepts that overlap.",
            "In a place without anything exists that person.%NAn absolute will is the only thing there.%NAn absolute will.%NTo them.%N%NTo give an example, %TS084David%TE.%NWithout a doubt, that person was a \"king\" who entirely ruled them.",
            "And...%NTo \"him\", a hateful enemy.%N\"Him\"——to give an example, %TS086Saul%TE.%NEleven years before 2012——%NThat's where it all began.%N%NBut Satoru...%NYou...%Nknow not of this. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("David"),
            "Means \"beloved\" in Hebrew.%N%NThe Biblical David from whom this name is derived was the second king of ancient Israel who established Jerusalem as its capital, united Israel, and built Israel's era of prosperity.",
            "King David excelled in battle tactics, and the mystics who felt that sorcery was behind those tremendous abilities thought that the battle flag of David was undoubtedly a \"demon-summoning charm\".%N%NThe symbol David used as an emblem is known as \"the Star of David\".%N%NIn Israel, it is also believed to be a crest that protects oneself from danger; the symbol can be found in the Israeli national flag.",
            "In Japan, the Star of David, called the \"rokubousei\" (六芒星), or hexagram, is known as the crest of the Ise Grand Shrine.%N%NThe symbol that holds the opposite meaning to the Star of David is the \"gobousei\" (五芒星), or pentagram, also called \"the Star of Solomon\". The magical power of the Star of %TS085Solomon%TE seals the demons loosed at him inside the infinite loop. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Solomon"),
            "Means \"peace\" or \"tranquility\" in Hebrew.%N%NThe Biblical Solomon from whom this name is derived was the third king of ancient Israel.%NSolomon excelled because of his faith and obedience to God, and possessed great wisdom and intelligence with which he led Israel into a Golden Age.",
            "However, in King Solomon's later years, he placed heavy taxation upon his people in order to construct a golden temple for the Lord, a task that his father David was unable to accomplish.%N%NAs a result, soon after his death, Israel split into two northern and southern kingdoms. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Saul"),
            "Means \"he who is wished for\" in Hebrew.%N%NThe Biblical Saul from whom this name is derived was the first king of ancient Israel.%NHe was truly the king whom the people had wished for, and he lived up to their expectations.%NCertainly, as a king and as a warrior, he might never have known defeat.",
            "However, he failed in his God-given mission to become an instrument of the Lord.%N%NThough anointed by God to become \"an instrument of the Lord\", as the king of God's people, he did not. The reason is that Saul disobeyed the will of God...%N%NSaul was forsaken by God, and met a tragic end. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("The Final Level"),
            "It is the level to which the plan \"they\" devised will move as it transitions into its final stage.%N%NThe final move that will lead to the truth \"they\" have sought.%N%NThe final measure necessary for \"them\" to meet \"That Guy\".%N%NWhen it is executed——%NThe world will undergo a great transfiguration.",
            "When it is executed——%N%NThe transient world——\"Imaginary\" is lost...%NThe bridge of the world——\"Symbolic\" is crossed...%NThe true world——\"Real\" will reveal its shape.%N%NTogether with the opening of the \"Third Eye\"———— "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Infinity"),
            "1. Limitless, endless.%N".
            "   Something that is without limit. Something that%N".
            "   continues endlessly. And so on.",
            
            "2. Infinity Series%N%N".
            "2000．%X0593．23　%X107infinity%N".
            "2000．%X05411．23　%X107infinity ～Cure～%N".
            "2000．12．21　%X107Never7 -the end of infinity-%N".
            "2002．%X0598．29 %X107Ever17 -the out of infinity-%N".
            "2004．%X0593．18　%X107Remember11 -the age of infinity-%N".
            "...and%N%N".
            "the \"infinity\" series will go on forever."
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Chance Encounter"),
            "\"Chance encounter\" means to meet somebody unexpectedly.%NIn relation to that, what Utsumi might have thought at that time is likely to be something unimaginable.%N%NAfter all, it's not a usual sight to see your husband who has been dead for a year suddenly appearing in front of you. Not to mention it happened here in this hellish world of snow...%NAt least, at the time, I wouldn't have considered it to be heaven. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Alarm Clock"),
            "Let's reflect a bit on the consequences of the alarm clock being wrong.%N%NWhy is it that just because it was 33 minutes fast, Kokoro and I assumed that our minds were exchanging simultaneously?%N%NThe reason is as follows...",
            "First, for example, let's suppose that a transfer occurs at 1:00.%N%N——1:00%NKokoro's mind comes to SPHIA.%NThere, she looks at the incorrect alarm clock.%NShe mistakes the incorrect time it shows, which is \"1:33\", for the actual time of the transfer.%N%NThen, 66 minutes later, after two more transfers have occurred...",
            "——2:06%NKokoro's mind returns to the shelter cabin.%NThere, she looks at her wristwatch.%NShe sees the correct time of the transfer, which is \"2:06\".%N%NSeeing as she had transferred to SPHIA at 1:33 and returned to the shelter cabin at 2:06, she thinks that she spent 33 minutes at SPHIA.",
            "Indeed, there is no mistake in that the time of her stay at SPHIA was 33 minutes.%N%NHowever, from 1:33 until 2:06, her mind was actually in the third area. It is from this perspective that we could say that she was mistaken about the time of the transfer.%N%NWell then (since the times of her transfers from the shelter cabin are random), let's assume that one more hour has passed.",
            "——3:06%NKokoro's mind comes to SPHIA...%NShe looks at the alarm clock.%NShe mistakes the incorrect time it shows, \"3:39\", for the actual time of the transfer.%N%NWhat's important here is the fact that each and every time, she cannot confirm what the time was directly before the transfer.",
            "That's why, here, she is led to think that the time of her stay at the shelter cabin is an hour and 33 minutes——regardless of the fact that, in reality, no longer than an hour actually passes.%N%NThen this process repeats...%N%NAt \"4:12\", she'll return to the shelter cabin, check the correct time against her wristwatch, and assume that she was at SPHIA for 33 minutes.",
            "So then, what happens in my case?%N%N——1:00%NMy mind goes to the third area...%NAt that time, my sensory organs don't function normally,%Nso I'm not even aware that a transfer took place.%N%NThen, 33 minutes later...",
            "——1:33%NMy mind goes to the shelter cabin...%NI check Kokoro's wristwatch and see the correct time.%NI can see that the time of the transfer was \"1:33\".%N33 more minutes pass...%N%N——2:06%NMy mind returns to SPHIA.%NThere, I look at my wristwatch.%NI see the correct time of the transfer, \"2:06\".",
            "Seeing as I have transferred to the shelter cabin at 1:33 and returned to SPHIA at 2:06, I think that the time I have spent at the shelter cabin is 33 minutes.%N%NIn my case, it is true that the time of my stay at the shelter cabin is 33 minutes and that from 1:33 to 2:06, I was in the shelter cabin.%N%NThus, I am always aware of the correct times of the transfers.",
            "Well then, since the moment when I transfer from SPHIA%Nis simultaneous with Kokoro's transfer from the shelter cabin, let's assume that one more hour has passed.%N%N——3:06%NMy mind goes to the third area...%NMy sensory organs don't function normally, so I'm not even aware that a transfer took place.%NThen, 33 minutes later...",
            "——3:39%NMy mind goes to the shelter cabin...%NI check Kokoro's wristwatch and see the correct time.%NI can see that the time of the transfer was \"3:39\".%N%NWhat's important here is the fact that each and every time, I cannot confirm what the time was directly before the transfer.",
            "That's why, here, I'm led to think that the time of my stay at SPHIA is an hour and 33 minutes——regardless of the fact that, in reality, no longer than an hour actually passes.%N%NThen this process repeats...%N%NAt \"4:12\", I'll return to SPHIA, check the correct time on my wristwatch, and assume that I was at the shelter cabin for 33 minutes.",
            "Thus, the times of the transfers that Kokoro writes in the notepad would be as follows.%N\"1:33: Transferred from the shelter cabin to SPHIA\"%N\"2:06: Transferred from SPHIA to the shelter cabin\"%N\"3:39: Transferred from the shelter cabin to SPHIA\"%N\"4:12: Transferred from SPHIA to the shelter cabin\"",
            "While the times of my own measurements would be as follows...%N\"1:33: Transferred from SPHIA to the shelter cabin\"%N\"2:06: Transferred from the shelter cabin to SPHIA\"%N\"3:39: Transferred from SPHIA to the shelter cabin\"%N\"4:12: Transferred from the shelter cabin to SPHIA\"%N%NTherefore, since these possess the perfect symmetry of a mirror image, both I and Kokoro were led to believe that we were transferring simultaneously between two locations. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Baby Colic"),
            "Here is one of the theories about baby colic.%N%NWhy does \"baby colic\" occur in infants?%N%N\"Baby colic\" is a condition in which a baby becomes unsettled and irritable for no apparent reason, and cries frequently (e.g. at night). It is normally categorized as abnormal neuronal excitability resulting from dysautonomia in infants, but the exact reasons for its occurrence remain unclear.",
            "One explanation suggests that the contrast between the clear, vivid consciousness of an infant and the inability to properly control its body results in an intense stress for the baby, which could cause it to become irritated and cry.%N%NThat is why, from the point of view of an adult, it seems that they are just crying for no reason.",
            "There are also medics professionals who suppose that if a baby was given a body which would properly obey its will, it would turn into a cold-blooded killer.%NThey argue that since babies have not yet learned human morals, their instincts would cause them to go on a bloody rampage.%N%NInfants often exhibit cruelty. They can calmly kill other living beings with no reservation, thinking it nothing more than part of a game.",
            "As a person grows up, when they reach the age of about three, they become to be able to think from the perspective of other people and put themselves in their shoes; the ability to empathize is established.%NIt is at this age that they learn for the first time that things which one doesn't like being done to them must never be done to others as well.%N%NPerhaps this is the reason why human infants are so underdeveloped in physical strength compared with other mammals.",
            "This represents a considerable obstacle in the newborn's path to survival, but in fact, it is actually not so far-fetched a thought that it is rather the lives of adults that would be in danger if it was the other way around.%N%NIt is not impossible to imagine that, by realizing the need to protect each other from their unparalleled propensity for cruelty, humankind has evolved to create the civilization in which we live and establish culture as a means for spiritual growth.",
            "Additionally, it makes sense to think that the fact that as-of-yet mentally undeveloped newborns are deprived of physical strength lies in accordance with the principle of natural selection.%N%N\"Baby colic\", being a representation of instinctive desires, makes known the true nature of man.%N%NIt is the scream of madness, and at the same time, the pathetic lamentation of having been given life in this world. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Fuyukawa Kokoro"),
            "Full Name: Fuyukawa Kokoro%N".
            "Gender: Female%N".
            "Age: 20%N".
            "Birthday: February 22nd, 1990 (Pisces)%N".
            "Blood Type: B%N".
            "Occupation:%N".
            "    Third-year social sciences student in the humanities%N".
            "    department at Kyumeikan Women's University%N".
            "    (Major: anthropology).",
            
            "Intelligence: Average%N".
            "Physical Strength: Average%N".
            "Cooperativeness: High%N".
            "Personality:%N".
            "    The type that believes in her emotions. Honest with%N".
            "    herself. Extroverted. Brimming with curiosity.%N".
            "    Capricious. Interested in the liberal arts.%N".
            "Hobbies:%N".
            "    Birdwatching, bonsai",
            
            "Likes:%N".
            "    Believing that the end justifies the means,%N".
            "    harmonious moods, fun things%NDislikes:%N".
            "    Silence, fighting or quarreling, troublesome things,%N".
            "    cucumbers%N".
            "Surface:%N".
            "    Left-handed.%N",
            
            "Beyond the Surface:%N".
            "    Represents the \"Anima (The Female Within the Male)\"%N".
            "    (→ Archetype)%N".
            "    This is her status as of 2011.%N%N".
            "Fuyukawa Kokoro is the female protagonist.%NShe is involved in a plane crash. She is fortunately saved and joins the other survivors of the incident, but they are stranded on a snowy mountain in the middle of nowhere.",
            
            "Together with the other survivors, she has no choice but to find a way to escape that isolated place.%N%N".
            "After the accident, Kokoro's mind and body experience abnormalities. Sometimes, her mind and body separate, exchanging places with those of another person (Satoru) in a different location. Her mind and memory switch back and forth between the snowy mountain and SPHIA. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Yukidoh Satoru"),
            "Full Name: Yukidoh Satoru%N".
            "Gender: Male%N".
            "Age: 21%N".
            "Birthday: February 22nd, 1990 (Pisces)%N".
            "Blood Type: A%N".
            "Occupation:%N".
            "    Kyumeikan University Graduate School, Department of%N".
            "    Technological Engineering, Second-year master's%N".
            "    student (as a member of the quantum physics lab).%N".
            "    Skipped two grade levels. Employed in the Third%N".
            "    Research Department of Leiblich Pharmaceuticals.",
            
            "Intelligence: Very high%N".
            "Physical Strength: Average%N".
            "Cooperativeness: Fairly low%N".
            "Personality:%N".
            "    The type that is willing to take action, but does so%N".
            "    with caution. Tends toward a more rational way of%N".
            "    thinking. Does not trust others right away.%N".
            "    Interested in the sciences.%N".
            "Hobbies:%N".
            "    Reading (Genre doesn't matter. His reading addiction%N".
            "    is such that even a phonebook can be a fun read)",
          
            "Likes:%N".
            "    Being as good as his word, finding \"answers\"%N".
            "Dislikes:%N".
            "    Lies (keeps silent if he can't tell the truth), leaving%N".
            "    things unfinished, breaking promises, pumpkins%N".
            "Surface:%N".
            "    Right-handed.%N".
            "    Originally a four-year university student, but has%N".
            "    skipped two grades and is now in graduate studies.",
            
            "Beyond the Surface:%N".
            "    Represents the \"Animus (The Male Within the%N".
            "    Female)\" (→ Archetype)%N".
            "    Satoru and Mayuzumi were once going out.%N".
            "    This is his status as of 2012.%N%N".
            "The real Satoru has a unique set of values. Although he is kind and devoted to a few people around him, he is coldhearted with everyone else.%NSatoru does this to \"cherish someone who is very important\".",
            
            "You have to lose something to gain something.%N%NYukidoh Satoru is the male protagonist.%NOne day, he falls from the roof of SPHIA and loses consciousness. As his memories are in disorder, he cannot remember the details of this accident such as the reason for it or what was happening before the fall.%N%NWhen he awakens... for some reason, he finds himself on a snowy mountain.",
            "On top of that, his own body has changed into that of an unknown woman.%N%NAfter the accident, Satoru's mind and body experience abnormalities. Sometimes, his mind and body separate, exchanging places with those of another person (Kokoro) in a different location.%N%NHis mind and memory switch back and forth between the snowy mountain and SPHIA. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Mayuzumi Lin"),
            "Full Name: Mayuzumi Lin%N".
            "Gender: Female%N".
            "Age: 23%N".
            "Birthday: April 30th, 1987 (Taurus)%N".
            "Blood Type: A%N".
            "Occupation: Office worker%N".
            "Intelligence: Fairly high%N".
            "Physical Strength: Fairly low%N".
            "Cooperativeness: Low",
            
            "Personality:%N".
            "    Strong-willed. Very proud.%N".
            "    At times, she worries greatly about her outward%N".
            "    appearance. Slightly obsessed with cleanliness.%N".
            "    Eats a very unbalanced diet (is extremely picky).%N".
            "    Seems to be considerably lacking in sympathy.%N".
            "Hobbies:%N".
            "    Collecting clothes, hats and shoes%N".
            "Likes:%N".
            "    Her work, animals, high places, herself%N",
            
            "Dislikes:%N".
            "    Proud men, losing to men, dirty jokes%N".
            "Beyond the Surface:%N".
            "    Represents the \"Persona (Mask)\" (→ Archetype)%N".
            "    She has a fiancé. Satoru and Mayuzumi were once in%N".
            "    a relationship. They are presently mutually%N".
            "    estranged, but she has feelings hidden within%N".
            "    her heart.%N".
            "    This is her status as of 2011.%N".
            "Mayuzumi Lin mainly appears in the snowy mountain side of the story.%N",

            "During a business trip, she becomes involved in the plane crash and, like Kokoro, is one of the survivors.%N%NUncooperative, she makes a point of standing in the way of the refugees, disturbing the unity of the group.%NShe is antagonistic toward men and hates yielding to them more than anything else. Thus, she doesn't get along with Yomogi.%N%NA burden to the group, and a troublemaker. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Yomogi Seiji"),
            "Full Name: Yomogi Seiji%N".
            "Gender: Male%N".
            "Age: 35%N".
            "Birthday: September 16th, 1975 (Virgo)%N".
            "Blood Type: O%N".
            "Occupation: Mountaineer%N".
            "Intelligence: Average%N".
            "Physical Strength: Very high%N".
            "Cooperativeness: High",
            
            "Personality:%N".
            "    Gentle, brave and patient; has a good sense of%N".
            "    humor; very careful and is always prepared.%N".
            "Hobbies:%N".
            "    Mountain climbing, exploring, all sports%N".
            "Likes:%N".
            "    Alcohol, self-discipline, stupid jokes%N".
            "Dislikes:%N".
            "    Things that disturb group harmony, betrayal,%N".
            "    additives in food",
            
            "Beyond the Surface:%N".
            "    Represents the \"Old Wise Man\" (→ Archetype)%N".
            "    He is the husband of Utsumi. They had a child,%N".
            "    but he became one of the victims of the mass%N".
            "    murder incident several years previously,%N".
            "    dying at the hand of Inubushi Keiko.%N".
            "    This is his status as of 2011.%N%N".
            "Yomogi Seiji mainly appears in the snowy mountain side of the story.",
            
            "While traveling, he becomes involved in the plane crash and, like Kokoro, is one of the survivors.%N%NHe possesses an abundance of emergency survival knowledge. He is also proficient in survival methods and possesses a portable device which has GPS functionality.%N%NDue to his keen insight, he takes on the role of group leader, but he is continuously hindered by the actions of some of its more assertively individualistic members. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Utsumi Kali"),
            "Full Name: Utsumi Kali%N".
            "Gender: Female%N".
            "Age: 27%N".
            "Birthday: September 16th, 1984 (Virgo)%N".
            "Blood Type: O%N".
            "Occupation:%N".
            "    Public school teacher%N".
            "    (Beyond the surface: temporarily retired)%N".
            "Intelligence: High%N".
            "Physical Strength: Average%N".
            "Cooperativeness: Extremely high%N",
            
            "Personality:%N".
            "    Generally gentle and kind (sometimes%N".
            "    goes overboard and borders on pampering).%N".
            "    Easily moved to tears, but strong at heart.%N".
            "    Incredibly scary when she snaps.%N".
            "Hobbies:%N".
            "    Cooking, kitchen gardening, collecting vases%N".
            "Likes:%N".
            "    Taking care of others, listening to other people's%N".
            "    stories and to nature, the sound of the heartbeat,%N".
            "    playful jokes%N",
            
            "Dislikes:%N".
            "    Things that make her think of death, actions%N".
            "    that are harmful to nature, forsaking people%N".
            "Surface:%N".
            "    Half-Indian%N".
            "Beyond the Surface:%N".
            "    Represents the \"Great Mother\" (→ Archetype)%N".
            "    Yomogi's wife. They had a child, but he became one%N".
            "    of the victims of the mass murder incident several%N".
            "    years ago, dying at the hands of Inubushi Keiko.%N",
            
            "    The loss of her child has caused her great%N".
            "    psychological suffering, which is why, until several%N".
            "    months ago, she was institutionalized in a%N".
            "    psychiatric hospital.%N".
            "    In August of 2011, she gave birth.%N".
            "    The newborns are (fraternal) twins.%N".
            "    This is her status as of 2012.%N%N".
            "Utsumi Kali mainly appears in the SPHIA side of the story.",
            
            "Like Satoru, she is staying at SPHIA. She possesses extensive knowledge, especially in the field of psychology.%N%NShe is the mood maker and the mediator of the group. For some reason, she says and does some very strange things from time to time.%N%NShe bears a great hatred toward Inubushi Keiko."
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Inubushi Keiko"),
            "Full Name: Inubushi Keiko%N".
            "Gender: Female%N".
            "Age: 20%N".
            "Birthday: April 30th, 1991 (Taurus)%N".
            "Blood Type: AB%N".
            "Occupation:%N".
            "    A convicted criminal, suffering from mental%N".
            "    disorders; currently confined in the medical%N".
            "    facility called SPHIA.",
            
            "Intelligence: Average%N".
            "Physical Strength: Extremely low%N".
            "Cooperativeness: Extremely low%N".
            "Personality:%N".
            "    Personality: Aggressive, lives only for the moment,%N".
            "    extreme cyclothymia, changes her evaluation of other%N".
            "    people excessively, loves despair and fears hope (has%N".
            "    a tendency toward borderline personality disorder)%N".
            "Hobbies:%N".
            "    Talking by phone, e-mail, and chat%N",
            
            "Likes:%N".
            "    Pleasure, total despair, attracting others' attention,%N".
            "    self-mutilation, those who will accept who she is%N".
            "    (to whom she can cling)%N".
            "Dislikes:%N".
            "    Being abandoned, unreliable dreams, half-hearted%N".
            "    sympathy and hope, facile statements (stemming%N".
            "    from popular opinion, etc)%N",
            
            "Beyond the Surface:%N".
            "    Represents the \"Shadow\" (→ Archetype)%N".
            "    The one that Kokoro sees is the real%N".
            "    Suzukage Hotori.%N".
            "    The body is the same, but they're different%N".
            "    individuals.%N".
            "    Has DID (Dissociative Identity Disorder).%N".
            "    This is her status as of 2012.%N%N".
            "Inubushi Keiko mainly appears in the SPHIA side of the story.",
            
            "Like Satoru, she is staying at SPHIA.%NShe herself isn't particularly aware of it, but she takes pleasure in trifling with her surroundings, often causing problems.%N%NShe finds Utsumi irritating.%NShe tries to draw Satoru in.%N%NShe has no particular attachment to life.%NA burden to the group, and a troublemaker. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Kusuda Yuni"),
            "Full Name: Kusuda Yuni%N".
            "Gender: Male%N".
            "Age: 11 (12 as seen by Satoru)%N".
            "Birthday: October 19th, 1999 (Libra)%N".
            "Blood type: AB%N".
            "Occupation:%N".
            "    Fifth-grade student%N".
            "    (Sixth-grade, as seen by Satoru)%N".
            "Intelligence: Very high%N".
            "Physical Strength: Average (appropriate for his age)%N",
            
            "Cooperativeness:%N".
            "    Sometimes ridiculously high,%N".
            "    sometimes unbelievably low.%N".
            "Personality:%N".
            "    Innocent. Cowardly but kind-hearted.%N".
            "    Very quick-witted.%N".
            "Hobbies:%N".
            "    Occult-related activities (tarot, divination, etc.)%N".
            "Likes:%N".
            "    Lively things, happy things, friends%N",
            
            "Dislikes:%N".
            "    Materialism, loneliness, Leiblich Pharmaceuticals%N".
            "Beyond the Surface:%N".
            "    Represents the \"Trickster\" (→ Archetype)%N".
            "    The Yuni who exists on the snowy mountain knows%N".
            "    the truth about the time-space transfer phenomenon.%N%N".
            "Somehow, Kusuda Yuni appears in both the snowy mountain and SPHIA sides of the story.%NIn the former, he is a survivor of the plane crash, and in the latter, staying in SPHIA.",
            
            "Has abundant knowledge related to the occult, especially theology.%NHe sometimes surprises those around him with his predictions of the future (since they often come true!).%NAn enigmatic boy who appears in both places.%N%NWhat are his true intentions...?"
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Suzukage Hotori"),
            "Full Name: Suzukage Hotori (the true Hotori)%N".
            "Gender: Female%N".
            "Age: 19%N".
            "Birthday: October 30th, 1991 (Scorpio)%N".
            "Blood Type: A%N".
            "Occupation: College preparatory school student%N".
            "Intelligence: Average%N".
            "Physical Strength: Average%N".
            "Cooperativeness: Average",
            
            "Personality:%N".
            "    Introverted, quiet, shy around strangers%N".
            "Hobbies:%N".
            "    Film (especially titles with female leads), music,%N".
            "    rearranging her room, traveling alone%N".
            "Likes:%N".
            "    Good-looking women (she admires them), keeping%N".
            "    things tidy and in order%N".
            "Dislikes:%N".
            "    Overly bright or noisy places, messy rooms",
            
            "Surface:%N".
            "    Suffers from acute aphasia%N".
            "    (due to the shock from the plane crash)%N".
            "Beyond the Surface:%N".
            "    After being caught in the plane crash, she wanders%N".
            "    alone in the snowy mountains before eventually%N".
            "    collapsing in the middle of a snowfield.%N".
            "    Due to the space-time transfer phenomenon, her mind%N".
            "    transfers in and out of Inubushi's body.%N".
            "    This is her status as of 2011.",
            
            "Suzukage Hotori mainly appears in the SPHIA side of the story.%N%NHowever, the body she resides in is Inubushi Keiko's.%NHer real body lies in the middle of a snowfield.%N(The \"Hotori\" that Satoru sees is Inubushi.) "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Yukidoh Sayaka"),
            "Full name: Yukidoh Sayaka%N".
            "Gender: Female%N".
            "Age: 10 years (at time of death)%N".
            "Birthday: February 22nd, 1990 (Pisces)%N".
            "Blood type: AB%N".
            "Occupation: Fourth-grade student (11 years ago)%N".
            "Intelligence:%N".
            "    Changes according to the personality%N".
            "    (dominant personality = average)",
            
            "Physical Strength:%N".
            "    Changes according to the personality%N".
            "    (dominant personality = average)%N".
            "Cooperativeness:%N".
            "    Changes according to the personality%N".
            "    (dominant personality = average)%N".
            "Personality:%N".
            "    Changes according to the personality%N".
            "    (dominant personality = gentle and%N".
            "    pure-hearted, strong, intelligent)",
            
            "Hobbies:%N".
            "    Changes according to the personality%N".
            "    (dominant personality = reading)%N".
            "Likes:%N".
            "    Changes according to the personality%N".
            "    (dominant personality = her older brother,%N".
            "    family, snow)%N".
            "Dislikes:%N".
            "    Changes according to the personality%N".
            "    (dominant personality = hospitals, medicine,%N".
            "    herself)",
            
            "Surface:%N".
            "    Satoru's younger sister and fraternal twin.%N".
            "Beyond the Surface:%N".
            "    Died 11 years prior to 2012.%N".
            "    Diagnosed with DID (dissociative identity%N".
            "    disorder).",
            
            "Yukidoh Sayaka is Satoru's beloved sister. A person who is no longer in this world, she only appears in a flashback...%N%NHer death is the reason Satoru ends up designing and executing the current \"plan\".",
            
            "The following pages contain a chronology of events which was released with the PSP version of the game.%N%NThe full version contains information from Never7 and Ever17, but only the parts relevant to Remember11 are preserved here.",
            
            "——1975, September 16th%N".
            "Yomogi Seiji is born.%N".
            "%N".
            "——1984, September 16th%N".
            "Utsumi Kali is born.%N".
            "%N".
            "——1987, April 30th%N".
            "Mayuzumi Lin is born.%N",
            
            "——1990, February 22nd%N".
            "Fuyukawa Kokoro is born.%N".
            "Yukidoh Satoru is born.%N".
            "Yukidoh Sayaka is born.%N".
            "%N".
            "——1990, November 27th%N".
            "Enomoto Naoya is born.%N".
            "%N".
            "——1991, April 30th%N".
            "Inubushi Keiko is born.%N",
            
            "——1990, October 30th%N".
            "Suzukage Hotori is born.%N".
            "%N".
            "——1998, Date Unknown%N".
            "Both of Satoru's parents are murdered. The culprit was their daughter, Sayaka.%N".
            "%N".
            "The trial proceedings result in Sayaka being diagnosed with DID (Dissociative Identity Disorder). As such, she is found innocent, but admitted to a mental institute.%N",
            
            "Around that time, a number of similar incidents sporadically take place, ultimately leading to a revision of the penal code in the following years.%N".
            "%N".
            "——1998, Date Unknown%N".
            "Sayaka is transferred to Leiblich Pharmaceuticals' research facility.%N".
            "%N".
            "——1999, January 14th%N".
            "Yomogi Junichi is born.%N",
            
            "——2001, Date Unknown%N".
            "The \"existence\" of Sayaka is lost forever.%N".
            "%N".
            "Satoru acknowledges that he participated in her \"death\". However, that is only as it appears.%N".
            "%N".
            "Satoru, overtaken with grief at the loss of his sister, continues to search for the true reason behind her \"death\"——the real culprit behind her \"murder\".%N".
            "%N".
            "Satoru immerses himself in obsessive study.%N",
            
            "——2007, Date Unknown%N".
            "Due to the revisions in the penal code, SPHIAs (Specified Psychiatric Hospital for Isolation and Aegis) are built nationwide.%N".
            "%N".
            "——2008, April%N".
            "Satoru enters Kyumeikan University.%N".
            "Kokoro enters Kyumeikan Women's University.%N",
            
            "——2008, Date Unknown%N".
            "Satoru meets Enomoto in school, and they deepen the bonds of their friendship.%N".
            "%N".
            "——2008, Summer%N".
            "Satoru and Mayazumi begin dating.%N".
            "%N".
            "——2008, Date Unknown%N".
            "DSM-VI is published. (Diagnostic and Statistical Manual of Mental Disorders, 6th Edition) %N",
            
            "——2008, Date Unknown%N".
            "The Dual Surname bill is passed.%N".
            "%N".
            "——2009, January 14th%N".
            "Awazumi City Municipal Hospital Spree Killing incident occurs. 12 killed, 19 injured. Junichi is killed.%N".
            "%N".
            "Inubushi, the culprit, uttered the words \"Where is self?\" before her arrest.%N",
            
            "Inubushi was diagnosed as suffering from DID (Dissociative Identity Disorder) by the authority. She is found not guilty of the crime.%N".
            "%N".
            "She is confined at the SPHIA on Aosagi Island.%N".
            "%N".
            "——2009, Date Unknown%N".
            "Jumping at the opportunity of the Awazumi incident, Satoru builds confidence in his own thinking. Borrowing Inubushi's words, he christens the \"Transcendental Will (Or rather, Intelligence)\" as \"Self\".%N",
            
            "Can such a being really exist? Was this evidence of its existence, or was this an illusion created from his desire for it to exist?%N".
            "%N".
            "Soon, Satoru devises and executes a plan. A plan to lure \"Self\" to this world:%N".
            "The \"YUKIDOH Plan\".%N".
            "%N".
            "——2009, April%N".
            "Satoru and Enomoto skip two years of university to become fourth-years.%N",
            
            "——2009, Date Unknown%N".
            "Satoru reveals his \"Plan\" to Enomoto, seeking his collaboration.%N".
            "(But he hides his motives about Sayaka, explaining that the motive is entirely scientific)%N".
            "Feeling empathy for Satoru's values and way of thinking, the half-adoring Enomoto consents.%N",
            
            "——2010, March%N".
            "Satoru and Enomoto graduate from Kyumeikan.%N".
            "Satoru enters Kyumeikan University Graduate School.%N".
            "And at the same time, finds employment after Leiblich Pharmaceuticals scouts him. Enomoto is also employed by Leiblich Pharmaceuticals in the same fashion.%N".
            "%N".
            "Satoru and Enomoto are assigned to Engineering Research Division 3.%N",
            
            "Satoru and Enomoto begin their independent project in Leiblich Pharmaceuticals' laboratory.%N".
            "%N".
            "Using Leiblich's top secret molecular quantum teleportation equipment as a base, they start work on space-time transfer equipment.%N".
            "%N".
            "——2010, Summer%N".
            "Satoru and Mayazumi break up.%N",
            
            "——2010, Date Unknown%N".
            "Trials surrounding a certain cloned human's birth are held in Japan. The accused, a single scientist, produced a clone of his own son. Soon, his secret was leaked, and he was put on trial.%N".
            "%N".
            "He was given a life sentence.%N".
            "%N".
            "However, after the contents of the cloned boy's testimony were reported, public opinion instantly reversed, and movements started to revise the law.%N",
            
            "——2010, Date Unknown%N".
            "Proclamation on Clone Law revisions.%N".
            "%N".
            "——2010, Autumn%N".
            "Space-time transfer equipment development encounters difficulties.%N".
            "%N".
            "——2011, January%N".
            "This year, solar winds are observed the highest in recorded history.%N",
            
            "——2011, Date Unknown%N".
            "Satoru makes a large scale plan with the space-time transfer equipment still incomplete.%N".
            "The goal is on-site data acquisition.%N".
            "%N".
            "——2011, January 11th%N".
            "[KOKORO's viewpoint]%N".
            "Kokoro boards a small aircraft for flight HAL18 to Wakkanai in order to meet Inubushi at Aosagi Island's SPHIA. Aboard the same plane are Yomogi, Mayuzumi, and Yuni.%N",
            
            "Aboard the same flight is Hotori.%N".
            "%N".
            "Past 4 PM%N".
            "The 31 crew members and passengers on flight HAL18 disappear from radar in the mountain district of southern Aomori prefecture. The police and related departments establish a temporary headquarters, and immediately search for the airframe and passengers. But the unusually bad weather makes the search difficult.%N".
            "%N".
            "Flight HAL18 crashes.%N",
            
            "Half past 4 PM%N".
            "Space-time tranfers begin to occur between the Aosagi Island, January 2012 circle and the Hotarubi, July 2011 circle.%N".
            "%N".
            "At first, personality exchange did not occur with the transfer.%N".
            "(Because Kokoro is not inside the Mount Akakura circle)%N",
            
            "2012 Yuni uses this space transfer to move from the Aosagi Island circle to Akakura, 2011. At the same time, 2011 Yuni wanders into the Aosagi Island circle. 2012 Yuni leads the three survivors (Kokoro, Yomogi, Mayuzumi) to the Mount Akakura emergency cabin for refuge.%N".
            "%N".
            "At this time, 2012 Yuni brings into the cabin the newspaper from 6 months into the future, the \"Newspaper from July 4th, 2011\".%N",
            
            "From 8:02 PM on%N".
            "Along with the transfer, an exceptional phenomenon occurs. Each time a space-time transfer occurs, a personality exchange also occurs among the three members of each group:%N".
            "・  Kokoro - Satoru (2012) - Elder Brother Twin Fetus%N".
            "  (July 2011)%N".
            "・  Hotori - Inubushi (2012) - Younger Sister Twin Fetus%N".
            "  (July 2011)%N",
            
            "——2011, Date Unknown%N".
            "Satoru comes across news of the missing people from Flight 18 in the Tohoku region. Although the passenger names were read out loud on a news broadcast, Satoru was concentrating on finding a test site, and failed to hear Mayuzumi's name.%N",
            
            "According to theories derived by Satoru's group, the length of the transfer time for space-time transfer (Timeslip Period) is proportional to the transfer room (Teleportation Range). Transferring over a long period of time requires a vast area of land, so a narrow country like Japan was deemed unsuitable. Therefore, he chooses Australia to be the test site.%N".
            "%N".
            "He makes arrangements to fly to Australia and have an extended stay. His day of departure is January 18th.%N",
            
            "——2011, January 15th%N".
            "Satoru comes to Mount Akakura from 2012 via transfer and discovers a collapsed girl (Hotori) in the snowfield. Satoru treats her as a corpse, but in reality, she is only near death at this point. (Inside the body is Inubushi's consciousness)%N".
            "%N".
            "——2011, January 16th%N".
            "By an unnatural chance, the cabin refugees' satellite phone connects to the mountain rescue team.%N",
            
            "——2011, January 17th%N".
            "After July 17th, 2011, the Hotarubi Circle is vacated so that in the event of a space-time transfer, no personality exchange occurs.%N".
            "%N".
            "Early morning%N".
            "Kokoro discovers a collapsed girl (Hotori) in the snowfield. At this point, Hotori has already completely expired, and her body becomes a corpse.%N",
            
            "Around 6:53 AM%N".
            "An avalanche occurs at point X.%N".
            "%N".
            "Around 6:58 AM%N".
            "The prolonged blizzard weakens. The rescue team arrives at the site of the incident. There they find 27 corpses out of the 31 crew members and passengers. Around the same time, they rescue the sole survivor——Yuni. They also discover evidence that other survivors were in the refuge cabin.%N",
            
            "It was confirmed that Yuni and the others had survived in the refuge cabin since the crash on the 11th until the 17th. Throughout that day, Flight 18's crash was reported on the news.%N".
            "%N".
            "Evening%N".
            "Satoru comes across news of Flight 18's crash. Satoru becomes convinced of Mayuzumi's death.%N",
            
            "While feeling sorrow, Satoru also begins to wonder if he can rescue Mayuzumi using space-time transfer. More information about the incident reminds Satoru of an interesting \"Stage\".%N".
            "%N".
            "He suddenly cancels his departure to Australia.%N".
            "But since the equipment is still incomplete, his \"Plan\" cannot be executed at this point in time.%N",
            
            "——2011, Date Unknown%N".
            "Satoru, seeking a clue, interviews Yuni, the sole survivor. Yuni that day was of an unsound mind, and unable to give an adequate story, but he possessed an important item: a terabyte disc.%N",
            
            "——2011, Date Unknown%N".
            "Satoru analyzes the disc he had \"inherited\" from Yuni. It includes encrypted information, but Satoru successfully decrypts it. The disc indeed included various information:%N".
            "  \"Information only the reader would know\" or%N".
            "  \"All the information the reader wants to know\"%N",
            
            "——2011, Date Unknown%N".
            "Satoru completes his space-time transfer equipment based on the information in the terabyte disc, and makes major amendments to his \"Plan\":%N".
            "・ The test site is not Australia, but three points in%N".
            "  Japan (Mount Akakura, Aosagi Island, Hotarubi).%N".
            "・ The goal is not data acquisition, but the rescue of%N".
            "  Mayuzumi and the other victims of Flight 18's crash.%N".
            "・ And... To seize \"Self\" in this space-time, and confine%N".
            "  it.%N",
            
            "——2011, Date Unknown%N".
            "Satoru seeks Yuni's cooperation to execute his \"Plan\".%N".
            "As usual, he makes use of information on the terabyte disc to persuade Yuni. Yuni answers Satoru's call in order to save Kokoro.%N".
            "%N".
            "——2011, Date Unknown%N".
            "Satoru's \"Plan\" preparations steadily progress.%N",
            
            "For one stage, he remodels the abandoned ruins of Hotarubi mine in Moegi Village. He drills a dome shape into the mine, and paints the ceiling, walls, and floor pure white. The mysterious room where one's own standing point is ambiguous is complete.%N".
            "%N".
            "Next, he gives Yuni and Enomoto detailed directions. However, he intentionally hides some information (information he is afraid could bring hindrances to his \"Plan\".)%N",
            
            "——2011, July%N".
            "Satoru sets up at the Hotarubi Mine, completing the space-time transfer equipment.%N".
            "%N".
            "——2011, Date Unknown%N".
            "Satoru and Enomoto perform a small scale (short distance, short time) space-time transfer, and exchange bodies. Hence, Satoru's body shelters Enomoto's consciousness, and Enomoto's body shelters Satoru's consciousness.%N",
            
            "——2011, July 4th%N".
            "After the snow melted on July 3rd, three decomposed male and female corpses are found on the bare mountain surface of Mount Akakura.%N".
            "%N".
            "The authorities announce that they are the three remaining people missing from HAL18's crew and passengers (Kokoro, Yomogi, Mayuzumi).%N".
            "%N".
            "...At least those are the details published in newspapers?%N",
            
            "However, the validity of the article is unknown.%N".
            "It is also possible that it is a fake newspaper article fabricated by Satoru's group.%N".
            "%N".
            "——2011, July 12th%N".
            "Utsumi is confined to the basement of Hotarubi.%N".
            "Utsumi is pregnant with twin fetuses.%N".
            "Operation of the space-time transfer equipment begins.%N".
            "All of this is done by Satoru's group.%N",
            
            "About half past 4 PM%N".
            "Space-time transfer begins between the Mount Akakura, January 2011 circle and the Aosagi Island, January 2012 circle.%N".
            "%N".
            "From here on, the transfer phenomenon occurs at irregular intervals until terminated by the equipment. These irregular transfers are generally unpredictable even to the designer, but for this plan (many identical repetitions of the same history), the transfers all occur with the same perfect timing.%N",
            
            "From 8:02 PM on%N".
            "Along with the transfer, an exceptional phenomenon occurs.%N".
            "Each time a space-time transfer occurs, a personality exchange also occurs among the three members of each group:%N".
            "・  Kokoro - Satoru (2012) - Elder Brother Twin Fetus%N".
            "  (July 2011)%N".
            "・  Hotori - Inubushi (2012) - Younger Sister Twin Fetus%N".
            "  (July 2011)%N",
            
            "Tragic events occur due to the fetuses' colic.%N".
            "%N".
            "——2011, July 15th%N".
            "The fetuses' colic continues in good fun. When SPHIA transfers to the Hotarubi circle, 2012 Enomoto is murdered by a fetus. (The fetus's body is 2012 Enomoto's, Enomoto's murdered body is 2012 Satoru's)%N".
            "%N".
            "As a result, this is an unexpected turn of events. Or is it?%N",
            
            "——2011, July 16th%N".
            "Dawn of the next morning%N".
            "Utsumi is freed from the Hotarubi basement. All of this is done by Satoru's group.%N".
            "%N".
            "——2011, July 17th onward%N".
            "The Hotarubi circle is vacated so that in the event%N".
            "of a space-time transfer, no personality exchange occurs.%N",
            
            "——2011, July 18th%N".
            "The space-time transfer equipment reaches the Final Level.%N".
            "%N".
            "——2011, August%N".
            "Utsumi's twins are born.%N".
            "%N".
            "——2012%N".
            "Satoru and Utsumi come to Aosagi Island's SPHIA. Utsumi as a patient, Satoru as staff.%N",
            
            "——2012, January 11th%N".
            "Satoru \"returns\" the terabyte disc to Yuni's room in SPHIA. (Satoru re-encrypts any data he doesn't want other people to read)%N".
            "%N".
            "Yuni waits outside of the Aosagi Island circle for the next space-time transfer.%N".
            "%N".
            "[SATORU's viewpoint]%N".
            "Satoru climbs SPHIA's clock tower. As if lured, the shadow of \"Someone\" appears.%N",
            
            "Past 4 PM——%N".
            "Satoru falls from the SPHIA clock tower with a lightning bolt.%N".
            "At this time, Satoru loses the personality \"as Satoru\" (\"%C88FFI%CFFFF\") and his memory. The empty shell (\"I\") from here on suffers from an unnatural memory defect, as if \"Someone's\" memories had been transplanted.%N",
            
            "Half past 4 PM%N".
            "The Mount Akakura, January 2011 circle and the Hotarubi, July 2011 circle start to transfer. At first, personality exchange did not occur with the transfer. (Because Kokoro is not inside the Mount Akakura circle)%N".
            "%N".
            "Yuni uses this space-time transfer to move from the Aosagi Island circle to Mount Akakura, 2011. At the same time, 2011 Yuni wanders into the Aosagi Island circle.%N",
            
            "From 8:02 PM on%N".
            "Along with the transfer, an exceptional phenomenon occurs. Each time a space-time transfer occurs, a personality exchange also occurs among the three members of each group:%N".
            "・  Kokoro - Satoru (2012) - Elder Brother Twin Fetus%N".
            "  (July 2011)%N".
            "・  Hotori - Inubushi (2012) - Younger Sister Twin Fetus%N".
            "  (July 2011)%N",
           
            "Around 8:40PM%N".
            "Yuni and Utsumi discover the terabyte disc in Yuni's room. They inspect the disc's content.%N".
            "%N".
            "From here on, 2011 Yuni is in possession of the disc.%N".
            "%N".
            "——2012, January 16th%N".
            "From July 17th, 2011 on, the Hotarubi circle is vacated so that in the event of a space-time transfer, no personality exchange occurs.%N",
            
            "——2012, January 17th%N".
            "The avalanche crisis is overcome thanks to the efforts of Satoru's group. All members alive. Everyone is present (Kokoro, Satoru, Mayuzumi, Yomogi, Utsumi, Inubushi, 2012 Yuni, Twins) at Aosagi Island's shores. (2011 Yuni is taking care of himself in the refuge cabin, soon to be taken in by the rescue team.)%N".
            "%N".
            "The last space-time transfer (the Final Level) occurs. Satoru (\"I\") is lost from the world. His destination...?%N",
            
            "Was the \"Plan\" a success as expected?%N".
            "Was it a failure?%N".
            "Where is Self?%N".
            "The eternally inescapable labyrinth of memories.%N".
            "The shadow Satoru saw just before his fall from the clock tower——%N".
            "It is already imprisoned in space-time.%N".
            "It may have been Self...%N".
            "—— Into the Infinity Loop."
            
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Enomoto Naoya"),
            "Full Name: Enomoto Naoya%N".
            "Gender: Male%N".
            "Age: 21%N".
            "Birthday: November 27th, 1990 （Sagittarius）%N".
            "Blood Type: B%N".
            "Occupation：%N".
            "    Employed in the Third Research Department%N".
            "    of Leiblich Pharmaceuticals.%N".
            "Intelligence： High%N".
            "Physical Strength： Average%N".
            "Cooperativeness： Fairly low%N",
            
            "Personality:%N".
            "    Seemingly coldhearted, but deeply emotional.%N".
            "    Intellectual. Calm. Poor at expressing emotions.%N".
            "Hobbies:%N".
            "    Work, crossword puzzles%N".
            "Likes:%N".
            "    Machines%N".
            "Dislikes:%N".
            "    Uncivilized environments",
            
            "Surface:%N".
            "    The man lurking under the facility. Knows everything%N".
            "    about the space-time transfer phenomenon.%N".
            "Beyond the Surface:%N".
            "    Displeased with the flaws born from Satoru's memory%N".
            "    loss as well as the caprices of the fetal twins,%N".
            "    but not being able to stop them, he silently observes%N".
            "    the course of events.%N".
            "    This is his status as of 2012.",
            
            "Enomoto Naoya mainly appears in the SPHIA side of the story.%N%NHe is Satoru's colleague.%NTogether with Satoru, he created the space-time warping device and executed the \"plan\".%N%NHe continues to monitor the progress of the plan from beneath SPHIA. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Yomogi Junichi"),
            "Full Name: Yomogi Junichi%N".
            "Gender: Male%N".
            "Age: 9 (at time of death)%N".
            "Birthday: January 14th, 1999 (Capricorn)%N".
            "Blood Type: O%N".
            "Occupation: Fourth-grade student%N".
            "Intelligence: Average%N".
            "Physical Strength: Average (appropriate for his age)%N".
            "Cooperativeness: High",
            
            "Personality:%N".
            "    Cheerful, honest, innocent%N".
            "Hobbies:%N".
            "    Sports, cycling%N".
            "Likes:%N".
            "    Being physically active, making his parents happy%N".
            "Dislikes:%N".
            "    Being alone%N".
            "Surface:%N".
            "    The child of Yomogi and Utsumi.%N",
            
            "Beyond the Surface:%N".
            "    Two years ago (as of 2011), he was killed by Inubushi%N".
            "    and has already passed away.%N%N".
            "Yomogi Junichi appears only in flashbacks.%N%NOutstandingly athletic and honest, he was an ideal child beloved by his family.%NHis death brought unimaginable despair and hatred to his parents, enough to bring on madness... "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("I"),
            "I am I and not %C88FFI%CFFFF.%NThere are two of \"me\" here.%NAnd if that's the case, who exactly is %C88FFI%CFFFF?%NAnd if that's the case...%NWho exactly am I? "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("R"),
            "1.%X025The symbol for \"radius\" and \"ratio\". Represents an arc%N".
            "%X025extension.%N".
            "2.%X025The 18th letter of the alphabet.%N".
            "3.%X025The symbol for \"right\".%N%N".
            "And also, the R from the title of this game (Remember11).%N%N".
            "The letter R is full of significant meanings. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Lucid Dream"),
            "When one is dreaming, yet at the same time conscious of the fact that he or she is currently dreaming.%NIt can also refer to the technique of entering such a dream.%N%NIt is said that those who are having lucid dreams realize that they are in a dream and are able to direct the continuation of the dream according to their own will. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Personal Space"),
            "The region of space surrounding every person which causes them discomfort if invaded.%N%NCan be referred to as a human's territory. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("Mount Akakura"),
            "Part of Aomori Prefecture's Southern Hakkouda Mountain Range.%N%NElevation: 1,298 meters.%N%NIt draws a fair number of people during the winter climbing season. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("The Meanings Behind the BGM Titles"),
            "【Chaining】%N".
            "A behavioral sequence.%N".
            "The way that chaotic speech and actions are linked with each other and connected one by one.%N%N".
            "【Scheme】%N".
            "Scheming.%N".
            "The plan formed within the walls of the inhuman research institute.",
            
            "【Anima】%N".
            "The inner self.%N".
            "The face of the feminine within the masculine (in Jungian psychology).%N%N".
            "【Animus】%N".
            "Intentions. Violent hostility.%N".
            "The face of the masculine within the feminine (in Jungian psychology).",
            
            "【Persona】%N".
            "The (restrained) self that one presents to other people.%N%N".
            "【Old wise man】%N".
            "A symbol of \"wisdom\". A father figure (dignified).%N".
            "At times, one who will put you to the test.%N%N".
            "【Great mother】%N".
            "She gives birth to and envelops all things, raising them.%N".
            "As an aspect of that, she grasps her target and doesn't let it go, embraces it tightly, and at last engulfs it into",

            "her body which holds the depths of darkness.%N%N".
            "【Shadow】%N".
            "The individualistic shadow and the omnipresent shadow. To the person in question, their Shadow is something which they hate. An entity which is one's polar opposite.%N".
            "Possessed of a primal darkness.%N".
            "The more it is repressed, the stronger it becomes.",
            
            "【Puer aeternus】%N".
            "The eternal boy. Associated with the Eleusinian Mysteries of Greece and their principal god or priest Iakchos. Creative and possessing a vibrant imagination. However, not well-suited to everyday society.%N%N".
            "【Trickster】%N".
            "One possessing a disordered soul which rejects all boundaries, destroys all order, and defies all social conventions. He will use cunning and trickery to get what he wants from his opponent. At his most extreme,",
            
            "he will deceive even monarchs or gods without a moment's hesitation, and by giving what he gains to the mortal populace, he becomes a mythical hero.%N%N".
            "【Self】%N".
            "Fetal movements/Self.%N%N".
            "【Communication】%N".
            "Contact.%N%N",
            
            
            "【Anxiety】%N".
            "Uneasiness.%N%N".
            "【Cue】%N".
            "Clue.%N%N".
            "【Paranoia】%N".
            "Originating internally, the will, thoughts, and actions all become irregular, gradually growing more and more disordered and eventually reaching the point of a persistent set of delusions.",
            
            "【Fear and Insanity】%N".
            "Fear and Madness [Insanity].%N%N".
            "【Thanatos】%N".
            "In Greek mythology, the god who personifies \"death\" is \"Thanatos\". A Freudian term. The internal instinct toward self-destruction.%N%N".
            "【Delusive consciousness】%N".
            "A delusional consciousness.",
            
            "【Mantra】%N".
            "A spoken phrase which holds a mysterious power.%N".
            "Originally refers to hymns in the Vedic scriptures.%N%N".
            "【Multiple maze】%N".
            "The complications of consciousness → bewilderment,%N".
            "agitation, and confusion.%N%N".
            "【Dreamy lens】%N".
            "Imagining something which calms the heart.",
            
            "【Dark Gestalt】%N".
            "Gestalt: An appearance which is maintained through changes and alterations, and which holds a coherent meaning and structure greater than the sum of its individual elements, like a single figure or melody.%N%N".
            "【Will -Theme-】%N".
            "A process within the mind which operates when consciously or independently developing and carrying out thoughts and actions. It can also be said to be the energetic aspect of consciousness.",
            
            "【Catharsis】%N".
            "First referred to in Aristotle's \"Poetics\". The meaning is one of purification or purging. The release of the negative emotions built up by watching a tragedy in order to purify the mind is a catharsis.%N".
            "In its old definition, it seems this word's emphasis was on catharsis as a therapeutic process or treatment.%N%N".
            "【All or None】%N".
            "The All or None Principle.%N".
            "Put another way, \"Life or Death\".",
            
            "【δ Wave】%N".
            "・δ (Delta) Wave [Between 0.5 and 4 Hz]%N".
            "    Appears during sound sleep.%N".
            "    In newborns as well as adults, appears during%N".
            "    the \"deep sleep\" stage.%N%N".
            "・θ (Theta) Wave [Between 4 and 8 Hz]%N".
            "    Appears when a person has gotten sleepy.",
            
            "・α (Alpha) Wave　[Between 8 and 13 Hz]%N".
            "    A wave that appears in parts of the brain which are%N".
            "    at rest. In a healthy adult who is relaxed and has%N".
            "    their eyes closed, they appear in the occipital%N".
            "    region. Rarely observed in the frontal region.%N".
            "    These alpha waves disappear upon opening the eyes,%N".
            "    and change to β waves with small amplitudes.%N".
            "    This is because the visual cortex in the occipital%N".
            "    region, which had been at rest until then, starts%N".
            "    actively working due to the eyes being opened.%N%N",
            
            "・β (Beta) Wave　[Between 13 and 40 Hz]%N".
            "    Appears during active thinking.%N%N".
            "【Heuristic】%N".
            "One method for problem solving.%N".
            "A solution method which tries to obtain the correct answer by following choices in order which seem correct, using trial and error.%N%N".
            "【Nucleus】%N".
            "The core. An essential part of matter. "
          ),
        MAKE_STRING_TABLE
          (
            MAKE_ESCAPED("The Meanings Behind the Scene Titles"),
            "【The α and the ω】%N".
            "In the Greek alphabet, α is the first letter (the beginning), while ω is the last (the end). The intended meaning is that there is a closing resolution within the beginning of the story.%N%N".
            "【Ethereal \"Girl\"】%N".
            "Refers to the real Inubushi.%N".
            "Other than Inubushi Keiko, it also refers to Fuyukawa Kokoro.",
            
            "【O Great Sephirot, Our Master】".
            "%NIn Judaism, the \"tree of Sephirot\" is a tree of life that grows in Heaven. The tree of Sephirot itself represents the enormous macrocosm, while its form also represents the microcosm (the human body).%N%N".
            "Furthermore, it also holds the meaning of the path of spiritual pilgrimage to God. In this case, \"Master\" means God—that is, a 0th-dimensional being.%N".
            "(Note: Sephirot has a number of alternative spellings,  e.g. \"Sephiroth.\")",
            
            "【The Animus Within the Anima】%N".
            "The consciousness of Fuyukawa Kokoro within Yukidoh Satoru; can also be understood as the Yukidoh Satoru within Fuyukawa Kokoro.%N%N".
            "【A Taste of the Primordial Sea】%N".
            "\"Primordial sea\" is a metaphor for the amniotic fluid in the mother's body which surrounds and cushions the fetus, softening the shocks from outside.",
            
            "【I'm Here】%N".
            "The desire of those caught in the accident to make their situation known elsewhere. From a psychology perspective, it can also refer to expressing one's existence to others.%N%N".
            "【The Desire to Change】%N".
            "One characteristic of the human psyche is the presence of two opposing wills, the \"will to preserve the status quo\" and the \"will to break the balance (bring changes),\" which maintain an equilibrium.",
            
            "The desire to visit the crash site arises from the latter of the two wills, which strives to break down the present situation of being stranded at the crash site.%N%N".
            "【Chainlike Spiral】%N".
            "Two different places and consciousnesses, intertwined and switching places with each other in \"chain\" and \"spiral\" patterns. The helical base sequence of DNA, which holds all the information about a living being, also takes the form of a chainlike spiral.",
            
            "【Frightens and is Frightened】%N".
            "(The One That Frightens, the One That is Frightened)%N".
            "Is someone after Kokoro (in Satoru's body)'s life?%N".
            "Is Kokoro (in Satoru's body) after Yuni's life?%N".
            "Just what is the truth?%N".
            "Everyone just keeps falling further and further into paranoia.%N%N",
            
            "【While Receiving Blessings】%N".
            "In Christianity, death is regarded as the time of separation of the \"body\" and the \"mind\". It is said that at the time of death, the exhausted \"body\" is laid to rest, while the \"mind (soul)\" is sanctified and receives Heaven's blessing.%N%N".
            "【Eternal Boy】・【Ｐｕｅｒ　Ａｅｔｅｒｎｕｓ】%N".
            "The \"Eternal Boy\" is an example of what Jung, a famous psychologist, called human \"archetypes\". Also referred to as \"Peter Pan Syndrome\", this refers to the mind of",

            "a person who is highly creative and rich in imagination, but though an adult, is immature at heart, which could lead them to be a source of problems in regards to social life.%N%N".
            "However, the meaning is not that of the previous example; it is instead used as an allusion to \"Kusuda Yuni (bad ending only)\" and \"Yomogi Junichi\", who died while still young.",
            
            "【The Promised Land to Return to】%N".
            "(The Promised Land To Which We Must Someday Return)%N".
            "In the world's three primary religions, \"The Promised Land\" is a term used to refer to \"Jerusalem\", which is regarded as the land bestowed by God, and one which God visits.%N".
            "It can be argued that Kokoro's discovery of Location X on the seventh day after the accident could only have occurred due to an act of the divine. \"Return\" means both the escape from the mountains and the return of souls to their respective origins.",
            
            "【God Descends to the New World】%N".
            "The \"world\" brought forth by space-time transfer can be said to resemble a \"new world\" of \"God's\" creation.%N%N".
            "【Within the Cage...】%N".
            "In the Kagome song lyrics, it's kagome/篭目... hexagram;%N".
            "in Tereshkova's words, it's kamome/カモメ... seagull;%N".
            "in Kokoro's case, it's kagome/籠女... sealed girl???%N%N".
            "...Who's that behi――ind you?",
            
            "【Ｐｒｅｎａｔａｌ】%N".
            "The state of \"being or happening before birth (of a fetus, etc.).\" In addition to the meaning of being inside a mother's body, it also covers the occurrence of the transfers.%N%N".
            "【Ｐｏｌｙｈｅｄｒｏｎ】%N".
            "Mathematical terminology.%NA three-dimensional object surrounded by a surface composed of four or more polygons. Although it refers to SPHIA, which is formed of many quadrilaterals, at the",
            
            "same time it alludes to those living together in SPHIA.%N%N".
            "【Ｃｒｕｃｉｆｉｅｄ\x01Ｒａｔ】%N".
            "Likens what the rat felt in its near-death state due to ingesting the MAO inhibitor to the image of the crucified Christ.%N%N",
            
            "【Ｉｓｏｍｏｒｐｈｉｓｍ】%N".
            "A term from biology, it means a similarity of form or structure.%N".
            "The mountain cabin that appeared in 2012.%N".
            "The SPHIA that appeared in 2011.%N".
            "The Fuyukawa Kokoro within Yukidoh Satoru.%N".
            "The Yukidoh Satoru within Fuyukawa Kokoro.%N".
            "It is used as a metaphor for these.%N%N",
            
            "【Ｎｕｃｌｅｏｔｉｄｅ】%N".
            "A nucleotide is a molecule formed by an ester bond between nucleoside sugar hydroxyl and phosphoric acid.%N".
            "It is an element of nucleic acid.%N".
            "The mysteries of the space-time transfer phenomenon of this story are, like nucleotides, intertwined in complex and chainlike ways.%N%N".
            "【Ｍｉｒａｃｌｅ\x01Ｃｈｉｌｄ】%N".
            "One of the Jungian archetypes.%N%N",
            
            "【Ｉｎｓｅｒｔｉｏｎ】%N".
            "Inubushi orally inserts a candy into Satoru's mouth with her own.%N".
            "Kokoro's mind is inserted into Satoru's body and vice versa due to the space-time transfer phenomenon.%N".
            "In biochemistry, insertion is the addition of foreign DNA into the existing DNA sequence.",
            
            "【Ｈｅｋａｔｅ】%N".
            "A deity from the Greek pantheon.%N".
            "The goddess of death and ice. Also said to be the goddess of the moon.%N%N".
            "【Ｔｈｅ\x01Ｔｈｉｒｄ\x01Ａｒｅａ】%N".
            "\"The third area\"——That would be \"Hotarubi Mine.\"%N".
            "\"The third personality\"——That would be...?",
            
            "【Ａｐｏｐｔｏｓｉｓ】%N".
            "Apoptosis is the phenomenon of the controlled death of a cell, mediated by an intracellular program.%N".
            "As a result of a certain plan failing, the person who calls himself Enomoto, regarding Yukidoh Satoru as an impure foreign body, killed him.%N".
            "The entity called Yukidoh Satoru vanished from the world, as if through apoptosis.",
            
            "【Ａｍｂｉｖａｌｅｎｃｅ】%N".
            "A psychology term; ambivalence is a state of having simultaneous, conflicting feelings, like love and hate, toward the same object.%N%N".
            "The feelings of others toward Kokoro in Satoru's body.%N".
            "The feelings of others toward Satoru in Kokoro's body.%N".
            "The feelings of Kokoro and Satoru toward themselves,%N".
            "the feelings of Kokoro toward Satoru,%N".
            "the feelings of Satoru toward Kokoro;%N".
            "eventually, all of these become one.",
            
            "【Ｉｄｅｎｔｉｆｉｃａｔｉｏｎ】%N".
            "The confirmation of sameness. Unification.%N".
            "Kokoro and Satoru were able to identify their own bodies and souls.%N".
            "By seeing their partner anew with their own eyes, they became able to unify with each other.%N".
            "...Perhaps that is what is called \"love\".",
            
            "【Ｄｅｌｔａ】%N".
            "δ; the fourth letter of the Greek alphabet. Represents a change in the value of a variable or a function.%N".
            "The story that begins with α and ω would conclude at δ, just like the vertices of a triangle would intersect.%N%N".
            "【Ｗｈｅｒｅ\x01Ｉｓ\x01“Ｓｅｌｆ”？】%N".
            "The words that come up many times within the story;%N".
            "just what might they refer to?%N%N".
            "What exactly is \"Self\"? "
          )
      ),
    MAKE_COMMENT ('raw 6c - tips ordering'),
    MAKE_RAW ("\x00\x01\x02\x68\x03\x04\x6a\x05\x06\x07\x08\x6b\x69\x09\x0a\x0b\x0d\x0c\x0e\x0f\x10\x11\x12\x13\x14\x15\x16\x17\x18\x19\x1a\x1b\x1c\x1d\x1e\x1f\x20\x21\x22\x23\x24\x25\x26\x27\x28\x29\x2a\x2b\x2c\x2d\x2e\x2f\x30\x31\x32\x33\x34\x35\x36\x37\x38\x39\x3a\x3b\x3c\x3d\x3e\x3f\x40\x41\x42\x43\x44\x45\x46\x47\x48\x49\x4a\x4b\x4c\x4d\x4e\x4f\x50\x51\x52\x53\x54\x55\x56\x57\x67\x59\x5a\x5b\x58\x6c\x6d\x5c\x5d\x5e\x5f\x60\x61\x62\x65\x63\x66\x64"),
    MAKE_COMMENT ('raw 70 - tips related?'),
    MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x00\x00\x00\x00\x00\x02\x03"),
    MAKE_COMMENT ('raw 74 ?? - length 0x76b = 1899'),
    MAKE_RAW ("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x01\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x01\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x01\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x01\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x01\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x02\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"),
    MAKE_COMMENT ('string table 78'),
    MAKE_STRING_TABLE
      (
        "Ｃｈａｉｎｉｎｇ",
        "Ｓｃｈｅｍｅ",
        "Ａｎｉｍａ",
        "Ａｎｉｍｕｓ",
        "Ｐｅｒｓｏｎａ",
        "Ｏｌｄ\x01ｗｉｓｅ\x01ｍａｎ",
        "Ｇｒｅａｔ\x01ｍｏｔｈｅｒ",
        "Ｓｈａｄｏｗ",
        "Ｐｕｅｒ\x01ａｅｔｅｒｎｕｓ",
        "Ｔｒｉｃｋｓｔｅｒ",
        "Ｓｅｌｆ",
        "Ｃｏｍｍｕｎｉｃａｔｉｏｎ",
        "Ａｎｘｉｅｔｙ",
        "Ｃｕｅ",
        "Ｐａｒａｎｏｉａ",
        "Ｆｅａｒ\x01ａｎｄ\x01Ｉｎｓａｎｉｔｙ",
        "Ｔｈａｎａｔｏｓ",
        "Ｄｅｌｕｓｉｖｅ\x01ｃｏｎｓｃｉｏｕｓｎｅｓｓ",
        "Ｍａｎｔｒａ",
        "Ｍｕｌｔｉｐｌｅ\x01ｍａｚｅ",
        "Ｄｒｅａｍｙ\x01ｌｅｎｓ",
        "Ｄａｒｋ\x01Ｇｅｓｔａｌｔ",
        "Ｗｉｌｌ\x01−Ｔｈｅｍｅ−",
        "Ｃａｔｈａｒｓｉｓ",
        "Ａｌｌ\x01ｏｒ\x01Ｎｏｎｅ",
        "δ\x01Ｗａｖｅ",
        "Ｈｅｕｒｉｓｔｉｃ",
        "Ｎｕｃｌｅｕｓ",
        "Ｄｒｅａｍｙ\x01ｌｅｎｓ\x01−Ｐｉａｎｏ−",
        "Ｄｅｌｕｓｉｖｅ\x01ｃｏｎｓｃｉｏｕｓｎｅｓｓ\x01ａｍｂ．",
        "Ａｌｌ\x01ｏｒ\x01Ｎｏｎｅ\x01−Ｐｉａｎｏ−",
        "Ｃｈａｉｎｉｎｇ\x01−β−",
        "Ｓｃｈｅｍｅ\x01−β−",
        "----------",
        "----------",
        "ｌｉｔｔｌｅ\x01ｐｒｏｐｈｅｔ",
        "Ｄａｒｋｎｅｓｓ\x01ｏｆ\x01ｃｈａｏｓ",
        "----------"
      )
  ); }
1;
