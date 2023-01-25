Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EACE3C54EED
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Jan 2023 10:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJKPxFjizaVXPNerApoCDOjakZLnsArBAzq8ZEgUdJU=; b=TYcMqmEYXb+o21
	F3MlCEnoB7xPNfXYN+ay+LpGC8wSBq3zeClr8BYLmcEnd/cvt555xViyvwc4t6sKaeLmGNCV8EAl/
	qcQjEJlboaIQRFeteTui/fQYKzRr8Jw60YK0tWJF48R+lfO0H2HKVdZIWEenHYyxPfph1qcI4uGRa
	0do60I30tyX43LH4TJZ+Wu2iE0IZ6aMsK0Z6RdrrVOIPhOtp1/gKdEIIMr1oxFD6JCtRyTmRkQ0lk
	U2WzbHhe4HcmlriiDI7KZpF9MwKl2TFbDoH2GA/RevUiQ47lKuL9RPkW/0gqAl4VEz1okX3otrC30
	mYcO6AC8CzX9OppKX3mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKcZZ-006mVm-47; Wed, 25 Jan 2023 10:00:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKcUT-006kT5-49; Wed, 25 Jan 2023 09:54:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B7BF16148A;
	Wed, 25 Jan 2023 09:54:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD4C9C433D2;
	Wed, 25 Jan 2023 09:54:42 +0000 (UTC)
