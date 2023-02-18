Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31C4BC61DA4
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Feb 2023 13:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZoMdweR12Ap8q19btJeGLWcM4vVBBsevxjXs68LkUV0=; b=RolFQwKxYl70VI
	IM8b7PaTfBhSnvt5CWGOdaJr6w1mif8LxBUl7fUbFDY7blo1JAB13xHcRKFdRqcIwTvEp7YOZOnIu
	DFOsf31/dZkwoxm0/VhzWDtNt7pb049xxbnU9If4mjf4KygvSCN4udHcL1/qBB7Rp6c/iCKYn4Xal
	cJG3J032DzmeAxVbDfEkfukcmW0Xa2EsGR1CxfGLdxr8i4UCv3PTxSBVLQOdj2XAV8JShzJ1BdkaK
	qWjn1bN/J7V+XL8GZdqUI8RN/JY8ipklk68IrV9jgbypRkle7zzcdwR/j5ZpeUUsxwgUMqi2tAa3Y
	btt1EVIL5Jl6ZXmYnn5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTN5B-00H3kf-Qd; Sat, 18 Feb 2023 13:16:53 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTN51-00H3iN-Dj
	for linux-rockchip@lists.infradead.org; Sat, 18 Feb 2023 13:16:45 +0000
Received: by mail-lf1-x12b.google.com with SMTP id b22so1129528lfv.5
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Feb 2023 05:16:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fOW41YE6NIXhaJNnU4hCx+sLkzhMt2pO1lzbuk6y4I0=;
        b=XBHOhHHJ50N6f0pTI+SyxJ6bOnVH+Pl4f3M5WGB8OwQlh2776GpleUi7V1bGpEhALC
         MrWwGYt1yyg3UgNKTv6KjONmFC/Rjb8TI9+cZ1jWJxu+MERgbIVOWQGojInh1vf6V+NP
         ZQ53LWGMff8hiPDjfdatEW/+aQCXY+/ogBLeCz9DRAr0nCZ9unjR4kZtwuD7c3v19JRs
         Gf/UjmPW/kNzlmBhpv7lFzo+XenSQwGkro8F3H42SbL+BsQwt7z50e/1QVKPItlhInzi
         8Vz87cNgwtJFB4ydKkOHuIwChNlVvJjAqEwlLKlwoXxljExnJUkc40FZO0sxIQ6FRt52
         SPXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fOW41YE6NIXhaJNnU4hCx+sLkzhMt2pO1lzbuk6y4I0=;
        b=ATm/HP7JanKTkVB9IFuJGkMbBpV5jjLpuYEiRNG8RIRmkCxP/SAD5c0MW8hdBPv6s2
         gPXelc1sT06yaUz6atjeqVtaQOUUQRjcUkD9KyBACOEWa3V2xsDgUc5lPhBlTjzcR+6t
         btvuijUHtHIzn8xs4rF/C5v72hTqLb6HTQvdRsB/q7iEOTTYlCgijCTI6VC44bqi4xRO
         2JXi1OoRy++VwsgeYBmjH5JGEj7zhtYPkUD+9cP/ZayV56tf0ezEX/RVrqwQbZHetU2Y
         pB7hnXbso4mOLnicpJ3JhexMiaAQvnCDCn7Q/otW3gmWsAJP1ca4KTyO/e8ElpoglX1U
         dpWQ==
X-Gm-Message-State: AO0yUKVEu7mojR+Y7sEDeO59WdfuR+SB3XVXikwj3GlVFVVfttOV7eA0
	wF16Ur71L1csfM2synQ8r9XinLtSQg9PYEVX3ngX3g==
X-Google-Smtp-Source: AK7set80r3Y6bYSLFSBI0xknUuO9S2Q/YhyJkMLayF/FUlbtLXYQYgq5HM5Hu8zpF8myoFBSziIJrlieuTkqWcZCLSw=
X-Received: by 2002:ac2:4439:0:b0:4d5:ca43:703e with SMTP id
 w25-20020ac24439000000b004d5ca43703emr1313928lfl.1.1676726200392; Sat, 18 Feb
 2023 05:16:40 -0800 (PST)
MIME-Version: 1.0
References: <20230214140557.537984-1-benjamin.gaignard@collabora.com>
In-Reply-To: <20230214140557.537984-1-benjamin.gaignard@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Sat, 18 Feb 2023 10:16:28 -0300
Message-ID: <CAAEAJfCeZSqE0GhHMM8wNFjzF7ktJje_mOnBhcq_qc76WtaJWQ@mail.gmail.com>
Subject: Re: [PATCH v4 00/12] AV1 stateless decoder for RK3588
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, hverkuil@xs4all.nl, 
	nicolas.dufresne@collabora.com, jernej.skrabec@gmail.com, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230218_051643_492245_AAADA1BC 
X-CRM114-Status: GOOD (  21.75  )
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

Hi Nicolas, Benjamin,

