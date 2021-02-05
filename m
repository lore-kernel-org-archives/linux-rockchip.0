Return-Path: <SRS0=7Imz=HH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9441EC433E0
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 08:16:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CA8A664F9B
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 08:16:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CA8A664F9B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E8P2531igK9a5d3uckowQkvOU7EUXVXJr9zxDBaxuEo=; b=KHIfDkfJQSJ4oJlsQNGfdM8dg
	zFv1ReMtHRsXbaxUv5a+ZFx6b245VPWfRefEa38kzVE9hguh24xmi1S1DhiNWwv6/jFHjeeB50V0S
	4D4T0CMPwdDuHt65vmk52l+1Ymd6Sys1JOfBDMGbyBOk4JQWrWDfNlsna+rVG/tFtG79WjCPvb2Bp
	9bPtinWdhSrqjjMWHcsEA5KYlPK74xh3RhLtFemPYLIRANz2X997FW0upGYdIfcm83qfsVefaf0sv
	27VxsFoq9+sbCIGI61huKMOY3MUQV7CF6ogl3adzmg3aY4tRx3wBvAY4wE9SKsw1hnGFoRT3ViPao
	dpn90wdmg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l7wHY-0002u5-Dg; Fri, 05 Feb 2021 08:16:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7wHT-0002sL-DO; Fri, 05 Feb 2021 08:15:56 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l7wHL-0000bu-I7; Fri, 05 Feb 2021 09:15:47 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Fricke <sebastian.fricke@posteo.net>
Subject: Re: [PATCH 0/6] Support second Image Signal Processor on rk3399
Date: Fri, 05 Feb 2021 09:15:47 +0100
Message-ID: <5271305.e9J7NaK4W3@diego>
In-Reply-To: <20210205064335.6c3gs3h3pgvhceku@basti-TUXEDO-Book-XA1510>
References: <20210202145632.1263136-1-heiko@sntech.de>
 <16624224.lhrHg4fidi@diego>
 <20210205064335.6c3gs3h3pgvhceku@basti-TUXEDO-Book-XA1510>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210205_031555_539737_BAFD46EE 
X-CRM114-Status: GOOD (  35.66  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, dafna.hirschfeld@collabora.com,
 cmuellner@linux.com, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, robh+dt@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sebastian,

Am Freitag, 5. Februar 2021, 07:43:35 CET schrieb Sebastian Fricke:
> On 03.02.2021 20:54, Heiko St=FCbner wrote:
> >Am Mittwoch, 3. Februar 2021, 19:14:22 CET schrieb Sebastian Fricke:
> >> I have tested your patch set on my nanoPC-T4, here is a complete log
> >> with:
> >> - relevant kernel log entries
> >> - system information
> >> - media ctl output
> >> - sysfs entry information
> >>
> >> https://paste.debian.net/1183874/
> >>
> >> Additionally, to your patchset I have applied the following patches:
> >> https://github.com/initBasti/Linux_kernel_media_tree_fork/commits/dual=
_cam_setup
> >>
> >> And just to not cause confusion the `media_dev` entries come from this
> >> unmerged series:
> >> https://patchwork.kernel.org/project/linux-media/list/?series=3D426269
> >>
> >> I have actually been able to stream with both of my cameras at the same
> >> time using the libcamera cam command.
> >> I would like to thank you a lot for making this possible.
> >
> >Thanks for testing a dual camera setup. On my board I could only test
> >the second ISP. And really glad it works for you tool :-) .
> >
> >Out of curiosity, do you also see that green tint in the images the came=
ras
> >produce?
> =

> Yes, I do. Actually, I currently have two forms of a green tint, on my
> OV13850 everything is quite dark and greenish, which is caused by the
> missing 3A algorithms. On my OV4689, I have big patches of the image
> with bright green color and flickering, I investigated if this is
> connected to the 2nd ISP instance, but that doesn't seem to be the case
> as I have the same results when I switch the CSI ports of the cameras.
> =

> I have found another issue, while testing I discovered following
> issue:
> When I start the system with an HDMI monitor connected, then the camera
> on the 2nd port doesn't work. This is probably because the RX/TX is
> reserved as a TX.
> But it made me wonder because if the system has an RX, a TX, and
> an RX/TX, why isn't the pure TX used by the monitor and the
> cameras take RX and RX/TX?
> Or do you think that this is maybe a malfunction of this patch?

I don't think it is an issue with this specific series, but still puzzling.

I.e. the DPHYs are actually only relevant to the DSI controllers,
with TX0 being connected to DSI0 and TX1RX1 being connected
to DSI1. So having an hdmi display _in theory_ shouldn't matter at all.

Out of curiosity what happens, when you boot without hdmi connected
turn on the cameras, connect the hdmi after this, try the cameras again?


Heiko

> =

> >
> >Thanks
> >Heiko
> =

> Greetings,
> Sebastian
> =

> >
> >
> >> If you like to you can add:
> >> Tested-by: Sebastian Fricke <sebastian.fricke@posteo.net>
> >>
> >> On 02.02.2021 15:56, Heiko Stuebner wrote:
> >> >The rk3399 has two ISPs and right now only the first one is usable.
> >> >The second ISP is connected to the TXRX dphy on the soc.
> >> >
> >> >The phy of ISP1 is only accessible through the DSI controller's
> >> >io-memory, so this series adds support for simply using the dsi
> >> >controller is a phy if needed.
> >> >
> >> >That solution is needed at least on rk3399 and rk3288 but no-one
> >> >has looked at camera support on rk3288 at all, so right now
> >> >only implement the rk3399 specifics.
> >> >
> >> >
> >> >Heiko Stuebner (6):
> >> >  drm/rockchip: dsi: add own additional pclk handling
> >> >  dt-bindings: display: rockchip-dsi: add optional #phy-cells property
> >> >  drm/rockchip: dsi: add ability to work as a phy instead of full dsi
> >> >  arm64: dts: rockchip: add #phy-cells to mipi-dsi1
> >> >  arm64: dts: rockchip: add cif clk-control pinctrl for rk3399
> >> >  arm64: dts: rockchip: add isp1 node on rk3399
> >> >
> >> > .../display/rockchip/dw_mipi_dsi_rockchip.txt |   1 +
> >> > arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  39 ++
> >> > drivers/gpu/drm/rockchip/Kconfig              |   2 +
> >> > .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 342 ++++++++++++++++=
++
> >> > 4 files changed, 384 insertions(+)
> >> >
> >>
> >
> >
> >
> >
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
