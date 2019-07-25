From: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH 0/7] hantro: Add RK3399 VP8 decoding support
Date: Thu, 25 Jul 2019 14:59:25 +0200
Message-ID: <b0cd9a4f-4bf9-a48c-6d7c-7147b13fa0b2@xs4all.nl>
References: <20190724171702.9449-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190724171702.9449-1-ezequiel@collabora.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, Hans Verkuil <hans.verkuil@cisco.com>
Cc: kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 7/24/19 7:16 PM, Ezequiel Garcia wrote:
> This series adds VP8 decoding support on RK3399 SoC.
> 
> I'm including a set of commits from Boris' recent H264 series [1].
> These commits add some helpers that are also useful for RK3399 VP8,
> and at the same time cleanup the driver nicely.
> 
> Finally, there's a fix by Francois Buergisser from Chromium team.
> 
> VP8 and MPEG-2 tested on RK3399 RockPi and RK3288 Rock2 boards.

I get this when compiling:

/home/hans/work/build/media-git/drivers/staging/media/hantro/hantro_g1_vp8_dec.c: In function 'hantro_g1_vp8_dec_run':
/home/hans/work/build/media-git/drivers/staging/media/hantro/hantro_g1_vp8_dec.c:435:26: warning: variable 'vb2_src' set but not used [-Wunused-but-set-variable]
  struct vb2_v4l2_buffer *vb2_src;
                          ^~~~~~~
  CC      drivers/staging/media/omap4iss/iss_csiphy.o
/home/hans/work/build/media-git/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c: In function 'rk3399_vpu_vp8_dec_run':
/home/hans/work/build/media-git/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c:515:26: warning: variable 'vb2_src' set but not used [-Wunused-but-set-variable]
  struct vb2_v4l2_buffer *vb2_src;
                          ^~~~~~~

Can you take a look?

Thanks,

	Hans

> 
> [1] https://patchwork.kernel.org/cover/11003971/
> 
> Boris Brezillon (4):
>   media: hantro: Simplify the controls creation logic
>   media: hantro: Constify the control array
>   media: hantro: Add hantro_get_{src,dst}_buf() helpers
>   media: hantro: Add helpers to prepare/finish a run
> 
> Ezequiel Garcia (1):
>   media: hantro: Move VP8 common code
> 
> Francois Buergisser (1):
>   media: hantro: Set DMA max segment size
> 
> Jeffy Chen (1):
>   media: hantro: Support RK3399 VP8 decoding
> 
>  drivers/staging/media/hantro/Makefile         |   1 +
>  drivers/staging/media/hantro/hantro.h         |  15 +-
>  drivers/staging/media/hantro/hantro_drv.c     |  53 +-
>  .../media/hantro/hantro_g1_mpeg2_dec.c        |  14 +-
>  .../staging/media/hantro/hantro_g1_vp8_dec.c  |  34 +-
>  .../staging/media/hantro/hantro_h1_jpeg_enc.c |  11 +-
>  drivers/staging/media/hantro/hantro_hw.h      |   7 +
>  drivers/staging/media/hantro/hantro_vp8.c     |  15 +
>  drivers/staging/media/hantro/rk3399_vpu_hw.c  |  22 +-
>  .../media/hantro/rk3399_vpu_hw_jpeg_enc.c     |  12 +-
>  .../media/hantro/rk3399_vpu_hw_mpeg2_dec.c    |  14 +-
>  .../media/hantro/rk3399_vpu_hw_vp8_dec.c      | 597 ++++++++++++++++++
>  12 files changed, 711 insertions(+), 84 deletions(-)
>  create mode 100644 drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c
> 
