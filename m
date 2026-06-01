Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68D0ACD6E65
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 16:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RRtyhK2I4Pbv9U0533OYcwOB3tsODJb5KURCYEC0VWQ=; b=Xq3VWU0istiYTx
	sGCQXsexKIOQ10SAzGtCoYx+XGywYvwZGNFbibChjt6HAix4I5Cv/ybgY1XUWmZXf0XAASs1D7q/o
	ltn60aqCcb6z7A6OcRnhTJC3cgYlKKlZf+XM1IT7CeJYGioItnwWltQ9G6sNnjjacgvK3QnWfu5ho
	QSY5qbzjpcE6SFrxmqSKdObGZDSpZUWEpnjEAT/1DvirROvQxRvCFkalYH0oUh/oGJJG0OGOwtqZL
	b83tGzEhuEO/iTzYWRFV4wROVKzj/MFVcdA6kzX0bRLPJB1mRAa2FGYbAf9BP15iDNkcBQ+D1UNy1
	ShE/wNrEshaE7e2xASjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU59n-0000000BQnC-38cG;
	Mon, 01 Jun 2026 16:06:27 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU59k-0000000BQlu-340U
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 16:06:26 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-36d5fd50d20so1577101a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 09:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780329984; x=1780934784; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZOW9HKlKoTKY1oUKJi7UP051gVLaLxiL0BRWcGTFTec=;
        b=Wq3sYFHAoKTHYim8jnMlwZJKcApySGFoFD/t1OTZOeDSbvA1CvNBxdXqI1EDI//QR5
         9fXV9l/6F42hIKrGAZxl0adElO4PwBv0lM66FgmyKVLPvNL4eZxstD6oHEevZ5nMdTTD
         K9m4HWNeufiyrl9guaPxudtKTmFenmmjY1NCPKRQGec2tqpCAgv/T6o3K8JUQnu7hS1A
         Gw8iTPT+DXgyHroUraRFo0ffXewCuIT6Do2Iqf5C5j+wEicJ5kvVm+NbvYGOy7u9WR8x
         tlF8AKSYHFW03duOBokBogJ5+kMFa+XXbjWAJrrmV7buY8xoQExlddpPpdskGVZWHnRV
         o/WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780329984; x=1780934784;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZOW9HKlKoTKY1oUKJi7UP051gVLaLxiL0BRWcGTFTec=;
        b=K7ZV8byurtX1xRd8sYFle7VsU/vjJXurCfjC+BOzuOtduWKEoRlVeWoDnSM1lJmnR3
         He1Xo24lVWGuNvYBQ1yFpr/5FynNOJl1lTkwlieprCdoluIUbDhf2EqAobDl5s9GUEGH
         qu+SFFtNY2ki7ePdX0kFd8U9sJmt1h/vFcmNY7gvWXf//LpHTVJclSzZ0RiYSMafp76L
         mqGOKlOwJ0y7HOXfJomSScCZEN4rMO6hqZ+tcfuOVpcMD/aG2YLmVgUBUfWGYfHYGklP
         Jf+2r1kJIeDOETudSLI3FGUmbjUCVz3RbWqWvSGnpXXMbWvbP6Hlpq3LLWE9A4GpnVno
         k/Aw==
X-Forwarded-Encrypted: i=1; AFNElJ9zBOEReM4MEvpU+mhuVfnzqPBqj6fBp5UiC4cughUXYFhR0dnbbB1BR0Z1yTtl3NAfHkUYLR8gIg/ubP8XWQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwailBG9a3Axp+u4mkZRbDTXxNLiKq1DV7aE9B2dPR5xQQeUlTw
	tM8AsDealsgKp9Aa2KYRhI7K4iBdpbW1Z6P18HMeB0n8RnNKcRn4Pbsk
