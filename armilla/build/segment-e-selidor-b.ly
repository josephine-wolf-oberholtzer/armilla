    \context Score = "Armilla Score" <<
        \tag #'time
        \repeat volta 2
        \context TimeSignatureContext = "TimeSignatureContext" {
            {
                \time 5/8
                \tempo 4=48
                \mark \markup {
                    \concat
                        {
                            \override
                                #'(box-padding . 0.5)
                                \box
                                    \caps
                                        E
                            " "
                            \fontsize
                                #-3
                                "Selidor (ii)"
                        }
                    }
                s1 * 5/8
            }
            {
                s1 * 5/8
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                \time 2/4
                s1 * 1/2
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                s1 * 5/8
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                s1 * 3/8
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
            \repeat volta 2
            \context BowingStaff = "Viola 1 Bowing Staff" <<
                \clef "percussion"
                \context StringContactVoice = "Viola 1 RH String Contact Voice" {
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'4 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Ord.
                                }
                            c'4
                        }
                        {
                            \once \override TextSpanner.arrow-width = 0.25
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1
                                                \parenthesize
                                                    \caps
                                                        Ord.
                                                \hspace
                                                    #1
                                            }
                                }
                            \once \override TextSpanner.bound-details.right-broken.padding = 0
                            \once \override TextSpanner.bound-details.right.arrow = ##t
                            \once \override TextSpanner.bound-details.right.padding = 3.5
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'8 \startTextSpan
                        }
                        \times 2/3 {
                            \once \override TextSpanner.arrow-width = 0.25
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1
                                                \caps
                                                    S.P.
                                                \hspace
                                                    #1
                                            }
                                }
                            \once \override TextSpanner.bound-details.right-broken.padding = 0
                            \once \override TextSpanner.bound-details.right.arrow = ##t
                            \once \override TextSpanner.bound-details.right.padding = 3.5
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 \stopTextSpan \startTextSpan
                            c'4
                            c'4
                        }
                        {
                            c'4. \stopTextSpan ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Ord.
                                }
                        }
                        {
                            \once \override TextSpanner.arrow-width = 0.25
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1
                                                \parenthesize
                                                    \caps
                                                        Ord.
                                                \hspace
                                                    #1
                                            }
                                }
                            \once \override TextSpanner.bound-details.right-broken.padding = 0
                            \once \override TextSpanner.bound-details.right.arrow = ##t
                            \once \override TextSpanner.bound-details.right.padding = 0
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1
                                                \caps
                                                    M.S.P
                                                \hspace
                                                    #1
                                            }
                                }
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4.. \stopTextSpan \startTextSpan
                            c'16 \stopTextSpan
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        \times 2/3 {
                            \once \override TextSpanner.arrow-width = 0.25
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1
                                                \caps
                                                    M.S.P
                                                \hspace
                                                    #1
                                            }
                                }
                            \once \override TextSpanner.bound-details.right-broken.padding = 0
                            \once \override TextSpanner.bound-details.right.arrow = ##t
                            \once \override TextSpanner.bound-details.right.padding = 3.5
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 \startTextSpan
                            c'4
                            c'4
                        }
                        {
                            c'8
                        }
                        {
                            \once \override TextSpanner.arrow-width = 0.25
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1
                                                \caps
                                                    Ord.
                                                \hspace
                                                    #1
                                            }
                                }
                            \once \override TextSpanner.bound-details.right-broken.padding = 0
                            \once \override TextSpanner.bound-details.right.arrow = ##t
                            \once \override TextSpanner.bound-details.right.padding = 0
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1
                                                \caps
                                                    S.P.
                                                \hspace
                                                    #1
                                            }
                                }
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 \stopTextSpan \startTextSpan
                            c'4
                        }
                        {
                            c'16
                            c'16 \stopTextSpan
                        }
                    }
                    {
                        {
                            s4
                        }
                        {
                            R1 * 3/8
                        }
                    }
                }
                \context BowContactVoice = "Viola 1 RH Bow Contact Voice" {
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            c'4 ^\downbow \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            c'4 ^\upbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'8 \glissando
                        }
                        \times 2/3 {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'4 ^ \parenthesize \upbow \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'4 ^\downbow \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'4 \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'4. ^ \parenthesize \upbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'4.. ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        \times 2/3 {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'4 ^\upbow \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            c'4 ^\downbow \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            c'4 ^\upbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'8 \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'4 ^ \parenthesize \upbow \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'4 ^\downbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16 \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16
                        }
                    }
                    {
                        {
                            s4
                        }
                        {
                            R1 * 3/8
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 1 RH Beaming Voice" {
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'4
                            c'4
                        }
                        {
                            c'8
                        }
                        \times 2/3 {
                            c'4
                            c'4
                            c'4
                        }
                        {
                            c'4.
                        }
                        {
                            c'4..
                            c'16
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \times 2/3 {
                            c'4
                            c'4
                            c'4
                        }
                        {
                            c'8
                        }
                        {
                            c'4
                            c'4
                        }
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r4
                        }
                        {
                            R1 * 3/8
                        }
                    }
                }
                \context Dynamics = "Viola 1 RH Dynamics Voice" {
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'4 \p \>
                            c'4
                        }
                        {
                            c'8 \ppp \<
                        }
                        \times 2/3 {
                            c'4 \p \>
                            c'4
                            c'4
                        }
                        {
                            c'4. \ppp \<
                        }
                        {
                            c'4.. \p \>
                            c'16 \ppp
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        \times 2/3 {
                            c'4 \ppp \<
                            c'4
                            c'4
                        }
                        {
                            c'8 \p \>
                        }
                        {
                            c'4 \ppp \<
                            c'4
                        }
                        {
                            c'16
                            c'16 \p
                        }
                    }
                    {
                        {
                            s4
                        }
                        {
                            R1 * 3/8
                        }
                    }
                }
            >>
            \repeat volta 2
            \context FingeringStaff = "Viola 1 Fingering Staff" <<
                \clef "alto"
                \context FingeringPitchesVoice = "Viola 1 LH Pitches Voice" {
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'4 \glissando
                            a4 \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            \afterGrace
                            cqs'4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                s16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    c'
                                    \tweak #'style #'harmonic
                                    f'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                            c'4 \glissando
                        }
                        {
                            a4. \glissando
                        }
                        {
                            d'2
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \times 2/3 {
                            af4 \glissando
                            \afterGrace
                            a4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    c'
                                    \tweak #'style #'harmonic
                                    g'
                                >16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    c'
                                    \tweak #'style #'harmonic
                                    f'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                            \afterGrace
                            c'4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                s16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    a
                                    \tweak #'style #'harmonic
                                    d'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                        }
                        {
                            a8
                        }
                        {
                            \parenthesize
                            a4 \glissando
                            \afterGrace
                            aqs4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    c'
                                    \tweak #'style #'harmonic
                                    g'
                                >16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    c'
                                    \tweak #'style #'harmonic
                                    f'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                        }
                        {
                            c'8
                        }
                    }
                    {
                        {
                            r4
                        }
                        {
                            R1 * 3/8
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 1 LH Spanner Voice" {
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'4 \glissando
                            a4 \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            cqs'4
                            c'4 \glissando
                        }
                        {
                            a4. \glissando
                        }
                        {
                            d'2
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        \times 2/3 {
                            af4 \glissando
                            a4
                            c'4
                        }
                        {
                            a8
                        }
                        {
                            \parenthesize
                            a4 \glissando
                            aqs4
                        }
                        {
                            c'8
                        }
                    }
                    {
                        {
                            s4
                        }
                        {
                            R1 * 3/8
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
            \repeat volta 2
            \context BowingStaff = "Viola 2 Bowing Staff" <<
                \clef "percussion"
                \context StringContactVoice = "Viola 2 RH String Contact Voice" {
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            \once \override TextSpanner.arrow-width = 0.25
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1
                                                \caps
                                                    Ord.
                                                \hspace
                                                    #1
                                            }
                                }
                            \once \override TextSpanner.bound-details.right-broken.padding = 0
                            \once \override TextSpanner.bound-details.right.arrow = ##t
                            \once \override TextSpanner.bound-details.right.padding = 0
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1
                                                \caps
                                                    M.S.P
                                                \hspace
                                                    #1
                                            }
                                }
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 \startTextSpan
                            c'4
                        }
                        {
                            c'2 \stopTextSpan
                            c'16
                            c'16
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'4 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Ord.
                                }
                        }
                        {
                            \once \override TextSpanner.arrow-width = 0.25
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1
                                                \parenthesize
                                                    \caps
                                                        Ord.
                                                \hspace
                                                    #1
                                            }
                                }
                            \once \override TextSpanner.bound-details.right-broken.padding = 0
                            \once \override TextSpanner.bound-details.right.arrow = ##t
                            \once \override TextSpanner.bound-details.right.padding = 3.5
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 \startTextSpan
                            c'4
                        }
                        {
                            \once \override TextSpanner.arrow-width = 0.25
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1
                                                \caps
                                                    M.S.P
                                                \hspace
                                                    #1
                                            }
                                }
                            \once \override TextSpanner.bound-details.right-broken.padding = 0
                            \once \override TextSpanner.bound-details.right.arrow = ##t
                            \once \override TextSpanner.bound-details.right.padding = 3.5
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'8 \stopTextSpan \startTextSpan
                        }
                        {
                            c'4
                            c'4
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            \once \override TextSpanner.arrow-width = 0.25
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1
                                                \caps
                                                    Ord.
                                                \hspace
                                                    #1
                                            }
                                }
                            \once \override TextSpanner.bound-details.right-broken.padding = 0
                            \once \override TextSpanner.bound-details.right.arrow = ##t
                            \once \override TextSpanner.bound-details.right.padding = 3.5
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 \stopTextSpan \startTextSpan
                            c'4
                        }
                        {
                            \once \override TextSpanner.arrow-width = 0.25
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1
                                                \caps
                                                    S.P.
                                                \hspace
                                                    #1
                                            }
                                }
                            \once \override TextSpanner.bound-details.right-broken.padding = 0
                            \once \override TextSpanner.bound-details.right.arrow = ##t
                            \once \override TextSpanner.bound-details.right.padding = 0
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1
                                                \caps
                                                    Ord.
                                                \hspace
                                                    #1
                                            }
                                }
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4. \stopTextSpan \startTextSpan
                        }
                        {
                            c'8. \stopTextSpan
                            c'16
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                }
                \context BowContactVoice = "Viola 2 RH Bow Contact Voice" {
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'4 ^\downbow \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'4 ^\upbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            c'2 ^\downbow \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'4 \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'4 ^ \parenthesize \downbow \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'4 ^\upbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            c'8 ^\downbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            c'4 ^\upbow \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'4 \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'4 ^ \parenthesize \upbow \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'4 ^\downbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'4. \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'8. ^ \parenthesize \upbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 2 RH Beaming Voice" {
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        {
                            c'2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'4
                        }
                        {
                            c'4
                            c'4
                        }
                        {
                            c'8
                        }
                        {
                            c'4
                            c'4
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        {
                            c'4.
                        }
                        {
                            c'8. [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                }
                \context Dynamics = "Viola 2 RH Dynamics Voice" {
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \p \>
                            c'4
                        }
                        {
                            c'2 \ppp \<
                            c'16
                            c'16 \p
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'4 \ppp \<
                        }
                        {
                            c'4 \p \>
                            c'4
                        }
                        {
                            c'8 \ppp \<
                        }
                        {
                            c'4 \p \>
                            c'4
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \ppp \<
                            c'4
                        }
                        {
                            c'4. \p \>
                        }
                        {
                            c'8. \ppp \<
                            c'16 \p
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                }
            >>
            \repeat volta 2
            \context FingeringStaff = "Viola 2 Fingering Staff" <<
                \clef "alto"
                \context FingeringPitchesVoice = "Viola 2 LH Pitches Voice" {
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            a4
                            \afterGrace
                            \parenthesize
                            a4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    a
                                    \tweak #'style #'harmonic
                                    e'
                                >16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    a
                                    \tweak #'style #'harmonic
                                    d'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                        }
                        {
                            a2 ~
                            \parenthesize
                            a8
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            af4 \glissando
                        }
                        {
                            \afterGrace
                            aqs4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    g
                                    \tweak #'style #'harmonic
                                    d'
                                >16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    g
                                    \tweak #'style #'harmonic
                                    c'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                            \afterGrace
                            g4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                s16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    c'
                                    \tweak #'style #'harmonic
                                    f'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                        }
                        {
                            c'8 \glissando
                        }
                        {
                            d'4 \glissando
                            gqs4 \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            \afterGrace
                            \parenthesize
                            c'4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                s16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    a
                                    \tweak #'style #'harmonic
                                    d'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                        }
                        {
                            a4. \glissando
                        }
                        {
                            c'4
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 2 LH Spanner Voice" {
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            a4
                            \parenthesize
                            a4
                        }
                        {
                            a2
                            \parenthesize
                            a8
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            af4 \glissando
                        }
                        {
                            aqs4
                            g4
                        }
                        {
                            c'8 \glissando
                        }
                        {
                            d'4 \glissando
                            gqs4 \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            \parenthesize
                            c'4
                        }
                        {
                            a4. \glissando
                        }
                        {
                            c'4
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                }
            >>
        >>
    >>
