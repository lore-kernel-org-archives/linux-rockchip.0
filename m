Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9ABCC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 11:16:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0BBAF600D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 11:16:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0BBAF600D4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kF9CzNgSEoxdzMKRE+vtbEVnbYIRzy0+uOpoc6Yzjno=; b=D97bWtNgLYmnaHmSH4ZNXzhrz
	39kJI3kohDD46IrYY8kev/QHdXrWCjdwRHKNS27ITIRJrSn4Jai7hFfd+3ogS0iVCr0cn5zP7m0N9
	QJ1GDGr4Pe5+FtKWXAKIrnlPOQYpYz2qfLZHgO9N0+co5RoyeuEVSwIxZBL8rlVY5wJeIZTRtFHaU
	kvcOx04l39qq7BOr7VtCvn5d1L1LxhEeKln6W4QE8+y4QFZnccgEijaMmwMdhH9guXuSCv3nK5BNC
	AEFGZHhKMWbRu7erHShLmcYBD868NFoP5FvD6kztLVkIOVmVvtSpdUEv+UoerKU+YWk6BzdNZZJYu
	fMv6KMRdQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWdVA-00CNSZ-LW; Wed, 14 Apr 2021 11:16:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWdV3-00CNRL-Vz
 for linux-rockchip@desiato.infradead.org; Wed, 14 Apr 2021 11:16:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=UdKUCDciC6SJW8xjjeGPXnpiSWzgg1la1612BTypiQM=; b=X7esE3nD4TDicF1rDCSVdKJ6fA
 pG0209rQwNMCQiLYOzvyKqaMgyG2P01aYfUW/yI7jtwrRIhA5SuvxoIApJhEW8U5QeZZewStOCo66
 Tgm+q1s+uegIzf1zWnhqqhogjWqZ675pYkC0vLinrrrmhcpwB8SAwpYe5wdbPI+pj/2U1cZL9Nc6Q
 CXyo6YVNjhEBnethIgVSfZFFd+0CTQV63rabM4osT8xwnKZfwcFljfPoh4EjwyTH5ft6FtioSjQAr
 G1pAyb5S5FjwFDZk9zdSNwqUY7L1fPaanNLnNW+QK0sn9DvOjdEMZfEMoSLCpzSo28VAGbQtOjgrD
 Z4NB/sJg==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWdV1-007hjB-89
 for linux-rockchip@lists.infradead.org; Wed, 14 Apr 2021 11:16:00 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lWdUu-0004eF-2u; Wed, 14 Apr 2021 13:15:52 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>, Peter Geis <pgwipeout@gmail.com>
Cc: Linux Kernel Network Developers <netdev@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jose Abreu <joabreu@synopsys.com>, "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, David Wu <david.wu@rock-chips.com>,
 kernel@collabora.com
Subject: Re: [PATCH net-next 3/3] net: stmmac: Add RK3566/RK3568 SoC support
Date: Wed, 14 Apr 2021 13:15:51 +0200
Message-ID: <2596687.TLnPLrj5Ze@diego>
In-Reply-To: <CAMdYzYpyD1bTN+3Zaf4nGnN-O-c0u0koiCK45fLucL0T2+69+w@mail.gmail.com>
References: <CAMdYzYpv0dvz4X2JE4J6Qg-5D9mnkqe5RpiRC845wQpZhDKDPA@mail.gmail.com>
 <1412-60762b80-423-d9eaa5@27901112>
 <CAMdYzYpyD1bTN+3Zaf4nGnN-O-c0u0koiCK45fLucL0T2+69+w@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_041559_321723_149C953A 
X-CRM114-Status: GOOD (  18.16  )
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

Am Mittwoch, 14. April 2021, 13:03:25 CEST schrieb Peter Geis:
> On Tue, Apr 13, 2021 at 7:37 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> > > > +static void rk3566_set_to_rmii(struct rk_priv_data *bsp_priv)
> > > > +{
> > > > +       struct device *dev = &bsp_priv->pdev->dev;
> > > > +
> > > > +       if (IS_ERR(bsp_priv->grf)) {
> > > > +               dev_err(dev, "%s: Missing rockchip,grf property\n", __func__);
> > > > +               return;
> > > > +       }
> > > > +
> > > > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
> > > > +                    RK3568_GMAC_PHY_INTF_SEL_RMII);
> > > > +}
> > > > +
> > > > +static void rk3568_set_to_rgmii(struct rk_priv_data *bsp_priv,
> > > > +                               int tx_delay, int rx_delay)
> > > > +{
> > > > +       struct device *dev = &bsp_priv->pdev->dev;
> > > > +
> > > > +       if (IS_ERR(bsp_priv->grf)) {
> > > > +               dev_err(dev, "Missing rockchip,grf property\n");
> > > > +               return;
> > > > +       }
> > > > +
> > > > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC0_CON1,
> > > > +                    RK3568_GMAC_PHY_INTF_SEL_RGMII |
> > > > +                    RK3568_GMAC_RXCLK_DLY_ENABLE |
> > > > +                    RK3568_GMAC_TXCLK_DLY_ENABLE);
> > > > +
> > > > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC0_CON0,
> > > > +                    RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
> > > > +                    RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
> > > > +
> > > > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
> > > > +                    RK3568_GMAC_PHY_INTF_SEL_RGMII |
> > > > +                    RK3568_GMAC_RXCLK_DLY_ENABLE |
> > > > +                    RK3568_GMAC_TXCLK_DLY_ENABLE);
> > > > +
> > > > +       regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON0,
> > > > +                    RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
> > > > +                    RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
> > >
> > > Since there are two GMACs on the rk3568, and either, or, or both may
> > > be enabled in various configurations, we should only configure the
> > > controller we are currently operating.
> 
> Perhaps we should have match data (such as reg = <0>, or against the
> address) to identify the individual controllers.

Hmm, "reg" will be used by the actual mmio address of the controller,
so matching against that should be the way I guess.

We're already doing something similar for dsi:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c#n1170


Heiko






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
