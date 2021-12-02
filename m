Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8168C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Dec 2021 21:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+uXl+HiVCFi5fraiJGLAd9JuUudEKZtbBA7oWYc0+8c=; b=3LUUA8xxJ9n1El
	iWFUR/0FLvfEj0OAMrmy7QbWM/JI6DDO7Cz4d50BZTBe+mKnluVwGVsI2tzAVGooVYWKVx/e5vy1P
	N4hNGcqmTW82cuyTSHHDZmljnIDvuO30tGzTvQsFjay47/j7WTCoP6fwLBqwUPZVJJLOc/F8VA4bf
	GXJfdmpDoHZRYgZMg2/+Hmm65+/chhpeiDXttoUPWK+RmHgK5KJUqvjSlV1nHx1Xk1Ko2A4IBBZNN
	9kGiNQCmBc8Ykv/3UxBenyCSdY4imtONutlsol3WLLfMP7PbTSbW48y0gOBJYxmgclyvFE7Ju7bwL
	JkfoJCGPsTBn0Iq2nvKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mstC2-00DS0u-Al; Thu, 02 Dec 2021 21:00:38 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mstBp-00DRzD-IB; Thu, 02 Dec 2021 21:00:27 +0000
Received: by mail-ed1-x52d.google.com with SMTP id t5so3367777edd.0;
 Thu, 02 Dec 2021 13:00:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bh3FkLB+q+IhBnShvoY1GO0GV+nrEdn+PjaCXWUUYOc=;
 b=VJQf+7H+nZE/4Atz54WLI2qgPxceJ4EAgS2M5r3wJnoaUAaq7dBzEl1CDSCJHhvbPG
 Yjcpl+DI5cm+PlzbPSzZ8fwQnjnf9n5h+3yPt0aTT0M0w0G2du+p8G5KPk2Bk7Lpl5ai
 h2ytk6TGndnsA8YXNRN6HicdaaPxWJBD3IrRU2Y20UyZN/kWqVokNzH5AjMZ5KfkPFRS
 r5OYZky0NEGw7CB5hkvPfhdje1cU6cm491NtXzlvgaVuGEvilzwIGg2QyjFdRck6gYvL
 rU8b6l/f3dqbKHTwNy9fT0NyFnZM2++21paFakjDcNSWk8oip8CREB1Jrs32C49e5jTL
 7SIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bh3FkLB+q+IhBnShvoY1GO0GV+nrEdn+PjaCXWUUYOc=;
 b=OwwJwPlZKbkjIsoqjNyqzTVjr4c9jJwhHdOl8qznNMiIVx/Y+8XyJP5MT1CbPxgPoM
 pDeXSNMPS2X/WfcaqHMg5U/ygJY9A5f6XKy6pZEDUxm8C7HMkAQXDMUY00nX/TvrrhtC
 WgLk+09v8b+uwmDT9nlfJibjE4erSzN1T9ZswjzNrbaNoxYimBWqN3YgGfB7FUa322r/
 mYVsDxNl45EMZU3raPCW5Lk/D1b6X8tiRfzKuQvyTJxNIOwnrgMWSpO+5hfI/Za3nyJm
 BPIB3qzqU7l1gHxgP06rUEgRktHs+xA0no/qbKKuNWsWlo+ix/2eRH6VNpOKOcTZ9A3c
 DNOA==
X-Gm-Message-State: AOAM532fg19Prtb5YqhSiqt9o+elyA0X1NLai/kU9HBMqh7p/iiFHlyl
 Ed0KpWXAheKXHuMuOLqWQo3sqUZTCrpIsyPD7BY=
X-Google-Smtp-Source: ABdhPJyMPW1OcigW7e9CCbjgXJ/K6L2Wg+y5swFfQKOCkjrdriWNyhtUcXxkvAzdQwnh3K47pPVeqGNW0tUxlyIRmok=
X-Received: by 2002:a05:6402:3488:: with SMTP id
 v8mr21163665edc.398.1638478821295; 
 Thu, 02 Dec 2021 13:00:21 -0800 (PST)
MIME-Version: 1.0
References: <20211202041627.291625-1-aford173@gmail.com>
 <CAHCN7xJHuOFTQBQWk1yKsk3M0iDB7aKc0=L2DisUoSXVeO3xXQ@mail.gmail.com>
 <CAJ+vNU2t7Yp5OGtWj432Y-8hL62nQBbG58zM-gAj5YfuCO__sA@mail.gmail.com>
