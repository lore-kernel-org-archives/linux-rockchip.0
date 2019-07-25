From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 0/7] hantro: Add RK3399 VP8 decoding support
Date: Thu, 25 Jul 2019 10:38:47 -0300
Message-ID: <4f0d0390057195da326354da2343c98c93d86669.camel@collabora.com>
References: <20190724171702.9449-1-ezequiel@collabora.com>
         <b0cd9a4f-4bf9-a48c-6d7c-7147b13fa0b2@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <b0cd9a4f-4bf9-a48c-6d7c-7147b13fa0b2@xs4all.nl>
Sender: linux-kernel-owner@vger.kernel.org
To: Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org, Hans Verkuil <hans.verkuil@cisco.com>
Cc: kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, 2019-07-25 at 14:59 +0200, Hans Verkuil wrote:
> On 7/24/19 7:16 PM, Ezequiel Garcia wrote:
> > This series adds VP8 decoding support on RK3399 SoC.
> > 
> > I'm including a set of commits from Boris' recent H264 series [1].
> > These commits add some helpers that are also useful for RK3399 VP8,
> > and at the same time cleanup the driver nicely.
> > 
> > Finally, there's a fix by Francois Buergisser from Chromium team.
> > 
> > VP8 and MPEG-2 tested on RK3399 RockPi and RK3288 Rock2 boards.
> 
> I get this when compiling:
> 
> /home/hans/work/build/media-git/drivers/staging/media/hantro/hantro_g1_vp8_dec.c: In function 'hantro_g1_vp8_dec_run':
> /home/hans/work/build/media-git/drivers/staging/media/hantro/hantro_g1_vp8_dec.c:435:26: warning: variable 'vb2_src' set but not used [-Wunused-but-
> set-variable]
>   struct vb2_v4l2_buffer *vb2_src;
>                           ^~~~~~~
>   CC      drivers/staging/media/omap4iss/iss_csiphy.o
> /home/hans/work/build/media-git/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c: In function 'rk3399_vpu_vp8_dec_run':
> /home/hans/work/build/media-git/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c:515:26: warning: variable 'vb2_src' set but not used [-Wunused-
> but-set-variable]
>   struct vb2_v4l2_buffer *vb2_src;
>                           ^~~~~~~
> 
> Can you take a look?
> 

Oops, I missed these warnings. I'll fix them and post a new version.

Thanks,
Eze
