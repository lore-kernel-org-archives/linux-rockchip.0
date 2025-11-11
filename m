Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08073CD13CF
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 22:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qcKMqrCKMWlVghCH70DVfhvb1WYFMTCJpG5yy7Tvyrk=; b=JlQRUKRaQtBk3b
	ymxv1pfU34OJZvVVyWI5Dzpbt2UFxwuwAc4x+kff48Yz+ZMv+VcwMnasIQKl8E2SUbjeeSjtetykP
	GVVcVY5pogpiEe2LESFuM3imoizrQv8PGwI7HX32lk/cyJ5ZGq7TZN0sIt5jWrAhdoAJQxTKe8p3M
	mFlzMzPwfGVrcxXLB5635LO9rRTgZnlp2bNgFVTkakEnBF/Df8VDkCCU86ytkH9+M6la0fq+CVghw
	gcMPrIEEzRbvczbYJb49oSZv716yQCD8aT9obUnTPs08RspGn1FQsIcoSRZHVADA7QkNwRapYE424
	24B6MXrQpetnGZue6ixA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIwfD-00000007pmW-2ev6;
	Tue, 11 Nov 2025 22:16:35 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIwfC-00000007pmI-1RRW;
	Tue, 11 Nov 2025 22:16:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1C89C60055;
	Tue, 11 Nov 2025 22:16:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 984B1C113D0;
	Tue, 11 Nov 2025 22:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762899392;
	bh=o7bQ4BiteNEBflYFO9xS4aNpUQ3/uiKdReJRD+W/Xs8=;
	h=From:To:Cc:Subject:Date:From;
	b=jDBZpZr8VayAjbfjTI+vVLb8YkruhItc0a4znA0U/zzvGzz4nwGj2WujwIHv6tJhu
	 3zK9UwoSXHXCY2IYV1iIFM8qRjItU5+ItVPJNXe61erfMUTIaFr57RLFEZfkhP1cmG
	 qXFeO/b9aNrXBVUjqVZpr2qNh53RNDFjQr5rtXCZiUU+D/PalgvHAD9HE/vINwuARB
	 8Yo11/gdkbCw/OwRlraXtp9KO0EBubd/rEBiwhNSQGhSCSCglAU1HxyPgnCNTKsSK3
	 0+DlnEZxblC37ydwYRVQDFMN1e+G5a2ueAKmKjhXJfY+c/G0ZMoDD6v/bVlRHuvL3H
	 IwX4vosCfAEvg==
From: Bjorn Helgaas <helgaas@kernel.org>
To: Niklas Cassel <cassel@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Richard Zhu <hongxing.zhu@nxp.com>,
	Frank Li <Frank.li@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Conor Dooley <conor@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Hans Zhang <hans.zhang@cixtech.com>,
	linux-tegra@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de,
	Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH 0/4] PCI: dwc: Advertise L1 PM Substates only if driver requests it
Date: Tue, 11 Nov 2025 16:16:07 -0600
Message-ID: <20251111221621.2208606-1-helgaas@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

From: Bjorn Helgaas <bhelgaas@google.com>

This is a follow-up to Niklas's patch at
https://lore.kernel.org/r/20251017163252.598812-2-cassel@kernel.org.  That
patch clears the L1 PM Substate Supported bits for the dw-rockchip driver,
which doesn't yet do the device configuration to support the L1 Substates.

This series does the same thing, but in the DWC core so it applies to all
DWC-based drivers.  Drivers that do support L1 Substates (currently
tegra194 and qcom) indicate that by setting "dw_pcie.l1ss_support", and the
DWC core will leave the L1 PM Substate Supported bits alone.

This also includes Shawn's patches to add the dw-rockchip support for L1
Substates.

The problem this fixes is that users are currently able to enable L1
Substates, e.g., by

  - building with with CONFIG_PCIEASPM_POWER_SUPERSAVE=y
  - booting with "pcie_aspm.policy=powersupersave"
  - echo powersupersave > /sys/module/pcie_aspm/parameters/policy
  - echo 1 > /sys/bus/pci/devices/.../link/l1_1_aspm

but this breaks devices if the platform doesn't support CLKREQ# or lacks
Root Port configuration.  This series avoids that problem by preventing the
kernel from enabling L1.x in the first place.

Bjorn Helgaas (2):
  PCI: dwc: Advertise L1 PM Substates only if driver requests it
  PCI: tegra194: Remove unnecessary L1SS disable code

Shawn Lin (2):
  PCI: dw-rockchip: Configure L1sub support
  arm64: dts: rockchip: Add PCIe clkreq stuff for RK3588 EVB1

 .../boot/dts/rockchip/rk3588-evb1-v10.dts     |  7 +++-
 .../pci/controller/dwc/pcie-designware-ep.c   |  2 +
 .../pci/controller/dwc/pcie-designware-host.c |  2 +
 drivers/pci/controller/dwc/pcie-designware.c  | 24 ++++++++++++
 drivers/pci/controller/dwc/pcie-designware.h  |  2 +
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 38 +++++++++++++++++++
 drivers/pci/controller/dwc/pcie-qcom.c        |  2 +
 drivers/pci/controller/dwc/pcie-tegra194.c    | 35 ++---------------
 8 files changed, 78 insertions(+), 34 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
