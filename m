Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C68C9C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 13:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ohw70o1TMVb5XM7SSYDgfUbNT2WpN3KYwsfPvJRQvJs=; b=fiNLrONEywoti9
	xQevYsz2il6lwkHx5ktn+/+EFuXxmIU7FunqEerHwLiIDBHRufG2T5WLuyDbG2WCJ00stY/B16d3/
	eXRZDAPzGfhNTG2LQPnxDnLZsKWgwGaLntQEXoQvAXSDiI893hEdyk91GE1jDIeu0QZTS+5ZlauUC
	SNYFRjSogInvBiFEgeoMtfaQm6WZeu/QbeJW1TJHOreH/CdPpOCNpEsmXzCz9sfjz/kiJq25UftvH
	oqVLmQauAnBKA/broW1TRe6/8CnIZWnPaIi/OHOTC0zodnnNa31W2dXtqGwfZ4luJsyy9TkkF4rQz
	hD9o2Ia0VjjhVmoV/aUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njLBH-00EZ9N-1Q; Tue, 26 Apr 2022 13:24:39 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njL8k-00EXkY-4A; Tue, 26 Apr 2022 13:22:05 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout2.routing.net (Postfix) with ESMTP id EFACD5FBBE;
 Tue, 26 Apr 2022 13:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1650979315;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=3MPG+xGmR4VMjoWP9SmdGX2PEI83rfYf+MZ3I3FUJrI=;
 b=gDHOiM3w+YaLFxLLc1F70fyqbPq93DIDUQzzsn/TEwBbqKfZc2s1wlBSzwaR28BRe1qmSb
 hUBPgzGEpH+idDN1yKP5VTHdpm1l5ck2rlPlaldXQ/DtKoExmkubxJQ5WK4rBCog0ewUO0
 6iRf3wiGhn+7BCRnZAASp/VZNDIJYQQ=
Received: from localhost.localdomain (fttx-pool-80.245.77.37.bambit.de
 [80.245.77.37])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id B7B49401C9;
 Tue, 26 Apr 2022 13:21:53 +0000 (UTC)
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
Subject: [RFC/RFT v2 00/11] RK3568 PCIe V3 support
Date: Tue, 26 Apr 2022 15:21:28 +0200
Message-Id: <20220426132139.26761-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: 6ee0f1ac-3381-46d2-9e26-38a02835f5ee
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_062202_377940_602D180A 
X-CRM114-Status: GOOD (  10.58  )
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
v8: https://patchwork.kernel.org/project/linux-rockchip/list/?series=634925

Compared to PCIeV2 which uses the Naneng combphy, pciev3
uses a dedicated pci-phy.

This Version is still an RFC/RFT because i cannot only test PCIe-slot on R2Pro
as the other is a M.2 Key-E where i don't have any Hardware.

last 3 Patches show a replacement for bifurcation setting to make it more
useful for vendor-indepent lane-mapping.

Frank Wunderlich (11):
  dt-bindings: phy: rockchip: add PCIe v3 phy
  dt-bindings: soc: grf: add pcie30-{phy,pipe}-grf
  dt-bindings: phy: rockchip: add PCIe v3 constants
  phy: rockchip: Support PCIe v3
  dt-bindings: pci: add bifurcation option to Rockchip DesignWare
    binding
  PCI: rockchip-dwc: add PCIe bifurcation
  arm64: dts: rockchip: rk3568: Add PCIe v3 nodes
  arm64: dts: rockchip: Add PCIe v3 nodes to BPI-R2-Pro
  dt-bindings: pci: add lane-map to rockchip PCIe binding
  PCI: rockchip: add a lane-map to rockchip pcie driver
  arm64: dts: rockchip: add basic lane-map and drop bifurcation from
    r2pro

 .../bindings/pci/rockchip-dw-pcie.yaml        |   3 +
 .../bindings/phy/rockchip,pcie3-phy.yaml      |  84 ++++++
 .../devicetree/bindings/soc/rockchip/grf.yaml |   3 +
 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   |  79 +++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 122 ++++++++
 drivers/pci/controller/dwc/pcie-dw-rockchip.c |  22 ++
 drivers/phy/rockchip/Kconfig                  |   9 +
 drivers/phy/rockchip/Makefile                 |   1 +
 .../phy/rockchip/phy-rockchip-snps-pcie3.c    | 278 ++++++++++++++++++
 include/dt-bindings/phy/phy-rockchip-pcie3.h  |  21 ++
 include/linux/phy/pcie.h                      |  12 +
 11 files changed, 634 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
 create mode 100644 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
 create mode 100644 include/dt-bindings/phy/phy-rockchip-pcie3.h
 create mode 100644 include/linux/phy/pcie.h

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
