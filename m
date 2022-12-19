Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2504C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 21:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=imLmAiTtzaoju4rBoMf8G5+Gy7p79TaAhlJxHi1ZEpQ=; b=dzwP8vjPI2A6Ts
	CWvYwcI4/S5oAAZIdrWfEjZr3eFM43RgG6JorNyghNMK9O3NO8dmflJXhYfSFvtAxFQSZ7jx20ysR
	f37E7Bc5JNm7A9mfX0XYMOSCn1EL6j/QWV7cD75iCzQK/7RDYqPSccoyOCDkRHp62UWM7469+1SlA
	Sa7Tw1+evd9jpJit4D/uiuq7Q16qe56ijZ+J2JlfuVfH1YKw98XQ+h6MhPcdmPqxW/F3fHQEH3RuU
	vTIysfpC0WYfOZaQoU8VLTSzfLicoFwedeiIYpE9IsSTcMNw0/BAiJUPdsv8Ulwxng7qEuMS1Yz5a
	dW7OIveBN+A5QCgGpK/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7NMi-003lzU-50; Mon, 19 Dec 2022 21:08:04 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7NMW-003lem-SL
	for linux-rockchip@lists.infradead.org; Mon, 19 Dec 2022 21:07:54 +0000
Received: by mail-lj1-x22e.google.com with SMTP id v11so10436630ljk.12
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Dec 2022 13:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DvDFRM+cIsRIk+HqgujcIiOfyICxAxZ5sfBT0wH/F0w=;
        b=hpybuwdtfx5Ig/p4JwDOF5ggHdKpWlXU5aP/RV04mEmmy3DqzGUiI3+9gHNzeTDm9L
         GqypwiESMeD44/3G78iWvyJQPpDlCg08IMLmFAMyPuLs6FgDoDilntwlc4AEeI37Cszm
         bYKmGKEKFLlLBR7FTCbCI4Wch61JbEbrGgmXyGbK9MGObrhJLy6PR1kfHe2CrP5A6g1Q
         Rf1uCtE4q7Mfzwjnn2kqE6H2ny2GFTWenxke03HJ6pdHaCYEMRM5BI4l0m/b8hJ4rgup
         54awbrrDz8GYEYZoEH+ZX905D5jHFWzE6Nq3uz3zWINYUZYf5ZhoeNL81OO2mpav/37L
         83Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DvDFRM+cIsRIk+HqgujcIiOfyICxAxZ5sfBT0wH/F0w=;
        b=y2ncHfCNNC8YLralxMCmoaOFBx9RY935S683j6uQ0FRa7lmX9YFAnLqKaNiXcBZt+S
         6KagWGwzPPVYqWwcCwRyiQ6u0EoO+gT6LV5GuQoXVmQ7WdBYSlclPx1jaK/8IJfc/S+8
         440wo2/azgk7doW78RVf7aGy6Ri5QfoyLjfcIJhO/gI4D/tXmJzQIn6EPGBhS98YchFt
         nzjcl81EE0YbjqtOCFVkE/6hcvXyS7jbMBYGWYE8XpAMiq+/4pqjsxmDQ0jPX1f9Bq08
         kIPxrmW3yub3bS3E74vTvltWo4tHPdAK5mYZ344SUI7/m+9eUctDJYiz0T83MHfQYClU
         99JQ==
X-Gm-Message-State: ANoB5pnOKaDKMAXuyXic/H/KdBg2REaFGC4yqhQFUIBsXOoDJGcaZvM2
	XB+iAfxjKp/JMHhEyS5r639uyWVmwmUFiOaEKb4ZJw==
X-Google-Smtp-Source: AA0mqf7yh+36itgm76QOQNXUPNSIh1XAiQ1h3fas3L7sHK0kevEvJn+HhC5t4DANokXbaBLR76Kk/IEFhKA2q7XG/jE=
X-Received: by 2002:a05:651c:c87:b0:27b:afc1:da9 with SMTP id
 bz7-20020a05651c0c8700b0027bafc10da9mr1862896ljb.218.1671484069613; Mon, 19
 Dec 2022 13:07:49 -0800 (PST)
