Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40801CA0FE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Aug 2025 09:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHyiBvlqiRSMfu0Xkr9R8IKlTaTCLcjGCOE7F479B40=; b=1FWmXJqgH0hEdq
	k/GJLLGE5avpZSff72Yh0jLTJ5BrVVuyoNWfSUQZQTng53bta6nfHm1VzTp7P/soyz/zH7dY8T/vn
	AW5LHHO/+NGb49ZnHMqpEeWnwWPEegIiaCJxEDnLrPS9LTsAkKwdnFGupAAcPB8536+Y9Tuk8zc1n
	S+chh3X8TNAM83cPnVM4AheF12jS3lOmpwPfP01UAjtJ9OmoZI2o1y+Lr6s54M/cGW8+LQN0hegza
	SN6rEZ8vsFut03cqSzNOQRGOcYihvV+IGCSL6FKpwoYATdRcW5R5Vf25qF7I8Gby5aj6p5kc/9TM7
	WnA/vT+ZQmmiKK6dH6cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqqKZ-0000000BUzk-0prl;
	Tue, 26 Aug 2025 09:51:07 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqq57-0000000BQvb-10lG;
	Tue, 26 Aug 2025 09:35:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=0kksXY6qvH1L0tvsp2dKynLeBCUnDrycYEwOgABE3I8=; b=pEsksbH0GWNkC4oxuPMuoDz4Lv
	oEVH+1V0RqTirpkdnQphw4N23fltxzOHWvH4oMWynmB2vQLBFc/NdVgMXBvEWNMdtE/JPZT5abkxZ
	BOLuOh9/uOEFrdX762OF9dTagAm1dx327Z6TS42pJYBD7C1QpphQGmmlv7hMbNRSLY6Q00eVzJ601
	0FUNVVqOOAq2FXvGBmBh4rUv7dMLsiQ/xK9zby1Q7fHSP6Wrgck0rx2dOFJfsOc+moxoDdnFmotar
	6VqZB12dNSXOh9vBdzPrClQBiD795n/HjXDXU97wGRSVBJYYwaL5hzxmwXICYPtU12qsJt0aD1g+z
	lIVGCueQ==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:41130)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1uqq4r-000000007fR-03bV;
	Tue, 26 Aug 2025 10:34:53 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1uqq4o-0000000018h-0Pc0;
	Tue, 26 Aug 2025 10:34:50 +0100
Date: Tue, 26 Aug 2025 10:34:49 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
	Chaoyi Chen <kernel@airkyi.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jonas Karlman <jonas@kwiboo.se>, David Wu <david.wu@rock-chips.com>,
	netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH net-next v3] net: ethernet: stmmac: dwmac-rk: Make the
 clk_phy could be used for external phy
Message-ID: <aK1_uaBpnix4n4eS@shell.armlinux.org.uk>
References: <20250815023515.114-1-kernel@airkyi.com>
 <CGME20250825072312eucas1p2d4751199c0ea069c7938218be60e5e93@eucas1p2.samsung.com>
 <a30a8c97-6b96-45ba-bad7-8a40401babc2@samsung.com>
 <d0fe6d16-181f-4b38-9457-1099fb6419d0@rock-chips.com>
 <809848c9-2ffa-4743-adda-b8b714b404de@samsung.com>
 <aKxnHFSrVeM7Be5A@shell.armlinux.org.uk>
 <8240a3cc-aade-40d8-b2f4-09681f76be68@rock-chips.com>
 <aK19bSmrbXjoVXdO@shell.armlinux.org.uk>
 <ae11b993-5844-4da1-b433-c27b5a73060a@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae11b993-5844-4da1-b433-c27b5a73060a@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_023509_285434_1B12266C 
