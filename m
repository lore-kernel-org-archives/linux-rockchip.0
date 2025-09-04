Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F6BFCA1002
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Sep 2025 11:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6eNvnRpKEusSFxZ77NUSY94cyHT+cW79JQPkyzHlN6Y=; b=b98FPXC/lYojhI
	CtN938ZX0hRml6ueCe4CepPO1lvwDSSH+XtwK3Cwbd5W5RXzpCOMlI+hq/JKcoAPXhgRuSP4l6dfm
	tfdGZkpxpiL9EsrKa1WAkwdcPv1XSvFkpZ7SO+AjTS/C1Tx9SixBoksSMtnrgWqOnPRsrbMQRJsFq
	DzQ1W+o05ivkVvz6du381xpIXlnEtxglmlD4BFcOOd41cyA3n4c+/DoKNUt3L2SjCNL+ZJoCwQPVB
	/cIbINxBo1kkovot/J6MWokDQM1XGHUx4875TNQ0bpYi6eN2Q41LOezCBxiUn399uGt7oE8GSqVSe
	HnzmzYQtb8ConoVLzpMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu87m-0000000BDtB-1Pqv;
	Thu, 04 Sep 2025 11:27:30 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu7D0-0000000Atep-0ZoZ;
	Thu, 04 Sep 2025 10:28:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C7328445E6;
	Thu,  4 Sep 2025 10:28:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D167C4CEF0;
	Thu,  4 Sep 2025 10:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756981729;
	bh=ErbxO5/wHN1AdSE92UHPrTjG2PfFKUR4AzwDgopvUss=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ixWBUIU0YQ6tHk3M8l4X1k2WTRKz+XCz6x17USQfH+ncdZ8e4t2Q3J+D+nBd3IM7Y
	 L79xi2dgRFC3nUjxYbvHDOQSIz4wokb7+6qhNNyFj+u7aXL8jh+5T5WWdTPZTvJdtf
	 UBqrZXOMiVxMAr1y1NXwzNsk8rQHLXWuuKhdH2y9QTBCPd56LWBOZ6l2aNZp5K/TSU
	 3m4czHUCYKZjBnVAGNKlID1oHbgnvpiaxD3wALS/L6W0x4t8EM8hGI8zscn5KAaZg5
	 sPKI+0kvR6HP1PNqZqYm53WHFvUfudFYgg+OLGHnzT6N5kaN6CQxiD7uU/u++e2zZZ
	 5qTCOt0zPLzTw==
Date: Thu, 4 Sep 2025 11:28:45 +0100
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
Message-ID: <20250904102845.GG372207@horms.kernel.org>
References: <20250904031222.40953-3-ziyao@disroot.org>
 <20250904095457.GE372207@horms.kernel.org>
 <20250904095657.GF372207@horms.kernel.org>
 <aLlleb271owHNIbt@pie>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aLlleb271owHNIbt@pie>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_032850_194188_4E51C8E9 
X-CRM114-Status: GOOD (  25.89  )
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

On Thu, Sep 04, 2025 at 10:10:01AM +0000, Yao Zi wrote:
> On Thu, Sep 04, 2025 at 10:56:57AM +0100, Simon Horman wrote:
> > On Thu, Sep 04, 2025 at 10:54:57AM +0100, Simon Horman wrote:
> > > On Thu, Sep 04, 2025 at 03:12:24AM +0000, Yao Zi wrote:
> > > > We must set the clk_phy pointer to NULL to indicating it isn't available
> > > > if the optional phy clock couldn't be obtained. Otherwise the error code
> > > > returned by of_clk_get() could be wrongly taken as an address, causing
> > > > invalid pointer dereference when later clk_phy is passed to
> > > > clk_prepare_enable().
> > > > 
> > > > Fixes: da114122b831 ("net: ethernet: stmmac: dwmac-rk: Make the clk_phy could be used for external phy")
> > > > Signed-off-by: Yao Zi <ziyao@disroot.org>
> > > 
> > > ...
> > > 
> > > Hi,
> > > 
> > > I this patch doesn't seem to match upstream code.
> > > 
> > > Looking over the upstream code, it seems to me that
> > > going into the code in question .clk_phy should
> > > be NULL, as bsp_priv it is allocated using devm_kzalloc()
> > > over in rk_gmac_setup()
> > > 
> > > While the upstream version of the code your patch modifies
> > > is as follows. And doesn't touch .clk_phy if integrated_phy is not set.
> > > 
> > >         if (plat->phy_node && bsp_priv->integrated_phy) {
> > >                 bsp_priv->clk_phy = of_clk_get(plat->phy_node, 0);
> > >                 ret = PTR_ERR_OR_ZERO(bsp_priv->clk_phy);
> > >                 if (ret)
> > >                         return dev_err_probe(dev, ret, "Cannot get PHY clock\n");
> > >                 clk_set_rate(bsp_priv->clk_phy, 50000000);
> > >         }
> > > 
> > > Am I missing something?
> > 
> > Oops, I missed that da114122b831 is present in net-next (but not net).
> > Let me look over this a second time.
> 
> Oops, yes. Though this is a fix patch, it should target net-next instead
> of net since the commit causing problems hasn't landed in net. Sorry for
> the confusion.

It's ok. I'm pretty good at confusing myself without any assistance.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
