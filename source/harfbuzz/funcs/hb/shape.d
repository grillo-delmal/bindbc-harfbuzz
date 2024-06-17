/*
 * Adapted from hb-shape.h by Grillo del Mal
 *
 * Copyright © 2009  Red Hat, Inc.
 * Copyright © 2012  Google, Inc.
 *
 *  This is part of HarfBuzz, a text shaping library.
 *
 * Permission is hereby granted, without written agreement and without
 * license or royalty fees, to use, copy, modify, and distribute this
 * software and its documentation for any purpose, provided that the
 * above copyright notice and the following two paragraphs appear in
 * all copies of this software.
 *
 * IN NO EVENT SHALL THE COPYRIGHT HOLDER BE LIABLE TO ANY PARTY FOR
 * DIRECT, INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES
 * ARISING OUT OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN
 * IF THE COPYRIGHT HOLDER HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH
 * DAMAGE.
 *
 * THE COPYRIGHT HOLDER SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING,
 * BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
 * FITNESS FOR A PARTICULAR PURPOSE.  THE SOFTWARE PROVIDED HEREUNDER IS
 * ON AN "AS IS" BASIS, AND THE COPYRIGHT HOLDER HAS NO OBLIGATION TO
 * PROVIDE MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.
 *
 * Red Hat Author(s): Behdad Esfahbod
 * Google Author(s): Behdad Esfahbod
 */

module harfbuzz.funcs.hb.shape;
//import harfbuzz.types.hb.shape;

import harfbuzz.types.hb.common;
import harfbuzz.types.hb.buffer;
//import harfbuzz.hb.font;

nothrow @nogc:
extern (C):

__gshared {
    void
    function (
            hb_font_t           *font,
            hb_buffer_t         *buffer,
            const hb_feature_t  *features,
            uint         num_features)
        hb_shape;

//FIXME: const char * const *shaper_list)
    hb_bool_t
    function (
            hb_font_t          *font,
            hb_buffer_t        *buffer,
            const hb_feature_t *features,
            uint        num_features,
            const char * shaper_list)
        hb_shape_full;

//FIXME: const char * const *shaper_list,
    hb_bool_t
    function (
            hb_font_t          *font,
            hb_buffer_t        *buffer,
            const hb_feature_t *features,
            uint        num_features,
            const char *        shaper_list,
            float               min_target_advance,
            float               max_target_advance,
            float              *advance, /* IN/OUT */
            hb_tag_t           *var_tag, /* OUT */
            float              *var_value /* OUT */)
        hb_shape_justify;

    //FIXME: const char **
    char **
    function ()
        hb_shape_list_shapers;
}