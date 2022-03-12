Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1F7FC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Mar 2022 10:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mnt9UeXzJFV/xmCFb4unvLr0b9kj6r2IUtEvmrFpn/Y=; b=Yv4Kdl8Fn6uyoK
	/ydIxOP/sQOTnf5gWjY2ZQEqX/cLv8Ir1NEDNKftHnX4R/jdwqMaH7zb0WqHK/x9uFCrvI/0D+4oW
	pEt2qQipjn4R8/vCJVtQ40j5Cbl5etXeL1LYEi7h2YOLaSZSOYQXxpkIljvciAHDh5XFtMKeRJ0Bo
	LKD1fhFhkJj10j+InM00df/AYp+K4NJPGdq/l22fPd0roAf5Kwg9UQNyucir/oCn/Kcv2SafswVTe
	+HLPTNbhpmzGUJ3dra4TR+48OHvKJi4hGpdE/a6BTK8dkdSDDi0Uu6seSPrJZN8RK3a1Zo9kaEf1a
	vAzkvxiE58Uz6ukZYq0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSygE-0012sY-6K; Sat, 12 Mar 2022 10:08:58 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSyg0-0012pT-NH
 for linux-rockchip@lists.infradead.org; Sat, 12 Mar 2022 10:08:46 +0000
Received: by mail-pj1-x102d.google.com with SMTP id
 fs4-20020a17090af28400b001bf5624c0aaso10352645pjb.0
 for <linux-rockchip@lists.infradead.org>; Sat, 12 Mar 2022 02:08:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XBkUs4cDEh7cGme8nvi6DRoD473BuT/65cMNIANA6kg=;
 b=qqrFxDtNPmebmRhEKI/0NjR3h2txIrNZsbHIQyirapsMejHKtBJuUXpC4CuzUQzy+j
 7MBEHl7XyYnB/ef82iHhANzR+4q20BBxcogXCUYB0LsFC2JqEeoLpAOuJkSbCc7cu28A
 clAv2F2t2CE4+vkhZhB2HqFJT32fps1QI2s3zke/fEA4NnOQpHXhxyTrQkzQz40eghSK
 WXbOSfPutXZvev9BDgaJeOCbWG1zRmJc/ipd7eoJDrG0TSjsJ1uZqeGSArOyvOvXWJ6a
 bW333jvmpEJR0qMgLuTAXaqDnWSblgwpmeuc/diJcDQ6PfmJs13o33t1EYAUToYr1Ujj
 7y+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XBkUs4cDEh7cGme8nvi6DRoD473BuT/65cMNIANA6kg=;
 b=JhuSO2BmDRfZp0unKxLuV/B7YuXbkbp6JLkwyy2TA2+16onp2EupSoiH1QY/6MGJVC
 GB7B0Fq7W5ZVJtpM1ye2KhA+OMECqiQF5m1QmrryX7TJTOo+zidCxeOdn6HcooASOIAj
 5V4q5XPdqx+7xum81gcBRiEbPdAZSqxcAF6jsOZ6aZyuB16gX4xwlQujrWfiJYJmQAIA
 YEMiCRmG4DwBN3OuCK+JLTwjLTlKiuJ3nLSkZcom5fWot5kKUGWEo9F24/HsSEHRCG68
 qVqXg0h3Ybvz4bBWej99LXNFms1WYy7GjIUpZBtUdd8yAbU5HT4OgBgKXJ7BbbWt5N5m
 LXPg==
X-Gm-Message-State: AOAM533d2oFicTgUSYkbekzvZgrGKz2uJJLlg/Thq3AJVWM8myYsd4L8
 RFApk2CsM3tQwEQA7EQmQhSbkpd3RMBZqa06LNoSmA==
X-Google-Smtp-Source: ABdhPJygr/AMMTAACupNOM2mgpqdZHpcr+uF0kJe3Q4pIdneeG8n+Deg6+8AbstBqDC3C6sQYMJcE3tkSaDCqZi08a8=
X-Received: by 2002:a17:90b:906:b0:1be:e765:882 with SMTP id
 bo6-20020a17090b090600b001bee7650882mr15235648pjb.152.1647079723285; Sat, 12
 Mar 2022 02:08:43 -0800 (PST)
MIME-Version: 1.0
References: <cover.1647006877.git.mchehab@kernel.org>
 <b1803d005b2f671d238fc8579882a493c173d1ef.1647006877.git.mchehab@kernel.org>
In-Reply-To: <b1803d005b2f671d238fc8579882a493c173d1ef.1647006877.git.mchehab@kernel.org>
From: Robert Foss <robert.foss@linaro.org>
Date: Sat, 12 Mar 2022 11:08:32 +0100
Message-ID: <CAG3jFyvxb5Q+bYu4=SReSku9=LrGD2h_O10W40+0+XsHk1XLJQ@mail.gmail.com>
Subject: Re: [PATCH v2 38/38] drivers: media: platform: move some manufacturer
 entries
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, 
 Chen-Yu Tsai <wens@csie.org>, Dmitry Osipenko <digetx@gmail.com>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Ming Qian <ming.qian@nxp.com>, linux-arm-kernel@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-sunxi@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220312_020844_805657_65C89167 
X-CRM114-Status: GOOD (  15.44  )
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

