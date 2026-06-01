Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DA01CD5BD1
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 15:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=We0LofhdVmAJ00rqYlq5sLUQT9AuF/9/RMx7aC5gxy0=; b=n4Kl8owAnKFl53
	DDr8kkZZhWHYqp+2iPmsv2p2Gt3ShOVPL16CsEhqNa1LdJf+h83pCJBQM4VmL9rFaZa8TKzzZotZ4
	9JNL4XTj9BYJ0lINni0mKSVjXVjSlVYgpvacKYMNLEQQ+QZSfzb02LlIZ46gTd7lzT/xXd1Pbco6k
	lnUIqVmHwTmT6QH6f0I/nEC/vkGdPSp+fVJ3ywvQVrpNGZhh4DNRgPa/JXWN0mAgTg3+1YStRAtxo
	RhuLSIKshbsWKsR57eMhvtSKkIM6PtoNLZs6TQ0CA6eLorGE2DbkhaKiYGEDOD1V7vyLpxA3Vupnd
	KAzv+qMU4S5ta4Ls1j+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU4PR-0000000BMQ4-2XuQ;
	Mon, 01 Jun 2026 15:18:33 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU4PO-0000000BMPN-2erV
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 15:18:31 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-2c0c1e0d00bso14976075ad.0
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 08:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780327110; x=1780931910; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hGKsQJW7L7doA6HjoCHUuBeZbYA6DEbQw5AcqdHiYtk=;
        b=pBVy5r0F3Vf1zI90HNSihP8J70RfVNwVqbB+qW11GmsUHFkoik035m8G/2Q2W2000o
         VkF95ARfZL8oeyFoiWDDUXBlxBjfdi8QmmS8z8PA7sng+gMxEII/dYW9M2mXcTZEqYwC
         UbyauY1Hvv0+yvwdYD0iaErfZaNZG3FhZEe690E6OWwbsChBSyvsmqKnLvM0C/kAI24n
         O0EOWW9GL21QjuOfYWXdea9Thz81gzCFpu6KSwa8Ye9f8kDtlEgMi4vQ5fCW67+NdD8n
         2u3jlfsZoGp4yP+VtI3ib/8WH1eX4xbHzaFnU6PtgneL5HcN9/i4mCNJ1ue4TYqJagMX
         TC+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780327110; x=1780931910;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hGKsQJW7L7doA6HjoCHUuBeZbYA6DEbQw5AcqdHiYtk=;
        b=gO+6e1vtf5fWNy/vmF9HBoKfqDK0PXtKxuWhBYfXDwlz7TzIQjGruCOwkJl2e51Q9K
         Ld9wHr6DdyInjyKNEq9Xh/MllZRKT7E5WwfYjC1JX6EGayHpL6XpUpZYE5dFC3vYTus3
         zGLki1tBaGFiVE4wBlh6Kc4qo6t+xwFsfJPchHbi44Zl2797fbcEjQYfZXco808dPGzr
         /x8S8G5UNSC/Pyx1S5qvl1uINONbl0ejGyyEwOVjxkY3RnIxaxwgUz8BEjNE+hITKwzq
         mQZlQLlHkb3vgY/lI3OOeV0UwsQh677mIFebQOZqmPuA78KIJFe3S1nZlWA/2SWou8Gb
         3ufA==
X-Forwarded-Encrypted: i=1; AFNElJ8fbCp/BcPernH2m99hxwbUoh3yrE5DIRTiscpTjuKM0ugwi4mKb2Xzzp0NeAHqlc1Ff2lPqm5Au5bB/W/Krw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzQoRTbqpXC1gmDSub/yKp1FYaV+Svz8iJUJ/Qp9hwkrwZDBwb/
	K5D9MsOQIgflrM4Y6cx4Y5pA+IEAfdeHVmtimgNU+FkiwBNZwZhP2D4p
X-Gm-Gg: Acq92OFY66ynw4zs8gZPSvN0OgUvBjScCRv+AaJVoZcKaxzIdfU8i5iCmZU6JVMxdE5
	w3+AUuJQrnWfzUvEwGZjXX65mWa8WIL7IR3f5MvxJpiahvNON71ozNpg2qqY21VXpx02MqcdCKZ
	n9tWuTIDlGo9VOqI4Lhn8yR+z7v1S5OPvrRhUxV0p+ATCZB/NmAwigWdM7N+eWMgSZoKZuQ6wCH
	yeMhf0lfPelOuXpCHiW9T01rkCbjrxYVsYn43/YX7/Dl+zip2zk778qCaIdp/XjaN09KwJ3a50m
	wJClwe5ZZYVBxyj/3i0N1LICmrBHYdjQA5tx/0CrrwCqLyz14hj09UOOqL20peZuOeJKOEPzJI8
	OJT2/PFpxTz+RMSNVpS+7cjZWSZRCWXuMDHlvUwzkVj9kNypKVqxIpbsIpmZ0qPVKcPAX152CLK
	zGQiUUBX6nCsNjMZdMg1V9dPOHI28B0W+DJ7oxKJHT
X-Received: by 2002:a17:902:e88c:b0:2b2:4d36:7aa with SMTP id d9443c01a7336-2bf368859d8mr120253145ad.35.1780327109695;
        Mon, 01 Jun 2026 08:18:29 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf23c0d727sm106633925ad.59.2026.06.01.08.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 08:18:29 -0700 (PDT)
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
Subject: [PATCH v4 0/3] arm64: dts: rockchip: add Vicharak Axon board support
Date: Mon,  1 Jun 2026 20:48:07 +0530
Message-ID: <20260601151810.162173-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_081830_678279_C85C6A65 
X-CRM114-Status: GOOD (  11.12  )
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

Changes since v3:
- Completely removed `sdio_pwrseq` and `wireless-wlan` pinctrl nodes as Wi-Fi/SDIO was already removed.
- Removed unused `u2phy0`, `u2phy0_otg`, `u2phy1`, `u2phy1_otg` nodes to fix orphaned PHY warnings, since the USB 2.0 host ports utilize `u2phy2` and `u2phy3`.
- (The pcie2x1l0 / sata0 conflict warning by Sashiko AI is a false positive: sata0 is on combphy0 and pcie2x1l0 is on combphy1, matching rk3588-base.dtsi).

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
 .../dts/rockchip/rk3588-vicharak-axon.dts     | 979 ++++++++++++++++++
 4 files changed, 987 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-vicharak-axon.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
