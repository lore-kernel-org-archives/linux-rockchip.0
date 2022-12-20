Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CB07C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Dec 2022 01:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2eAGYVZf4gVtKvApaDI9FBDhuPwDGysoAA/RWrPhVf8=; b=xou+GYLrS2TrHo
	tGoUxcDuU4xArHeQfhlwnsstBSO5qdlcCz17fmufofcIc1kBcgbpHOR3UnRNLp2NrU9urjvI2ROKl
	wI6Ye3pRr2d+eTZYpVW87dZsbPr3kaLBzBZJwmA/yh9uhmaNLzBF3+MInUzrkw3n2Iw1dnGMM9G9c
	Gjq+3iP3Hcu86QXp/UFlcrvr2osmc58feLTV2epYOMfy9RGeTe94ol5croEc7h9BosP2g6uX4hQzw
	iNEJ5YMVxRyJx/y/dfm7AjTH+E+4LY7aqKaeO/e/la/yBy5w2v/dDUjvJw6An6tTu4LzgKWBABhHm
	Nnj5BRlsavWgwACPHOyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Rnz-006YNw-Pb; Tue, 20 Dec 2022 01:52:31 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Rnl-006YBj-Mb
	for linux-rockchip@lists.infradead.org; Tue, 20 Dec 2022 01:52:19 +0000
Received: by mail-lj1-x232.google.com with SMTP id b9so11020294ljr.5
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Dec 2022 17:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6V+bmN9uxO+Stc5Qc5vBCLWzBtVtw74Whdt9SrbLKb8=;
        b=EW+IrwK85O39rPSIE95d2xOwFjs9csGfVxgVLkPWAikyyzr4HymBnJK84heaIYoQab
         ElKdXo5+bISjv8KPxOdk8UeHynwD49CzBEmQpbFdBRx8VpGB/Ba2u4OGzvflMVaM1As5
         srStsgkPIzvi2keafc3qTopWLsMkHD1QLE/l1vufUBRUEeK0hWLTpmS8kbpAXSznmSE4
         hwf4xdo0ppnufKnJcRXZQNUTjV0LbFUy1DYVdGQsndutnMbYxMp2Kan1cacQmDGpewoz
         fE3L0dbbRAgjV6jqFNARnS0CfwZeFezc1AJFoVR3+4zt/JgFKtZqaZ1d+eU0Qb7a6ZFl
         ToFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6V+bmN9uxO+Stc5Qc5vBCLWzBtVtw74Whdt9SrbLKb8=;
        b=y6v16HaKIx0iqgCj1jSPCooLS75GAAVBrjzn4M2P8bh2BxVGbano215Ry+uU9gSFeA
         s3M8kdOx+qiI29SF/JzS7OTCPWSI5cHMbCCQPxhLw7UmF18X3CRR6xad9gbQGQnyNcyj
         OK3zTBbLxF0Td+S9Hg88duQF8ME+FSOJ/ed3JaT+dNiCEx8kYUV/GqqQG6N+lGPY2teF
         Kxtg+Kr36mc5wYK1oMCKEuP0WTeSSqcO6hNAh4lwmjP4N9lVqeCNPTAGYxIpQz4rpWTn
         LBC7WOh9Q89lygBw7WdNxoanCjNJStlr4vv0IBLT8W5spupA612MsMJzdIyTIlNHw1VI
         alXA==
X-Gm-Message-State: AFqh2kpi0Uc+98LIWTx2jyJpRWwTCyOZIg+tdthVcYWuhoy928K+78rs
	iSSPQBs9CK6IvbrhimYhZZ/cOZVZwwdtdmES+ckdhg==
X-Google-Smtp-Source: AMrXdXsIffFAGyFtnO8gZp/ucrVfNMyhpNHmhM0ftTpEoQ5RFtc8MbHOI+Nl9QKDQ5h3Qgj6sPyghHdtIbo77kBJAc8=
X-Received: by 2002:a05:651c:b08:b0:27e:8a84:6c33 with SMTP id
 b8-20020a05651c0b0800b0027e8a846c33mr1484006ljr.404.1671501134706; Mon, 19
 Dec 2022 17:52:14 -0800 (PST)
MIME-Version: 1.0
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
 <CAAEAJfBP_D65kjHbwYP+LWfWKfzFtHtWo+3bDcbdO8tPtBurUA@mail.gmail.com> <20221219215431.GB26315@pengutronix.de>
