Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5C03C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 15:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jOlomN4r5Cbz82ogLOVjp0QaPTK8mPsweu2HYf17mck=; b=AMu023bp+ngJEJ
	fflWYb3mi/15cq+nmyyR9UdAvuZUG6TTOyUDMFbBv4n8bhj5Jzi5yYAjd7Z+rNUteb8YaOiDxyvQu
	xCJp888lGjoTzzypsy5qpLB617CyePB4+ysjTWdY9ijPOW/bbfVkEFkaMG46T2oWUr6HVZQBwnWsU
	8IRDQnSTnpsM3mYS6eEsHqxKFzMDb8ukSaM+QgZGcjst6cH+FWjD3l73oZhH2Ph2zPsN7fCP5bSh1
	/3JwPFxbB5e1nFr5bzHzM/ErBI5fwPJYx9ogIsZOfufUPVu44tc/bfPuimaWQGygd+3N4P8mMY3b7
	qT9DRTZd14IPTZscfFkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkSY1-00BmI7-Kq; Fri, 29 Apr 2022 15:28:45 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkSXy-00BmFS-An; Fri, 29 Apr 2022 15:28:44 +0000
Received: by mail-ed1-x52b.google.com with SMTP id z19so9460031edx.9;
 Fri, 29 Apr 2022 08:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uQV4T/D00CJ/ygzy9sj7P/AoFBwXwhKdzgdcMmOX8Rs=;
 b=HK6WZvw87L2O6eO4hpnri/TbkekIUuPquNkJEEJEcnJrYjYHyc5VQvUSr80v8RCJOr
 365W7Y0B4vVvAJoj3fOVXCofI2R9mbv4kpQs6HVu0zTfZr/+2Lzoh4cdnuEKs+qRJg6Z
 lpCVzU/GCsJRdOyfYd4LOukvGBRywOQgPKndBLCOJ+UrnJ/rw3AoHPUlkhXZCmi3Va4V
 UO8AiQqizbkuRPUBdrzoNmlQKrCuA1Oy34y1ngpd5/MjhTct3Eqw8qfK5eVGeocqLUmv
 WUjjZtT8DvDIVrawPP8l+W26QkVJzyBtBkrYk1U9fhy+GejP5g1EBDnMLnwyQENG2F4G
 dWeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uQV4T/D00CJ/ygzy9sj7P/AoFBwXwhKdzgdcMmOX8Rs=;
 b=BtCgeknVhrGIiBxW/hmdmMsC0ZF+XCzCuFYL2TXuFesqwOm6BJVjM+k/mpQQ6NdTiG
 QMsVlhdtB9wscreYtaFkEcBgcAK0+6NdxhvHAH4ydHV8Aj+DUB7MEY0XE2im67XdBrTw
 7k7vNIG0PvKa7rYvxnMIMpxYO2qMUhWqV8F4C3jrAlU+5YZZhO66J5cWm5UgQekMT6/8
 TJGhp6vBnxQR2EiV6nVwrMeK46Q11bJx275jlG7EdV6a2gzE60xd6H7hbs99TIZkR4uI
 ARrFesyxg3R5p5MrKbmtlPeIYb5bWUFjt8ipi8JqV+rF26pth/gpgIM23tP3ZHvirulH
 QQlg==
X-Gm-Message-State: AOAM5329R8zPjCyRdvTw/zEPIkOJ0bLIqIcKozCJ9y5WRC4SWK4DQNyt
 mCm+dVAWt2Dw1tirGV+5FeY=
X-Google-Smtp-Source: ABdhPJzAa9xFpERdrvjYh23on+WS7Qi0ovrUCS3EkiR6XULJ/lZhvMKLOJYvPu9iXKvt01ZXIA8eUg==
X-Received: by 2002:a05:6402:e:b0:423:d5ff:8fce with SMTP id
 d14-20020a056402000e00b00423d5ff8fcemr41453209edu.407.1651246117121; 
 Fri, 29 Apr 2022 08:28:37 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 e13-20020a170906844d00b006f3ef214dc3sm737910ejy.41.2022.04.29.08.28.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Apr 2022 08:28:36 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, Liang Chen <cl@rock-chips.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev,
 Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 0/3] Enable JPEG Encoder on RK3566/RK3568
