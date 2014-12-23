# -*- encoding: utf-8 -*-
import collections
from abjad import attach
from abjad import abctools
from abjad import indicatortools
from abjad import instrumenttools
from abjad import markuptools
from abjad import scoretools
import consort


class ArmillaScoreTemplate(abctools.AbjadValueObject):
    r'''A score template.

    ::

        >>> import armilla
        >>> template = armilla.makers.ArmillaScoreTemplate()
        >>> score = template()
        >>> print(format(score))
        \context Score = "Armilla Score" <<
            \tag #'time
            \context TimeSignatureContext = "TimeSignatureContext" {
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
                \context BowingStaff = "Viola 1 Bowing Staff" {
                    \context Voice = "Viola 1 Bowing Voice" {
                        \clef "percussion"
                    }
                }
                \context FingeringStaff = "Viola 1 Fingering Staff" {
                    \context Voice = "Viola 1 Fingering Voice" {
                        \clef "alto"
                    }
                }
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
                \context BowingStaff = "Viola 2 Bowing Staff" {
                    \context Voice = "Viola 2 Bowing Voice" {
                        \clef "percussion"
                    }
                }
                \context FingeringStaff = "Viola 2 Fingering Staff" {
                    \context Voice = "Viola 2 Fingering Voice" {
                        \clef "alto"
                    }
                }
            >>
        >>

    '''

    ### CLASS VARIABLES ###

    __slots__ = (
        '_context_name_abbreviations',
        )

    ### INITIALIZER ###

    def __init__(self):
        self._context_name_abbreviations = collections.OrderedDict()

    ### SPECIAL METHODS ###

    def __call__(self):

        manager = consort.ScoreTemplateManager

        time_signature_context = manager.make_time_signature_context()

        viola_one = manager.make_single_string_performer(
            clef=indicatortools.Clef('alto'),
            instrument=instrumenttools.Viola(
                instrument_name='viola 1',
                instrument_name_markup=markuptools.Markup(
                    'Viola 1').hcenter_in(10),
                short_instrument_name='va. 1',
                short_instrument_name_markup=markuptools.Markup(
                    'Va. 1').hcenter_in(10)
                ),
            split=True,
            score_template=self,
            )

        viola_two = manager.make_single_string_performer(
            clef=indicatortools.Clef('alto'),
            instrument=instrumenttools.Viola(
                instrument_name='viola 2',
                instrument_name_markup=markuptools.Markup(
                    'Viola 2').hcenter_in(10),
                short_instrument_name='va. 2',
                short_instrument_name_markup=markuptools.Markup(
                    'Va. 2').hcenter_in(10)
                ),
            split=True,
            score_template=self,
            )

        score = scoretools.Score(
            [
                time_signature_context,
                viola_one,
                viola_two
                ],
            name='Armilla Score',
            )

        attach(
            indicatortools.Tuning(pitches=('C3', 'G3', 'D4', 'A4')),
            score['Viola 1 Fingering Staff'],
            scope=scoretools.Voice,
            )
        attach(
            indicatortools.Tuning(pitches=('C3', 'G3', 'D4', 'A4')),
            score['Viola 2 Fingering Staff'],
            scope=scoretools.Voice,
            )

        return score

    ### PUBLIC PROPERTIES ###

    @property
    def context_name_abbreviations(self):
        return self._context_name_abbreviations