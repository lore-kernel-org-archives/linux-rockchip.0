From: Nicolas Dufresne <nicolas@ndufresne.ca>
Subject: Re: [PATCH v3 0/3] Enable Hantro G1 post-processor
Date: Sun, 09 Feb 2020 14:52:29 -0500
Message-ID: <74fea061a52ee3f8e25793bf9e47eba90a52c3e3.camel@ndufresne.ca>
References: <20191113175603.24742-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20191113175603.24742-1-ezequiel@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Cc: kernel@collabora.com, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, Chris Healy <cphealy@gmail.com>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Le mercredi 13 novembre 2019 à 14:56 -0300, Ezequiel Garcia a écrit :
> Hi all,
> 
> The Hantro G1 VPU post-processor block can be pipelined with
> the decoder hardware, allowing to perform operations such as
> color conversion, scaling, rotation, cropping, among others.
> 
> When the post-processor is enabled, the decoder hardware
> needs its own set of NV12 buffers (the native decoder format),
> and the post-processor is the owner of the CAPTURE buffers,
> allocated for the post-processed format.
> 
> This way, applications obtain post-processed
> (scaled, converted, etc) buffers transparently.
> 
> This feature is implemented by exposing the post-processed pixel
> formats on ENUM_FMT, ordered as "preferred pixelformat first":
> 
> v4l2-ctl -d 1 --list-formats
> ioctl: VIDIOC_ENUM_FMT
> 	Type: Video Capture Multiplanar
> 
> 	[0]: 'NV12' (Y/CbCr 4:2:0)
> 	[1]: 'YUYV' (YUYV 4:2:2)
> 
> The order of preference in ENUM_FMT can be used as a hint
> by applications. This series updates the uAPI specification
> accordingly.

As I'm implementing this, I realize that there may me a gap in being
able to implement both IPP and non-IPP support in a generic framework.
Unlike the above comment, we for non-IPP decoder we cannot naively pick
the first format. In fact we parse the chroma and depth information
from the headers (like pps from H264), and we pick a matching pixel
format. This way, if we have a 10bit stream, and our IP supports 10bit,
we will pick a 10bit pixel formats, otherwise decoding will just fail.

None of this information is passed to the driver prior to the first
Request being made, so there is no way (as of current spec) that the
driver can validate this in try_fmt ahead of time. Unless I set picture
parameters without a request_fd for that purpose. If this is the way,
then we should document this.

Is this the intended way to negotiation IPP functions with the driver ?

> 
> When the application sets a pixel format other than NV12,
> the post-processor is transparently enabled.
> 
> Patch 1 is a cleanups needed to easier integrate the post-processor.
> Patch 2 introduces the post-processing support.
> Patch 3 updates the uAPI specification.
> 
> This is tested on RK3288 platforms with MPEG-2, VP8 and
> H264 streams, decoding to YUY2 surfaces. For now, this series
> is only adding support for NV12-to-YUY2 conversion.
> 
> Applies to media/master.
> 
> Future plans
> ------------
> 
> It seems to me that we should start moving this driver to use
> regmap-based access to registers. However, such move is out of scope
> and not entirely related to this post-processor enablement.
> 
> We'll work on that as follow-up patches.
> 
> Changelog
> ---------
> 
> Changes v3:
> 
> * After discussing with Hans and Tomasz during the media summit
> in ELCE, we decided to go back on the MC changes. The MC topology
> is now untouched. This means the series is now similar to v1,
> except we explicitly use the ENUM_FMT to hint about the post-processed
> formats.
> 
> Changes v2:
> 
> * The decoder->post-processor topology is now exposed
>   explicitly and applications need to configure the pipeline.
>   By default, the decoder is enabled and the post-processor
>   is disabled.
> 
> * RGB post-processing output has been dropped. We might
>   add this in the future, but for now, it seems it would
>   make the code more complex without a use-case in mind.
>   RGB is much more memory-consuming so less attractive
>   than YUV, and modern GPUs and display controllers support YUV.
> 
> * The post-processor implementation still supports RK3288
>   only. However, a generic register infrastructure is introduced
>   to make addition of other variants such as RK3399 really easy.
> 
> Ezequiel Garcia (3):
>   media: hantro: Cleanup format negotiation helpers
>   media: hantro: Support color conversion via post-processing
>   media: vidioc-enum-fmt.rst: clarify format preference
> 
>  .../media/uapi/v4l/vidioc-enum-fmt.rst        |   4 +-
>  drivers/staging/media/hantro/Makefile         |   1 +
>  drivers/staging/media/hantro/hantro.h         |  64 +++++++-
>  drivers/staging/media/hantro/hantro_drv.c     |   8 +-
>  .../staging/media/hantro/hantro_g1_h264_dec.c |   2 +-
>  .../media/hantro/hantro_g1_mpeg2_dec.c        |   2 +-
>  drivers/staging/media/hantro/hantro_g1_regs.h |  53 +++++++
>  .../staging/media/hantro/hantro_g1_vp8_dec.c  |   2 +-
>  drivers/staging/media/hantro/hantro_h264.c    |   6 +-
>  drivers/staging/media/hantro/hantro_hw.h      |  13 ++
>  .../staging/media/hantro/hantro_postproc.c    | 141 ++++++++++++++++++
>  drivers/staging/media/hantro/hantro_v4l2.c    | 105 ++++++++-----
>  drivers/staging/media/hantro/rk3288_vpu_hw.c  |  10 ++
>  13 files changed, 366 insertions(+), 45 deletions(-)
>  create mode 100644 drivers/staging/media/hantro/hantro_postproc.c
> 
