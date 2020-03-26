From: Dafna Hirschfeld <dafna3@gmail.com>
Subject: Re: [PATCH 1/2] media: media.h: Add a pad flag MEDIA_PAD_FL_METADATA
Date: Thu, 26 Mar 2020 08:59:04 +0100
Message-ID: <CAJ1myNS5jdqCXAtueA_j+ULkiioDxhegfCLQWFXrvL6_AYPwFg@mail.gmail.com>
References: <20200325212704.29862-1-dafna.hirschfeld@collabora.com>
 <20200325212704.29862-2-dafna.hirschfeld@collabora.com> <20200325222621.GX19171@pendragon.ideasonboard.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200325222621.GX19171@pendragon.ideasonboard.com>
Sender: linux-media-owner@vger.kernel.org
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, Helen Koike <helen.koike@collabora.com>, Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, Mar 25, 2020 at 11:26 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Dafna,
>
> Thank you for the patch.
>
> On Wed, Mar 25, 2020 at 10:27:03PM +0100, Dafna Hirschfeld wrote:
> > Add a flag to the flags field of 'struct media_pad_desc'
> > that indicates that the data transmitted by the pad is
> > metadata.
> >
> > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > ---
> >  Documentation/media/uapi/mediactl/media-types.rst | 4 ++++
> >  include/uapi/linux/media.h                        | 1 +
> >  2 files changed, 5 insertions(+)
> >
> > diff --git a/Documentation/media/uapi/mediactl/media-types.rst b/Documentation/media/uapi/mediactl/media-types.rst
> > index 3af6a414b501..4ca902478971 100644
> > --- a/Documentation/media/uapi/mediactl/media-types.rst
> > +++ b/Documentation/media/uapi/mediactl/media-types.rst
> > @@ -361,6 +361,7 @@ Types and flags used to represent the media graph elements
> >  .. _MEDIA-PAD-FL-SINK:
> >  .. _MEDIA-PAD-FL-SOURCE:
> >  .. _MEDIA-PAD-FL-MUST-CONNECT:
> > +.. _MEDIA-PAD-FL-METADATA:
> >
> >  .. flat-table:: Media pad flags
> >      :header-rows:  0
> > @@ -381,6 +382,9 @@ Types and flags used to represent the media graph elements
> >         configuration dependent) for the pad to need enabled links even
> >         when this flag isn't set; the absence of the flag doesn't imply
> >         there is none.
> > +    *  -  ``MEDIA_PAD_FL_METADATA``
> > +       -  This flag indicates that the data transmitted by the pad is of
> > +          type metadata.
> >
> >
> >  One and only one of ``MEDIA_PAD_FL_SINK`` and ``MEDIA_PAD_FL_SOURCE``
> > diff --git a/include/uapi/linux/media.h b/include/uapi/linux/media.h
> > index 383ac7b7d8f0..ae37226eb5c9 100644
> > --- a/include/uapi/linux/media.h
> > +++ b/include/uapi/linux/media.h
> > @@ -210,6 +210,7 @@ struct media_entity_desc {
> >  #define MEDIA_PAD_FL_SINK                    (1 << 0)
> >  #define MEDIA_PAD_FL_SOURCE                  (1 << 1)
> >  #define MEDIA_PAD_FL_MUST_CONNECT            (1 << 2)
> > +#define MEDIA_PAD_FL_METADATA                        (1 << 3)
>
> I think we need to reserve a few bits here. We'll have more than
> metadata. Audio comes to mind, there will likely be more. Having
> independent flags would not only waste a bit of space in the bitfield
> (not that we're about to run out of bits, but still), but would make it
> possible to specify invalid configurations such as MEDIA_PAD_FL_METADATA
> | MEDIA_PAD_FL_AUDIO. And now that I've written this, I realize that
> audio metadata could be a thing, so maybe a metadata flag is actually
> the best option :-)
hehe, ok, but drivers that set the METADATA flag should also set the media
bus code to MEDIA_BUS_FMT_FIXED ? If yes then setting
the METADATA flag with a different media bus is also an invalid configuration.

>
> There are pros and cons for both options, so I won't recommend one.
>
> >  struct media_pad_desc {
> >       __u32 entity;           /* entity ID */
>
> --
> Regards,
>
> Laurent Pinchart
