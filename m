Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83A70C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 14:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=upM6b9PK4YKvQBTjAo67z4JdFxN/t5h1MekinLA+evI=; b=c8bPUxhhF3rhmy
	YZ6Z5v/PR35WMP1yVBXtYEa5dsEyaXHNkhqV2BMpIePZBmeDiyErwO2btu43w/DToiLwT/iJLYdo8
	9WPto041BfnyxaIPZYfqEs99BCqzXz2gYbKXCbqBFEkdNUWr86mA4eCh41Af2I0b5taBVgFA0DJ4/
	kx8SwTRxuY5eyZqEN726Ll0g86MNoVCz2Zwd10Sk0E80dyq50qRdJPEbyuwTzC9VH6o9KJ6sbIWmY
	wn3tRjDufkcyc+OmV28t/MFwlo9fwCGFtOZnrxt4inOpiw7nZC/o1jAKlRKjXfjMJUTny5CmtTsMP
	txWLViAeBXTdrKdlV+zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfixy-00D3Rw-EG; Sat, 16 Apr 2022 13:59:58 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfixm-00D24j-2B; Sat, 16 Apr 2022 13:59:47 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout2.routing.net (Postfix) with ESMTP id 536B65FB56;
 Sat, 16 Apr 2022 13:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1650117331;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=c7cLwYkQx+UgcFCUSlE8PMzw+TTvuN7Xap07GmrtOwQ=;
 b=td7K6Qu3lBEpcA31PRIpEJ/SDJbnn+2Fr8UO1kYI18UixmbBzbbi1z8+tliEaQbVoVY0EE
 UA2BrAqn+8fORt9+Iv3kW5i+qz+yC1SCrjSvTxi4qRTxkRVqgmCV1nRIhFkwtilG7dQ9U5
 DKCijIQ5eFeOEgrefYx1siXQgYwy0/k=
Received: from localhost.localdomain (fttx-pool-217.61.150.108.bambit.de
 [217.61.150.108])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id CA4D51005BA;
 Sat, 16 Apr 2022 13:55:29 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
Subject: [RFC/RFT 0/6] RK3568 PCIe V3 support
Date: Sat, 16 Apr 2022 15:54:52 +0200
Message-Id: <20220416135458.104048-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: b85ff0f6-efa2-44a0-8e44-ec2828455f06
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_065946_296615_664CD2A3 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
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
v7: https://patchwork.kernel.org/project/linux-rockchip/cover/20220416110507.642398-1-pgwipeout@gmail.com/

Compared to PCIeV2 which uses the Naneng combphy, pciev3
uses a dedicated pci-phy.

Frank Wunderlich (6):
  dt-bindings: phy: rockchip: add pcie3 phy
  dt-bindings: soc: grf: add pcie30-{phy,pipe}-grf
  phy: rockchip: Support pcie v3
  PCI: rockchip-dwc: add pcie bifurcation
  arm64: dts: rockchip: rk3568: Add PCIe v3 nodes
  arm64: dts: rockchip: Add PCIe v3 nodes to BPI-R2-Pro

 .../bindings/phy/rockchip-pcie3-phy.yaml      |  77 +++++
 .../devicetree/bindings/soc/rockchip/grf.yaml |   2 +
 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   |  79 +++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 122 ++++++++
 drivers/pci/controller/dwc/pcie-dw-rockchip.c |  11 +
 drivers/phy/rockchip/Kconfig                  |   9 +
 drivers/phy/rockchip/Makefile                 |   1 +
 .../phy/rockchip/phy-rockchip-snps-pcie3.c    | 278 ++++++++++++++++++
 include/dt-bindings/phy/phy-snps-pcie3.h      |  21 ++
 include/linux/phy/pcie.h                      |  12 +
 10 files changed, 612 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip-pcie3-phy.yaml
 create mode 100644 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
 create mode 100644 include/dt-bindings/phy/phy-snps-pcie3.h
 create mode 100644 include/linux/phy/pcie.h

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
