Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAA03D25926
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jan 2026 10:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ay4vX6hb8lO/6/NYHVW7Tekdwa/4YoZ0Y006rEm/etE=; b=4bTBYGVqt5tHp9
	cJv9hhguffaR+xepHBibTGHtJKaDCzofctaqDPdwbf05pt5QnRwvoWVVMCm5SYXyn+WJIpnuKyssf
	jNCWxIdgwyd3dddWKCcwB2OGMg5PdMNkx3ixMCLWsPCEeP4c0QQ0fDhRvrgYTuMItsu+xC92hr/V5
	ynVUzuakEx1pkaCErPjpV1ZEvSvYlxCVqEPsLP12SnLeDbEa/VGgT00GKxBEeh5Iyy714XdTCAPYs
	aeKUd8zllCH7s6qzFTZLkzC9qWxeCKJcHKChRfqx2u3ns2J7a4Gen4F5Tg+JNgI9XXrny6IRFGP8a
	YbujipL5jyZNMYpoFu1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl3Fp-0000000FsdA-0shY;
	Wed, 28 Jan 2026 10:58:33 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl3Fm-0000000Fsc7-1NJK;
	Wed, 28 Jan 2026 10:58:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=WjAk+WsIgQye24hk1wlnOeBf4+qL7selZY8821b7xpk=; b=CwoFBNrI6o1EDsfMPyR06myCUu
	3OPzbYpEHA8FfvNpBmhZDsAJCAivcsr1Pt9BOb+mv6zTqZNT5F6MUcJg+Ll3ZOkWJuOEU0YDTuRwM
	CEaMX6pYUj6bPKQmu8/HfeqR67aM/d4dgdinQ1M44009JCDAYgLb6EjS5l270KcJs4NEdqBEeAcE2
	UCft2R6RzQKHYSitLaZK4sPjDyKJ1mNWSDB6YI+uIOHk//b+3c5YhS/7TxiIy5wc2a3c2ji6BbUIY
	oZ6duDd6MTcj21yywJOQtZ7ufI3ZuZH2EPgM9nIydXx+GcSdFPoCb0U8bS67o3eNopZ8Q5ZTpNXty
	70PKtKtg==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:51056)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vl3Ff-000000007FI-0fEG;
	Wed, 28 Jan 2026 10:58:23 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vl3Fc-000000006uY-1acE;
	Wed, 28 Jan 2026 10:58:20 +0000
Date: Wed, 28 Jan 2026 10:58:20 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH net-next 0/3] net: stmmac: rk: second chunk of cleanups
Message-ID: <aXnrzIbZN-gaZTia@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260128_025830_371855_531FCAFE 
X-CRM114-Status: UNSURE (   7.91  )
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

Hi,

This series is a cut-down installment of the dwmac-rk cleanups, covering
up to the point that the AI review had its first issue with the patches.
Unfortunately, this means that we introduce ->init but do not add any
users for it yet. That will be in the next round once this has got
through AI review and merged.

 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 120 ++++++++++++-------------
 1 file changed, 57 insertions(+), 63 deletions(-)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
