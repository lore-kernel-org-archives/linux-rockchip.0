Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1339C28B2F
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 23:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VZVSd1+i2X4WxTPSU5FZ+PW2sT/DeeuA/B6GNbaJWL4=; b=NFYxR5ZrKIx/5z
	/ysYGdh5RlbOZBsQVffMljyydrGn9Y4nbPkylz5v8g7j9g1536gZsM8hsge0dngvCp6uMNCONmNhJ
	xzVX803DKnf9v9UOmf9iGDkVndYW+aq5fZHdHXj7DZut1Yinmr4YxJXZ89jMd+tlC/PGEJ8HdbX4f
	ntbLMnzPP5L7BPeGe92Pwn5zodbbCsgDB2gcX0bct9eAfk7WiNYEt24UnoBYUKNNt5SUorIsUYlG1
	22Bn/YXdrsbD6fdSi6VgiuBautPSJorHN4P5GXD5U0P/XWENa+h5UCXASDT2wSEJfr6pQ7coGXrPP
	cNtYtVPq9G4d2deuOIQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trQ83-00000001H8l-0q60;
	Sun, 09 Mar 2025 23:32:19 +0000
Received: from [2a02:6ea0:d71e::9] (helo=smtp.forwardemail.net)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trQ3A-00000001GI2-1WEV
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Mar 2025 23:27:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1741562797;
 bh=uhqn9V7B8sVTHcezMkHZ/uQLEm9iylzgvIMWhThJmFw=;
 b=jdVdj+0I94VzS37KQUhM67IJy2C0aYC4RKcbdZ1BFnftTqutcDGwoVcri5lpaSTu7CNQidLat
 e9GyAslK6xpe31d/uoD8G8FUq4P0EXEqRhmWrPLiautRxuDrC83BwJhkAistfUr4xkY2tFiSrDN
 pT7C3gOXPp1Wu/RCmYYDTPDRgUVCWpgJNs2VCjhzH15qh7SGG/KtJNQ9ZvaCVOkUx9XwLZWgrxk
 ntLyvo2dCpfO/g4ftq1n5qNT0BnN3XPb1ykC6T3HOZBRYPhWdAhTlTihH49msH5cpJNSxG4gvCY
 unJgMx38+vDJDRJZPSIFPZ+Jsle3A6DztabzrvhMr/Dg==
X-Forward-Email-ID: 67ce23a55209992d7c670e59
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
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
Subject: [PATCH v2 0/5] net: stmmac: dwmac-rk: Add GMAC support for RK3528
Date: Sun,  9 Mar 2025 23:26:10 +0000
Message-ID: <20250309232622.1498084-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_162716_802935_45DCEF77 
X-CRM114-Status: UNSURE (   8.37  )
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

This series depends on v2 of the "net: stmmac: dwmac-rk: Validate GRF
and peripheral GRF during probe" [1] cleanup series.


Changes in v2:
- Restrict the minItems: 4 change to rockchip,rk3528-gmac
- Add initial support to power up/down the integrated PHY in RK3528
- Split device tree changes into a separate series

[1] https://lore.kernel.org/r/20250308213720.2517944-1-jonas@kwiboo.se/

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
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
