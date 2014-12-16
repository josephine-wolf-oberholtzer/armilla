#(define-markup-command (vstrut layout props)
  ()
  #:category other
  "
@cindex creating vertical space in text

Create a box of the same height as the current font."
  (let ((ref-mrkp (interpret-markup layout props "fp")))
    (ly:make-stencil (ly:stencil-expr empty-stencil)
                     empty-interval
                     (ly:stencil-extent ref-mrkp Y))))

afterGraceFraction = #(cons 1023 1024)
#(set-default-paper-size "11x17" 'landscape)
#(set-global-staff-size 12)

\layout {

    ragged-right = ##t
    ragged-last = ##t

    %%% COMMON %%%

    \context {
        \Voice
        \consists Horizontal_bracket_engraver
        \remove Forbid_line_break_engraver
    }

    \context {
        \Staff
        \remove Time_signature_engraver
    }

    \context {
        \Dynamics
        \remove Bar_engraver
    }

    %%% TIME SIGNATURE CONTEXT %%%

    \context {
        \name TimeSignatureContext
        \type Engraver_group
        \consists Axis_group_engraver
        \consists Bar_number_engraver
        \consists Mark_engraver
        \consists Metronome_mark_engraver
        \consists Time_signature_engraver

        \override BarNumber.X-extent = #'(0 . 0)
        \override BarNumber.Y-extent = #'(0 . 0)
        \override BarNumber.extra-offset = #'(-8 . -4)
        \override BarNumber.font-name = "Didot Italic"
        \override BarNumber.font-size = 2
        \override BarNumber.stencil = #(make-stencil-circler 0.1 0.7 ly:text-interface::print)

        \override MetronomeMark.X-extent = #'(0 . 0)
        \override MetronomeMark.X-offset = 5
        \override MetronomeMark.Y-offset = -2.5
        \override MetronomeMark.break-align-symbols = #'(time-signature)
        \override MetronomeMark.font-size = 3

        \override RehearsalMark.X-extent = #'(0 . 0)
        \override RehearsalMark.Y-offset = 8
        \override RehearsalMark.break-align-symbols = #'(time-signature)
        \override RehearsalMark.break-visibility = #end-of-line-invisible
        \override RehearsalMark.font-name = "Didot"
        \override RehearsalMark.font-size = 10
        \override RehearsalMark.outside-staff-priority = 500
        \override RehearsalMark.self-alignment-X = #CENTER

        \override TimeSignature.X-extent = #'(0 . 0)
        \override TimeSignature.break-align-symbols = #'(staff-bar)
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.font-size = 3
        \override TimeSignature.style = #'numbered

        \override VerticalAxisGroup.staff-staff-spacing = #'(
            (basic-distance . 8)
            (minimum-distance . 8)
            (padding . 8)
            (stretchability . 0)
            )
    }

    %%% STRINGS %%%

    \context {
        \Voice
        \name BowingBeamingVoice
        \type Engraver_group
        \alias Voice
        \override Beam.direction = #down
        \override Beam.positions = #'(-9 . -9)
        \override Dots.X-offset = -8
        \override Dots.staff-position = -1
        \override Flag.Y-offset = -8.5
        \override NoteHead.Y-offset = -5
        \override NoteHead.stencil = ##f
        \override Stem.direction = #down
        \override Stem.length = 9
        \override Stem.stem-begin-position = -9
        \override TupletBracket.positions = #'(-11 . -11)
    }

    \context {
        \Voice
        \name BowingPositionVoice
        \type Engraver_group
        \alias Voice
        \override Beam.stencil = ##f
        \override Dots.stencil = ##f
        \override Flag.stencil = ##f
        \override Glissando.bound-details.left.padding = 0.75
        \override Glissando.bound-details.right.padding = 0.75
        \override Glissando.thickness = 2
        \override NoteHead.extra-offset = #'(0.05 . 0)
        \override Rest.stencil = ##f
        \override Script.staff-padding = 2.5
        \override Stem.stencil = ##f
        \override TupletBracket.stencil = ##f
        \override TupletNumber.stencil = ##f
    }

    \context {
        \Dynamics
        \override DynamicLineSpanner.staff-padding = 11.5
        \override DynamicText.self-alignment-X = -1
        \override Hairpin.bound-padding = 2
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
            (basic-distance . 5)
            (padding . 2.5) 
            )
    }

    \context {
        \Staff
        \name BowingStaff
        \type Engraver_group
        \alias Staff
        \accepts BowingBeamingVoice
        \accepts BowingPositionVoice
        \override StaffSymbol.transparent = ##t
    }

    \context {
        \Voice
        \name FingeringPitchesVoice
        \type Engraver_group
        \alias Voice
        \override Beam.direction = #down
        \override Beam.positions = #'(-9 . -9)
        \override Stem.direction = #down
        \override TupletBracket.positions = #'(-11 . -11)
    }

    \context {
        \Voice
        \name FingeringSpannerVoice
        \type Engraver_group
        \alias Voice
        \override Beam.stencil = ##f
        \override Dots.stencil = ##f
        \override Flag.stencil = ##f
        \override Glissando.thickness = 2
        \override Stem.stencil = ##f
        \override Tie.stencil = ##f
        \override TupletBracket.stencil = ##f
        \override TupletNumber.stencil = ##f
    }

    \context {
        \Staff
        \name FingeringStaff
        \type Engraver_group
        \alias Staff
        \accepts FingeringPitchesVoice
        \accepts FingeringSpannerVoice
        \override StaffSymbol.color = #(x11-color 'grey50)
    }

    \context {
        \StaffGroup
        \name StringPerformerGroup
        \type Engraver_group
        \alias StaffGroup
        \accepts BowingStaff
        \accepts FingeringStaff
    }

    %%% SCORE %%%

    \context {
        \Score
        \accepts TimeSignatureContext
        \accepts StringPerformerGroup
        \remove Metronome_mark_engraver
        \remove Mark_engraver
        \remove Bar_number_engraver
        \override BarLine.bar-extent = #'(-2 . 2)
        \override BarLine.hair-thickness = 0.5
        \override BarLine.space-alist = #'(
            (time-signature extra-space . 0.0)
            (custos minimum-space . 0.0) 
            (clef minimum-space . 0.0) 
            (key-signature extra-space . 0.0) 
            (key-cancellation extra-space . 0.0) 
            (first-note fixed-space . 0.0) 
            (next-note semi-fixed-space . 0.0) 
            (right-edge extra-space . 0.0)
            )
        \override Beam.beam-thickness = 0.75
        \override Beam.breakable = ##t
        \override Beam.length-fraction = 1.5
        \override DynamicLineSpanner.add-stem-support = ##t
        \override DynamicLineSpanner.outside-staff-padding = 1
        \override Glissando.breakable = ##t
        \override Glissando.thickness = 3
        \override GraceSpacing.common-shortest-duration = #(ly:make-moment 1 8)
        \override NoteCollision.merge-differently-dotted = ##t
        \override NoteColumn.ignore-collision = ##t
        \override OttavaBracket.add-stem-support = ##t
        \override OttavaBracket.padding = 2
        \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1 64)
        \override SpacingSpanner.strict-grace-spacing = ##f
        \override SpacingSpanner.strict-note-spacing = ##f
        \override SpacingSpanner.uniform-stretching = ##t
        \override Stem.details.beamed-lengths = #'(6)
        \override Stem.details.lengths = #'(6)
        \override Stem.stemlet-length = 1.5
        \override StemTremolo.beam-width = 1.5
        \override StemTremolo.flag-count = 4
        \override StemTremolo.slope = 0.5
        \override StemTremolo.style = #'default
        \override SustainPedal.self-alignment-X = #CENTER
        \override SustainPedalLineSpanner.padding = 2
        \override SustainPedalLineSpanner.to-barline = ##t
        \override TextScript.add-stem-support = ##t
        \override TextScript.outside-staff-padding = 1
        \override TextScript.padding = 1
        \override TextScript.staff-padding = 1
        \override TextSpanner.bound-details.right.padding = 2.5
        \override TrillPitchAccidental.avoid-slur = #'ignore
        \override TrillPitchAccidental.layer = 1000
        \override TrillPitchAccidental.whiteout = ##t
        \override TrillPitchHead.layer = 1000
        \override TrillPitchHead.whiteout = ##t
        \override TrillSpanner.outside-staff-padding = 1
        \override TrillSpanner.padding = 1
        \override TupletBracket.avoid-scripts = ##t
        \override TupletBracket.direction = #down
        \override TupletBracket.full-length-to-extent = ##t
        \override TupletBracket.outside-staff-padding = 2
        \override TupletBracket.padding = 2
        \override TupletNumber.font-size = 1
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override VerticalAxisGroup.staff-staff-spacing = #'(
            (basic-distance . 8)
            (minimum-distance . 14)
            (padding . 4)
            (stretchability . 0)
            )
        autoBeaming = ##f
        pedalSustainStyle = #'mixed
        proportionalNotationDuration = #(ly:make-moment 1 32)
        tupletFullLength = ##t
    }

}

