Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 477EBC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 16:36:05 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 41E6E61153
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 16:36:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 41E6E61153
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3wEg5nAZEMU3pGtEatFLt48EA8+l62IgCDkDAAwNNLE=; b=jywBoIEybvaQJ1qQKW6JlUoIZ
	/yTgiCzGiLpzEAKsi2F/ve60Ui774KJWd2mo6rHFozMKZJFZSS5uNaDIX+BS4667E/wA6vicFDwR5
	XO80DObnevsNAg4FFNjygWutxiYA93oXFqZn85e9ArlXB1SUt7rVTFV+Cf/k7KCTmcbB8HXsDXnkm
	fGJNIQaCvWtpGvlV8hfEUxbXcJ6BVuqVhXt2mWzqB6JoUBv7D6GVam4v75xAA5x/EECKb05Cl5Yl3
	sY2EPc1+nzpAerETsF2MPG95UPq9gKfw5xKMtmy4LjvPeM9DiJBqQ/NzEvEViCn2Q37x40yh400Pw
	vb5d+c/kw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWiUg-00D9iJ-LJ; Wed, 14 Apr 2021 16:35:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWiUd-00D9hs-GJ
 for linux-rockchip@desiato.infradead.org; Wed, 14 Apr 2021 16:35:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=uQtN5FJGRHHbK7jgNUQZlMZA0QrzP3vVXYipqHB2FdI=; b=nFuaGl/3o5mJaqdME1QrT9fwBT
 G8Tn630cdrADhwEnC+13c4mWmtpt9HLXJIWnhKlpFSlIVD3gl1S8WmpQSXNT7jxzYZbCleJaxN72M
 zwbX9ibbcM/bFhubuUt/b/7F5Bi0AhFl0YupraqRmQxy1ipL0TT9EkbdVm4aoKLU4TjtTbAtjscY+
 8X4k1b67RpGZieBIqcGOZpE1pZm3fNiWV7eRrkceAxx+/ESXnc/QjEKa5pFVcpsZ7DzVxL0RkfrdI
 uwiKLyZoktwjWHK9I5F6RD2go2byK93PgP6uJsA3f2/UHu4A915shi580WJlthafU+RlanyQeVpX/
 qxRGMFrg==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWiUa-007wrc-Hf
 for linux-rockchip@lists.infradead.org; Wed, 14 Apr 2021 16:35:54 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lWiUQ-0005yf-BU; Wed, 14 Apr 2021 18:35:42 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>, Chen-Yu Tsai <wens213@gmail.com>
Cc: Peter Geis <pgwipeout@gmail.com>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jose Abreu <joabreu@synopsys.com>, "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, David Wu <david.wu@rock-chips.com>,
 kernel@collabora.com
Subject: Re: [PATCH net-next 3/3] net: stmmac: Add RK3566/RK3568 SoC support
Date: Wed, 14 Apr 2021 18:35:41 +0200
Message-ID: <11053800.MucGe3eQFb@diego>
In-Reply-To: <CAGb2v67ZBR=XDFPeXQc429HNu_dbY__-KN50tvBW44fXMs78_w@mail.gmail.com>
References: <CAMdYzYpv0dvz4X2JE4J6Qg-5D9mnkqe5RpiRC845wQpZhDKDPA@mail.gmail.com>
 <16102d157576bfa7be341ed7508e70d930e40bab.camel@collabora.com>
 <CAGb2v67ZBR=XDFPeXQc429HNu_dbY__-KN50tvBW44fXMs78_w@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_093552_604118_ACEA9B9B 
