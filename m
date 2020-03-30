From: Dafna Hirschfeld <dafna3@gmail.com>
Subject: Re: [PATCH 1/2] media: media.h: Add a pad flag MEDIA_PAD_FL_METADATA
Date: Mon, 30 Mar 2020 14:42:37 +0200
Message-ID: <CAJ1myNTT8NGNpSU10pwjd6wTES22g28dNFLwRPjrYkNsXd_D5w@mail.gmail.com>
References: <20200325212704.29862-1-dafna.hirschfeld@collabora.com>
 <20200325212704.29862-2-dafna.hirschfeld@collabora.com> <20200325222621.GX19171@pendragon.ideasonboard.com>
 <CAJ1myNS5jdqCXAtueA_j+ULkiioDxhegfCLQWFXrvL6_AYPwFg@mail.gmail.com> <20200327080858.GB23713@kekkonen.localdomain>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200327080858.GB23713@kekkonen.localdomain>
Sender: linux-media-owner@vger.kernel.org
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, Helen Koike <helen.koike@collabora.com>, Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Mar 27, 2020 at 9:09 AM Sakari Ailus
<sakari.ailus@linux.intel.com> wrote:
>
> Dafna, Laurent,
>
> On Thu, Mar 26, 2020 at 08:59:04AM +0100, Dafna Hirschfeld wrote:
> > On Wed, Mar 25, 2020 at 11:26 PM Laurent Pinchart
> > <laurent.pinchart@ideasonboard.com> wrote:
> > >
> > > Hi Dafna,
> > >
> > > Thank you for the patch.
> > >
> > > On Wed, Mar 25, 2020 at 10:27:03PM +0100, Dafna Hirschfeld wrote:
> > > > Add a flag to the flags field of 'struct media_pad_desc'
> > > > that indicates that the data transmitted by the pad is
> > > > metadata.
> > > >
> > > > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > > > ---
> > > >  Documentation/media/uapi/mediactl/media-types.rst | 4 ++++
> > > >  include/uapi/linux/media.h                        | 1 +
> > > >  2 files changed, 5 insertions(+)
> > > >
> > > > diff --git a/Documentation/media/uapi/mediactl/media-types.rst b/Documentation/media/uapi/mediactl/media-types.rst
> > > > index 3af6a414b501..4ca902478971 100644
> > > > --- a/Documentation/media/uapi/mediactl/media-types.rst
> > > > +++ b/Documentation/media/uapi/mediactl/media-types.rst
> > > > @@ -361,6 +361,7 @@ Types and flags used to represent the media graph elements
> > > >  .. _MEDIA-PAD-FL-SINK:
> > > >  .. _MEDIA-PAD-FL-SOURCE:
> > > >  .. _MEDIA-PAD-FL-MUST-CONNECT:
> > > > +.. _MEDIA-PAD-FL-METADATA:
> > > >
> > > >  .. flat-table:: Media pad flags
> > > >      :header-rows:  0
> > > > @@ -381,6 +382,9 @@ Types and flags used to represent the media graph elements
> > > >         configuration dependent) for the pad to need enabled links even
> > > >         when this flag isn't set; the absence of the flag doesn't imply
> > > >         there is none.
> > > > +    *  -  ``MEDIA_PAD_FL_METADATA``
> > > > +       -  This flag indicates that the data transmitted by the pad is of
> > > > +          type metadata.
> > > >
> > > >
> > > >  One and only one of ``MEDIA_PAD_FL_SINK`` and ``MEDIA_PAD_FL_SOURCE``
> > > > diff --git a/include/uapi/linux/media.h b/include/uapi/linux/media.h
> > > > index 383ac7b7d8f0..ae37226eb5c9 100644
> > > > --- a/include/uapi/linux/media.h
> > > > +++ b/include/uapi/linux/media.h
> > > > @@ -210,6 +210,7 @@ struct media_entity_desc {
> > > >  #define MEDIA_PAD_FL_SINK                    (1 << 0)
> > > >  #define MEDIA_PAD_FL_SOURCE                  (1 << 1)
> > > >  #define MEDIA_PAD_FL_MUST_CONNECT            (1 << 2)
> > > > +#define MEDIA_PAD_FL_METADATA                        (1 << 3)
> > >
> > > I think we need to reserve a few bits here. We'll have more than
> > > metadata. Audio comes to mind, there will likely be more. Having
> > > independent flags would not only waste a bit of space in the bitfield
> > > (not that we're about to run out of bits, but still), but would make it
> > > possible to specify invalid configurations such as MEDIA_PAD_FL_METADATA
> > > | MEDIA_PAD_FL_AUDIO. And now that I've written this, I realize that
> > > audio metadata could be a thing, so maybe a metadata flag is actually
> > > the best option :-)
> > hehe, ok, but drivers that set the METADATA flag should also set the media
> > bus code to MEDIA_BUS_FMT_FIXED ? If yes then setting
> > the METADATA flag with a different media bus is also an invalid configuration.
>
> That may be currently the case, but not all non-image data (metadata in
> practice) will be using MEDIA_BUS_FMT_FIXED, for instance sensor embedded
> data when we support that in upstream.
>
> Note that whether metadata flows over a pad is dynamic configuration. I
> wonder if it is useful to tell this to the user, as the user, in many
> cases, will be making the configuration affecting this. There definitely

Hi, you mean that there might be pads that can either support metadata
or non-metadata?
Currently there is no media bus for METDATA so with the flag userspace
knows it is metadata.

> are devices where this configuration would be static, but many of those
> cases (ISPs in particular) have DMAs (i.e. video nodes) directly connected
> over a link, where you'll find this information on the video node.

>
> --
> Regards,
>
> Sakari Ailus
