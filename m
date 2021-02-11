Return-Path: <SRS0=2G0u=HN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01090C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Feb 2021 14:42:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 56AA664E7A
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Feb 2021 14:42:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 56AA664E7A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1gS5oQIl9uIGNYLyj6r1mJIrwIs6r5SyZYtmpqYksUs=; b=mi0qZxp9zb22FoDRWvwhHHeZT
	PS7QEeQOvd/x+bnBBgOOkqiFxF7Ykn4ex2LUe0eRB8DDzolYDdaSzi94zFN8eeKCp/Nhbo0E/Jq3S
	n1hZ6IenL9+zRtRo0P4VmR+73Sffa348dJ1i0FRHC2Qylkuoofg4PVuya+j+ERgYa2mGmBQ7HLrLR
	i1KkgKV9uL+z7RJT7Jv2C+f/JQbQEkWzmdQxaScqN2gYUd9s1cAxtxWem6gpfDvX9OaIDmVcSJURW
	OwWchONcGIjxowAD97vZ53ysc2vn2NC8KeUY+q0BEe1uyUImXbQ+R9OC3yzTIrZuSK7MZxO9JQchv
	STVrNF/Cg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lADAj-0003dd-6S; Thu, 11 Feb 2021 14:42:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lADAd-0003bC-EO; Thu, 11 Feb 2021 14:42:17 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lADAX-0002Dn-Fl; Thu, 11 Feb 2021 15:42:09 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Fricke <sebastian.fricke@posteo.net>
Subject: Re: [PATCH 0/6] Support second Image Signal Processor on rk3399
Date: Thu, 11 Feb 2021 15:42:08 +0100
Message-ID: <16789691.tv2OnDr8pf@diego>
In-Reply-To: <20210211052515.qdqe256cipdwwrz6@basti-TUXEDO-Book-XA1510>
References: <20210202145632.1263136-1-heiko@sntech.de>
 <808992741.0ifERbkFSE@diego>
 <20210211052515.qdqe256cipdwwrz6@basti-TUXEDO-Book-XA1510>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210211_094215_622748_FCFC973E 
X-CRM114-Status: GOOD (  53.75  )
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

Am Donnerstag, 11. Februar 2021, 06:25:15 CET schrieb Sebastian Fricke:
> Hey Heiko,
> =

> On 10.02.2021 12:15, Heiko St=FCbner wrote:
> >Hi Sebastian,
> >
> >Am Freitag, 5. Februar 2021, 15:55:56 CET schrieb Heiko St=FCbner:
> >> Hi Sebastian,
> >>
> >> I did some tests myself today as well and can confirm your
> >> hdmi related finding - at least when plugged in on boot.
> >>
> >> I tried some combinations of camera vs. hdmi and it seems
> >> really only when hdmi is plugged in on boot
> >
> >as you can see in v2, it should work now even with hdmi
> >connected on boot. My patch ignored the grf-clock when
> >doing the grf-based init.
> >
> >All clocks are on during boot and I guess the hdmi-driver
> >did disable it after its probe. The phy_power_on functions
> >did handle it correctly already, so it was only happening
> >with hdmi connected on boot.
> =

> Thank you very much for solving that problem, I've tested the scenarios
> described below and it works like a charm. (With your V2)
> >
> >
> >Btw. do you plan on submitting your ov13850 driver
> >soonish?
> =

> Actually, I have posted the patch already see here:
> https://patchwork.kernel.org/project/linux-media/patch/20210130182313.329=
03-2-sebastian.fricke@posteo.net/

very cool to see

> I currently review the requested changes and questions and will soon
> post a second version, but I expect quite some time until it is actually
> merged.

could you Cc me on future versions?


Thanks
Heiko
> =

> Greetings,
> Sebastian
> =

