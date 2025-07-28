Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 875C4C87FC9
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jul 2025 10:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=th4cz1ZG3zn8UldGMAKkXhDE7OF1iZQfqZ6hWV2NugY=; b=CdlQIQ86HXGEdl
	CWayckrqp99VWIT+lzJSNhX/I+o9+i12yj1OMELtXlcj8449zDujbZ8iRY/0m30sn7aBNdjfH3Y5k
	Kj1o8e361jNrw910u82ty69hjc8yqOD/NfjZVh4VRKsrhxD6uONVvrzYKeom3hZCRBk/Ir/jmphZn
	6ckwInJPf6HiuqS+hVvgQ5UFSQRH4Jit2QYL20G/hchQ7jFTemfqaHaHtTVYAQzG1hVbZccBbyjvL
	WObSJycZAFhABG3ju1UnqSPmbUl+nLuMh/miS4cpS3M1+hAj+AtPTULhc2bYMod7kNGyba7JU3mzd
	hFlOChQl/lVN7M3sNNzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugLAL-0000000EF3R-3fmy;
	Mon, 28 Jul 2025 10:33:09 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugL7o-0000000EEh6-3Pk4;
	Mon, 28 Jul 2025 10:30:34 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id D60E42072F;
	Mon, 28 Jul 2025 12:30:29 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hQED-crO9Jye; Mon, 28 Jul 2025 12:30:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1753698628; bh=jSpz3ZqNo1DKtrmKgUQO2U/uGqVFys+hvUVK/NIUdzI=;
	h=From:To:Cc:Subject:Date;
	b=dHDeHco/I06vbOKOHf9r4qBuYKA+HL6FmDa+OWPx+LnVskHS9RjpRbPO+GvM/aqOg
	 Iz14cNCW/uyV3J0UDEsvnSCWyc5ee0YjrlmWCFADoyz66AiMFCwAT9iizw4/u1aZIz
	 wdn1WgcEjZSp3qj2p8BGuyFu3Kxl6R26a57OtzkahrzTo+qt3BvR88Qk7sWRZ2Qd1K
	 c88yC4OO0TtjIHPuiLIEtJsvWZOy7SyiwoP+y9pGE92FgJtWvvDXBhrwWMhRsdSKJo
	 rEsRNYSom8RO+gaE8rHrCIgAWJrZpPc056xbwOg1jnP8KHSj0X2yTGj6s9zDMFzPO+
	 m5Cc3kT/1DzWw==
From: Yao Zi <ziyao@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Yao Zi <ziyao@disroot.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/6] Support RK3528 variant of Rockchip naneng-combphy
Date: Mon, 28 Jul 2025 10:29:42 +0000
Message-ID: <20250728102947.38984-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250728_033033_280374_7CA0CF09 
X-CRM114-Status: GOOD (  10.41  )
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

Rockchip RK3528 ships a naneng-combphy that operates in either PCIe or
USB 3.0 mode. It has a similar control logic to previous generations of
naneng-combphy but an apparently different register layout.

This series prepares phy-rockchip-naneng-combphy.c for variants with a
different register layout and add RK3528 support.

Testing is done on both Radxa E20C and Radxa Rock 2A with downstream           devicetree changes, both USB 3 and PCIe modes are verified with mainline
driver, and reach a reasonable speed.

This series depends on patch "phy: rockchip: naneng-combphy: Enable U3
OTG port for RK3568"[1], and the dts patch depends on v2 of patch
"arm64: dts: rockchip: convert rk3528 power-domains to dt-binding
constants"[2] to build.

[1]: https://lore.kernel.org/all/20250723072324.2246498-1-jonas@kwiboo.se/
[2]: https://lore.kernel.org/all/20250620201715.1572609-1-heiko@sntech.de/

Changed from v4
- Collect review tags
- Add extra handling of USB3OTG_CON1 when operating in USB3 mode
- Link to v4: https://lore.kernel.org/all/20250624033733.50197-1-ziyao@disroot.org/
Changed from v3
- Add a dt-binding patch to allow power-domains property when describing
  Rockchip naneng combphys
- devicetree patch
  - Break down long lines
  - Sort properties to keep the style consistent
  - Add power-domains property to the combphy node
- Link to v3: https://lore.kernel.org/linux-rockchip/20250519161612.14261-1-ziyao@disroot.org/
Changed from v2
- phy binding patch
  - Fix format issue
  - drop review tags
- Link to v2: https://lore.kernel.org/all/20250509004121.36058-2-ziyao@disroot.
org/
Changed from v1
- Collect review tags
- Restyle RK3528 register definitions in the combphy driver
- Drop unused include of phy.h in SoC devicetree
- Link to v1: https://lore.kernel.org/all/20250508134332.14668-2-ziyao@disroo
t.org/

Yao Zi (6):
  dt-bindings: soc: rockchip: Add RK3528 pipe-phy GRF syscon
  dt-bindings: phy: rockchip: naneng-combphy: Add power-domains property
  dt-bindings: phy: rockchip: naneng-combphy: Add RK3528 variant
  phy: rockchip: naneng-combphy: Add SoC prefix to register definitions
  phy: rockchip: naneng-combphy: Add RK3528 support
  arm64: dts: rockchip: Add naneng-combphy for RK3528

 .../phy/phy-rockchip-naneng-combphy.yaml      |   8 +-
 .../devicetree/bindings/soc/rockchip/grf.yaml |   1 +
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      |  24 +
 .../rockchip/phy-rockchip-naneng-combphy.c    | 749 +++++++++++-------
 4 files changed, 508 insertions(+), 274 deletions(-)

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