X-Gm-Gg: Acq92OHn992C07+LiP61YjeI+b0653uiQ2KOlRD69qwou7qEMO4qrZcORdwMlxNgpHB
	BA9Iq+EoO2/GtZtSAfz5KitNU6kddQ700oMKhBMTTfl66new6ZAAsqj+mwYuwU2c0N0AlbW22JK
	y9eVHU776Vv6uh23wuE2PxreoYAohwClP/SB7WIVMVCafmJHllCd/fsvOg893/k9/676GJvKEwU
	rgnIAhwzmbvPvy3owzVjS3t0lnMUkicolc3V4ev4pMAQsqbNWaFLHwa/VUEohKjvYeh/U3dwFmM
	+zFdaF6QnIuuM6dgZ3iLLPNlGnJLvEu7YoGc8UmvqzwbgBImCJzzaT6WBoB6pU89Yy1HXrHfRs9
	ZQ0aNztU71XuxyLxygRDSqB+HjXpijbizCkm3ehrUwzQB2qFgHuAgsu7GlDDy2gMXuGBRgsoyXf
	jMNSM9oT0cXAs2CEULSoiv+4RMGqS7liljk+8b4t29
X-Received: by 2002:a17:90b:4cc8:b0:366:1172:597e with SMTP id 98e67ed59e1d1-36c4ff6496dmr11193976a91.9.1780329983689;
        Mon, 01 Jun 2026 09:06:23 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36dd9205ddasm64218a91.14.2026.06.01.09.06.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 09:06:23 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v5 0/3] arm64: dts: rockchip: add Vicharak Axon board support
Date: Mon,  1 Jun 2026 21:36:00 +0530
Message-ID: <20260601160603.167706-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_090624_763428_3CB24CC9 
X-CRM114-Status: GOOD (  11.11  )
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

This series adds initial device tree support for the Vicharak Axon
single-board computer, which is based on the Rockchip RK3588 SoC.

The Vicharak Axon is a feature-rich SBC targeting developer and embedded
use cases. It ships with:

  - Rockchip RK3588 (4x Cortex-A76 + 4x Cortex-A55)
  - RK806 PMIC providing all SoC power domains
  - eMMC 5.1 (on-board) and microSD slot
  - Gigabit Ethernet via RGMII (RTL8211F)
  - Dual HDMI 2.1 output and one HDMI 2.0 input (receiver)
  - PCIe 3.0 x4 and two PCIe 2.0 slots
  - SATA 3.0
  - USB 2.0 host ports (EHCI/OHCI)
  - NXP PCA9554 I/O expander for status LEDs
  - Haoyu HYM8563 RTC

Changes since v4:
- Re-enabled `combphy2_psu` which is a required PHY for `pcie2x1l1`. (It was incorrectly removed in v4 during the unused PHY cleanup).
- Fixed alphabetical sorting of `rk3588-vicharak-axon.dtb` in the Makefile.

Changes since v3:
- Completely removed `sdio_pwrseq` and `wireless-wlan` pinctrl nodes as Wi-Fi/SDIO was already removed.
- Removed unused `u2phy0`, `u2phy0_otg`, `u2phy1`, `u2phy1_otg` nodes to fix orphaned PHY warnings, since the USB 2.0 host ports utilize `u2phy2` and `u2phy3`.

Changes since v2:
- Split the dt-bindings patch into two separate patches: one for the vendor prefix and one for the board binding as requested by Heiko.
- Removed invalid `enable-gpios` property from HDMI nodes (ignored by dw-hdmi-qp binding)
- Fixed copy-paste error in `rk806_dvs1_null` pinctrl node (gpio_pwrctrl2 -> gpio_pwrctrl1)

Changes since v1:
- Renamed the dts file from rk3588-axon.dts to rk3588-vicharak-axon.dts
- Added binding patches for the board (rockchip.yaml) and vendor (vendor-prefixes.yaml)
- Renamed regulator nodes to the standard `regulator-name` pattern
- Removed `mem-supply` properties and phandles from cpu nodes (vendor-kernel specific)
- Fixed pcie20_avdd0v85 vin-supply mismatch
- Removed obsolete `regulator-compatible` property
- Removed invalid `regulator-init-microvolt` property
- Removed dangling `enable-active-high` properties from fixed regulators
- Cleaned up unneeded i2c3 / es8388 nodes
- Added missing `vpcie3v3-supply` properties to PCIe nodes

Hrushiraj Gandhi (3):
  dt-bindings: vendor-prefixes: add vicharak
  dt-bindings: arm: rockchip: add Vicharak Axon board
  arm64: dts: rockchip: add Vicharak Axon board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588-vicharak-axon.dts     | 983 ++++++++++++++++++
 4 files changed, 991 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-vicharak-axon.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
