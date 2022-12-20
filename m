Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70523C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Dec 2022 19:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGqft5E6ks0HEr+2wbHbhWAp1bYZDDjpLQxySdv8XgQ=; b=wALlt9l0drED/n
	upjtZLV+70Hrs8GJYYOh+2kE2uKsVacESnDYXXKr+Fb1LVsxhBR8ob+YrpxLZlWNcfyc69D5cNSnv
	f9xx/KwDFiGEmLSizw9CpYGa/OqmH6Yw8qqChYigOcccnDApy7LSt3XNx6bkgFp4C+NPE8TrrCZIJ
	FAz/zUq9fs25MS9uHK+nR0YE8BMRtugUOjCfPeZkPVgibUqkTlDsXkV/MsQA2rPRTq4FbODjq3xdt
	RjF2jPH6xb+LTyC/Qdjc/D+eSl7sIuk2LRXpVQCZ1h6FOL7Na4Au2kVyArUt6tgdggVA1b82b6Hub
	AhC2HWE8pjRuHC2iByzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7iSJ-003TIP-P5; Tue, 20 Dec 2022 19:39:15 +0000
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7iS8-003TC5-8n; Tue, 20 Dec 2022 19:39:05 +0000
Received: by mail-io1-xd2d.google.com with SMTP id d123so6920913iof.6;
        Tue, 20 Dec 2022 11:39:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WYaA/z9swc++YH1wobMl6bW+b+fBO50nDrSwqdy0I7E=;
        b=aGUxp6XWxBv8E8WQbtt82XBc9GS0fUYdPiKCQFh4EmyXeKrwmzTdS7vwIhZK8U7Rz7
         2OHLHXeXLr6h3+0XgZZ112VOYFO9ubc3WavVeJJW+Hc7xVZv1PWE6KMBwGmS2Ktf8oSV
         vsmsIJcE5rhJagrlJdYjc5bCy5mVLRmaaYoTmmuYHrUpvJM4LJXiWxSXVx4bbKxMKH7x
         UZPwqvFyRafXtiKJcLZSOG0xROtTYlP7oKI1nNivkXn4Pb+rrRnmkxhFgSN2R26fVTSR
         Ys8kIaIIrirRKFnKk3SVAfb1X8vAdrqBaHmtDxtbmb5Oxu/J+TkyySLkDE9nPtgh7Kfj
         V2gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WYaA/z9swc++YH1wobMl6bW+b+fBO50nDrSwqdy0I7E=;
        b=PLjYVhAGZpHAANC8pU7TBgx8QpSuAjkqbs0bcUXfbH4YFCtDCHunVPynzFvIBapNXf
         EmQ49K307foP58+dWAajjj07pTS4zlJIDnSEdFNBGe297FUfDbDrI+pLmpB9SI97lVOs
         wD0/czOWuMu2x0dGnpdTIexzZrSFcjliJoIYGLoG7LcS2sOpeGNQYCTTu16esDHs/Bwx
         cQAmn01l2DUMazX9TBcwKvV7QdrQLbc9vxMJHc2DtlGgloLu6h02gbLWLsql3FHoo1ov
         PsSb35RRjOMvpRToxKf5h6q1wKcobgvc9eAY2P9vcgBuPLWPGiHSkSDvSqhQmHIn7pMF
         YhhA==
X-Gm-Message-State: ANoB5pmFfRFp8YWxfWV0z3BtuZvSAM1M01+1v5z+uy2sX6J4WWGJUGBA
	v2UrXabfC5WvSi2VJwJvlw7HfnPCdOnYyPZBM7M=
X-Google-Smtp-Source: AA0mqf6kOU4KSWIg4U3q900GDMNzZiF6FHB28sxddMACnN7EnmMJ8RpCYVPbVvEQMU82GwcTvMt84Y9obrESxAemX6Y=
X-Received: by 2002:a05:6638:36e5:b0:38a:53d5:1488 with SMTP id
 t37-20020a05663836e500b0038a53d51488mr11480218jau.146.1671565139680; Tue, 20
 Dec 2022 11:38:59 -0800 (PST)
MIME-Version: 1.0
References: <20221216132404.1173254-1-wenst@chromium.org>
In-Reply-To: <20221216132404.1173254-1-wenst@chromium.org>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 20 Dec 2022 13:38:47 -0600
Message-ID: <CAHCN7xJfR34WxigZSYcntWOsry4sc8ZJ9_T1comd0R5Z5Na7vA@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: Use core-generated bus_info value
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_113904_375760_2A29E8ED 
X-CRM114-Status: GOOD (  21.90  )
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

On Fri, Dec 16, 2022 at 7:46 AM Chen-Yu Tsai <wenst@chromium.org> wrote:
>
> The Hantro driver uses a hardcoded value for the bus_info field in the
> media device and |struct v4l2_capability|. This worked well when there
> was just one device. However with the iMX.8 series we are now seeing
> two Hantro blocks on the same chip. The static bus_info is no longer
> sufficient for differentiating devices.
>
> Since commit f2d8b6917f3b ("media: v4l: ioctl: Set bus_info in
> v4l_querycap()"), the V4L2 core provides a default value for the
> bus_info field for platform and PCI devices. This value will match
> the default value for media devices added by commit cef699749f37
> ("media: mc: Set bus_info in media_device_init()"). These defaults
> are stable and device-specific.
>
> Drop the static bus_info values from the hantro driver and use the
> defaults.
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
>  arch/arm64/boot/dts/freescale/Makefile           | 1 +
>  drivers/media/platform/verisilicon/hantro_drv.c  | 2 --
>  drivers/media/platform/verisilicon/hantro_v4l2.c | 2 --
>  3 files changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index ef6f364eaa18..ef815442c78b 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -55,6 +55,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-data-modul-edm-sbc.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-emcon-avari.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mm-hummingboard-pulse.dtb

I think the makefile was edited by mistake.

>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-ctouch2.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-edimm2.2.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-innocomm-wb15-evk.dtb
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
> index 8cb4a68c9119..b0aeedae7b65 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -1050,8 +1050,6 @@ static int hantro_probe(struct platform_device *pdev)
>
>         vpu->mdev.dev = vpu->dev;
>         strscpy(vpu->mdev.model, DRIVER_NAME, sizeof(vpu->mdev.model));
> -       strscpy(vpu->mdev.bus_info, "platform: " DRIVER_NAME,
> -               sizeof(vpu->mdev.bus_info));
>         media_device_init(&vpu->mdev);
>         vpu->mdev.ops = &hantro_m2m_media_ops;
>         vpu->v4l2_dev.mdev = &vpu->mdev;
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
> index 2c7a805289e7..c1a116031013 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -142,8 +142,6 @@ static int vidioc_querycap(struct file *file, void *priv,
>
>         strscpy(cap->driver, vpu->dev->driver->name, sizeof(cap->driver));
>         strscpy(cap->card, vdev->name, sizeof(cap->card));
> -       snprintf(cap->bus_info, sizeof(cap->bus_info), "platform: %s",
> -                vpu->dev->driver->name);
>         return 0;
>  }
>
> --
> 2.39.0.314.g84b9a713c41-goog
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
