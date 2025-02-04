Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6D8BC02193
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Feb 2025 19:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCkccTSdvUPMMe6ypDbbv17Wn055bc7Z52yt1/oTCXc=; b=f2XAudEOyINWi0
	A1GCqBvhYMGNDfKqmluljWUpRUtguo6BBEYvHUrv2Hkk1Qmvh7XWNmwky6M0/5ejYvzc7oMJcm/O3
	RV20bsH1X3fyPJ1TpDH7JCgzvqAJxlHzwmwu52GcBK/YbIopmSKZrfiztBm2D9Mzu4kaVXoOjdTCJ
	z3wCyJ80O2M/LjO+mlb4uMumapJyBhkGWlELiAQ7VLKImpHnVMfvvAMJKaorg7XoS17n7tPETSOEo
	1KcrrLYhrYEMXePFdYz0CFY8iX2yEbh4hwnApWLxqQAqNFgu8HUjG840yIN81JTXogHJ/YSGsr3bL
	wUbp9RVA3MzsA30LPzLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfP56-00000001SHY-1ZUq;
	Tue, 04 Feb 2025 19:59:36 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfOs5-00000001PP5-16wX;
	Tue, 04 Feb 2025 19:46:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=ouyIGRoRHutzUz66Y2cHQcMvqZJWhjqRJ8fahRg0FpI=; b=3buDB5fGFmO2PF9Z2zP1t/uh4G
	hEEbKntHnP7+fUZcZt1zxz1yOjr7WwWBjGaq/sKNZ3hq+keI5t9mh5LkNKu7fN8lO0ebNgldJmmr1
	7b21bZoJOjYuheY/s2UaY74VMsQjY9rWxUeVbKatxBifYOayRrSN4s/PMbD6q1YeEbng=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1tfOrm-00AxD1-Vs; Tue, 04 Feb 2025 20:45:50 +0100
Date: Tue, 4 Feb 2025 20:45:50 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Steven Price <steven.price@arm.com>, Chen-Yu Tsai <wens@csie.org>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	stable@vger.kernel.org
Subject: Re: [PATCH netdev] net: stmmac: dwmac-rk: Provide FIFO sizes for
 DWMAC 1000
Message-ID: <ed89be56-b616-4a14-aab2-294fddd89dae@lunn.ch>
References: <20250204161359.3335241-1-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250204161359.3335241-1-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250204_114609_312830_A82A96DD 
X-CRM114-Status: GOOD (  17.17  )
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

On Wed, Feb 05, 2025 at 12:13:59AM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> The DWMAC 1000 DMA capabilities register does not provide actual
> FIFO sizes, nor does the driver really care. If they are not
> provided via some other means, the driver will work fine, only
> disallowing changing the MTU setting.
> 
> The recent commit 8865d22656b4 ("net: stmmac: Specify hardware
> capability value when FIFO size isn't specified") changed this by
> requiring the FIFO sizes to be provided, breaking devices that were
> working just fine.
> 
> Provide the FIFO sizes through the driver's platform data, to not
> only fix the breakage, but also enable MTU changes. The FIFO sizes
> are confirmed to be the same across RK3288, RK3328, RK3399 and PX30,
> based on their respective manuals. It is likely that Rockchip
> synthesized their DWMAC 1000 with the same parameters on all their
> chips that have it.
> 
> Fixes: eaf4fac47807 ("net: stmmac: Do not accept invalid MTU values")
> Fixes: 8865d22656b4 ("net: stmmac: Specify hardware capability value when FIFO size isn't specified")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
> The reason for stable inclusion is not to fix the device breakage
> (which only broke in v6.14-rc1), but to provide the values so that MTU
> changes can work in older kernels.

Allowing the MTU to be changed is probably classed as a new feature,
not bug fix.

I _think_ this also allows flow control, which again is a new feature.

Please submit to net-next.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
