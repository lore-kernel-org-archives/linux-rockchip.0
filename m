Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1A92C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Dec 2021 18:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DahPblM27PkCx0+yAqJMvr+zrtF3R8QAbOKDaB421oo=; b=eqdslxwuk5RCAw
	PTUubzxKKQ3mQlZWY76cnPj1abHTe4bIb6ngXC9k2mOpw4UXTBaLYlaQJIB0K2heckBw2nJEGIx5y
	+qvr5bekyXgBwReymjsXANrkGjBo01YUPPDRBDK3XZnsXnxbxfE0gNwR5weq7PsIntt9sMIYJvshY
	ZOrA3vAmWXmOrxeQ3QCouA6s8kvGkqfI5TfjPVBerTQ4/qGub1edjkUCCA37VfTVKxLiFFeN8gs6t
	J7jzhxRgEiULqOhiWV3CkRzdc1R8k/mYyCD0I2+tJJG4GnVFRYzN2e+gJsgXmCZ4CuF1uwwqwTsPr
	zw9ulFWC9iVsGg2GpNYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msUUa-009q5r-G2; Wed, 01 Dec 2021 18:38:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msUUM-009q06-IF
 for linux-rockchip@lists.infradead.org; Wed, 01 Dec 2021 18:37:57 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1msUU6-0003ZW-Rr; Wed, 01 Dec 2021 19:37:38 +0100
Message-ID: <ccfc08bbb6ec0debd523bd106e7eff4a747aaa23.camel@pengutronix.de>
Subject: Re: [RFC V2 0/2] arm64: imx8mm: Enable Hantro VPUs
From: Lucas Stach <l.stach@pengutronix.de>
To: Tim Harvey <tharvey@gateworks.com>
Cc: Adam Ford <aford173@gmail.com>, linux-media
 <linux-media@vger.kernel.org>,  Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Hans Verkuil <hverkuil@xs4all.nl>, Nicolas
 Dufresne <nicolas@ndufresne.ca>, Adam Ford-BE <aford@beaconembedded.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha
 Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>,  Fabio Estevam <festevam@gmail.com>, NXP Linux
 Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,  Mauro
 Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  Device Tree Mailing List
 <devicetree@vger.kernel.org>, Linux ARM Mailing List
 <linux-arm-kernel@lists.infradead.org>, open list
 <linux-kernel@vger.kernel.org>, "open list:HANTRO VPU CODEC DRIVER"
 <linux-rockchip@lists.infradead.org>, "open list:STAGING SUBSYSTEM"
 <linux-staging@lists.linux.dev>
Date: Wed, 01 Dec 2021 19:37:34 +0100
In-Reply-To: <CAJ+vNU2PxgdN414Ufd4NAG5CJgnftNSAHDGpt9Nj+RfgkNmxaw@mail.gmail.com>
References: <20211201013329.15875-1-aford173@gmail.com>
 <CAJ+vNU1jENmWAR_5E98Vgb53ctxjxSWJewPW0YC4Yp4DuYTn3g@mail.gmail.com>
 <7216bc863d89faa9fdc5cd8d44c319f7a6d88159.camel@pengutronix.de>
 <CAJ+vNU2PxgdN414Ufd4NAG5CJgnftNSAHDGpt9Nj+RfgkNmxaw@mail.gmail.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_103754_652088_07F6F82E 
X-CRM114-Status: GOOD (  44.70  )
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

