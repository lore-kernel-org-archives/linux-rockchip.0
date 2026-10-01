Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10470CA5FC4
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Oct 2026 03:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aB4LPHdwAUGziRv4o2XrJGHVt8JKbUNImaiL1oFYOOQ=; b=U6gvUYfJ6Z7Y0a
	0eLmGFw3eri2VA6Lbu+Z9HOXOat/GYRrDPJhwKTj7Wll93aoydw3MBZZyQFf8ynlgHSFMuE0SyFNT
	PYaFwRhoFkIO5bxaZ8oaHCvwqZIyfHkGazEQesQ5TFaJ58+/F37iSNQ7kYIdn90B81ga/y98oXtvw
	QNvKfosrCKm1fjqollxEqwvdM4AVzpGdZyx6MYzvopQ54lZ/tdBNtdScYsPqzlkdjvoXiox67LoYq
	5tQesOpH53j9CzXZxpnc92ThLX0LZX/7heI6jzdZiDOG7eoE1kRG5l/Lwu918O7KKz6c2JShAoR10
	dJzsNQ1SEaG3JgNr8iMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC7Ct-00000007eV6-1wWp;
	Thu, 01 Oct 2026 03:11:39 +0000
Received: from sender-op-o15.zoho.eu ([136.143.169.15])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC7Cq-00000007eUg-0Fqe;
	Thu, 01 Oct 2026 03:11:37 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1790824275; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=TA98rY7jTz2jj7alFAwPg1bklk78328w21pi6qQAyFcve7JVLpa6vDve2UHWF2KXEIseb/cnKMuRm9+cbm2O3nBBvdHMdAC7tieAFh++j4b+dmx7zBpMWLxsKEVJ+lpQWAgNRjTgSiT8lMhPuIuQAsP0cc8P9/tq4LXsjKwroAs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1790824275; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=SYd2eZNTTjbXE4pCMExkA3U+Sr74a01zLGfHC1ZABrU=; 
	b=Ts4aE4gcocfsQ3oshOOYSOxDCcIWH3nFTzsDIObiVKNVX+RWr/NiQ9Z5gfMEzwFsDgc8EUADaAa5rZDTOS+DlQ8rCzbCYhojP7MDKgvvWmdjRO42h4xIsHQdQpXhNA0D/oUsRmtP1U0Rk8ia25wkPO44jsut9iUv7k4SX7cgoT8=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=iav.lv;
	spf=pass  smtp.mailfrom=iav@iav.lv;
	dmarc=pass header.from=<iav@iav.lv>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1790824275;
	s=zoho; d=iav.lv; i=iav@iav.lv;
	h=Date:Date:Message-ID:From:From:To:To:Cc:Cc:Subject:Subject:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=SYd2eZNTTjbXE4pCMExkA3U+Sr74a01zLGfHC1ZABrU=;
	b=RN+2+W7w+CfQBqJmePn5t6EBN2gvfJdzdhKxJpw6IKvYDYsJiPa35YWkj7tg1qv8
	XN1VZqovdOVRcoAyhnZD/NZdBnl4GOqKlIoV06+W9MQoZ9SpdmViouOmL9P0G9Aa5+1
	TP/Kf7Z4fA683oO6LXiWllHR1AEh+P71hX2SBl5M=
Received: by smtp.zoho.eu with SMTPS id 1790824271591284.1136497752825;
	Thu, 1 Oct 2026 05:11:11 +0200 (CEST)
Date: Thu, 01 Oct 2026 06:11:09 +0300
Message-ID: <ab67bccd76b55d7252c5380a37809656.iav@iav.lv>
From: Igor Velkov <iav@iav.lv>
To: Andrew Lunn <andrew@lunn.ch>
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
In-Reply-To: <1799630a-945e-49ca-b9d5-9e068c482cea@lunn.ch>
References: <20260930-dwmac-rk-phy-wol-v1-1-9fdc50bd9ae4@iav.lv>
 <1799630a-945e-49ca-b9d5-9e068c482cea@lunn.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_201136_374294_C0022465 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
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

On Wed, Sep 30, 2026 at 11:51:45PM +0200, Andrew Lunn wrote:
> You have not answered the question why is hangs? Given the current
> description, this just sounds like a workaround, not a fix.

It hangs because the PHY interrupt handler accesses the powered-down MAC.

stmmac sets mac_managed_pm, so mdio_bus_phy_suspend() returns before
setting irq_suspended and phy_interrupt() runs the handler at once.
rtl8211f_handle_interrupt() reads INSR over this GMAC's MDIO bus.
From rk_gmac_suspend() to suspend_late, and from resume_early to
rk_gmac_resume(), runtime PM is still enabled and that read reaches
the MAC with aclk_mac/pclk_mac gated.

On RK3399 such a read never completes: a test readl() right after
rk_gmac_powerdown() hung the board with no soft-lockup panic until
the hardware watchdog reset it (>5 min with the watchdog off).
Refusing MDIO access to the powered-down MAC: 10/10 suspends without
a hang; the same cycle script without it hung in 4 of 5 runs, each
time within three cycles. With the GMAC kept powered (v1): 45/45.

v2 will use device_wakeup_path(), and its Fixes tag will be
d65cb2e27e6e: that commit, not 6911308d7d11, stopped setting the MAC
wakeup flag.

pw-bot: cr

--
Igor Velkov

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