\paper {

    %%% MARGINS %%%

    bottom-margin = 10\mm
    left-margin = 30\mm
    right-margin = 10\mm
    top-margin = 10\mm

    %%% HEADERS AND FOOTERS %%%

    evenFooterMarkup = \markup \fill-line {
        " "
        \concat {
            \bold \fontsize #3
            \on-the-fly #print-page-number-check-first
            \fromproperty #'page:page-number-string
        }
    }
    evenHeaderMarkup = \markup \fill-line { " " }
    oddFooterMarkup = \markup \fill-line {
        " "
        \concat {
            \bold \fontsize #3
            \on-the-fly #print-page-number-check-first
            \fromproperty #'page:page-number-string
        }
    }
    oddHeaderMarkup = \markup \fill-line { " " }
    print-first-page-number = ##f
    print-page-number = ##t

    %%% PAGE BREAKING %%%

    page-breaking = #ly:optimal-breaking
    ragged-bottom = ##f
    ragged-last-bottom = ##t

    %%% SPACING DETAILS %%%%

    markup-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 12)
        (padding . 0)
        (stretchability . 0)
    )
    system-system-spacing = #'(
        (basic-distance . 12)
        (minimum-distance . 18)
        (padding . 12)
        (stretchability . 0)
    )
    top-markup-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 0)
        (padding . 8)
        (stretchability . 0)
    )
    top-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 10)
        (padding . 0)
        (stretchability . 0)
    )

}