On Tue, Feb 14, 2023 at 11:06 AM Benjamin Gaignard
<benjamin.gaignard@collabora.com> wrote:
>
> This series implement AV1 stateless decoder for RK3588 SoC.
> The hardware support 8 and 10 bits bitstreams up to 7680x4320.
> AV1 feature like film grain or scaling are done by the postprocessor.
> The driver can produce NV12_4L4, NV12_10LE40_4L4, NV12 and P010 pixels formats.
> Even if Rockchip have named the hardware VPU981 it looks like a VC9000 but
> with a different registers mapping.
>
> It is based on Daniel's "[PATCH v6] media: Add AV1 uAPI" patches [1] and my
> own series to fix 10 bits handling in verisilicon driver "[PATCH v8 0/6]
> media: verisilicon: HEVC: fix 10bits handling" [2].
>
> The full branch can be found here:
> https://gitlab.collabora.com/linux/for-upstream/-/commits/rk3588_av1_decoder_v4
>
> Fluster score is: 200/239 while testing AV1-TEST-VECTORS with GStreamer-AV1-V4L2SL-Gst1.0.
> The failing tests are:
> - the 2 tests with 2 spatial layers: few errors in luma/chroma values
> - tests with resolution < hardware limit (64x64)
> - 10bits film grain test: bad macroblocks while decoding, the same 8bits
>   test is working fine.
>

I did some review of the commits that affect the generic Hantro driver,
it looks quite clean!

I'll send some R-b soon.

Thanks,
Ezequiel

> Changes in v4:
> - Squash "Save bit depth for AV1 decoder" and "Check AV1 bitstreams bit
>   depth" patches.
> - Double motion vectors buffer size.
> - Fix the various errors reported by Hans.
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
> [1] https://patchwork.kernel.org/project/linux-media/patch/20230214124254.13356-1-daniel.almeida@collabora.com/
> [2] https://www.spinics.net/lists/linux-media/msg226954.html
>
> Benjamin Gaignard (11):
>   dt-bindings: media: rockchip-vpu: Add rk3588 vpu compatible
>   media: Add NV12_10LE40_4L4 pixel format
>   media: verisilicon: Get bit depth for V4L2_PIX_FMT_NV12_10LE40_4L4
>   media: verisilicon: Add AV1 decoder mode and controls
>   media: verisilicon: Check AV1 bitstreams bit depth
>   media: verisilicon: Compute motion vectors size for AV1 frames
>   media: verisilicon: Add AV1 entropy helpers
>   media: verisilicon: Add Rockchip AV1 decoder
>   media: verisilicon: Add film grain feature to AV1 driver
>   media: verisilicon: Enable AV1 decoder on rk3588
>   media: verisilicon: Conditionally ignore native formats
>
> Nicolas Dufresne (1):
>   v4l2-common: Add support for fractional bpp
>
>  .../bindings/media/rockchip-vpu.yaml          |    1 +
>  .../media/v4l/pixfmt-yuv-planar.rst           |    4 +
>  drivers/media/platform/verisilicon/Makefile   |    3 +
>  drivers/media/platform/verisilicon/hantro.h   |    8 +
>  .../media/platform/verisilicon/hantro_drv.c   |   68 +-
>  .../media/platform/verisilicon/hantro_hw.h    |  102 +
>  .../platform/verisilicon/hantro_postproc.c    |    9 +-
>  .../media/platform/verisilicon/hantro_v4l2.c  |   67 +-
>  .../media/platform/verisilicon/hantro_v4l2.h  |    5 +-
>  .../verisilicon/rockchip_av1_entropymode.c    | 4424 +++++++++++++++++
>  .../verisilicon/rockchip_av1_entropymode.h    |  272 +
>  .../verisilicon/rockchip_av1_filmgrain.c      |  401 ++
>  .../verisilicon/rockchip_av1_filmgrain.h      |   36 +
>  .../verisilicon/rockchip_vpu981_hw_av1_dec.c  | 2234 +++++++++
>  .../verisilicon/rockchip_vpu981_regs.h        |  477 ++
>  .../platform/verisilicon/rockchip_vpu_hw.c    |  134 +
>  drivers/media/v4l2-core/v4l2-common.c         |  149 +-
>  drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
>  include/media/v4l2-common.h                   |    2 +
>  include/uapi/linux/videodev2.h                |    1 +
>  20 files changed, 8301 insertions(+), 97 deletions(-)
>  create mode 100644 drivers/media/platform/verisilicon/rockchip_av1_entropymode.c
>  create mode 100644 drivers/media/platform/verisilicon/rockchip_av1_entropymode.h
>  create mode 100644 drivers/media/platform/verisilicon/rockchip_av1_filmgrain.c
>  create mode 100644 drivers/media/platform/verisilicon/rockchip_av1_filmgrain.h
>  create mode 100644 drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
>  create mode 100644 drivers/media/platform/verisilicon/rockchip_vpu981_regs.h
>
> --
> 2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