X-CRM114-Status: GOOD (  29.32  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 14. April 2021, 18:33:12 CEST schrieb Chen-Yu Tsai:
> On Thu, Apr 15, 2021 at 12:14 AM Ezequiel Garcia <ezequiel@collabora.com>=
 wrote:
> >
> > Hi Peter, Heiko,
> >
> > On Wed, 2021-04-14 at 13:15 +0200, Heiko St=FCbner wrote:
> > > Am Mittwoch, 14. April 2021, 13:03:25 CEST schrieb Peter Geis:
> > > > On Tue, Apr 13, 2021 at 7:37 PM Ezequiel Garcia <ezequiel@collabora=
.com> wrote:
> > > > > > > +static void rk3566_set_to_rmii(struct rk_priv_data *bsp_priv)
> > > > > > > +{
> > > > > > > +       struct device *dev =3D &bsp_priv->pdev->dev;
> > > > > > > +
> > > > > > > +       if (IS_ERR(bsp_priv->grf)) {
> > > > > > > +               dev_err(dev, "%s: Missing rockchip,grf proper=
ty\n", __func__);
> > > > > > > +               return;
> > > > > > > +       }
> > > > > > > +
> > > > > > > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
> > > > > > > +                    RK3568_GMAC_PHY_INTF_SEL_RMII);
> > > > > > > +}
> > > > > > > +
> > > > > > > +static void rk3568_set_to_rgmii(struct rk_priv_data *bsp_pri=
v,
> > > > > > > +                               int tx_delay, int rx_delay)
> > > > > > > +{
> > > > > > > +       struct device *dev =3D &bsp_priv->pdev->dev;
> > > > > > > +
> > > > > > > +       if (IS_ERR(bsp_priv->grf)) {
> > > > > > > +               dev_err(dev, "Missing rockchip,grf property\n=
");
> > > > > > > +               return;
> > > > > > > +       }
> > > > > > > +
> > > > > > > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC0_CON1,
> > > > > > > +                    RK3568_GMAC_PHY_INTF_SEL_RGMII |
> > > > > > > +                    RK3568_GMAC_RXCLK_DLY_ENABLE |
> > > > > > > +                    RK3568_GMAC_TXCLK_DLY_ENABLE);
> > > > > > > +
> > > > > > > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC0_CON0,
> > > > > > > +                    RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
> > > > > > > +                    RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
> > > > > > > +
> > > > > > > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
> > > > > > > +                    RK3568_GMAC_PHY_INTF_SEL_RGMII |
> > > > > > > +                    RK3568_GMAC_RXCLK_DLY_ENABLE |
> > > > > > > +                    RK3568_GMAC_TXCLK_DLY_ENABLE);
> > > > > > > +
> > > > > > > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON0,
> > > > > > > +                    RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
> > > > > > > +                    RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
> > > > > >
> > > > > > Since there are two GMACs on the rk3568, and either, or, or bot=
h may
> > > > > > be enabled in various configurations, we should only configure =
the
> > > > > > controller we are currently operating.
> > > >
> > > > Perhaps we should have match data (such as reg =3D <0>, or against =
the
> > > > address) to identify the individual controllers.
> > >
> > > Hmm, "reg" will be used by the actual mmio address of the controller,
> > > so matching against that should be the way I guess.
> > >
> > > We're already doing something similar for dsi:
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c#n1170
> > >
> >
> > I have to admit, I'm not a fan of hardcoding the registers in the kerne=
l.
> >
> > David Wu solved this in the downstream kernel by using bus_id,
> > which parses the devicetree "ethernet@0" node, i.e.:
> >
> >   plat->bus_id =3D of_alias_get_id(np, "ethernet");
> =

> What happens when one adds another ethernet controller (USB or PCIe) to
> the board and wants to change the numbering order?
> =

> Or maybe only the second ethernet controller is routed on some board
> and the submitter / vendor wants that one to be ethernet0, because
> it's the only usable controller?

Which matches a discussion I had with Arnd about the mmc numbering.
I.e. there the first mmc device is supposed to be mmc0 and so on,
without gaps - for probably the same reasons.


> =

> This seems even more fragile than hardcoding the registers.
> =

> Regards
> ChenYu
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