In-Reply-To: <CAJ+vNU2t7Yp5OGtWj432Y-8hL62nQBbG58zM-gAj5YfuCO__sA@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 2 Dec 2021 15:00:10 -0600
Message-ID: <CAHCN7xJXMUHHBACuozY3nUdZ0QqHFLrmwrXnArtCKBG7+P4UZQ@mail.gmail.com>
Subject: Re: [RFC V3 0/2] arm64: imx8mm: Enable Hantro VPUs
To: Tim Harvey <tharvey@gateworks.com>
Cc: Lucas Stach <l.stach@pengutronix.de>,
 linux-media <linux-media@vger.kernel.org>, 
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
X-CRM114-CacheID: sfid-20211202_130025_632799_55F3E0E2 
X-CRM114-Status: GOOD (  33.16  )
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

On Thu, Dec 2, 2021 at 12:54 PM Tim Harvey <tharvey@gateworks.com> wrote:
>
> On Thu, Dec 2, 2021 at 4:29 AM Adam Ford <aford173@gmail.com> wrote:
> >
> > On Wed, Dec 1, 2021 at 10:17 PM Adam Ford <aford173@gmail.com> wrote:
> > >
> > > The i.MX8M has two Hantro video decoders, called G1 and G2 which appear
> > > to be related to the video decoders used on the i.MX8MQ, but because of
> > > how the Mini handles the power domains, the VPU driver does not need to
> > > handle all the functions, so a new compatible flag is required.
> > >
> > > V3 is rebased from git://linuxtv.org/hverkuil/media_tree.git for-v5.17c
> > > This branch has support for VP9.
> > >
> > > I set cma=512M, but this may not be enough memory as some tests appeard to run out of memory
> > >
> > > V3 of this series has several changes:
> > >
> > > Update imx8m_vpu_hw to add missing 'reg' reference names for G2 and include references to VP9
> > > Update device tree to remove IMX8MQ_VPU_RESET, remove some duplicate vpu clock parenting
> > > Fix missing reg-names from vpu_g2 node.
> > > Apply patch [1] to manage the power domains powering down.
> > > [1] - https://lore.kernel.org/linux-arm-kernel/20211016210547.171717-1-marex@denx.de/t/
> > >
> > > With the above, the following Fluster scores are produced:
> > >
> > > G1:
> > > ./fluster.py run -dGStreamer-H.264-V4L2SL-Gst1.0
> > > Ran 90/135 tests successfully               in 74.406 secs
> > >
> > > ./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0
> > > Ran 55/61 tests successfully               in 8.080 secs
> > >
> > > G2:
> > > ./fluster.py run -d GStreamer-VP9-V4L2SL-Gst1.0
> > > Ran 127/303 tests successfully               in 203.873 secs
> > >
> > > Fluster and G-Streamer were both built from their respective git repos using their respective master/main branches.
> > >
> >
> > I should note, that both interrupts appear to be triggering.
> >
> > # cat /proc/interrupts |grep codec
> >  57:      13442          0          0          0     GICv3  39 Level
> >   38300000.video-codec
> >  58:       7815          0          0          0     GICv3  40 Level
> >   38310000.video-codec
> >
>
> Adam,
>
> On another thread you had let me know that you also removed the reset
> from the pgc_vpumix power domain which does appear to resolve the
> hang:
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index eb9dcd9d1a31..31710af544dc 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -681,7 +681,6 @@
>                                                 clocks = <&clk
> IMX8MM_CLK_VPU_DEC_ROOT>;
>                                                 assigned-clocks =
> <&clk IMX8MM_CLK_VPU_BUS>;
>                                                 assigned-clock-parents
> = <&clk IMX8MM_SYS_PLL1_800M>;
> -                                               resets = <&src
> IMX8MQ_RESET_VPU_RESET>;
>                                         };
>
>                                         pgc_vpu_g1: power-domain@7 {
>
> That would make such a patch have a 'Fixes commit d39d4bb15310
> ("arm64: dts: imx8mm: add GPC node")' but of course that vpu domain
> isn't active until your series so I'm not sure if we should send this
> separate or squash it with "arm64: dts: imx8mm: Enable VPU-G1 and
> VPU-G2". I'm also not clear if removing the reset requires some
> further discussion with Lucas.

Unless there is objection from Lucas, I'll likely make it the first
patch in the series marking it with a fixes tag so it gets backported,
then the rest of the series would be adding the bindings, update the
driver and adding the G1 and G2 nodes.

adam
>
> Best regards,
>
> Tim

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
