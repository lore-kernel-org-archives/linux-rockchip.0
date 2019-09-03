From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH 0/4] Enable Hantro G1 post-processor
Date: Tue,  3 Sep 2019 15:17:07 -0300
Message-ID: <20190903181711.7559-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Chris Healy <cphealy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi all,

This series enables the post-processor support available
on the Hantro G1 VPU. The post-processor block can be
pipelined with the decoder hardware, allowing to perform
operations such as color conversion, scaling, rotation,
cropping, among others.

The decoder hardware needs its own set of NV12 buffers
(the native decoder format), and the post-processor is the
owner of the CAPTURE buffers. This allows the application
get processed (scaled, converted, etc) buffers, completely
transparently.

This feature is implemented by exposing other CAPTURE pixel
formats to the application (ENUM_FMT). When the application
sets a pixel format other than NV12, the driver will enable
and use the post-processor transparently.

Patches 1 to 3 cleanup and organize the code to allow easier
integration of the post-processor. Then patch 4 introduces
the new pixel formats and enables the post-processor itself.

I am aware it's still early for v5.5, yet I'm posting this
series to get feedback and allow others to tests.
Also, keep in mind these patches are conflict with Jonas'
recent series.

This is tested on RK3288 platforms with MPEG-2, VP8 and H264 streams,
decoding to RGB and YUV-packed surfaces.

Thanks,
Ezequiel

Ezequiel Garcia (4):
  media: hantro: Simplify macroblock macros
  media: hantro: Simplify buffer helpers
  media: hantro: Add helper for the H264 motion vectors allocation
  media: hantro: Support color conversion via post-processing

 drivers/staging/media/hantro/Makefile         |   1 +
 drivers/staging/media/hantro/hantro.h         |  49 ++-
 drivers/staging/media/hantro/hantro_drv.c     |  27 +-
 .../staging/media/hantro/hantro_g1_h264_dec.c |   9 +-
 .../media/hantro/hantro_g1_mpeg2_dec.c        |  14 +-
 .../staging/media/hantro/hantro_g1_vp8_dec.c  |  13 +-
 .../staging/media/hantro/hantro_h1_jpeg_enc.c |   4 +-
 drivers/staging/media/hantro/hantro_h264.c    |  26 +-
 drivers/staging/media/hantro/hantro_hw.h      |  15 +-
 .../staging/media/hantro/hantro_postproc.c    | 316 ++++++++++++++++++
 drivers/staging/media/hantro/hantro_v4l2.c    |  25 +-
 drivers/staging/media/hantro/rk3288_vpu_hw.c  |  37 +-
 drivers/staging/media/hantro/rk3399_vpu_hw.c  |  12 +-
 .../media/hantro/rk3399_vpu_hw_jpeg_enc.c     |   4 +-
 .../media/hantro/rk3399_vpu_hw_mpeg2_dec.c    |  11 +-
 .../media/hantro/rk3399_vpu_hw_vp8_dec.c      |  12 +-
 16 files changed, 483 insertions(+), 92 deletions(-)
 create mode 100644 drivers/staging/media/hantro/hantro_postproc.c

-- 
2.22.0
