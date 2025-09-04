Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4A13CA1002
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Sep 2025 12:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EGZGXpD7vGABuyvlzUkqvQ2jACGWrCG24iAB0LMk8wE=; b=P+7GV69PG1OFKO
	qjPprlxAwgS8AG8zs4YP7H6c/C1SQQ+2nHiKbdDfp+dTUbaaqbK/1Z6OtWFQi1PF18MfUvQc30iYH
	cKzVxcz5UeEeDIS3lvPdBnXR4eTWZN7HBuj35R/mlfiRYFr+uW/qApsFVIuw1NH1qhE8gom8TnWQc
	0f+mythePp0YXqYA7kBIMRKafqDrPB+SpyC6aPpCuM5bQbroz/TQHZaYUVyar00ulop1pfvaNIARD
	6r0MZsm4VTQXHR49Xk4vsByeMLD4M0tymt8aUK6WFnQq+yjGAUFOx+tfHfY1Vvy0p2J6pbesjWbKH
	4SX8oU+6kRPclWPufBgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu9Bh-0000000BbI7-0Ph3;
	Thu, 04 Sep 2025 12:35:37 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu7mU-0000000B5gO-1uYg;
	Thu, 04 Sep 2025 11:05:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=PrZXrE8m4b6VE58jUKKj5WGOEJfOjU7pp7prPNE0Z9Y=; b=HP6SOgLB686PBk0qc6hRAnXjUl
	oPUd/osUYYtpYBh5wkx/Rfzj6j9ZinhRXVFxvPPYqhvXiolj2mhJRuRoehEWoowWGTrGM3TiOHV38
	c5ZVuOH8GhNJaiyknBgBhWrHz9HDxW0aZp7QzPzUZYluQWqgV4f2f5WzenHosRWXBBpf840z3gee6
	6pHV291CkgIU6+BzO2B+LSnW7XYPgFRsc96fcTTFqITKaD2WHoy4NDVJSFiiuDhUJlyQHn9LfmcL3
	rte8Tjwko4kcKaL4feZNoElphViui4rHHlfyVxYOm9zWw6EtBUjf9xTx8h2UIjVqtD2Simm5b576W
	fVnviNVA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:33562)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1uu7mL-000000001rr-0hSY;
	Thu, 04 Sep 2025 12:05:21 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1uu7mJ-000000001SE-17WY;
	Thu, 04 Sep 2025 12:05:19 +0100
Date: Thu, 4 Sep 2025 12:05:19 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Yao Zi <ziyao@disroot.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Jonas Karlman <jonas@kwiboo.se>, David Wu <david.wu@rock-chips.com>,
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH net] net: stmmac: dwmac-rk: Ensure clk_phy doesn't
 contain invalid address
Message-ID: <aLlyb6WvoBiBfUx3@shell.armlinux.org.uk>
References: <20250904031222.40953-3-ziyao@disroot.org>
 <aLlwv3v8ACha8b-3@shell.armlinux.org.uk>
 <b5fbeb3f-9962-444d-85b3-3b8a11f69266@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b5fbeb3f-9962-444d-85b3-3b8a11f69266@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_040530_505641_5E8A8794 
X-CRM114-Status: GOOD (  21.72  )
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

On Thu, Sep 04, 2025 at 07:03:10PM +0800, Chaoyi Chen wrote:
> 
> On 9/4/2025 6:58 PM, Russell King (Oracle) wrote:
> > On Thu, Sep 04, 2025 at 03:12:24AM +0000, Yao Zi wrote:
> > >   	if (plat->phy_node) {
> > >   		bsp_priv->clk_phy = of_clk_get(plat->phy_node, 0);
> > >   		ret = PTR_ERR_OR_ZERO(bsp_priv->clk_phy);
> > > -		/* If it is not integrated_phy, clk_phy is optional */
> > > +		/*
> > > +		 * If it is not integrated_phy, clk_phy is optional. But we must
> > > +		 * set bsp_priv->clk_phy to NULL if clk_phy isn't proivded, or
> > > +		 * the error code could be wrongly taken as an invalid pointer.
> > > +		 */
> > I'm concerned by this. This code is getting the first clock from the DT
> > description of the PHY. We don't know what type of PHY it is, or what
> > the DT description of that PHY might suggest that the first clock would
> > be.
> > 
> > However, we're geting it and setting it to 50MHz. What if the clock is
> > not what we think it is?
> 
> We only set integrated_phy to 50M, which are all known targets. For external PHYs, we do not perform frequency settings.

Same question concerning enabling and disabling another device's clock
that the other device should be handling.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
