Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4651C282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 22:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uiWdho0qPm+7hOuf5C8vZhgxf9gUMHybntWO+/SrEJU=; b=RC/fMtNT0V6M0T
	zsFTQ99gIEVlor8wRCuYZs3hEZKBsnfGVLqNNENUdwon96N5eNYmt0oVZldRYtQOTzvUjt5RsoEBf
	u3ZgRLLZ7WZGDU6TYLZyU/liahsBC7y3C9ChQHWQCCkRGMJjzj0HtSx8WM9daSrWb1FXTPt9WtB/9
	6S3av9q/URur00Wyb9hJaulbQ7M9MDxwArLtxWsSXciqt25rVC8QUj9g4K6CwRx1Z0Y0chUCube38
	ewJiydqOSMOvIx44vBHHph5BxJUUFf/btb/YYKGOsdTe9+7aqU0sqm4CUDah8VXqVpUQhcAhpalbR
	wk4Bz/SFpIf65ZhtCkCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqJTv-0000000CL4R-1QN9;
	Thu, 06 Mar 2025 22:14:19 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqJTt-0000000CL3o-1f7S
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 22:14:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1741299254;
 bh=ywH7Q8mbcPn4w2SCHmS2eCxM0WaPqI6rsN6MI+52pMk=;
 b=hnS6mHD9BnxrC3+YmX4IN670cpfXM4MgVlzueTGTZMyRSAY9ljxibKvAnaZ5zYO9XPAtxKuvx
 arTWZnnwQY1kUBMb6Lpc3WMUtLPJlEJWrH2+slUW1JPfwOv3ZR0aPPKsQFDNRY+KkP64aZyinPM
 lCL48Yz/wmn9Ca83rDZX9KYqz0WTPOASKaoAOnB298yYHNpqFbfF4CkyG7E/hEm5LPUvWnfMETW
 FA9IjxbfNBStDXIle98mjFtzqARQGmdchdE8Bd+pVmZJF2m+j526ST8ZtBYwUmNGWMwbRjfnyXD
 Sb7UVsz6T4lXtf0HjGlDTPx8BMLEEl8hbuwzV/d64SLQ==
X-Forward-Email-ID: 67ca1e30c1763851c065bfe9
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/4] rockchip: Enable Ethernet controller on Radxa E20C
Date: Thu,  6 Mar 2025 22:13:53 +0000
Message-ID: <20250306221402.1704196-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_141417_475140_159AB477 
X-CRM114-Status: UNSURE (   9.71  )
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

The Rockchip RK3528 has two Ethernet controllers, one 100/10 MAC to be
used with the integrated PHY and a second 1000/100/10 MAC to be used
with an external Ethernet PHY.

This series add initial support for the Ethernet controllers found in
RK3528 and enable the LAN interface on Radxa E20C.

This only add a bare minimum gmac0 node for the 100/10 MAC and skip e.g.
parts to power on and off the integrated PHY in GMAC driver becayse I do
not have any RK3528 device that make use of gmac0.

This series depends on the "net: stmmac: dwmac-rk: Validate rockchip,grf
and php-grf during probe" cleanup series to ensure bsp_priv->grf can be
used. And possible also on the leds+buttons, sdio+sdmmc and sdhci series
for RK3528 for a clean apply.

David Wu (1):
  ethernet: stmmac: dwmac-rk: Add GMAC support for RK3528

Jonas Karlman (3):
  dt-bindings: net: rockchip-dwmac: Add compatible string for RK3528
  arm64: dts: rockchip: Add GMAC nodes for RK3528
  arm64: dts: rockchip: Enable Ethernet controller on Radxa E20C

 .../bindings/net/rockchip-dwmac.yaml          |   4 +-
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   |  30 ++++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      |  92 ++++++++++++
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 132 ++++++++++++++++++
 4 files changed, 257 insertions(+), 1 deletion(-)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
