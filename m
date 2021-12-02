Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56FB7C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Dec 2021 18:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YKqeF+vnFu3+khwbhnmEzfFrMDk8ZZT0W2occhG2uoE=; b=eaoz6AEJmNDneG
	Ws7rOizCQn0ECGuoJdXlfFwhILINqSUIWQgFGBmNWWC66h3gKzuiIDPu0DcpmRg9l0NGr7JsLQ4vM
	9kIXQvPQ5bBS4Znzn8fETmdyDjWEBtlvUoSJVA4BTDS5Asz8y4CAG0VpQBPD09Vb5ds90rbb5dywH
	Z0thJ9HPfIM+JPy0XQom7hVC+xvCH87lwtb/hXwj5flstCruiixBOjQJdSQMpSoeUIN/cP4cVAJZw
	ujP8w3HeYuf2ykBgp3A18xs2IVM7HFWfHEb0WhoWY39f8b6Gq6tRM3PtHwmCOb6HlfKN5hI3xUdva
	TY131uN4HBmwl6KYfh1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msrDj-00DImz-VM; Thu, 02 Dec 2021 18:54:15 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msrDh-00DImL-55
 for linux-rockchip@lists.infradead.org; Thu, 02 Dec 2021 18:54:14 +0000
Received: by mail-pg1-x534.google.com with SMTP id l190so646013pge.7
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Dec 2021 10:54:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6IwGVqZy1REKUxcBFcG80oGR30x3aLwEIoJpVG9B4BI=;
 b=l5FrpB2is2mD+Yvpy6mRKdZR+EZBJcnDMdo9rskXBUM4JYrQxzVeRqom4ewzKqsbGg
 90ceyu/O/mYE43MHrI169uqejlosdAmjyTj6W6/LG1l1dnkhvZHwazoKxjqQ5GMW6o/p
 0TXnqq8jC2ZGItrdbBaAbJJepgwrILvssTDFXBp/XwjZjn0Fof/CARZ5WQr03RIyTHdG
 ZeXxwd0Kys1/cFYMjKFueXMc4pUJGwrkIdPfEXVIvOfPGjGAzlOIxPAqVpq5AqKgpJdd
 0eExkIWZ3TnP6VHWsScno8keVx2PSYdxXIVtCXfakPaRMVPLYQhYc88yf1L+N+LEGbQF
 grdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6IwGVqZy1REKUxcBFcG80oGR30x3aLwEIoJpVG9B4BI=;
 b=gcZkxDAnDTAWZmzN5GKDCK652FjkR93o1P0czDyMSQKPfU5WUvpWCj9VRuOH0i6ww+
 TX8JNVDrbLUmcPy9S/B9tZAomG4F+nGX4n58S04HDF5ZpqLltNvF7a/4DYrN3MbheeL1
 aUXonEwTPfwfKBblyN15YuGVGCH/KAhIKMdSwxRwPz7giv0ao3rF6iqLv/8T2M9Y/1av
 TRCWzoavIzPuWkGHXOsWdAln9YOA2RRRSa/smwjztYbFPg4yEARvsw5NFp/MIvY+axhU
 RXkmKQ9iTT8fkqMYtjsYIVZW2TucUl+qDog5d8wqtRB5bM37aF+en9D7DQFKEBftr74u
 1XwA==
X-Gm-Message-State: AOAM530wnafZlwPskDDl/zsXaeDwOLwIqmLzkOdQgo8i04VOewaZjOll
 Q1FHJQpSqQS7dgnKre0zzp2tyUgYLq6QcpJNChIsxg==
X-Google-Smtp-Source: ABdhPJwi22wC79DYnZtEO7vqtswfj3tLd4A6lZf/1ejSzPSSrMf4Izl5TW3rYfgwzjchMlFnu8shi0/bOCSwySauJC4=
X-Received: by 2002:a63:d257:: with SMTP id t23mr729148pgi.533.1638471252152; 
 Thu, 02 Dec 2021 10:54:12 -0800 (PST)
MIME-Version: 1.0
References: <20211202041627.291625-1-aford173@gmail.com>
 <CAHCN7xJHuOFTQBQWk1yKsk3M0iDB7aKc0=L2DisUoSXVeO3xXQ@mail.gmail.com>
