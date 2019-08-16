From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v6 07/11] media: cedrus: Specify H264 startcode and
 decoding mode
Date: Fri, 16 Aug 2019 09:32:07 -0300
Message-ID: <4708223638fb8aa6214a58cb9a05c525625020cf.camel@collabora.com>
References: <20190814195931.6587-1-ezequiel@collabora.com>
         <20190814195931.6587-8-ezequiel@collabora.com>
         <a7dab464-5be0-ff9d-7547-735a83e87e14@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <a7dab464-5be0-ff9d-7547-735a83e87e14@xs4all.nl>
Sender: linux-kernel-owner@vger.kernel.org
To: Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org
Cc: kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, 2019-08-16 at 09:38 +0200, Hans Verkuil wrote:
> On 8/14/19 9:59 PM, Ezequiel Garcia wrote:
> > The cedrus VPU is slice-based and expects V4L2_PIX_FMT_H264_SLICE
> > buffers to contain H264 slices with no start code.
> > 
> > Expose this to userspace with the newly added menu control.
> > 
> > These two controls are specified as mandatory for applications,
> > but we mark them as non-required on the driver side for
> > backwards compatibility.
> > 
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> > Changes in v6:
> > * Adjust to control renames.
> > Changes in v5:
> > * Clarify commit log.
> > Changes in v4:
> > * New patch.
> > ---
> >  drivers/staging/media/sunxi/cedrus/cedrus.c | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
> > index 7bdc413bf727..69a836aa11ef 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
> > @@ -77,6 +77,26 @@ static const struct cedrus_control cedrus_controls[] = {
> >  		.codec		= CEDRUS_CODEC_H264,
> >  		.required	= true,
> >  	},
> > +	{
> > +		.cfg = {
> > +			.id	= V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE,
> > +			.max	= V4L2_MPEG_VIDEO_H264_DECODE_MODE_SLICE_BASED,
> > +			.def	= V4L2_MPEG_VIDEO_H264_DECODE_MODE_SLICE_BASED,
> > +			.menu_skip_mask = BIT(V4L2_MPEG_VIDEO_H264_DECODE_MODE_FRAME_BASED),
> 
> You don't need this: DECODE_MODE_FRAME_BASED > DECODE_MODE_SLICE_BASED (the max
> value). So no need to set the skip_mask since it is out of range.
> 
> > +		},
> > +		.codec		= CEDRUS_CODEC_H264,
> > +		.required	= false,
> > +	},
> > +	{
> > +		.cfg = {
> > +			.id	= V4L2_CID_MPEG_VIDEO_H264_START_CODE,
> > +			.max	= V4L2_MPEG_VIDEO_H264_START_CODE_NONE,
> > +			.def	= V4L2_MPEG_VIDEO_H264_START_CODE_NONE,
> > +			.menu_skip_mask = BIT(V4L2_MPEG_VIDEO_H264_START_CODE_ANNEX_B),
> 
> Ditto.
> 

I see.

I'll fix this.

> Regards,
> 
> 	Hans
> 
> > +		},
> > +		.codec		= CEDRUS_CODEC_H264,
> > +		.required	= false,
> > +	},
> >  };
> >  
> >  #define CEDRUS_CONTROLS_COUNT	ARRAY_SIZE(cedrus_controls)
> > 
