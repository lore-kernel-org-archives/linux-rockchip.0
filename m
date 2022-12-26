Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2227AC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 05:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+AfPBFqXqpo2bDTpxSi+W5VmVHdNeO9prfKFVTIHI0=; b=F0B70hHdHfa1Ii
	i8h4Fr4yOL5I0u95BAY45hqqt5hSgcfkxD9vNrUwQ7DDeJd/R1phcfB3lZYWE251/42JXrfnco6DD
	NxdhXa6S/NfdiB7Fb0NJ+mCeT32jjeS6ollHcvRx58VyuHNAQ/q0E9UGyIh13C3r8kabijfP8wuF5
	Hdi4lwvd7mucuZnQ3go/0HUoiOPVQlt/SXkCdm0AUbyhAg4R5LhwkyqGPXMEl7TYVmGCVV+eMHdit
	oj1WrIHFqE7Z87Bk/ni79NCOY6gsKq2IahfoJp90uuLwF6L5VAWOyegosKQ8/I9E9hFq16140ssjF
	QK6ZQWo9bvumxQKg7ntQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9fzw-001v2T-UY; Mon, 26 Dec 2022 05:26:04 +0000
Received: from mail-ua1-x92c.google.com ([2607:f8b0:4864:20::92c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9fzs-001uzJ-DY
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 05:26:01 +0000
Received: by mail-ua1-x92c.google.com with SMTP id e24so2182773uam.10
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Dec 2022 21:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sT3SK0Ig9Fw55mcy0k8TpGrOXIEw8Q66Z7qmqIKL+Xo=;
        b=bkAvYw3P4z43Jck4xYrm2EDIVwSyjXsMPw6Ej62zjflu7zLVYcEbvHL7oATljZ36ak
         fEPJS5eoYNJmawUGEHrYBS9UlPwzyaIbYoIp2uXlKvN+7vjNfyED7Qob/NRLQjnHJgnV
         +ISzyN0cFXj/e4w2qVh2D1IRwDEgxbLbFEI+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sT3SK0Ig9Fw55mcy0k8TpGrOXIEw8Q66Z7qmqIKL+Xo=;
        b=rTmVTcEz9im25T9X9DPB0L9Ade8oNrOEWOWFg7XpvwY+7/1IFafet3yq8JZAsP2J1g
         HxgLTKcUwpWrdNVlGmZaGILMLj2yPOVyPwoyEoI/uIxPx8ObTIkLBqALxQUnnEFm9oP8
         KTeDe9jrYcXa5n08nnAAzlms/DAYZt33lhiQL4JMDzUHRHUyME5myS4W1h7rcXXRxw+k
         Hfo2evXmJdvO8H7a3elBxwTYO1+2K/YEoT+eeCOglPtN0r66Uqsk8B7g58HZOVTajfwt
         aTqQzPDehxR43Y84dc+T9XSnPZVH7bJSESVeWJFs1FjrP/SPHjV5aBIcJ6LKv+bpRIxx
         z8Nw==
X-Gm-Message-State: AFqh2koa+uNGl+apCgAOhl2mzWxy7QkQIMv8Y+438z7zOJcYoIhS9sVJ
	Cyd3BdonLW5NdnXkvYcd9SB65/I6i9+dh+fECt6DFQ==
X-Google-Smtp-Source: AMrXdXt286Gi9fevINpB6FGCfsF2UPV+IdB1Ns9Pzhi4ZEqxN6DTSIvhZ9z1KSicg/rcTBORWExcDade1GnmooUdTn8=
X-Received: by 2002:ab0:7411:0:b0:418:b849:8187 with SMTP id
 r17-20020ab07411000000b00418b8498187mr1568480uap.43.1672032358009; Sun, 25
 Dec 2022 21:25:58 -0800 (PST)
MIME-Version: 1.0
References: <20221216132404.1173254-1-wenst@chromium.org> <CAHCN7xJfR34WxigZSYcntWOsry4sc8ZJ9_T1comd0R5Z5Na7vA@mail.gmail.com>
In-Reply-To: <CAHCN7xJfR34WxigZSYcntWOsry4sc8ZJ9_T1comd0R5Z5Na7vA@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 26 Dec 2022 13:25:47 +0800
Message-ID: <CAGXv+5Hyth3WGw9rtKpgSAyNKxaH7Wkjpp5NpVDGru8Fj7dY+A@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: Use core-generated bus_info value
To: Adam Ford <aford173@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_212600_551631_4B3C77C0 
X-CRM114-Status: GOOD (  22.27  )
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

On Wed, Dec 21, 2022 at 3:39 AM Adam Ford <aford173@gmail.com> wrote:
>
> On Fri, Dec 16, 2022 at 7:46 AM Chen-Yu Tsai <wenst@chromium.org> wrote:
> >
> > The Hantro driver uses a hardcoded value for the bus_info field in the
> > media device and |struct v4l2_capability|. This worked well when there
> > was just one device. However with the iMX.8 series we are now seeing
> > two Hantro blocks on the same chip. The static bus_info is no longer
> > sufficient for differentiating devices.
> >
> > Since commit f2d8b6917f3b ("media: v4l: ioctl: Set bus_info in
> > v4l_querycap()"), the V4L2 core provides a default value for the
> > bus_info field for platform and PCI devices. This value will match
> > the default value for media devices added by commit cef699749f37
> > ("media: mc: Set bus_info in media_device_init()"). These defaults
> > are stable and device-specific.
> >
> > Drop the static bus_info values from the hantro driver and use the
> > defaults.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> >  arch/arm64/boot/dts/freescale/Makefile           | 1 +
> >  drivers/media/platform/verisilicon/hantro_drv.c  | 2 --
> >  drivers/media/platform/verisilicon/hantro_v4l2.c | 2 --
> >  3 files changed, 1 insertion(+), 4 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> > index ef6f364eaa18..ef815442c78b 100644
> > --- a/arch/arm64/boot/dts/freescale/Makefile
> > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > @@ -55,6 +55,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-data-modul-edm-sbc.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-emcon-avari.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
> > +dtb-$(CONFIG_ARCH_MXC) += imx8mm-hummingboard-pulse.dtb
>
> I think the makefile was edited by mistake.

It was. I'll send a v2.

On this topic though, has anyone else tried the i.MX8 Mini variant of
the Hummingboard Pulse?

I forward-ported the DT from SolidRun's 5.4 kernel and got it running
and correct to a certain degree, but if the PMIC regulator driver is
enabled, the board cuts out as soon as it is probed.


ChenYu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