> >
> >
> >>
> >> (1)
> >> - boot
> >> - camera
> >> --> works
> >>
> >> (2)
> >> - boot
> >> - camera
> >> - hdmi plugged in
> >> - hdmi works
> >> - camera
> >> --> works
> >>
> >> (3)
> >> - hdmi plugged in
> >> - boot
> >> - hdmi works
> >> - camera
> >> --> camera doesn't work
> >>
> >> (4)
> >> - boot
> >> - hdmi plugged in
> >> - hdmi works
> >> - camera
> >> -> camera works
> >>
> >>
> >> With a bit of brute-force [0] it seems the camera also works again even
> >> with hdmi connected on boot. So conclusion would be that some clock
> >> is misbehaving.
> >>
> >> Now we'll "only" need to find out which one that is.
> >>
> >>
> >> Heiko
> >>
> >>
> >> [0]
> >> Don't disable any clock gates
> >>
> >> diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
> >> index 070dc47e95a1..8daf1fc3388c 100644
> >> --- a/drivers/clk/clk-gate.c
> >> +++ b/drivers/clk/clk-gate.c
> >> @@ -61,6 +61,9 @@ static void clk_gate_endisable(struct clk_hw *hw, in=
t enable)
> >>
> >>         set ^=3D enable;
> >>
> >> +if (!enable)
> >> +return;
> >> +
> >>         if (gate->lock)
> >>                 spin_lock_irqsave(gate->lock, flags);
> >>         else
> >>
> >>
> >>
> >> Am Freitag, 5. Februar 2021, 09:15:47 CET schrieb Heiko St=FCbner:
> >> > Hi Sebastian,
> >> >
> >> > Am Freitag, 5. Februar 2021, 07:43:35 CET schrieb Sebastian Fricke:
> >> > > On 03.02.2021 20:54, Heiko St=FCbner wrote:
> >> > > >Am Mittwoch, 3. Februar 2021, 19:14:22 CET schrieb Sebastian Fric=
ke:
> >> > > >> I have tested your patch set on my nanoPC-T4, here is a complet=
e log
> >> > > >> with:
> >> > > >> - relevant kernel log entries
> >> > > >> - system information
> >> > > >> - media ctl output
> >> > > >> - sysfs entry information
> >> > > >>
> >> > > >> https://paste.debian.net/1183874/
> >> > > >>
> >> > > >> Additionally, to your patchset I have applied the following pat=
ches:
> >> > > >> https://github.com/initBasti/Linux_kernel_media_tree_fork/commi=
ts/dual_cam_setup
> >> > > >>
> >> > > >> And just to not cause confusion the `media_dev` entries come fr=
om this
> >> > > >> unmerged series:
> >> > > >> https://patchwork.kernel.org/project/linux-media/list/?series=
=3D426269
> >> > > >>
> >> > > >> I have actually been able to stream with both of my cameras at =
the same
> >> > > >> time using the libcamera cam command.
> >> > > >> I would like to thank you a lot for making this possible.
> >> > > >
> >> > > >Thanks for testing a dual camera setup. On my board I could only =
test
> >> > > >the second ISP. And really glad it works for you tool :-) .
> >> > > >
> >> > > >Out of curiosity, do you also see that green tint in the images t=
he cameras
> >> > > >produce?
> >> > >
> >> > > Yes, I do. Actually, I currently have two forms of a green tint, o=
n my
> >> > > OV13850 everything is quite dark and greenish, which is caused by =
the
> >> > > missing 3A algorithms. On my OV4689, I have big patches of the ima=
ge
> >> > > with bright green color and flickering, I investigated if this is
> >> > > connected to the 2nd ISP instance, but that doesn't seem to be the=
 case
> >> > > as I have the same results when I switch the CSI ports of the came=
ras.
> >> > >
> >> > > I have found another issue, while testing I discovered following
> >> > > issue:
> >> > > When I start the system with an HDMI monitor connected, then the c=
amera
> >> > > on the 2nd port doesn't work. This is probably because the RX/TX is
> >> > > reserved as a TX.
> >> > > But it made me wonder because if the system has an RX, a TX, and
> >> > > an RX/TX, why isn't the pure TX used by the monitor and the
> >> > > cameras take RX and RX/TX?
> >> > > Or do you think that this is maybe a malfunction of this patch?
> >> >
> >> > I don't think it is an issue with this specific series, but still pu=
zzling.
> >> >
> >> > I.e. the DPHYs are actually only relevant to the DSI controllers,
> >> > with TX0 being connected to DSI0 and TX1RX1 being connected
> >> > to DSI1. So having an hdmi display _in theory_ shouldn't matter at a=
ll.
> >> >
> >> > Out of curiosity what happens, when you boot without hdmi connected
> >> > turn on the cameras, connect the hdmi after this, try the cameras ag=
ain?
> >> >
> >> >
> >> > Heiko
> >> >
> >> > >
> >> > > >
> >> > > >Thanks
> >> > > >Heiko
> >> > >
> >> > > Greetings,
> >> > > Sebastian
> >> > >
> >> > > >
> >> > > >
> >> > > >> If you like to you can add:
> >> > > >> Tested-by: Sebastian Fricke <sebastian.fricke@posteo.net>
> >> > > >>
> >> > > >> On 02.02.2021 15:56, Heiko Stuebner wrote:
> >> > > >> >The rk3399 has two ISPs and right now only the first one is us=
able.
> >> > > >> >The second ISP is connected to the TXRX dphy on the soc.
> >> > > >> >
> >> > > >> >The phy of ISP1 is only accessible through the DSI controller's
> >> > > >> >io-memory, so this series adds support for simply using the dsi
> >> > > >> >controller is a phy if needed.
> >> > > >> >
> >> > > >> >That solution is needed at least on rk3399 and rk3288 but no-o=
ne
> >> > > >> >has looked at camera support on rk3288 at all, so right now
> >> > > >> >only implement the rk3399 specifics.
> >> > > >> >
> >> > > >> >
> >> > > >> >Heiko Stuebner (6):
> >> > > >> >  drm/rockchip: dsi: add own additional pclk handling
> >> > > >> >  dt-bindings: display: rockchip-dsi: add optional #phy-cells =
property
> >> > > >> >  drm/rockchip: dsi: add ability to work as a phy instead of f=
ull dsi
> >> > > >> >  arm64: dts: rockchip: add #phy-cells to mipi-dsi1
> >> > > >> >  arm64: dts: rockchip: add cif clk-control pinctrl for rk3399
> >> > > >> >  arm64: dts: rockchip: add isp1 node on rk3399
> >> > > >> >
> >> > > >> > .../display/rockchip/dw_mipi_dsi_rockchip.txt |   1 +
> >> > > >> > arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  39 ++
> >> > > >> > drivers/gpu/drm/rockchip/Kconfig              |   2 +
> >> > > >> > .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 342 +++++++++=
+++++++++
> >> > > >> > 4 files changed, 384 insertions(+)
> >> > > >> >
> >> > > >>
> >> > > >
> >> > > >
> >> > > >
> >> > > >
> >> > >
> >> >
> >> >
> >>
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
