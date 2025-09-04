Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06B79CA1002
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Sep 2025 10:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/xZutwaL0ZbU4Ow5JWC45asSy+iRqLDKb7GS4Ov0G4=; b=umD9lfAMncQWsT
	pwo1nS+bLwf4K3xhBhR425FOdZZV5T/WGNFuw9kXJdgw0gd98HSKk2Z+EyosQKsiLlOWrJKG6RE0T
	GiJy5lceJzBxdsNr/suUBLAIt2vLZyYmWVKBKQdMt+uMFbT/r5tdNUz4Oijr6RuvYZqZNoFC/db35
	mcWPARw37EIk1kGbRdqfNAPbXuaZSnfHPFfp6J54ZWLPdJ7+3PAw7mkyPUllgLaf7M6ozfcOCqLLh
	Tbq1ul0iaA1vyfo/E3ddjYYEUHcNKpNdo8/1xoZC4Cvcp2ymHZ9mKNeBvyBxN/FwbJoDC5sShmaRO
	k4R1QzTHfjPYGRNBCqnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu7gg-0000000B3ry-1CiV;
	Thu, 04 Sep 2025 10:59:30 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu6iG-0000000Ai6H-2Kot;
	Thu, 04 Sep 2025 09:57:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A3BC260202;
	Thu,  4 Sep 2025 09:57:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5508C4CEF0;
	Thu,  4 Sep 2025 09:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756979822;
	bh=Mr3XGbhvMQum++WN/lI8qNzkak39gyYMn/Hwp8A8pV4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fj8sq+mgo4dfxA5yYQzsWdjJrzopo8xjxcP55pLDVCdIYJX23w2mbI5w9ZBiWursc
	 jbB4qXTb+q9JVhmeeUHzq57A0DfFP75EugVf4ShFtHyWrx9pvig6V/du2iNQ5L6CvH
	 fh1LjNoheXSZvmggQwqStAds4c0Xz4imFgNEqBbQ99ZeLlDN++1/ksDWDRJbekGnUY
	 vUcHGKCHV2ImQEGxjjdSNxVNY84eWqNxaev0mtKagsTLaZ9V8+2yN9dvnua6p/uU0W
	 lw1SOQdyZaH0GHe5ccvEJh4ruq+DYW6X9HytsBHc7O+VaImvtkInuY1ZB0gLW5Hbza
	 EnLwKSRA5uohQ==
Date: Thu, 4 Sep 2025 10:56:57 +0100
From: Simon Horman <horms@kernel.org>
To: Yao Zi <ziyao@disroot.org>
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
Message-ID: <20250904095657.GF372207@horms.kernel.org>
References: <20250904031222.40953-3-ziyao@disroot.org>
 <20250904095457.GE372207@horms.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250904095457.GE372207@horms.kernel.org>
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

On Thu, Sep 04, 2025 at 10:54:57AM +0100, Simon Horman wrote:
> On Thu, Sep 04, 2025 at 03:12:24AM +0000, Yao Zi wrote:
> > We must set the clk_phy pointer to NULL to indicating it isn't available
> > if the optional phy clock couldn't be obtained. Otherwise the error code
> > returned by of_clk_get() could be wrongly taken as an address, causing
> > invalid pointer dereference when later clk_phy is passed to
> > clk_prepare_enable().
> > 
> > Fixes: da114122b831 ("net: ethernet: stmmac: dwmac-rk: Make the clk_phy could be used for external phy")
> > Signed-off-by: Yao Zi <ziyao@disroot.org>
> 
> ...
> 
> Hi,
> 
> I this patch doesn't seem to match upstream code.
> 
> Looking over the upstream code, it seems to me that
> going into the code in question .clk_phy should
> be NULL, as bsp_priv it is allocated using devm_kzalloc()
> over in rk_gmac_setup()
> 
> While the upstream version of the code your patch modifies
> is as follows. And doesn't touch .clk_phy if integrated_phy is not set.
> 
>         if (plat->phy_node && bsp_priv->integrated_phy) {
>                 bsp_priv->clk_phy = of_clk_get(plat->phy_node, 0);
>                 ret = PTR_ERR_OR_ZERO(bsp_priv->clk_phy);
>                 if (ret)
>                         return dev_err_probe(dev, ret, "Cannot get PHY clock\n");
>                 clk_set_rate(bsp_priv->clk_phy, 50000000);
>         }
> 
> Am I missing something?

Oops, I missed that da114122b831 is present in net-next (but not net).
Let me look over this a second time.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
