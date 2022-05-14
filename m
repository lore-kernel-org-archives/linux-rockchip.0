Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FBDBC433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 May 2022 12:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=urTrkk2ZYYHYlcBBMshaA63k3G8WrFZvpPNm6MSesEs=; b=px35JAdgN8BLKI
	lpdVD9+aGTGnrrN1EpKwYFUyQ4AL5QuoVqOtDIEBlzzWOPTJVIPkOOcvDqHk4Y6TNddHkppUV7HO1
	2kfZF3YZ/bgKDyPP25Rx8KkTQJwOGTPZfRqdN9BQ89GuiXHGMVWgi9+PzHIg4vbPHhGtAuIVeSHOX
	7fH+FGgIEtSamScsScDow6OJ8/Vt505/56mwUc5wV6DSJdqkMRPxaIjyycwSuZ6DHLrb+P+PptrhG
	8GjjGtHDrAgHHB+YxApFrp8/E59dup1aqsiaoYKKBpax8M0DlhgTmKfUCpUjVhlaL7XJnf0ZO8R4E
	4gw6QM6JeMiZEGpwegJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npqRv-001LUn-PO; Sat, 14 May 2022 12:00:43 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npqRG-001LDK-L4; Sat, 14 May 2022 12:00:05 +0000
Received: from mxbox3.masterlogin.de (unknown [192.168.10.78])
 by mxout4.routing.net (Postfix) with ESMTP id F10191007E5;
 Sat, 14 May 2022 11:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1652529596;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=Jp8Teq4Isc+9gmZReRzppDgzK1yE9IJ/3uRsTw6ryLw=;
 b=oCp832NTVPSaEBRhBlPm8aZYMaEUSpQPU/3kx6pVPlYzmwxzuydQkVam2N3UHmA7WayaLP
 386fK61d5ybZKWQhuwRJCw6PQnrjGPWO1rVJNW169kEYrOA2UhSI+6vmcW2QzTkGXKt9Nr
 3yaSAdNYIG7ojFg4fXLYuLl69NgLFRc=
Received: from localhost.localdomain (fttx-pool-217.61.148.252.bambit.de
 [217.61.148.252])
 by mxbox3.masterlogin.de (Postfix) with ESMTPSA id B4D82360502;
 Sat, 14 May 2022 11:59:54 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [RFC v3 0/5] RK3568 PCIe V3 support
Date: Sat, 14 May 2022 13:59:41 +0200
Message-Id: <20220514115946.8858-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: c0d866d5-96cb-4e67-abe9-7c9f9293d3cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220514_050003_337655_DE809F4E 
X-CRM114-Status: GOOD (  10.56  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Frank Wunderlich <frank-w@public-files.de>

This series adds Rockchip PCIe V3 support found on rk3568 SOC.

It is based on "Enable rk356x PCIe controller" series of Peter Geis
v9: https://patchwork.kernel.org/project/linux-rockchip/list/?series=636944

Compared to PCIeV2 which uses the Naneng combphy, PCIe v3 uses a dedicated
PCI-phy.

New in this version is that lane-map is no separate patch and moved from
PCIe- to phy-driver.

Peter has tested m2-slot too and so the bifurcation.

The Phy-Patch is now changed to original author, but our changes are
squashed in.

Frank Wunderlich (4):
  dt-bindings: phy: rockchip: add PCIe v3 phy
  dt-bindings: soc: grf: add pcie30-{phy,pipe}-grf
  arm64: dts: rockchip: rk3568: Add PCIe v3 nodes
  arm64: dts: rockchip: Add PCIe v3 nodes to BPI-R2-Pro

Shawn Lin (1):
  phy: rockchip: Support PCIe v3

 .../bindings/phy/rockchip,pcie3-phy.yaml      |  82 +++++
 .../devicetree/bindings/soc/rockchip/grf.yaml |   3 +
 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   |  90 +++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 122 +++++++
 drivers/phy/rockchip/Kconfig                  |   9 +
 drivers/phy/rockchip/Makefile                 |   1 +
 .../phy/rockchip/phy-rockchip-snps-pcie3.c    | 317 ++++++++++++++++++
 include/linux/phy/pcie.h                      |  12 +
 8 files changed, 636 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
 create mode 100644 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
 create mode 100644 include/linux/phy/pcie.h

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
