# -*- encoding: utf-8 -*-
import armilla
import consort
from abjad import new
from abjad.tools import indicatortools
from abjad.tools import selectortools


### SEGMENT MAKER ###

segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=60,
    discard_final_silence=True,
    is_final_segment=True,
    name='The Long Dune (ii)',
    rehearsal_mark='H',
    repeat=False,
    tempo=indicatortools.Tempo((1, 4), 36),
    )

### MUSIC SPECIFIERS ###

rh_overpressure = armilla.materials.right_hand_overpressure_music_specifier
lh_diads = armilla.materials.left_hand_diads_music_specifier

### ATTACHMENTS ###

intermittent_accents = armilla.materials.intermittent_accents
intermittent_circular = armilla.materials.intermittent_circular
intermittent_tremoli = armilla.materials.intermittent_tremoli

### OVERPRESSURE ###

segment_maker.add_setting(
    timespan_maker=armilla.materials.sustained_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        parts=(0,),
        ratio=(2, 2, 1),
        ),
    viola_1_rh=rh_overpressure,
    viola_2_rh=rh_overpressure,
    viola_1_lh=lh_diads,
    viola_2_lh=lh_diads,
    )

segment_maker.add_setting(
    timespan_maker=armilla.materials.dense_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        parts=(1,),
        ratio=(2, 2, 1),
        ),
    viola_1_rh=new(
        rh_overpressure,
        attachment_handler__articulations=intermittent_accents,
        ),
    viola_2_rh=new(
        rh_overpressure,
        attachment_handler__articulations=intermittent_accents,
        seed=1,
        ),
    viola_1_lh=lh_diads,
    viola_2_lh=lh_diads,
    )

segment_maker.add_setting(
    timespan_maker=armilla.materials.dense_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        parts=(2,),
        ratio=(2, 2, 1),
        ),
    viola_1_rh=new(
        rh_overpressure,
        attachment_handler__articulations=consort.AttachmentExpression(
            attachments=indicatortools.Articulation('>', 'down'),
            selector=selectortools.Selector().by_leaves()[:-1].flatten(),
            ),
        attachment_handler__stem_tremolo_spanner=intermittent_tremoli,
        attachment_handler__bow_motion_technique_x=intermittent_circular,
        rhythm_maker__default__denominators=(4, 16, 4, 4, 4),
        seed=1,
        ),
    viola_2_rh=new(
        rh_overpressure,
        attachment_handler__articulations=consort.AttachmentExpression(
            attachments=indicatortools.Articulation('>', 'down'),
            selector=selectortools.Selector().by_leaves()[:-1].flatten(),
            ),
        attachment_handler__stem_tremolo_spanner=intermittent_tremoli,
        seed=2,
        ),
    viola_1_lh=lh_diads,
    viola_2_lh=lh_diads,
    )

### PIZZICATI ###

#segment_maker.add_setting(
#    timespan_maker=armilla.materials.sparse_timespan_maker,
#    timespan_identifier=consort.RatioPartsExpression(
#        parts=(1,),
#        ratio=(5, 1),
#        ),
#    viola_1_rh=None,
#    viola_2_rh=None,
#    viola_1_lh=None,
#    viola_2_lh=None,
#    )