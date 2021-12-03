Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13CF9C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Dec 2021 09:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XW8XvRE5OII6c/0bmdvd/dIdgskLDr7Qa/ir38sX/pM=; b=nkrzbTSZ8IvqJ2
	cmjpwg49xgchxVmYp3t9mKfAQonWNoFLRtxdTlg3JQL9KVPiJ29Psghilaux9o6Mgrhm39+FkE78y
	3YqsFoUX4Ze1Y+xl9x+iUW/n246v6Qljx2F0LIEy/UvrAdlGTKUwYjqF3+pJJSe0Q3GXs5FNt5mqk
	fZeQWxZlKfxCuXIyWs2NOffGi7BsQbiIFpIXyeHkD5fctTLbH9gj+3axw54PTwlM0zHZU7ON1Akg7
	MfoUIyGXPkzVGec1irPE1i0TyLmYMEqhswixFJYH+3g4+tL7h7gE+7XFPtoKBu6PZjyG7l8mKHS6N
	o2vq+e6t5pIk/nNcQOlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mt4hf-00EwvG-AP; Fri, 03 Dec 2021 09:18:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mt4hT-00Ewqp-OW
 for linux-rockchip@lists.infradead.org; Fri, 03 Dec 2021 09:17:53 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1mt4hE-0000j9-TQ; Fri, 03 Dec 2021 10:17:36 +0100
Message-ID: <6a274996f96c799db2efef4498a8fc42e78e1d2d.camel@pengutronix.de>
Subject: Re: [RFC V3 0/2] arm64: imx8mm: Enable Hantro VPUs
From: Lucas Stach <l.stach@pengutronix.de>
To: Tim Harvey <tharvey@gateworks.com>, Adam Ford <aford173@gmail.com>
Cc: linux-media <linux-media@vger.kernel.org>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Nicolas Dufresne <nicolas@ndufresne.ca>, 
 Adam Ford-BE <aford@beaconembedded.com>, Hans Verkuil
 <hverkuil-cisco@xs4all.nl>, Rob Herring <robh+dt@kernel.org>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>,  Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  devicetree <devicetree@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, "open list:HANTRO VPU CODEC DRIVER"
 <linux-rockchip@lists.infradead.org>, "open list:STAGING SUBSYSTEM"
 <linux-staging@lists.linux.dev>
Date: Fri, 03 Dec 2021 10:17:33 +0100
In-Reply-To: <CAJ+vNU2t7Yp5OGtWj432Y-8hL62nQBbG58zM-gAj5YfuCO__sA@mail.gmail.com>
References: <20211202041627.291625-1-aford173@gmail.com>
 <CAHCN7xJHuOFTQBQWk1yKsk3M0iDB7aKc0=L2DisUoSXVeO3xXQ@mail.gmail.com>
 <CAJ+vNU2t7Yp5OGtWj432Y-8hL62nQBbG58zM-gAj5YfuCO__sA@mail.gmail.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211203_011751_816730_EF20639A 
X-CRM114-Status: GOOD (  35.81  )
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

Am Donnerstag, dem 02.12.2021 um 10:54 -0800 schrieb Tim Harvey:
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
> 
I'm fine with removing the reset when it fixes things. In normal
operation the reset should already be triggered by the GPC itself via a
hardware mechanism. We know that this doesn't work for the GPU reset on
the i.MX8MM, so we have the ability for the driver to handle it by
poking the SRC explicitly.

Adding the reset to the VPU DT description wasn't done because I know
that we need it, but more of a "I know that things are broken with the
GPU domain, so better be safe than sorry with the VPU domain". My line
of thought clearly was that it may not be needed, but it may prevent
some issues in the long run. If it is _causing_ issues however, there
is no need to discuss anything, just get rid of it.

Regards,
Lucas


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