Am Mittwoch, dem 01.12.2021 um 10:16 -0800 schrieb Tim Harvey:
> On Wed, Dec 1, 2021 at 9:32 AM Lucas Stach <l.stach@pengutronix.de> wrote:
> > 
> > Hi Tim,
> > 
> > Am Mittwoch, dem 01.12.2021 um 09:23 -0800 schrieb Tim Harvey:
> > > On Tue, Nov 30, 2021 at 5:33 PM Adam Ford <aford173@gmail.com> wrote:
> > > > 
> > > > The i.MX8M has two Hantro video decoders, called G1 and G2 which appear
> > > > to be related to the video decoders used on the i.MX8MQ, but because of
> > > > how the Mini handles the power domains, the VPU driver does not need to
> > > > handle all the functions, nor does it support the post-processor,
> > > > so a new compatible flag is required.
> > > > 
> > > > With the suggestion from Hans Verkuil, I was able to get the G2 splat to go away
> > > > with changes to FORCE_MAX_ZONEORDER, but I found I could also set cma=512M, however
> > > > it's unclear to me if that's an acceptable alternative.
> > > > 
> > > > At the suggestion of Ezequiel Garcia and Nicolas Dufresne I have some
> > > > results from Fluster. However, the G2 VPU appears to fail most tests.
> > > > 
> > > > ./fluster.py run -dGStreamer-H.264-V4L2SL-Gst1.0
> > > > Ran 90/135 tests successfully               in 76.431 secs
> > > > 
> > > >  ./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0
> > > > Ran 55/61 tests successfully               in 21.454 secs
> > > > 
> > > > ./fluster.py run -d GStreamer-VP9-V4L2SL-Gst1.0
> > > > Ran 0/303 tests successfully               in 20.016 secs
> > > > 
> > > > Each day seems to show more and more G2 submissions, and gstreamer seems to be
> > > > still working on the VP9, so I am not sure if I should drop G2 as well.
> > > > 
> > > > 
> > > > Adam Ford (2):
> > > >   media: hantro: Add support for i.MX8M Mini
> > > >   arm64: dts: imx8mm: Enable VPU-G1 and VPU-G2
> > > > 
> > > >  arch/arm64/boot/dts/freescale/imx8mm.dtsi   | 41 +++++++++++++++
> > > >  drivers/staging/media/hantro/hantro_drv.c   |  2 +
> > > >  drivers/staging/media/hantro/hantro_hw.h    |  2 +
> > > >  drivers/staging/media/hantro/imx8m_vpu_hw.c | 57 +++++++++++++++++++++
> > > >  4 files changed, 102 insertions(+)
> > > > 
> > > 
> > > Adam,
> > > 
> > > That's for the patches!
> > > 
> > > I tested just this series on top of v5.16-rc3 on an
> > > imx8mm-venice-gw73xx-0x and found that if I loop fluster I can end up
> > > getting a hang within 10 to 15 mins or so when imx8m_blk_ctrl_power_on
> > > is called for VPUMIX pd :
> > > while [ 1 ]; do uptime; ./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0; done
> > > ...
> > > [  618.838436] imx-pgc imx-pgc-domain.6: failed to command PGC
> > > [  618.844407] imx8m-blk-ctrl 38330000.blk-ctrl: failed to power up bus domain
> > > 
> > > I added prints in imx_pgc_power_{up,down} and
> > > imx8m_blk_ctrl_power_{on,off} to get some more context
> > > ...
> > > Ran 55/61 tests successfully               in 8.685 secs
> > >  17:16:34 up 17 min,  0 users,  load average: 3.97, 2.11, 0.93
> > > ********************************************************************************
> > > ********************
> > > Running test suite VP8-TEST-VECTORS with decoder GStreamer-VP8-V4L2SL-Gst1.0
> > > Using 4 parallel job(s)
> > > ********************************************************************************
> > > ********************
> > > 
> > > [TEST SUITE      ] (DECODER                    ) TEST VECTOR               ... R
> > > ESULT
> > > ----------------------------------------------------------------------
> > > [ 1023.114806] imx8m_blk_ctrl_power_on vpublk-g1
> > > [ 1023.119669] imx_pgc_power_up vpumix
> > > [ 1023.124307] imx-pgc imx-pgc-domain.6: failed to command PGC
> > > [ 1023.130006] imx8m-blk-ctrl 38330000.blk-ctrl: failed to power up bus domain
> > > 
> > > While this wouldn't be an issue with this series it does indicate we
> > > still have something racy in blk-ctrl. Can you reproduce this (and if
> > > not what kernel are you based on)? Perhaps you or Lucas have some
> > > ideas?
> > > 
> > Did you have "[PATCH] soc: imx: gpcv2: Synchronously suspend MIX
> > domains" applied when running those tests? It has only recently been
> > picked up by Shawn and may have an influence on the bus domain
> > behavior.
> > 
> 
> Lucas,
> 
> Good point. I did have that originally before I started pruning down
> to the bare minimum to reproduce the issue.
> 
> I added it back and now I have the following:
> arm64: dts: imx8mm: Enable VPU-G1 and VPU-G2
> media: hantro: Add support for i.MX8M Mini
> soc: imx: gpcv2: keep i.MX8MM VPU-H1 bus clock active
> soc: imx: gpcv2: Synchronously suspend MIX domains
> Linux 5.16-rc3
> 
> Here's the latest with that patch:
> ...
> [VP8-TEST-VECTORS] (GStreamer-VP8-V4L2SL-Gst1.0)
> vp80-00-comprehensive-007 ... Success
> [  316.632373] imx8m_blk_ctrl_power_off vpublk-g1
> [  316.636908] imx_pgc_power_down vpu-g1
> [  316.640983] imx_pgc_power_down vpumix
> [  316.756869] imx8m_blk_ctrl_power_on vpublk-g1
> [  316.761360] imx_pgc_power_up vpumix
> [  316.765985] imx-pgc imx-pgc-domain.6: failed to command PGC
> [  316.772743] imx8m-blk-ctrl 38330000.blk-ctrl: failed to power up bus domain
> ^^^ hang

Hm, I wonder if there's some broken error handling here somewhere, as a
failure to power up a domain shouldn't lead to a hang.

However, that doesn't explain why the PGC isn't completing the request.
Can you try to extend the timeout some more. Even though I think that
1msec should already be generous. Can you dump the content of the
GPC_PU_PGC_SW_PUP_REQ and GPC_A53_PU_PGC_PUP_STATUSn (all 3 of them)
registers, when the failure condition is hit?

Regards,
Lucas 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
