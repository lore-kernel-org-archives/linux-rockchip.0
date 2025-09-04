Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDAC3CA1015
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Sep 2025 11:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G8hsCluRcbv5Bn/bfGuz3a0Qx1AMHOAHLxZqDmMlH6g=; b=BFUKTMIdlge4hy
	DYVnc+mWWc1l96w4CUjU+ym/JMJUnABBIe8AkI2sJ2ppS1Xr3e+3RsbcfJzAgKyeSQjf55+berNfa
	uAqaRhjIqwLEELL8sVe88XLuIIyOFY/9E6G0QoXCBfJRJmB+MMejLgkCfjcOYjYQCikkTkapOOgBJ
	dmiS5MXF2fPRwXs6SW5R/if9+SoXhciORryuGmo3uUvZxBmHvTxub5S/36DvAPXGhAZwFbaM3XWof
	Iw1wd4/dTOLZx5hXEYj0Aw3AyHxMokytrkNhny4S5qF6FrCnaSAbGfuGyViczMZ+KbfOrbNo/gRfM
	X0xl9M0p/Vvq77W0/1SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu7m5-0000000B5XS-2Gid;
	Thu, 04 Sep 2025 11:05:05 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu6vc-0000000AmfD-2QwP;
	Thu, 04 Sep 2025 10:10:54 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id BCB6C208A0;
	Thu,  4 Sep 2025 12:10:49 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1UU3Ew3pXPsJ; Thu,  4 Sep 2025 12:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1756980648; bh=q0xjFKgA1oVufeQPUoXAmkmO47WBeoCpahTTRsgkiR4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XSTBQnftWTw5Waqb0LaFONAC+OOADo9mLP+BlBUs/gbK6ewyZIAB9nFN+f9mpImYk
	 nL2acTDzMutg2GaKAos6V29QppDeYoVLWeeUFGYKTSA0Ebt6/F3GhbirdVTpStc6Af
	 lsVX1+ZeBnougiAbxi3Ma33WAUlqaFmZgf/oPsnPJKfTd2K5llFOzRtb8WlGyj6Tc3
	 Msa0Km1jWvsp8EWTKdyy3GCIJJnnAxe3+7iHW8RIdgBcSGwLa1EaqGk4AjzwTNUii3
	 wNG57odu38jms6/e2aIdKTZJPkI+nJjkoy5sS3YpDmCYdJ4V1U0tmcicVoxzC6+m+u
	 4Ni9uzE4n0Q4g==
Date: Thu, 4 Sep 2025 10:10:01 +0000
From: Yao Zi <ziyao@disroot.org>
To: Simon Horman <horms@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Jonas Karlman <jonas@kwiboo.se>, David Wu <david.wu@rock-chips.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>, netdev@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH net] net: stmmac: dwmac-rk: Ensure clk_phy doesn't
 contain invalid address
Message-ID: <aLlleb271owHNIbt@pie>
References: <20250904031222.40953-3-ziyao@disroot.org>
 <20250904095457.GE372207@horms.kernel.org>
 <20250904095657.GF372207@horms.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250904095657.GF372207@horms.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_031053_016675_C5FBA709 
X-CRM114-Status: GOOD (  23.53  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Sep 04, 2025 at 10:56:57AM +0100, Simon Horman wrote:
> On Thu, Sep 04, 2025 at 10:54:57AM +0100, Simon Horman wrote:
> > On Thu, Sep 04, 2025 at 03:12:24AM +0000, Yao Zi wrote:
> > > We must set the clk_phy pointer to NULL to indicating it isn't available
> > > if the optional phy clock couldn't be obtained. Otherwise the error code
> > > returned by of_clk_get() could be wrongly taken as an address, causing
> > > invalid pointer dereference when later clk_phy is passed to
> > > clk_prepare_enable().
> > > 
> > > Fixes: da114122b831 ("net: ethernet: stmmac: dwmac-rk: Make the clk_phy could be used for external phy")
> > > Signed-off-by: Yao Zi <ziyao@disroot.org>
> > 
> > ...
> > 
> > Hi,
> > 
> > I this patch doesn't seem to match upstream code.
> > 
> > Looking over the upstream code, it seems to me that
> > going into the code in question .clk_phy should
> > be NULL, as bsp_priv it is allocated using devm_kzalloc()
> > over in rk_gmac_setup()
> > 
> > While the upstream version of the code your patch modifies
> > is as follows. And doesn't touch .clk_phy if integrated_phy is not set.
> > 
> >         if (plat->phy_node && bsp_priv->integrated_phy) {
> >                 bsp_priv->clk_phy = of_clk_get(plat->phy_node, 0);
> >                 ret = PTR_ERR_OR_ZERO(bsp_priv->clk_phy);
> >                 if (ret)
> >                         return dev_err_probe(dev, ret, "Cannot get PHY clock\n");
> >                 clk_set_rate(bsp_priv->clk_phy, 50000000);
> >         }
> > 
> > Am I missing something?
> 
> Oops, I missed that da114122b831 is present in net-next (but not net).
> Let me look over this a second time.

Oops, yes. Though this is a fix patch, it should target net-next instead
of net since the commit causing problems hasn't landed in net. Sorry for
the confusion.

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