In-Reply-To: <CAHCN7xJHuOFTQBQWk1yKsk3M0iDB7aKc0=L2DisUoSXVeO3xXQ@mail.gmail.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Thu, 2 Dec 2021 10:54:00 -0800
Message-ID: <CAJ+vNU2t7Yp5OGtWj432Y-8hL62nQBbG58zM-gAj5YfuCO__sA@mail.gmail.com>
Subject: Re: [RFC V3 0/2] arm64: imx8mm: Enable Hantro VPUs
To: Adam Ford <aford173@gmail.com>, Lucas Stach <l.stach@pengutronix.de>
Cc: linux-media <linux-media@vger.kernel.org>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, 
 Adam Ford-BE <aford@beaconembedded.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devicetree <devicetree@vger.kernel.org>, 
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_105413_289924_6933F951 
X-CRM114-Status: GOOD (  24.28  )
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

On Thu, Dec 2, 2021 at 4:29 AM Adam Ford <aford173@gmail.com> wrote:
>
> On Wed, Dec 1, 2021 at 10:17 PM Adam Ford <aford173@gmail.com> wrote:
> >
> > The i.MX8M has two Hantro video decoders, called G1 and G2 which appear
> > to be related to the video decoders used on the i.MX8MQ, but because of
> > how the Mini handles the power domains, the VPU driver does not need to
> > handle all the functions, so a new compatible flag is required.
> >
> > V3 is rebased from git://linuxtv.org/hverkuil/media_tree.git for-v5.17c
> > This branch has support for VP9.
> >
> > I set cma=512M, but this may not be enough memory as some tests appeard to run out of memory
> >
> > V3 of this series has several changes:
> >
> > Update imx8m_vpu_hw to add missing 'reg' reference names for G2 and include references to VP9
> > Update device tree to remove IMX8MQ_VPU_RESET, remove some duplicate vpu clock parenting
> > Fix missing reg-names from vpu_g2 node.
> > Apply patch [1] to manage the power domains powering down.
> > [1] - https://lore.kernel.org/linux-arm-kernel/20211016210547.171717-1-marex@denx.de/t/
> >
> > With the above, the following Fluster scores are produced:
> >
> > G1:
> > ./fluster.py run -dGStreamer-H.264-V4L2SL-Gst1.0
> > Ran 90/135 tests successfully               in 74.406 secs
> >
> > ./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0
> > Ran 55/61 tests successfully               in 8.080 secs
> >
> > G2:
> > ./fluster.py run -d GStreamer-VP9-V4L2SL-Gst1.0
> > Ran 127/303 tests successfully               in 203.873 secs
> >
> > Fluster and G-Streamer were both built from their respective git repos using their respective master/main branches.
> >
>
> I should note, that both interrupts appear to be triggering.
>
> # cat /proc/interrupts |grep codec
>  57:      13442          0          0          0     GICv3  39 Level
>   38300000.video-codec
>  58:       7815          0          0          0     GICv3  40 Level
>   38310000.video-codec
>

Adam,

On another thread you had let me know that you also removed the reset
from the pgc_vpumix power domain which does appear to resolve the
hang:

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index eb9dcd9d1a31..31710af544dc 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -681,7 +681,6 @@
                                                clocks = <&clk
IMX8MM_CLK_VPU_DEC_ROOT>;
                                                assigned-clocks =
<&clk IMX8MM_CLK_VPU_BUS>;
                                                assigned-clock-parents
= <&clk IMX8MM_SYS_PLL1_800M>;
-                                               resets = <&src
IMX8MQ_RESET_VPU_RESET>;
                                        };

                                        pgc_vpu_g1: power-domain@7 {

That would make such a patch have a 'Fixes commit d39d4bb15310
("arm64: dts: imx8mm: add GPC node")' but of course that vpu domain
isn't active until your series so I'm not sure if we should send this
separate or squash it with "arm64: dts: imx8mm: Enable VPU-G1 and
VPU-G2". I'm also not clear if removing the reset requires some
further discussion with Lucas.

Best regards,

Tim

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