MIME-Version: 1.0
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
In-Reply-To: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Mon, 19 Dec 2022 18:07:38 -0300
Message-ID: <CAAEAJfBP_D65kjHbwYP+LWfWKfzFtHtWo+3bDcbdO8tPtBurUA@mail.gmail.com>
Subject: Re: [PATCH v1 0/9] AV1 stateless decoder for RK3588
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_130752_925568_B4D95E41 
X-CRM114-Status: GOOD (  15.93  )
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

Hi Benjamin,

On Mon, Dec 19, 2022 at 12:56 PM Benjamin Gaignard
<benjamin.gaignard@collabora.com> wrote:
>
> This series implement AV1 stateless decoder for RK3588 SoC.
> The harware support 8 and 10 bits bitstreams up to 7680x4320.
> AV1 feature like film grain or scaling are done by the postprocessor.
> The driver can produce NV12_4L4 and NV12 pixel formats.
> A native 10bits NV12_4L4 format is possible but need more investigation
> to be completly documented and enabled.
>
> It is based on Daniel's "[RFC,v3] media: Add AV1 uAPI" [1] patches and
> Sebastian's device-tree patches for RK3588.
>

I thought the AV1 decoder in RK3588 was really a separate hardware
from the Hantro G1/G2.

Shouldn't this need a new driver for this new hardware?

Thanks!
Ezequiel

> The full branch can be found here:
> https://gitlab.collabora.com/linux/for-upstream/-/commits/rk3588_av1_decoder_v1
>
> Fluster score is: 151/239 while testing AV1-TEST-VECTORS with GStreamer-AV1-V4L2SL-Gst1.0.
> The failing tests are:
> - 10bits bitstream because 10bits output formats aren't yet implemented.
> - the 2 tests with 2 spatial layers: few errors in luma/chroma values
> - tests with resolution < hardware limit (64x64)
>
> Benjamin
>
> Benjamin Gaignard (9):
>   dt-bindings: media: rockchip-vpu: Add rk3588 vpu compatible
>   media: verisilicon: Add AV1 decoder mode and controls
>   media: verisilicon: Save bit depth for AV1 decoder
>   media: verisilicon: Check AV1 bitstreams bit depth
>   media: verisilicon: Compute motion vectors size for AV1 frames
>   media: verisilicon: Add AV1 entropy helpers
>   media: verisilicon: Add Rockchip AV1 decoder
>   media: verisilicon: Add film grain feature to AV1 driver
>   media: verisilicon: Enable AV1 decoder on rk3588
>
>  .../bindings/media/rockchip-vpu.yaml          |    1 +
>  drivers/media/platform/verisilicon/Makefile   |    3 +
>  drivers/media/platform/verisilicon/hantro.h   |    5 +
>  .../media/platform/verisilicon/hantro_drv.c   |   54 +
>  .../media/platform/verisilicon/hantro_hw.h    |  102 +
>  .../platform/verisilicon/hantro_postproc.c    |    3 +
>  .../media/platform/verisilicon/hantro_v4l2.c  |    5 +
>  .../verisilicon/rockchip_av1_entropymode.c    | 4536 +++++++++++++++++
>  .../verisilicon/rockchip_av1_entropymode.h    |  272 +
>  .../verisilicon/rockchip_av1_filmgrain.c      |  401 ++
>  .../verisilicon/rockchip_av1_filmgrain.h      |   36 +
>  .../verisilicon/rockchip_vpu981_hw_av1_dec.c  | 2280 +++++++++
>  .../verisilicon/rockchip_vpu981_regs.h        |  477 ++
>  .../platform/verisilicon/rockchip_vpu_hw.c    |  116 +
>  14 files changed, 8291 insertions(+)
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