In-Reply-To: <20221219215431.GB26315@pengutronix.de>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Mon, 19 Dec 2022 22:52:02 -0300
Message-ID: <CAAEAJfBzZWHu9YE38HzRUQ2xRZohYa19JaK7EOaQDqz5K1sz_g@mail.gmail.com>
Subject: Re: [PATCH v1 0/9] AV1 stateless decoder for RK3588
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, p.zabel@pengutronix.de, 
	mchehab@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	heiko@sntech.de, daniel.almeida@collabora.com, 
	nicolas.dufresne@collabora.co.uk, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_175217_755053_5011BAAA 
X-CRM114-Status: GOOD (  46.14  )
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

Hi Michael,

On Mon, Dec 19, 2022 at 6:54 PM Michael Grzeschik <mgr@pengutronix.de> wrote:
>
>
> Hi Benjamin,
> Hi Ezequiel,
>
> On Mon, Dec 19, 2022 at 06:07:38PM -0300, Ezequiel Garcia wrote:
> >On Mon, Dec 19, 2022 at 12:56 PM Benjamin Gaignard
> ><benjamin.gaignard@collabora.com> wrote:
> >>
> >> This series implement AV1 stateless decoder for RK3588 SoC.
> >> The harware support 8 and 10 bits bitstreams up to 7680x4320.
> >> AV1 feature like film grain or scaling are done by the postprocessor.
> >> The driver can produce NV12_4L4 and NV12 pixel formats.
> >> A native 10bits NV12_4L4 format is possible but need more investigation
> >> to be completly documented and enabled.
> >>
> >> It is based on Daniel's "[RFC,v3] media: Add AV1 uAPI" [1] patches and
> >> Sebastian's device-tree patches for RK3588.
> >>
> >
> >I thought the AV1 decoder in RK3588 was really a separate hardware
> >from the Hantro G1/G2.
> >
> >Shouldn't this need a new driver for this new hardware?
>
> Just jumping into this discussion as I am currently working on the rkvenc driver.
>

The more the merrier, there's always room for developers :-)

> In my case I am extending the rkvdec driver to become more generic for
> other rockchip specific enc/decoders.
>
> My first change looks like this:
> ---
>  drivers/staging/media/rkvdec/Makefile              |   4 +-
>  drivers/staging/media/rkvdec/rkvdec-h264.c         | 100 ++++-----
>  drivers/staging/media/rkvdec/rkvdec-vp9.c          | 142 ++++++-------
>  drivers/staging/media/rkvdec/{rkvdec.c => rkvpu.c} | 510 +++++++++++++++++++++++-----------------------
>  drivers/staging/media/rkvdec/{rkvdec.h => rkvpu.h} |  66 +++---
> ---
>
> While working on other parts of the encoder I found many places in the
> rkvdec driver (e.g. v4l2 and vb2 callbacks) that looked familiar to the hantro
> functions but where limited to the decoder case.
>

Because stateless decoders devices are very similar in their general behavior,
their drivers could be very similar.

Hantro and Rkvdec could look similar because the same humans worked on them.

Most boilerplate code, as well as V4L2 format negotiation, VB2 buffer handling
could be shared among all stateless decoder drivers. I think even at one point
we experimented with having a shared/common code base for all stateless codecs.

In other words, it's entirely possible to support Hantro devices in
the Cedrus driver
and vice-versa, you would only have to write the hardware-specific bits.

However, there is consensus to have a separate driver for each
different hardware,
even when the hardware is a bit similar. This may lead to some code duplication,
but it's less fragile / more flexible. Maintaining drivers this way allows
developers to evolve, testing on a small family of devices, without
breaking support
for other devices.

This is important as sometimes it's hard to get the hardware,
but we still don't want to break the support!

> I think there are two options for the av1 codec.
>
> 1) If the vpu981 is a driver that has nothing to do with verisilicon but
> works with this driver framework, then we should integrate vepu981 into it
> but consider rename the verisilicon unrelated parts to something generic.
>
> 2) Move the vepu981 av1 driver into the rkvdec instead.
>
> If 1) is the way to go, we can even think of moving the staging code parts from
> rkvdec to the verisilicon code. Likewise to the vepu981-av1.
>

The Hantro driver should only support G1, G2, and VC8000D;
which can be said to belong to the same family.

The RKVDEC driver supports Rockchip vdpu34x core. I have to admit
I'm not exactly sure if we support anything else than vdpu34x.

I'm not familiar with the AV1 support provided by this patch,
but looking at the mpp code:

