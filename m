Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F8A9C35FFA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Mar 2025 21:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xLIs+eA8Tru/rdvd7N/LcQxB+/bxgn/OC595IfQ4VQ4=; b=QE8N7q3Ub2SKJ5
	mIX3bWAjFN0gv86lWzsu7eySJsNHj91ioG5+/pe3nLib8lM/1X8oFzlI2En033kyGReCQXgX0D9xO
	kwhDTm7llVaNF8gcpSp9+P/yVJGGmh/Nwny8c6X8WEY8YN87A4nvwgX9E/tbcKDkAvY4CstL5onCr
	+oCQjQ5WnbaIA3aCSVmW10AFa9pVtvScOTJZtLhPwci8T8DwrZxg2LDKLnhvryXoaCgWNfjqQPpby
	U932YuF0afFn11aMBi2UHGe87WnwGCYSvx+ClViKnf7gntk2GdgVWIIgrPEQ8FJk7XZPi2/2rCJ5P
	KPHJ9ENVUg0eAmqDgF6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv1Gd-0000000ABtP-23Xu;
	Wed, 19 Mar 2025 21:48:03 +0000
Received: from smtp.forwardemail.net ([121.127.44.59])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv1DH-0000000ABHx-0P6i
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Mar 2025 21:44:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1742420672;
 bh=hs6Pwio3uOKO/Rs8ESj0aY1nLaXKMEYE6oUslcHF8n0=;
 b=azGONhyCIQRyMaJNXc0nNSECG7O35dUQ9lBNvFtYXWQ5I1ahDj6+5CFavcKVYp91Q9Y11o4Ss
 Yeo+eoaKQ455pKlA0tKMoM9GunpBwKQGYOZ+LtaDBKP4cQZBEVU+pH87hNKc05XGLKlMtl6jxma
 0KSgf/9Scx9kMlHP66UHQP22eMdXl4MR4S8nl4mqzkaVTzohJ6Mo7eaHlzn5vjn6E/yEa6WohpO
 0wbHdUI0AxBVUGa9ksDt2YNmmFvIKjfwiTmk9M7sJX8lgXJ1JJhqDpN2MEpFSnJzpzjgB/MDdZ3
 AJ2EGciOsrvo1EFmH46ot4K2vy5ekC1x0CUlDZbujPAQ==
X-Forward-Email-ID: 67db3ab6cf4d592372b993d9
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
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
	Paolo Abeni <pabeni@redhat.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Wu <david.wu@rock-chips.com>,
	Yao Zi <ziyao@disroot.org>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH net-next v3 0/5] net: stmmac: dwmac-rk: Add GMAC support for RK3528
Date: Wed, 19 Mar 2025 21:44:04 +0000
Message-ID: <20250319214415.3086027-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_144435_219472_EE9AEDF0 
X-CRM114-Status: UNSURE (   8.23  )
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
RK3528 and initial support to power up/down the integrated PHY.

Changes in v3:
- Rebase on latest net-next/main
- Collect r-b tag on dt-bindings patch
Link to v2: https://lore.kernel.org/r/20250309232622.1498084-1-jonas@kwiboo.se

Changes in v2:
- Restrict the minItems: 4 change to rockchip,rk3528-gmac
- Add initial support to power up/down the integrated PHY in RK3528
- Split device tree changes into a separate series
Link to v1: https://lore.kernel.org/r/20250306221402.1704196-1-jonas@kwiboo.se

David Wu (1):
  net: stmmac: dwmac-rk: Add GMAC support for RK3528

Jonas Karlman (4):
  dt-bindings: net: rockchip-dwmac: Add compatible string for RK3528
  net: stmmac: dwmac-rk: Move integrated_phy_powerup/down functions
  net: stmmac: dwmac-rk: Add integrated_phy_powerdown operation
  net: stmmac: dwmac-rk: Add initial support for RK3528 integrated PHY

 .../bindings/net/rockchip-dwmac.yaml          |  16 +-
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 277 ++++++++++++++----
 2 files changed, 242 insertions(+), 51 deletions(-)

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
