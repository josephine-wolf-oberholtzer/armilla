# -*- encoding: utf-8 -*-
import armilla
from abjad import indicatortools
from abjad import rhythmmakertools


segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=20,
    discard_final_silence=True,
    name='B',
    rehearsal_mark='Selidor',
    repeat=True,
    tempo=indicatortools.Tempo((1, 4), 48),
    )


waves_timespan_maker = armilla.ArmillaTimespanMaker(
    initial_silence_talea=rhythmmakertools.Talea(
        counts=(1, 0),
        denominator=8,
        ),
    playing_talea=rhythmmakertools.Talea(
        counts=(5, 7, 4, 5),
        denominator=8,
        ),
    playing_groupings=(3, 4, 2, 4),
    silence_talea=rhythmmakertools.Talea(
        counts=(1, 1, 1, 2, 1, 1, 2),
        denominator=8,
        ),
    rotation_indices=(1, 0, 1, 0, -1),
    )


segment_maker.add_setting(
    timespan_maker=waves_timespan_maker,
    viola_1_rh=armilla.materials.rh_waves_music_specifier,
    viola_2_rh=armilla.materials.rh_waves_music_specifier,
    viola_1_lh=armilla.materials.lh_waves_music_specifier,
    viola_2_lh=armilla.materials.lh_waves_music_specifier,
    )