On Fri, 11 Mar 2022 at 15:10, Mauro Carvalho Chehab <mchehab@kernel.org> wrote:
>
> As there are 4 manufacturer's directories with multiple sources
> (qcom, rockchip, sti and sunxi), move the sources from
> platform/Kconfig to their specific Konfig files.
>
> Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> ---
>
> To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
> See [PATCH v2 00/38] at: https://lore.kernel.org/all/cover.1647006877.git.mchehab@kernel.org/
>
>  drivers/media/platform/Kconfig          | 13 +++----------
>  drivers/media/platform/qcom/Kconfig     |  3 +++
>  drivers/media/platform/rockchip/Kconfig |  3 +++
>  drivers/media/platform/sti/Kconfig      |  5 +++++
>  drivers/media/platform/sunxi/Kconfig    |  2 ++
>  5 files changed, 16 insertions(+), 10 deletions(-)
>  create mode 100644 drivers/media/platform/qcom/Kconfig
>  create mode 100644 drivers/media/platform/rockchip/Kconfig
>  create mode 100644 drivers/media/platform/sti/Kconfig
>
> diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
> index 527e9f08008b..a3ad25c6a56c 100644
> --- a/drivers/media/platform/Kconfig
> +++ b/drivers/media/platform/Kconfig
> @@ -85,23 +85,16 @@ source "drivers/media/platform/mtk-vpu/Kconfig"
>  source "drivers/media/platform/nxp/Kconfig"
>  source "drivers/media/platform/omap3isp/Kconfig"
>  source "drivers/media/platform/omap/Kconfig"
> -source "drivers/media/platform/qcom/camss/Kconfig"
> -source "drivers/media/platform/qcom/venus/Kconfig"
> +source "drivers/media/platform/qcom/Kconfig"
>  source "drivers/media/platform/renesas/Kconfig"
> -source "drivers/media/platform/rockchip/rga/Kconfig"
> -source "drivers/media/platform/rockchip/rkisp1/Kconfig"
> +source "drivers/media/platform/rockchip/Kconfig"
>  source "drivers/media/platform/s3c-camif/Kconfig"
>  source "drivers/media/platform/s5p-g2d/Kconfig"
>  source "drivers/media/platform/s5p-jpeg/Kconfig"
>  source "drivers/media/platform/s5p-mfc/Kconfig"
> -source "drivers/media/platform/sti/bdisp/Kconfig"
> -source "drivers/media/platform/sti/c8sectpfe/Kconfig"
> -source "drivers/media/platform/sti/delta/Kconfig"
> -source "drivers/media/platform/sti/hva/Kconfig"
> +source "drivers/media/platform/sti/Kconfig"
>  source "drivers/media/platform/stm32/Kconfig"
>  source "drivers/media/platform/sunxi/Kconfig"
> -source "drivers/media/platform/sunxi/sun8i-di/Kconfig"
> -source "drivers/media/platform/sunxi/sun8i-rotate/Kconfig"
>  source "drivers/media/platform/tegra/vde/Kconfig"
>  source "drivers/media/platform/ti-vpe/Kconfig"
>  source "drivers/media/platform/via/Kconfig"
> diff --git a/drivers/media/platform/qcom/Kconfig b/drivers/media/platform/qcom/Kconfig
> new file mode 100644
> index 000000000000..aa2428f641d3
> --- /dev/null
> +++ b/drivers/media/platform/qcom/Kconfig
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0
> +source "drivers/media/platform/qcom/camss/Kconfig"
> +source "drivers/media/platform/qcom/venus/Kconfig"
> diff --git a/drivers/media/platform/rockchip/Kconfig b/drivers/media/platform/rockchip/Kconfig
> new file mode 100644
> index 000000000000..c7ba06388780
> --- /dev/null
> +++ b/drivers/media/platform/rockchip/Kconfig
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0
> +source "drivers/media/platform/rockchip/rga/Kconfig"
> +source "drivers/media/platform/rockchip/rkisp1/Kconfig"
> diff --git a/drivers/media/platform/sti/Kconfig b/drivers/media/platform/sti/Kconfig
> new file mode 100644
> index 000000000000..9fb5e78a92cf
> --- /dev/null
> +++ b/drivers/media/platform/sti/Kconfig
> @@ -0,0 +1,5 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +source "drivers/media/platform/sti/bdisp/Kconfig"
> +source "drivers/media/platform/sti/c8sectpfe/Kconfig"
> +source "drivers/media/platform/sti/delta/Kconfig"
> +source "drivers/media/platform/sti/hva/Kconfig"
> diff --git a/drivers/media/platform/sunxi/Kconfig b/drivers/media/platform/sunxi/Kconfig
> index 7151cc249afa..a10032215b08 100644
> --- a/drivers/media/platform/sunxi/Kconfig
> +++ b/drivers/media/platform/sunxi/Kconfig
> @@ -2,3 +2,5 @@
>
>  source "drivers/media/platform/sunxi/sun4i-csi/Kconfig"
>  source "drivers/media/platform/sunxi/sun6i-csi/Kconfig"
> +source "drivers/media/platform/sunxi/sun8i-di/Kconfig"
> +source "drivers/media/platform/sunxi/sun8i-rotate/Kconfig"
> --
> 2.35.1
>

Reviewed-by: Robert Foss <robert.foss@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
