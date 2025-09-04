Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFE65CA1002
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Sep 2025 12:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2ZIRjCuMQH5sJXVVrVySATPD6rEEEVdySAUBMJYUqw=; b=h91DEUDmKBFP63
	I2FRSbXNYxXY9RZN2v/98meVPqjrWRI0jZKWN9dBg3YQWB+KpK/ykki/603OLeasqMjGFDk5Nj8Ja
	4OcSyqBewE2d0UcCJuCUqlN3BXB2Yq+pYtzmu1MBiNU8gpze6W1ztM6WtdT3FHTdmC+5p3kbX+Dyc
	5xeReGMP59ofOHduqYAFRRDUYVqQdu/O+j1w7nK7cMANgEgJuGoLHd78VU2iScX20CFkGd9oOrwgw
	h8IvRVtcrpAEsgt6OH4VDcxnCVbSR8zFZfGknX5R6dFfYn9pToDqtUpj5uQnLPu3dyaDh9p3l3ANT
	BaLIQyqiglUktmkc+hOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu9YX-0000000Bj5g-31kG;
	Thu, 04 Sep 2025 12:59:13 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu819-0000000BAzU-1lyn;
	Thu, 04 Sep 2025 11:20:40 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 1919520575;
	Thu,  4 Sep 2025 13:20:38 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DiYsnYBqwS5a; Thu,  4 Sep 2025 13:20:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1756984837; bh=VX1Qorr4cLCVKxPq56XPUJlujQHb0CreFY/Z5gKIYUI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZdR2EzMXKNwMV0GD4t+UBqKkew284HTouolI5UMo3Nzd8iCtUBbc/XUbI8E39Cmxd
	 U6mxlFG727uVHvXfbvpDNK5TP58JclnlusDCngy9wBIFwF4lp7jtkCuKKLgUudAySd
	 tF63jMXOwagGkOyOBNun2B1ceVUfRR/7nkWxrIVx4sdBepH91ZPRkBDsZLVnPR4qCO
	 vFn0uecDRhRw7CF3vKHEht6yk/+RlYEEEQRybNW/Lg1ixSRPBVpaXs9Cqc2JRyRQiV
	 37w/UvDUU7ZvZnIf7Lec27pnDu1/rCWKbBo3vaL9n30qr5wOAdycsW6f0i07gDAwKE
	 mJ0WBo+ZnQAsQ==
Date: Thu, 4 Sep 2025 11:20:28 +0000
From: Yao Zi <ziyao@disroot.org>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	"Russell King (Oracle)" <linux@armlinux.org.uk>,
	Simon Horman <horms@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Jonas Karlman <jonas@kwiboo.se>, David Wu <david.wu@rock-chips.com>,
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH net] net: stmmac: dwmac-rk: Ensure clk_phy doesn't
 contain invalid address
Message-ID: <aLl1_AjVZus5wx0M@pie>
References: <20250904031222.40953-3-ziyao@disroot.org>
 <20250904103443.GH372207@horms.kernel.org>
 <aLluvYQ-i-Z9vyp7@shell.armlinux.org.uk>
 <b0f9d781-6b8f-49dd-bfa1-456a26d01290@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b0f9d781-6b8f-49dd-bfa1-456a26d01290@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_042039_590787_5EA7A4C4 
X-CRM114-Status: GOOD (  22.47  )
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

On Thu, Sep 04, 2025 at 06:58:12PM +0800, Chaoyi Chen wrote:
> 
> On 9/4/2025 6:49 PM, Russell King (Oracle) wrote:
> > On Thu, Sep 04, 2025 at 11:34:43AM +0100, Simon Horman wrote:
> > > Thanks, and sorry for my early confusion about applying this patch.
> > > 
> > > I agree that the bug you point out is addressed by this patch.
> > > Although I wonder if it is cleaner not to set bsp_priv->clk_phy
> > > unless there is no error, rather than setting it then resetting
> > > it if there is an error.
> > +1 !
> > 
> > > More importantly, I wonder if there is another bug: does clk_set_rate need
> > > to be called in the case where there is no error and bsp_priv->integrated_phy
> > > is false?
> > I think there's another issue:
> > 
> > static int rk_gmac_clk_init(struct plat_stmmacenet_data *plat)
> > {
> > ...
> >          if (plat->phy_node) {
> >                  bsp_priv->clk_phy = of_clk_get(plat->phy_node, 0);

This is the only invokation to of_clk_get() in the driver. Should we
convert it to the devres-managed variant? And rk_gmac_remove could be
simplified further.

> > ...
> > 
> > static void rk_gmac_remove(struct platform_device *pdev)
> > {
> > ...
> >          if (priv->plat->phy_node && bsp_priv->integrated_phy)
> >                  clk_put(bsp_priv->clk_phy);
> > 
> > So if bsp_priv->integrated_phy is false, then we get the clock but
> > don't put it.
> 
> Yes! Just remove "bsp_priv->integrated_phy"
> 

Cheers,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
