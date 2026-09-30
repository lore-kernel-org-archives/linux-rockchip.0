Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E0E1CA5FCC
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2026 21:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2uVy0hSBE29/vvaLGgYvZLiUzLryAWmhzugoeBKqa4=; b=OUxHxi0jETOOkP
	JYzv89mbF2wdsli7yHRL7hRvKmuorQz6+zZ1gcfDLD3VsoE2lzfdW2bjrb2gmNjxLMh4ekTpeRPop
	Mo1aV5NDfuip5/SAaNjCqLpKrTFJct1IXD4MrwP5AlHEaIc+tyHaNTs6t2cYbmnh17VJQD2i0y+F/
	PifNLPuRSNYWDyJl9N3ruMWzxqgKNiVnphlzswOPYX0ClsbISwWuPGEiBP30ZqWy3m88gHP6Ryfvj
	g+O5OcPe2pI2bWbIAWRIXnT4DVY5uTm1wD5OlLnc4T6E3TTFocajBBI3dByApwjuuV2gKdK7apawA
	/vUC1IxGmvetN+mpuQ7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC2Dd-00000007Jvp-1gRi;
	Wed, 30 Sep 2026 21:52:05 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC2Da-00000007JtQ-1nIf;
	Wed, 30 Sep 2026 21:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=FD05RHOFRGfYmVLDxBq8IkkAKhJy/zrMPVkcJKQGgug=; b=4CCUkl9IfkEKMKG8R7waFOW7Zo
	sx5Jids8oyB/TLZO5vpfgAqsaJbVlAPBjWEcT1l715xC/SlHu94aUEQgVrm2TxsRknWwBWJrNjF4M
	iLyXmjKvlsGc8qHDfXaHcA6uTTXTF0uYdDOqw0e2JwNxaJSuJy1F24YagV0Q3BYiv1yY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1xC2DJ-008FQg-Nn; Wed, 30 Sep 2026 23:51:45 +0200
Date: Wed, 30 Sep 2026 23:51:45 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: iav@iav.lv
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Eric Dumazet <edumazet@kernel.org>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net] net: stmmac: dwmac-rk: keep the GMAC powered when
 the PHY wakes the system
Message-ID: <1799630a-945e-49ca-b9d5-9e068c482cea@lunn.ch>
References: <20260930-dwmac-rk-phy-wol-v1-1-9fdc50bd9ae4@iav.lv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260930-dwmac-rk-phy-wol-v1-1-9fdc50bd9ae4@iav.lv>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_145202_467485_040742F9 
X-CRM114-Status: GOOD (  10.89  )
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

On Wed, Sep 30, 2026 at 07:34:45PM +0000, Igor Velkov via B4 Relay wrote:
> From: Igor Velkov <iav@iav.lv>
> 
> Since commit 6911308d7d11 ("net: stmmac: convert to phylink-managed
> Wake-on-Lan"), the MAC device gets its wakeup flag only when the MAC
> handles Wake-on-LAN itself. When the PHY handles it, device_may_wakeup()
> is false for the MAC, and rk_gmac_suspend() powers the GMAC down: its
> clocks stop and phy-supply is released.
> 
> On Helios64 (RTL8211F, Wake-on-LAN in the PHY) the board then hangs on
> the first or second suspend with a magic-packet wake.

You have not answered the question why is hangs? Given the current
description, this just sounds like a workaround, not a fix.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
