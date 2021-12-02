Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56054C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Dec 2021 15:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U54ry8LcswqB8UGg0T4PRGevFkuxpi19ltUVVx4YgAI=; b=3IC9Qiq3GZzoCm
	cb/cEcl5HgLylZy+mfLzQkIGYrtrMcIVO0fA2oviMtLfb0tMIxLbHENKa24goPU9yn/nE610ayP48
	Uybw2HfRi9yq/phpsyCLh79rWDztnpRHqSyyXxEYY4b3xNw2tJuPrbVpbOPe4QDjgSbl0AOrGzGSs
	ty4IV1j1FmO2pNSFQ6BXWE5fjzm67CqpzvRZdfiaEO5NapPFx6uPG/9zPcge2YHbZKILhT7RrJjup
	p1QsZk8wmjbTFUUDZVtvZWWkmj3NNvKta9xWLj36o2gaEqxWgZsNuAu4G/zTR2439tD/u1MSgqwjg
	C7JzQVTo9Ro2RqAJRvmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msoM2-00Cqi8-Vt; Thu, 02 Dec 2021 15:50:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msoD9-00CoGT-8z; Thu, 02 Dec 2021 15:41:29 +0000
Received: from ip4d17a2ab.dynamic.kabel-deutschland.de ([77.23.162.171]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1msoD1-0000g5-2c; Thu, 02 Dec 2021 16:41:19 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 10/12] arm64: dts: rockchip: rk3568-evb: Enable VOP2 and
 hdmi
Date: Thu, 02 Dec 2021 16:41:17 +0100
Message-ID: <6427725.puVkvWICD3@diego>
In-Reply-To: <20211202153449.GG25697@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <CAL_JsqL7C32FB47=xfUtndtCvfOQx7f3Gq0O0FqZxRoeS1fNSQ@mail.gmail.com>
 <20211202153449.GG25697@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_074127_379588_86D56764 
X-CRM114-Status: GOOD (  32.93  )
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

Hi Sascha,

Am Donnerstag, 2. Dezember 2021, 16:34:49 CET schrieb Sascha Hauer:
> On Wed, Nov 17, 2021 at 09:19:38AM -0600, Rob Herring wrote:
> > On Wed, Nov 17, 2021 at 8:34 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > >
> > > This enabled the VOP2 display controller along with hdmi and the
> > > required port routes which is enough to get a picture out of the
> > > hdmi port of the board.
> > >
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 24 +++++++++++++++++++
> > >  1 file changed, 24 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> > > index 184e2aa2416af..156e001492173 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> > > @@ -106,6 +106,12 @@ &gmac1m1_rgmii_clk
> > >         status = "okay";
> > >  };
> > >
> > > +&hdmi {
> > > +       status = "okay";
> > > +       avdd-0v9-supply = <&vdda0v9_image>;
> > > +       avdd-1v8-supply = <&vcca1v8_image>;
> > > +};
> > > +
> > >  &i2c0 {
> > >         status = "okay";
> > >
> > > @@ -390,3 +396,21 @@ &sdmmc0 {
> > >  &uart2 {
> > >         status = "okay";
> > >  };
> > > +
> > > +&vop {
> > > +       status = "okay";
> > > +       assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
> > > +       assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
> > > +};
> > > +
> > > +&vop_mmu {
> > > +       status = "okay";
> > > +};
> > > +
> > > +&hdmi_in_vp0 {
> > > +       status = "okay";
> > > +};
> > > +
> > > +&vp0_out_hdmi {
> > > +       status = "okay";
> > > +};
> > 
> > You can accomplish the same thing already with:
> > 
> > &vp0_out_hdmi {
> >   remote-endpoint = <&hdmi_in_vp0>;
> > };
> 
> My idea was to describe all possible connections in the dtsi file and
> let the board dts writer only en/disable the needed connections. When
> the connections are specified in the dts file then writing it is more
> difficult and error prone.
> 
> > 
> > or:
> > 
> > &vp0_out_hdmi {
> >   /delete-property/ remote-endpoint;
> > };
> 
> With this I have to change all connections that I don't need. With
> status = "okay" I have to change all connections that I actually do
> need, which will be much easier to read and write.
> 
> I'll stick to the status = "okay" method for the next round, maybe I can
> still convince you ;)
> 
> If it's the 'status' property you don't like being used when it's not a
> device that is enabled/disabled, then every other name would be fine
> with me as well.

hmm, we do have code in the rockchip drm-driver to find out
if the device at the end of a graph-connection is disabled or not [0] ,
So on previous Rockchip socs, there are already all connections
established, and the driver weeds out the disabled ones.

So I'm wondering what is missing to use that in a vop2 context?


Heiko

[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/rockchip/rockchip_drm_drv.c#n274



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