X-CRM114-Status: GOOD (  36.10  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

On Tue, Aug 26, 2025 at 05:29:04PM +0800, Chaoyi Chen wrote:
> On 8/26/2025 5:25 PM, Russell King (Oracle) wrote:
> =

> > On Tue, Aug 26, 2025 at 04:08:40PM +0800, Chaoyi Chen wrote:
> > > Hi Russell,
> > > =

> > > On 8/25/2025 9:37 PM, Russell King (Oracle) wrote:
> > > > On Mon, Aug 25, 2025 at 12:53:37PM +0200, Marek Szyprowski wrote:
> > > > > On 25.08.2025 11:57, Chaoyi Chen wrote:
> > > > > > On 8/25/2025 3:23 PM, Marek Szyprowski wrote:
> > > > > > > On 15.08.2025 04:35, Chaoyi Chen wrote:
> > > > > > > > From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > > > > > > =

> > > > > > > > For external phy, clk_phy should be optional, and some exte=
rnal phy
> > > > > > > > need the clock input from clk_phy. This patch adds support =
for setting
> > > > > > > > clk_phy for external phy.
> > > > > > > > =

> > > > > > > > Signed-off-by: David Wu <david.wu@rock-chips.com>
> > > > > > > > Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > > > > > > ---
> > > > > > > > =

> > > > > > > > Changes in v3:
> > > > > > > > - Link to V2:
> > > > > > > > https://lore.kernel.org/netdev/20250812012127.197-1-kernel@=
airkyi.com/
> > > > > > > > - Rebase to net-next/main
> > > > > > > > =

> > > > > > > > Changes in v2:
> > > > > > > > - Link to V1:
> > > > > > > > https://lore.kernel.org/netdev/20250806011405.115-1-kernel@=
airkyi.com/
> > > > > > > > - Remove get clock frequency from DT prop
> > > > > > > > =

> > > > > > > >   =A0=A0 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 1=
1 +++++++----
> > > > > > > >   =A0=A0 1 file changed, 7 insertions(+), 4 deletions(-)
> > > > > > > > =

> > > > > > > > diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> > > > > > > > b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> > > > > > > > index ac8288301994..5d921e62c2f5 100644
> > > > > > > > --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> > > > > > > > +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> > > > > > > > @@ -1412,12 +1412,15 @@ static int rk_gmac_clk_init(struct
> > > > > > > > plat_stmmacenet_data *plat)
> > > > > > > >   =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 clk_set_rate(plat->stmmac_=
clk, 50000000);
> > > > > > > >   =A0=A0=A0=A0=A0=A0 }
> > > > > > > >   =A0=A0 -=A0=A0=A0 if (plat->phy_node && bsp_priv->integra=
ted_phy) {
> > > > > > > > +=A0=A0=A0 if (plat->phy_node) {
> > > > > > > >   =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 bsp_priv->clk_phy =3D of_c=
lk_get(plat->phy_node, 0);
> > > > > > > >   =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret =3D PTR_ERR_OR_ZERO(bs=
p_priv->clk_phy);
> > > > > > > > -=A0=A0=A0=A0=A0=A0=A0 if (ret)
> > > > > > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return dev_err_probe(dev=
, ret, "Cannot get PHY clock\n");
> > > > > > > > -=A0=A0=A0=A0=A0=A0=A0 clk_set_rate(bsp_priv->clk_phy, 5000=
0000);
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 /* If it is not integrated_phy, clk_=
phy is optional */
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 if (bsp_priv->integrated_phy) {
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (ret)
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return dev_e=
rr_probe(dev, ret, "Cannot get PHY
> > > > > > > > clock\n");
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 clk_set_rate(bsp_priv->c=
lk_phy, 50000000);
> > > > > > > > +=A0=A0=A0=A0=A0=A0=A0 }
> > > > > > I think=A0 we should set bsp_priv->clk_phy to NULL here if we f=
ailed to
> > > > > > get the clock.
> > > > > > =

> > > > > > Could you try this on your board? Thank you.
> > > > > Right, the following change also fixes this issue:
> > > > > =

> > > > > diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> > > > > b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> > > > > index 9fc41207cc45..2d19d48be01f 100644
> > > > > --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> > > > > +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> > > > > @@ -1415,6 +1415,8 @@ static int rk_gmac_clk_init(struct
> > > > > plat_stmmacenet_data *plat)
> > > > >    =A0=A0=A0=A0=A0=A0=A0 if (plat->phy_node) {
> > > > >    =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 bsp_priv->clk_ph=
y =3D of_clk_get(plat->phy_node, 0);
> > > > >    =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret =3D PTR_ERR_=
OR_ZERO(bsp_priv->clk_phy);
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (ret)
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 bsp_priv->clk_phy =3D NULL;
> > > > Or just:
> > > > =

> > > > 		clk =3D of_clk_get(plat->phy_node, 0);
> > > > 		if (clk =3D=3D ERR_PTR(-EPROBE_DEFER))
> > > Do we actually need this?=A0Maybe other devm_clk_get() before it woul=
d fail in advance.
> > Is it the same clock as devm_clk_get()? If it is, what's the point of
> > getting it a second time. If it isn't, then it could be a different
> > clock which may be yet to probe.
> =

> It's not the same clock, but it should be use the same clock controller d=
river, which is the CRU on the Rockchip platform.

Will it always be the same clock controller, including into the future
Rockchip devices?

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