Message-ID: <b4553096-330f-2e6e-239b-bee519140810@xs4all.nl>
Date: Wed, 25 Jan 2023 10:54:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 00/13] AV1 stateless decoder for RK3588
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230111165931.753763-1-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20230111165931.753763-1-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_015449_294250_0673E8C8 
X-CRM114-Status: GOOD (  24.13  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 1/11/23 17:59, Benjamin Gaignard wrote:
> This series implement AV1 stateless decoder for RK3588 SoC.
> The hardware support 8 and 10 bits bitstreams up to 7680x4320.
> AV1 feature like film grain or scaling are done by the postprocessor.
> The driver can produce NV12_4L4, NV12_10LE40_4L4, NV12 and P010 pixels formats.
> Even if Rockchip have named the hardware VPU981 it looks like a VC9000 but 
> with a different registers mapping.
> 
> It is based on Daniel's "[PATCH v4] media: Add AV1 uAPI" [1] patches.
> 
> The full branch can be found here:
> https://gitlab.collabora.com/linux/for-upstream/-/commits/rk3588_av1_decoder_v3
> 
> Fluster score is: 200/239 while testing AV1-TEST-VECTORS with GStreamer-AV1-V4L2SL-Gst1.0.
> The failing tests are:
> - the 2 tests with 2 spatial layers: few errors in luma/chroma values
> - tests with resolution < hardware limit (64x64)
> - 10bits film grain test: bad macroblocks while decoding, the same 8bits
>   test is working fine.
> 
> Changes in v3:
> - Fix arrays loops limites.
> - Remove unused field.
> - Reset raw pixel formats list when bit depth or film grain feature
>   values change.
> - Enable post-processor P010 support
> 
> Changes in v2:
> - Remove useless +1 in sbs computation. 
> - Describe NV12_10LE40_4L4 pixels format.
> - Post-processor could generate P010.
> - Fix comments done on v1.
> - The last patch make sure that only post-processed formats are used when film
>   grain feature is enabled.
> 
> Benjamin
> 

I have a bunch of sparse errors:

SPARSE:drivers/media/platform/verisilicon/hantro_drv.c:342:17: error: typename in expression
SPARSE:drivers/media/platform/verisilicon/hantro_drv.c:342:21: error: Expected ; at end of statement
SPARSE:drivers/media/platform/verisilicon/hantro_drv.c:342:21: error: got bit_depth
SPARSE:drivers/media/platform/verisilicon/hantro_drv.c:342:17: error: undefined identifier 'int'
SPARSE:drivers/media/platform/verisilicon/hantro_drv.c:346:47: error: undefined identifier 'bit_depth'
SPARSE:drivers/media/platform/verisilicon/hantro_drv.c:353:39: error: undefined identifier 'bit_depth'
SPARSE:drivers/media/platform/verisilicon/hantro_drv.c:354:42: error: undefined identifier 'bit_depth'

Also some smatch errors:

SMATCH:drivers/media/platform/verisilicon/hantro_drv.c:342:17: :error: typename in expression
SMATCH:drivers/media/platform/verisilicon/hantro_drv.c:342:21: :error: Expected ; at end of statement
SMATCH:drivers/media/platform/verisilicon/hantro_drv.c:342:21: :error: got bit_depth
drivers/media/platform/verisilicon/hantro_drv.c:342 hantro_av1_s_ctrl() warn: statement has no effect 3
drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c:227:6: warning: no previous prototype for 'rockchip_vpu981_av1_dec_tiles_free' [-Wmissing-prototypes]
drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c:802:47: warning: variable 'chroma_addr' set but not used [-Wunused-but-set-variable]

Regards,

	Hans

> [1] https://lore.kernel.org/linux-media/20230103154832.6982-1-daniel.almeida@collabora.com/T/#u
> 
> Benjamin Gaignard (12):
>   dt-bindings: media: rockchip-vpu: Add rk3588 vpu compatible
>   media: Add NV12_10LE40_4L4 pixel format
>   media: verisilicon: Get bit depth for V4L2_PIX_FMT_NV12_10LE40_4L4
>   media: verisilicon: Add AV1 decoder mode and controls
>   media: verisilicon: Save bit depth for AV1 decoder
>   media: verisilicon: Check AV1 bitstreams bit depth
>   media: verisilicon: Compute motion vectors size for AV1 frames
>   media: verisilicon: Add AV1 entropy helpers
>   media: verisilicon: Add Rockchip AV1 decoder
>   media: verisilicon: Add film grain feature to AV1 driver
>   media: verisilicon: Enable AV1 decoder on rk3588
>   media: verisilicon: Conditionnaly ignore native formats
> 
> Nicolas Dufresne (1):
>   v4l2-common: Add support for fractional bpp
> 
>  .../bindings/media/rockchip-vpu.yaml          |    1 +
>  .../media/v4l/pixfmt-yuv-planar.rst           |    4 +
>  drivers/media/platform/verisilicon/Makefile   |    3 +
>  drivers/media/platform/verisilicon/hantro.h   |    8 +
>  .../media/platform/verisilicon/hantro_drv.c   |   69 +
>  .../media/platform/verisilicon/hantro_hw.h    |  102 +
>  .../platform/verisilicon/hantro_postproc.c    |    7 +
>  .../media/platform/verisilicon/hantro_v4l2.c  |   22 +-
>  .../media/platform/verisilicon/hantro_v4l2.h  |    1 +
>  .../verisilicon/rockchip_av1_entropymode.c    | 4546 +++++++++++++++++
>  .../verisilicon/rockchip_av1_entropymode.h    |  272 +
>  .../verisilicon/rockchip_av1_filmgrain.c      |  401 ++
>  .../verisilicon/rockchip_av1_filmgrain.h      |   36 +
>  .../verisilicon/rockchip_vpu981_hw_av1_dec.c  | 2278 +++++++++
>  .../verisilicon/rockchip_vpu981_regs.h        |  477 ++
>  .../platform/verisilicon/rockchip_vpu_hw.c    |  134 +
>  drivers/media/v4l2-core/v4l2-common.c         |  149 +-
>  drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
>  include/media/v4l2-common.h                   |    2 +
>  include/uapi/linux/videodev2.h                |    1 +
>  20 files changed, 8439 insertions(+), 75 deletions(-)
>  create mode 100644 drivers/media/platform/verisilicon/rockchip_av1_entropymode.c
>  create mode 100644 drivers/media/platform/verisilicon/rockchip_av1_entropymode.h
>  create mode 100644 drivers/media/platform/verisilicon/rockchip_av1_filmgrain.c
>  create mode 100644 drivers/media/platform/verisilicon/rockchip_av1_filmgrain.h
>  create mode 100644 drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
>  create mode 100644 drivers/media/platform/verisilicon/rockchip_vpu981_regs.h
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