Date: Fri, 29 Apr 2022 17:28:35 +0200
Message-ID: <2438841.KJ31GcehEG@archbook>
In-Reply-To: <198ce3981ad15844627581f9519cab67ed2a81c1.camel@ndufresne.ca>
References: <20220427224438.335327-1-frattaroli.nicolas@gmail.com>
 <198ce3981ad15844627581f9519cab67ed2a81c1.camel@ndufresne.ca>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_082842_414841_2C642B0D 
X-CRM114-Status: GOOD (  29.21  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Freitag, 29. April 2022 16:46:01 CEST Nicolas Dufresne wrote:
> Le jeudi 28 avril 2022 =E0 00:44 +0200, Nicolas Frattaroli a =E9crit :
> > Hello,
> > =

> > the following series adds support for and enables the hardware JPEG
> > encoder on the RK3566 and RK3568 line of SoCs by Rockchip.
> > =

> > The JPEG encoder is its own little Hantro instance with seemingly just
> > the encode functionality.
> =

> I'm a little suspicious about this statement. I believe the Hantro combo =
is
> identical to RK3399 and that you are confusing with Rockchip JPEG encoder=
 here.
> Here's the source of my suspicion:
> =

> https://github.com/JeffyCN/rockchip_mirrors/blob/mpp/osal/mpp_soc.cpp#L637
> =

> As this get burnt into DT, we really need to get this right. Perhaps we n=
eed to
> run the reference software to verify ? Ping me if you need help with that.

I believe there's three separate questions here:

A) is this a Hantro instance with more than just JPEG encoding?
B) is this the same as the other[1] Hantro instance, just with a bigger
   offset for the encoder?
C) if A is true and B is false, does this also have decoders?

I think I can only answer B). I do not think fdee0000 is the same hardware
instance as fdea0400. They are in different power domains (yes, this one
being in the RGA PD is correct according to downstream code, TRM and my
own testing). They also have their own MMU each.

Your findings point towards A) being true. I'd love to be able to just
throw a mainline VP8 or H.264 driver at it to check, but that sadly does
not exist yet. Upon checking the TRM again, it seems it documents
registers for H.264 as well.

However I can do this to answer C), and I will once I get the time.
It would be somewhat surprising if there was a hidden third H.264
decoder on this chip.

I'll also CC Kever Yang from rockchip, maybe he can shine some light on
this.

Regards,
Nicolas Frattaroli

[1]: https://patchwork.kernel.org/project/linux-rockchip/patch/202202142129=
55.1178947-2-piotr.oniszczuk@gmail.com/

> =

> > =

> > The first patch modifies the bindings with a new compatible, and adds
> > the ability to just have a vepu interrupt without a vdpu interrupt.
> > =

> > The second patch makes the actual driver changes to support this varian=
t.
> > =

> > The third and final patch makes the necessary device tree changes for
> > the rk356x device tree file to add both the node for the encoder and
> > its MMU.
> > =

> > The series has been tested on a PINE64 Quartz64 Model A with an RK3566
> > SoC using GStreamer.
> > =

> > Regards,
> > Nicolas Frattaroli
> > =

> > Nicolas Frattaroli (3):
> >   dt-bindings: media: rockchip-vpu: Add RK3568 JPEG compatible
> >   media: hantro: Add support for RK356x JPEG encoder
> >   arm64: dts: rockchip: Add JPEG encoder node to rk356x
> > =

> >  .../bindings/media/rockchip-vpu.yaml          |  2 +
> >  arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 21 +++++++
> >  drivers/staging/media/hantro/hantro_drv.c     |  1 +
> >  drivers/staging/media/hantro/hantro_hw.h      |  1 +
> >  .../staging/media/hantro/rockchip_vpu_hw.c    | 62 +++++++++++++++++++
> >  5 files changed, 87 insertions(+)
> > =

> =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
