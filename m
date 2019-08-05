From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 7/9] media: hantro: Add core bits to support H264
 decoding
Date: Mon, 05 Aug 2019 15:38:39 -0300
Message-ID: <cf60476860b1691ac15c17bedeee3cb908d17faf.camel@collabora.com>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
         <20190619121540.29320-8-boris.brezillon@collabora.com>
         <CAHD77HksotqFBTE84rRM=DuNFX=YJPs=YnsuFkaN-pWUNCtoxA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAHD77HksotqFBTE84rRM=DuNFX=YJPs=YnsuFkaN-pWUNCtoxA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Tomasz Figa <tfiga@chromium.org>, Boris Brezillon <boris.brezillon@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sakari Ailus <sakari.ailus@iki.fi>, Linux Media Mailing List <linux-media@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Jonas Karlman <jonas@kwiboo.se>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>, Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Philipp Zabel <p.zabel@pengutronix.de>, Hertz Wong <hertz.wong@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hey Tomasz,

On Thu, 2019-08-01 at 13:06 +0900, Tomasz Figa wrote:
> Hi Boris,
> 
> On Wed, Jun 19, 2019 at 9:15 PM Boris Brezillon
> <boris.brezillon@collabora.com> wrote:
> [snip]
> > @@ -533,10 +535,21 @@ hantro_queue_setup(struct vb2_queue *vq, unsigned int *num_buffers,
> >                 return -EINVAL;
> >         }
> > 
> > +       /* The H264 decoder needs extra size on the output buffer. */
> > +       if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE_RAW)
> > +               extra_size0 = 128 * DIV_ROUND_UP(pixfmt->width, 16) *
> > +                             DIV_ROUND_UP(pixfmt->height, 16);
> > +
> 
> I wonder if this shouldn't be accounted for already in the sizeimage
> returned by TRY_/S_FMT, so that the application can know the required
> buffer size if it uses some external allocator and DMABUF memory type.
> I know we had it like this in our downstream code, but it wasn't the
> problem because we use minigbm, where we explicitly add the same
> padding in the rockchip backend. Any thoughts?
> 

Nice catch. This should be fixed and accounted in TRY_FMT as you suggest.

Thanks,
Eze 
