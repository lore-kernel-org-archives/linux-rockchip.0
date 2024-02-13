Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40498C48BEC
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 16:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h5IPD2anVPrujsjN0rHqmNewsYHeNZ0ql5Nxfb+GEZg=; b=0YghRcG3PCPv7X
	PwnxGzCZsgvyeNSo2NiAodRedUtcAPpYYI/BDaeOQnFepld+LNSESgrhT3SnJoyvwUJyPDmRwORBF
	HZGxKG8BlFRqiQUGsCC1kUqomjtN3xkh6E1b7oyTHBbZkhk/1xuqg5yjOHsmEg7hlJ7FGg8nDlgYS
	zV9tsINX9GKA17hPeU2uuKcU64M+t96oqGO4W/rP1X6ZnbGh1yFexyognLZ2jqfPkizd5FyP/pX6n
	d+NyS+DzZ7kVAdWsOi4nEu6+aJk5J1CGjoHW6e/1fa6wHkG4R+IKxgScN5/doSQoIVkRaCxxM9D/f
	ohwETeFDi0pRe7lvt5Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZvlb-00000009yIK-2x01;
	Tue, 13 Feb 2024 16:36:19 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZvlW-00000009yDe-39iR;
	Tue, 13 Feb 2024 16:36:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707842171;
	bh=tTsD+mIweRSyvF3kzqeplej243uAAw1oTRST1KUyAAM=;
	h=From:To:Cc:Subject:Date:From;
	b=BLSffZfUMwr5EAZR9bLqh9WTEEwDcB1Ls7ivzoKaHDerfIirHx75fG5uCvV2JPAyA
	 P4XfijvVIefyrhRXzMG0sAveluchRmBSOk03uFu6WmTP3adQg+SJLnY6t1waEgTbos
	 tQ0/QAMf8Eqx1VFGCYAuxrieWWgQUgz2rBvBqlLMyjwXsECIfo4BsTzJ6QW4xOGm3p
	 hjxga92jzqn7w4GMMmEc44qfX6H1g8wtttM1lR0S0lyc/0DqeBOag7ke4q6wqtn+Xl
	 b1f7LDSD1hpLK1dSf0dVfRwaGt7kcVLNe0eW017WgBZ/4ZLAE7oFsonN7DpduIIgiz
	 kQTZeF8z7dbew==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 55BF83781123;
	Tue, 13 Feb 2024 16:36:11 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id EE76E4800CE; Tue, 13 Feb 2024 17:36:10 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v2 00/12] RK3588 USBDP support
Date: Tue, 13 Feb 2024 17:32:34 +0100
Message-ID: <20240213163609.44930-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_083614_965236_29CCCD44 
X-CRM114-Status: GOOD (  17.43  )
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

This adds Rockchip RK3588 USBDP PHY support, which is used for two of the three
USB3 controllers in the RK3588 (the third one uses a different PHY, which is
already supported). The USBDP PHY offers USB3 dual-role and DisplayPort. The
driver and bindings being upstreamed contains the DP parts, but only USB3 has
been tested by me (upstream does not yet have a DRM DP bridge driver for this
platform).

What has been tested by me:
 - USB3 Type A ports on Rock 5A, Rock 5B, EVB1
 - USB Type C port on EVB1 in Host mode

I did not yet include a patch to enable the Type-C from the Rock 5B, since that
requires enabling proper support for the fusb302. Since the system is usually
supplied via USB-C and without any battery backup, this easily results in
system reset when the power-delivery negotiation happens. As this issue is
independent from the USBDP PHY, I skipped enabling that port on Rock 5B for
now.

You can find a branch with these patches here:

https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commits/rk3588-usbdp

The binding updates introduces one DT warning, for vo1 grf, which is already
upstream and does not describe its clock. Fixing that requires this series,
which adds the necessary clock ID for vo1:

https://lore.kernel.org/linux-rockchip/20240126182919.48402-1-sebastian.reichel@collabora.com/T/#mbc27d87270f7f182fb85bf1ceaf03b902688cbb8

Changes since PATCHv1:
 * https://lore.kernel.org/all/20240209181831.104687-1-sebastian.reichel@collabora.com/
 * VO GRF DT binding: Collect Acked-by from Conor Dooley
 * USB3 syscon DT binding: Collect Acked-by from Conor Dooley
 * USBDP PHY DT binding: fix spelling
 * USBDP PHY DT binding: add maxItems: 1 to gpios
 * USBDP PHY driver: use rk_udphy_ prefix everywhere
 * USBDP PHY DT addition: fix nodenames and property order
 * USBDP PHY DT addition: fix position of the GRF nodes
 * add new patches fixing existing USB2 PHY nodenames/property order

Not changed:
 * rockchip,dp-lane-mux: Why "mux" and not "map"?
  - This is about muxing DP lanes vs USB3 lanes. I kept mux instead
    of map, since that's used downstream and there does not seem to
    be a good reason to diverge?

-- Sebastian

Sebastian Reichel (12):
  dt-bindings: soc: rockchip: add clock to RK3588 VO grf
  dt-bindings: soc: rockchip: add rk3588 USB3 syscon
  dt-bindings: phy: add rockchip usbdp combo phy document
  phy: rockchip: add usbdp combo phy driver
  arm64: defconfig: enable Rockchip Samsung USBDP PHY
  arm64: dts: rockchip: Fix usb2phy nodename for rk3588
  arm64: dts: rockchip: reorder usb2phy properties for rk3588
  arm64: dts: rockchip: add USBDP phys on rk3588
  arm64: dts: rockchip: add USB3 DRD controllers on rk3588
  arm64: dts: rockchip: add USB3 to rk3588-evb1
  arm64: dts: rockchip: add upper USB3 port to rock-5a
  arm64: dts: rockchip: add lower USB3 port to rock-5b

 .../bindings/phy/phy-rockchip-usbdp.yaml      |  169 ++
 .../devicetree/bindings/soc/rockchip/grf.yaml |   21 +
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     |  151 ++
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |   21 +
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      |   81 +
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   22 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  114 +-
 arch/arm64/configs/defconfig                  |    1 +
 drivers/phy/rockchip/Kconfig                  |   12 +
 drivers/phy/rockchip/Makefile                 |    1 +
 drivers/phy/rockchip/phy-rockchip-usbdp.c     | 1639 +++++++++++++++++
 11 files changed, 2222 insertions(+), 10 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
 create mode 100644 drivers/phy/rockchip/phy-rockchip-usbdp.c

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
