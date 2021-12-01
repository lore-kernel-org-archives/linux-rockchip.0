Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2EEBC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Dec 2021 12:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KejOtwF2FOsFSB3XVgiTKjbERu+R4ZAjZR0IsXQM20E=; b=jeMwbe+45LQ7NA
	D32YWz4tUElnb69LbZadwH6Nk4iKIFxyfmbYMw07V5up7I2UEvAgfvXVQ1wcHcMx532XjMy6k01dN
	//N1DmOH0xq8YRlPiiTz5vkhM0ZCTtwol7G/pxIehTdYULLnX/MbQpl1cfuN9zXRSv0AcohSPl4ML
	e9nCEckOVRROz8tMJoVzu3Y/H7uAiTcjAw6xjzAVlMHBB/uGubrB0ZnsRVUsudaVv54nDdvrpAQbL
	h8dFumJ/daxJXVXuoAeEoIMCz54x49t1xCdFutMOOc9SYUW17Sy+VEuss5ZayfgEHc0ygojiYMiJM
	3vvTVc1NBD+GD3s4TmrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msOgR-008Ren-G8; Wed, 01 Dec 2021 12:25:59 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msOg6-008RXY-5V
 for linux-rockchip@lists.infradead.org; Wed, 01 Dec 2021 12:25:40 +0000
Received: by mail-ed1-x530.google.com with SMTP id e3so100941850edu.4
 for <linux-rockchip@lists.infradead.org>; Wed, 01 Dec 2021 04:25:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q1bXomoZK1uliSFuVlRwGoqDfgeoL9wTIcaSZKyOo3w=;
 b=P68R8RdCgIl0gxA1N+wy5SkHXfbt/D1cXaJOKR2qqp34uB1KncofMP4RRJxIUk/ZVb
 krfz5geTxre4LhueKkboAFLvUcWFVxLip4vKY2Y2qSdMTays/sl+wvdYTAdUtWKmCio4
 N578egHQt6+i3BPnPwX43gmTBDIhIbawT22MR4Hh0CSNmTBXKebsTbHn1a1+P+/fgP5Z
 v6RWw586cv9ZxWD7OThwBC2cy9WLFeOIn1MrmcG6GuVFoNFcf3yTnGXu+UTRgtgTLv53
 0OT1NTkAUEfedg8MuZWxFxuSvLCsjGaz7thiJ3Byqi/gKV/kEwf+GuiUk6ReXsyHRMCK
 w+Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q1bXomoZK1uliSFuVlRwGoqDfgeoL9wTIcaSZKyOo3w=;
 b=f3JoDqvCd4qXK4VHeLI2u6cXxJtzJOTIEfDagu9t3fWCWud4qTdksMS+OmAl3k+Doo
 5bYs+p49QVicA1P5WJ9hrqB0u9y8GWnDCo4Xv/kvEUsNCEi3/4IKaIoZyHnlL9pbEf3g
 Zd4LuyRJRirwopopRioNCrjp8IeIMzOy+pMSC7T71vybjU82v8Qy66qkYc74miOfDUG/
 N0Dp9RysfnBF09kcYBuy3OwCfO/P9I184uMd1NJXSOMAAWtVIPxSQ3WvvLVrHIl97fqA
 yqaTlACVmU3WoV0up9fNTHk33Ovv6Nr2MJg4W9PEwNqCXf4yM5T9Q84pi0hbzpfK6BWa
 rFmA==
X-Gm-Message-State: AOAM531ukhq0UFeawAPe1EkxBLpZF0Ij2cmaePKYfQLM+XDCO49VPz4Q
 76xy7fb76XECSgoLyohbNe5TuUyWmdS7sYGTegpFCQ==
X-Google-Smtp-Source: ABdhPJxqcgQiEY76Rd0OlztgVDvAKC2e3Q50wIGfgfNHSONNNfT26V+DNnPfuftHX99L+Bf304WeNkdbMAk6WBC5gew=
X-Received: by 2002:a17:906:ece9:: with SMTP id
 qt9mr6601577ejb.362.1638361535048; 
 Wed, 01 Dec 2021 04:25:35 -0800 (PST)
