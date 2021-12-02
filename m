Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DA00C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Dec 2021 16:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RBvs/B3n6yJFmzfEX0GGh1H39LjRMgY4kdRVROZ4NWA=; b=R+y59icmSx03/c
	XVIMfx3YNbDibhk6oQ4Af/aBVdwHN9pMciAiD0h6UWbLpc9FSh57TyRjPtI2pKHMlbZ3PmlqlJ6nw
	aKRp1r/WTv2pQNBL+V5/rnqs7d7f5oaXeabpAjqmtEm36FDllnYo3vCLpx1Z7ng6wAwHKqjFSDRFG
	yFKSaioj3Z5HbusM7wuK1X/EK8r8T8HVLvEWMUtUoN7TWCrLq8BiuAkGKyDgwI7OK39jDDa8soPvS
	eaOwxT/tfb3NGZ8o94ztfMoGxozka5LSQhmPzBPavZ54LCXAGkVpN/Yae7pVTO/375p8cTX6mY+AD
	83h2fAmXeto1SsM3ZhSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msoem-00CxOK-My; Thu, 02 Dec 2021 16:10:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msoeX-00CxHP-8e
 for linux-rockchip@lists.infradead.org; Thu, 02 Dec 2021 16:09:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1msoeQ-0000jl-Pm; Thu, 02 Dec 2021 17:09:38 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1msoeO-00057P-NW; Thu, 02 Dec 2021 17:09:36 +0100
Date: Thu, 2 Dec 2021 17:09:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 10/12] arm64: dts: rockchip: rk3568-evb: Enable VOP2 and
 hdmi
Message-ID: <20211202160936.GX28260@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <CAL_JsqL7C32FB47=xfUtndtCvfOQx7f3Gq0O0FqZxRoeS1fNSQ@mail.gmail.com>
 <20211202153449.GG25697@pengutronix.de> <6427725.puVkvWICD3@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6427725.puVkvWICD3@diego>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 17:03:14 up 287 days, 19:27, 151 users,  load average: 0.62, 0.47,
 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_080945_337199_2C6960B3 
X-CRM114-Status: GOOD (  46.42  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko,

On Thu, Dec 02, 2021 at 04:41:17PM +0100, Heiko St=FCbner wrote:
> Hi Sascha,
> =

> Am Donnerstag, 2. Dezember 2021, 16:34:49 CET schrieb Sascha Hauer:
> > On Wed, Nov 17, 2021 at 09:19:38AM -0600, Rob Herring wrote:
> > > On Wed, Nov 17, 2021 at 8:34 AM Sascha Hauer <s.hauer@pengutronix.de>=
 wrote:
> > > >
> > > > This enabled the VOP2 display controller along with hdmi and the
> > > > required port routes which is enough to get a picture out of the
> > > > hdmi port of the board.
> > > >
> > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > ---
> > > >  .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 24 +++++++++++++++=
++++
> > > >  1 file changed, 24 insertions(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arc=
h/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> > > > index 184e2aa2416af..156e001492173 100644
> > > > --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> > > > +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> > > > @@ -106,6 +106,12 @@ &gmac1m1_rgmii_clk
> > > >         status =3D "okay";
> > > >  };
> > > >
> > > > +&hdmi {
> > > > +       status =3D "okay";
> > > > +       avdd-0v9-supply =3D <&vdda0v9_image>;
> > > > +       avdd-1v8-supply =3D <&vcca1v8_image>;
> > > > +};
> > > > +
> > > >  &i2c0 {
> > > >         status =3D "okay";
> > > >
> > > > @@ -390,3 +396,21 @@ &sdmmc0 {
> > > >  &uart2 {
> > > >         status =3D "okay";
> > > >  };
> > > > +
> > > > +&vop {
> > > > +       status =3D "okay";
> > > > +       assigned-clocks =3D <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
> > > > +       assigned-clock-parents =3D <&pmucru PLL_HPLL>, <&cru PLL_VP=
LL>;
> > > > +};
> > > > +
> > > > +&vop_mmu {
> > > > +       status =3D "okay";
> > > > +};
> > > > +
> > > > +&hdmi_in_vp0 {
> > > > +       status =3D "okay";
> > > > +};
> > > > +
> > > > +&vp0_out_hdmi {
> > > > +       status =3D "okay";
> > > > +};
> > > =

> > > You can accomplish the same thing already with:
> > > =

> > > &vp0_out_hdmi {
> > >   remote-endpoint =3D <&hdmi_in_vp0>;
> > > };
> > =

> > My idea was to describe all possible connections in the dtsi file and
> > let the board dts writer only en/disable the needed connections. When
> > the connections are specified in the dts file then writing it is more
> > difficult and error prone.
> > =

> > > =

> > > or:
> > > =

> > > &vp0_out_hdmi {
> > >   /delete-property/ remote-endpoint;
> > > };
> > =

> > With this I have to change all connections that I don't need. With
> > status =3D "okay" I have to change all connections that I actually do
> > need, which will be much easier to read and write.
> > =

> > I'll stick to the status =3D "okay" method for the next round, maybe I =
can
> > still convince you ;)
> > =

> > If it's the 'status' property you don't like being used when it's not a
> > device that is enabled/disabled, then every other name would be fine
> > with me as well.
> =

> hmm, we do have code in the rockchip drm-driver to find out
> if the device at the end of a graph-connection is disabled or not [0] ,
> So on previous Rockchip socs, there are already all connections
> established, and the driver weeds out the disabled ones.
> =

> So I'm wondering what is missing to use that in a vop2 context?

The vop2 has three video ports (crtcs) instead of only one. All three are
described in the device tree and each of them has a of_graph connection
to the different encoders, so something like:

vp0 <-> hdmi
vp0 <-> mipi
vp1 <-> hdmi
vp1 <-> mipi
vp2 <-> hdmi
vp2 <-> mipi

Enabling just vp0 <-> hdmi means only the first video port is can do
hdmi. Different constraints in the clock tree (hdmi reference clock is
hardwired to hpll, not enough PLLs to put all video ports on independent
ones) prevent us from just allowing all connections.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
