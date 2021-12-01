Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C046C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Dec 2021 16:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GKSqFVEpDJULVpSN6suKxq8u+G6xQitOkjB+7+SOrDU=; b=g1ntLV/FYYmMMJ
	mu0lqDhzXZhauzjxjcPr0WocB8dPVJH4HI/dtvNA+PBI1rP5upNN3zwIGyzwefVcj5kxvc9qWYQ4w
	/1TVDBJvZXHjkj5kpfcAuqKkriRf2HJIuAYA8qCnrMf1acwqk+Kc1yFv5w2ioIEMcpTh5NukzSxkP
	wtosmFPZHBrSI2GXrKM8Buxb8HnitnUZLc79AW2JyilGUuiCVthaF1/3bpf/PGz/N4wXhrY9cRXWf
	3JVk2xta86DWI/YV+rqtqxvXsU8RezL0v0UOPIqAsaUDv8fg8bqyAZbNxP4e8MQDiDWz5+j19J6ik
	v+9EhMuCGNa7m7fEEnSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msS6a-009JDi-DZ; Wed, 01 Dec 2021 16:05:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msS6O-009J9q-6j
 for linux-rockchip@lists.infradead.org; Wed, 01 Dec 2021 16:05:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1msS6G-00018X-SS; Wed, 01 Dec 2021 17:04:52 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1msS6D-0007gg-9U; Wed, 01 Dec 2021 17:04:49 +0100
Date: Wed, 1 Dec 2021 17:04:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 09/12] arm64: dts: rockchip: rk356x: Add HDMI nodes
Message-ID: <20211201160449.GF25697@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <20211117143347.314294-10-s.hauer@pengutronix.de>
 <CAL_JsqJH4NZkte_2w9i1zf9UrkYZx3du4ja5i__Vzki5p13zBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJH4NZkte_2w9i1zf9UrkYZx3du4ja5i__Vzki5p13zBQ@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 17:03:19 up 286 days, 19:27, 150 users,  load average: 0.49, 0.50,
 0.37
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_080500_258862_64FF0A73 
X-CRM114-Status: GOOD (  26.37  )
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

On Wed, Nov 17, 2021 at 09:13:33AM -0600, Rob Herring wrote:
> On Wed, Nov 17, 2021 at 8:34 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > Add support for the HDMI port found on RK3568.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 65 ++++++++++++++++++++++++
> >  1 file changed, 65 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > index 6ebf7c14e096a..53be61a7ce595 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > @@ -472,18 +472,36 @@ vp0: port@0 {
> >                                 #address-cells = <1>;
> >                                 #size-cells = <0>;
> >                                 reg = <0>;
> > +
> > +                               vp0_out_hdmi: endpoint@0 {
> > +                                       reg = <0>;
> > +                                       remote-endpoint = <&hdmi_in_vp0>;
> > +                                       status = "disabled";
> > +                               };
> >                         };
> >
> >                         vp1: port@1 {
> >                                 #address-cells = <1>;
> >                                 #size-cells = <0>;
> >                                 reg = <1>;
> > +
> > +                               vp1_out_hdmi: endpoint@0 {
> > +                                       reg = <0>;
> > +                                       remote-endpoint = <&hdmi_in_vp1>;
> > +                                       status = "disabled";
> > +                               };
> >                         };
> >
> >                         vp2: port@2 {
> >                                 #address-cells = <1>;
> >                                 #size-cells = <0>;
> >                                 reg = <2>;
> > +
> > +                               vp2_out_hdmi: endpoint@0 {
> > +                                       reg = <0>;
> > +                                       remote-endpoint = <&hdmi_in_vp2>;
> > +                                       status = "disabled";
> > +                               };
> >                         };
> >                 };
> >         };
> > @@ -499,6 +517,53 @@ vop_mmu: iommu@fe043e00 {
> >                 status = "disabled";
> >         };
> >
> > +       hdmi: hdmi@fe0a0000 {
> > +               compatible = "rockchip,rk3568-dw-hdmi";
> > +               reg = <0x0 0xfe0a0000 0x0 0x20000>;
> > +               interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
> > +               clocks = <&cru PCLK_HDMI_HOST>,
> > +                        <&cru CLK_HDMI_SFR>,
> > +                        <&cru CLK_HDMI_CEC>,
> > +                        <&cru HCLK_VOP>;
> > +               clock-names = "iahb", "isfr", "cec", "hclk";
> > +               power-domains = <&power RK3568_PD_VO>;
> > +               reg-io-width = <4>;
> > +               rockchip,grf = <&grf>;
> > +               #sound-dai-cells = <0>;
> > +               pinctrl-names = "default";
> > +               pinctrl-0 = <&hdmitx_scl &hdmitx_sda &hdmitxm0_cec>;
> > +               status = "disabled";
> > +
> > +               ports {
> > +                       #address-cells = <1>;
> > +                       #size-cells = <0>;
> > +
> > +                       hdmi_in: port@0 {
> 
> 
> The schema says there is only 1 'port' node. Please run schema
> validation when making DT changes.
> 
> However, an HDMI bridge should also define an output port to a
> connector node (or another bridge). So the fix is to allow 'port@0'
> and add an output port.

The rockchip bindings traditionally don't have a connector explicitly
specified in their device trees. I'll stick to that for the next round.
If necessary I'll look later what it takes to add a connector node.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
