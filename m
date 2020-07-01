From: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [RFC v4 4/8] v4l2: add support for colorspace conversion API
 (CSC) for video capture and subdevices
Date: Wed, 01 Jul 2020 15:21:31 +0200
Message-ID: <bf6f168cc34d1bd09b6f6af52fa4662c70b4c10e.camel@pengutronix.de>
References: <20200605172625.19777-1-dafna.hirschfeld@collabora.com>
         <20200605172625.19777-5-dafna.hirschfeld@collabora.com>
         <973edb0c-4c52-c29c-4b22-54a05eca6f7a@xs4all.nl>
         <e55548ad47eacd9acf3aa94cc98a46b3f4924cd9.camel@pengutronix.de>
         <8fd5417b-970d-e9d5-824a-31658fe50c99@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <8fd5417b-970d-e9d5-824a-31658fe50c99@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: helen.koike@collabora.com, ezequiel@collabora.com, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org, skhan@linuxfoundation.org, Hans Verkuil <hans.verkuil@cisco.com>
List-Id: linux-rockchip.vger.kernel.org

On Tue, 2020-06-30 at 17:23 +0200, Dafna Hirschfeld wrote:
> 
> On 26.06.20 14:22, Philipp Zabel wrote:
> > Hi Dafna,
> > 
> > On Mon, 2020-06-08 at 12:00 +0200, Hans Verkuil wrote:
> > [...]
> > > > diff --git a/include/uapi/linux/v4l2-mediabus.h b/include/uapi/linux/v4l2-mediabus.h
> > > > index 123a231001a8..0f916278137a 100644
> > > > --- a/include/uapi/linux/v4l2-mediabus.h
> > > > +++ b/include/uapi/linux/v4l2-mediabus.h
> > > > @@ -16,6 +16,8 @@
> > > >   #include <linux/types.h>
> > > >   #include <linux/videodev2.h>
> > > >   
> > > > +#define V4L2_MBUS_FRAMEFMT_SET_CSC	0x0001
> > > > +
> > > >   /**
> > > >    * struct v4l2_mbus_framefmt - frame format on the media bus
> > > >    * @width:	image width

             ^^^^^
             this one

> > > > @@ -36,7 +38,8 @@ struct v4l2_mbus_framefmt {
> > > >   	__u16			ycbcr_enc;
> > > >   	__u16			quantization;
> > > >   	__u16			xfer_func;
> > > > -	__u16			reserved[11];
> > > > +	__u16			flags;
> > > > +	__u16			reserved[10];
> > > >   };
> > 
> > The the flags field should also be added to the kerneldoc comment.
> 
> Hi, Which kerneldoc comment do you mean?
> I added to the doc of the v4l2-mbus-framefmt:

See above, I meant the comment right above the structure definition.

regards
Philipp
