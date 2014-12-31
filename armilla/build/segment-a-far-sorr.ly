    \context Score = "Armilla Score" <<
        \tag #'time
        \context TimeSignatureContext = "TimeSignatureContext" {
            {
                \time 6/8
                \tempo 4=36
                \mark \markup {
                    \concat
                        {
                            \override
                                #'(box-padding . 0.5)
                                \box
                                    \caps
                                        A
                            " "
                            \fontsize
                                #-3
                                "Far Sorr"
                        }
                    }
                s1 * 3/4
            }
            {
                s1 * 3/4
            }
            {
                s1 * 3/4
            }
            {
                s1 * 3/4
            }
            {
                s1 * 3/4
            }
            {
                s1 * 3/4
            }
            {
                s1 * 3/4
            }
            {
                s1 * 3/4
            }
            {
                s1 * 3/4
            }
            {
                s1 * 3/4
            }
            {
                s1 * 3/4
            }
            {
                s1 * 3/4
            }
            {
                s1 * 3/4
            }
            {
                s1 * 3/4
            }
            {
                s1 * 3/4
            }
            {
                s1 * 3/4
            }
            {
                s1 * 3/4
            }
            {
                \time 3/4
                s1 * 3/4
            }
        }
        \tag #'viola-1
        \context StringPerformerGroup = "Viola 1 Performer Group" \with {
            instrumentName = \markup {
                \hcenter-in
                    #10
                    "Viola 1"
                }
            shortInstrumentName = \markup {
                \hcenter-in
                    #10
                    "Va. 1"
                }
        } <<
            \context BowingStaff = "Viola 1 Bowing Staff" <<
                \clef "percussion"
                \context StringContactVoice = "Viola 1 RH String Contact Voice" {
                    {
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                            \bar "||"
                        }
                    }
                }
                \context BowContactVoice = "Viola 1 RH Bow Contact Voice" {
                    {
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                            \bar "||"
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 1 RH Beaming Voice" {
                    {
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                            \bar "||"
                        }
                    }
                }
                \context Dynamics = "Viola 1 RH Dynamics Voice" {
                    {
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                            \bar "||"
                        }
                    }
                }
            >>
            \context FingeringStaff = "Viola 1 Fingering Staff" <<
                \clef "alto"
                \context FingeringPitchesVoice = "Viola 1 LH Pitches Voice" {
                    {
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                            \bar "||"
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 1 LH Spanner Voice" {
                    {
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                            \bar "||"
                        }
                    }
                }
            >>
        >>
        \tag #'viola-2
        \context StringPerformerGroup = "Viola 2 Performer Group" \with {
            instrumentName = \markup {
                \hcenter-in
                    #10
                    "Viola 2"
                }
            shortInstrumentName = \markup {
                \hcenter-in
                    #10
                    "Va. 2"
                }
        } <<
            \context BowingStaff = "Viola 2 Bowing Staff" <<
                \clef "percussion"
                \context StringContactVoice = "Viola 2 RH String Contact Voice" {
                    {
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                            \bar "||"
                        }
                    }
                }
                \context BowContactVoice = "Viola 2 RH Bow Contact Voice" {
                    {
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                            \bar "||"
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 2 RH Beaming Voice" {
                    {
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                            \bar "||"
                        }
                    }
                }
                \context Dynamics = "Viola 2 RH Dynamics Voice" {
                    {
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                            \bar "||"
                        }
                    }
                }
            >>
            \context FingeringStaff = "Viola 2 Fingering Staff" <<
                \clef "alto"
                \context FingeringPitchesVoice = "Viola 2 LH Pitches Voice" {
                    {
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                            \bar "||"
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 2 LH Spanner Voice" {
                    {
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                        }
                        {
                            R1 * 3/4
                            \bar "||"
                        }
                    }
                }
            >>
        >>
    >>