MIME-Version: 1.0
References: <20211201013329.15875-1-aford173@gmail.com>
 <20211201013329.15875-2-aford173@gmail.com>
In-Reply-To: <20211201013329.15875-2-aford173@gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Wed, 1 Dec 2021 09:25:22 -0300
Message-ID: <CAAEAJfBBFhRtW2wmoA6T+yyM-nurUbtPqYHKPHjeRdKzA34PcQ@mail.gmail.com>
Subject: Re: [RFC V2 1/2] media: hantro: Add support for i.MX8M Mini
To: Adam Ford <aford173@gmail.com>
Cc: linux-media <linux-media@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, 
 Tim Harvey <tharvey@gateworks.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, 
 Adam Ford-BE <aford@beaconembedded.com>, Rob Herring <robh+dt@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, 
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_042538_508512_BBBB78B3 
X-CRM114-Status: GOOD (  17.71  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Adam,

On Tue, 30 Nov 2021 at 22:33, Adam Ford <aford173@gmail.com> wrote:
>
> The i.MX8M Mini has a similar implementation of the Hantro G1 and
> h decoders, but the Mini uses the vpu-blk-ctrl for handling the
> VPU resets through the power domain system.  As such, there are
> functions present in the 8MQ that are not applicable to the Mini
> which requires the driver to have a different compatible flags.
>
> Signed-off-by: Adam Ford <aford173@gmail.com>
>
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index fb82b9297a2b..2aa1c520be50 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -592,6 +592,8 @@ static const struct of_device_id of_hantro_match[] = {
>         { .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
>  #endif
>  #ifdef CONFIG_VIDEO_HANTRO_IMX8M
> +       { .compatible = "nxp,imx8mm-vpu", .data = &imx8mm_vpu_variant, },
> +       { .compatible = "nxp,imx8mm-vpu-g2", .data = &imx8mm_vpu_g2_variant },
>         { .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
>         { .compatible = "nxp,imx8mq-vpu-g2", .data = &imx8mq_vpu_g2_variant },
>  #endif
> diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> index 267a6d33a47b..ae7c3fff760c 100644
> --- a/drivers/staging/media/hantro/hantro_hw.h
> +++ b/drivers/staging/media/hantro/hantro_hw.h
> @@ -211,6 +211,8 @@ enum hantro_enc_fmt {
>         ROCKCHIP_VPU_ENC_FMT_UYVY422 = 3,
>  };
>
> +extern const struct hantro_variant imx8mm_vpu_g2_variant;
> +extern const struct hantro_variant imx8mm_vpu_variant;
>  extern const struct hantro_variant imx8mq_vpu_g2_variant;
>  extern const struct hantro_variant imx8mq_vpu_variant;
>  extern const struct hantro_variant px30_vpu_variant;
> diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> index ea919bfb9891..c68516c00c6d 100644
> --- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
> +++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> @@ -242,6 +242,32 @@ static const struct hantro_codec_ops imx8mq_vpu_g2_codec_ops[] = {
>         },
>  };
>
> +static const struct hantro_codec_ops imx8mm_vpu_codec_ops[] = {
> +       [HANTRO_MODE_MPEG2_DEC] = {
> +               .run = hantro_g1_mpeg2_dec_run,
> +               .init = hantro_mpeg2_dec_init,
> +               .exit = hantro_mpeg2_dec_exit,
> +       },
> +       [HANTRO_MODE_VP8_DEC] = {
> +               .run = hantro_g1_vp8_dec_run,
> +               .init = hantro_vp8_dec_init,
> +               .exit = hantro_vp8_dec_exit,
> +       },
> +       [HANTRO_MODE_H264_DEC] = {
> +               .run = hantro_g1_h264_dec_run,
> +               .init = hantro_h264_dec_init,
> +               .exit = hantro_h264_dec_exit,
> +       },
> +};
> +
> +static const struct hantro_codec_ops imx8mm_vpu_g2_codec_ops[] = {
> +       [HANTRO_MODE_HEVC_DEC] = {
> +               .run = hantro_g2_hevc_dec_run,
> +               .init = hantro_hevc_dec_init,
> +               .exit = hantro_hevc_dec_exit,
> +       },
> +};
> +

I believe you are missing VP9, which explains why you get
a zero fluster score.

Thanks,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