...
        "rk3588",
        ROCKCHIP_SOC_RK3588,
        HAVE_VDPU2 | HAVE_VDPU2_PP | HAVE_VEPU2 | HAVE_RKVDEC | HAVE_RKVENC |
        HAVE_JPEG_DEC | HAVE_AV1DEC | HAVE_AVSDEC | HAVE_VEPU2_JPEG,
        {   &vdpu38x, &rkjpegd, &vdpu2, &vdpu2_jpeg_pp, &av1d, &avspd},
        {   &vepu58x, &vepu2, &vepu2_jpeg, NULL, },

Seems RK3588 supports a Hantro core (VDPU2), a vdpu38x core and this AV1 core,
which according to this patchset is vdpu981 (?)

If the vdpu38x device interface, configuration, buffer handling and
registers are
similar enough with vdpu34x, adding vdpu38x to the Rkvdec driver
should be straightforward.
If the vdpu38x core differs, it may be reason enough to consider a new driver.

As for vdpu981 (AV1), I'm inclined to think it deserves its own driver.

Again, I'm far less worried for a little code duplication in the
boilerplate (which can be solved
with helpers, etc.) and more worried about making sure we can evolve
drivers easily,
while minimizing regressions.

Hope it helps!
Ezequiel


> I could also keep on integrating the rkvenc on that base instead.
>
> Regards,
> Michael
>
> >> The full branch can be found here:
> >> https://gitlab.collabora.com/linux/for-upstream/-/commits/rk3588_av1_decoder_v1
> >>
> >> Fluster score is: 151/239 while testing AV1-TEST-VECTORS with GStreamer-AV1-V4L2SL-Gst1.0.
> >> The failing tests are:
> >> - 10bits bitstream because 10bits output formats aren't yet implemented.
> >> - the 2 tests with 2 spatial layers: few errors in luma/chroma values
> >> - tests with resolution < hardware limit (64x64)
> >>
> >> Benjamin
> >>
> >> Benjamin Gaignard (9):
> >>   dt-bindings: media: rockchip-vpu: Add rk3588 vpu compatible
> >>   media: verisilicon: Add AV1 decoder mode and controls
> >>   media: verisilicon: Save bit depth for AV1 decoder
> >>   media: verisilicon: Check AV1 bitstreams bit depth
> >>   media: verisilicon: Compute motion vectors size for AV1 frames
> >>   media: verisilicon: Add AV1 entropy helpers
> >>   media: verisilicon: Add Rockchip AV1 decoder
> >>   media: verisilicon: Add film grain feature to AV1 driver
> >>   media: verisilicon: Enable AV1 decoder on rk3588
> >>
> >>  .../bindings/media/rockchip-vpu.yaml          |    1 +
> >>  drivers/media/platform/verisilicon/Makefile   |    3 +
> >>  drivers/media/platform/verisilicon/hantro.h   |    5 +
> >>  .../media/platform/verisilicon/hantro_drv.c   |   54 +
> >>  .../media/platform/verisilicon/hantro_hw.h    |  102 +
> >>  .../platform/verisilicon/hantro_postproc.c    |    3 +
> >>  .../media/platform/verisilicon/hantro_v4l2.c  |    5 +
> >>  .../verisilicon/rockchip_av1_entropymode.c    | 4536 +++++++++++++++++
> >>  .../verisilicon/rockchip_av1_entropymode.h    |  272 +
> >>  .../verisilicon/rockchip_av1_filmgrain.c      |  401 ++
> >>  .../verisilicon/rockchip_av1_filmgrain.h      |   36 +
> >>  .../verisilicon/rockchip_vpu981_hw_av1_dec.c  | 2280 +++++++++
> >>  .../verisilicon/rockchip_vpu981_regs.h        |  477 ++
> >>  .../platform/verisilicon/rockchip_vpu_hw.c    |  116 +
> >>  14 files changed, 8291 insertions(+)
> >>  create mode 100644 drivers/media/platform/verisilicon/rockchip_av1_entropymode.c
> >>  create mode 100644 drivers/media/platform/verisilicon/rockchip_av1_entropymode.h
> >>  create mode 100644 drivers/media/platform/verisilicon/rockchip_av1_filmgrain.c
> >>  create mode 100644 drivers/media/platform/verisilicon/rockchip_av1_filmgrain.h
> >>  create mode 100644 drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
> >>  create mode 100644 drivers/media/platform/verisilicon/rockchip_vpu981_regs.h
> >>
> >> --
> >> 2.34.1
> >>
> >
> >_______________________________________________
> >linux-arm-kernel mailing list
> >linux-arm-kernel@lists.infradead.org
> >http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
