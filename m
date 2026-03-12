Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BD4B105A598
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Mar 2026 13:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=boGbJfb2Ts/1NcZlFpy3pdupGkh0Cus1/J2vzJQloQA=; b=g3Q3pabbBdb5g/
	8W3mlOd69HH+9k/6joLDaXG8SH4fXnn+jqee5nctKPrKgOtb73Lvs2K1v8jaPaHCR4pdTTYPuWRMG
	iGZqDvnppzs5wI3dgXdclh9Dt+RTJFFuHGUSe4xPegOoDppNv+XS2tMeyg2u6ToV9fBSGSrRxKxPx
	7wevGXN1FmHZkN7kHFZriNpAaZV4veUmgcI/mHq16BPEihM2fO5SKS+kU+Ik9vcBrsmVPyLSb3QwV
	pSkzen6GqkuWzty84aH8OzaAmd4tIYymzje6kc0PO2VWhcOVnpDMsGxXNOM8dKBCU869s05cI7vud
	l6IL763cgNiHOYxfWUTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0fgp-0000000E6Ez-3KGd;
	Thu, 12 Mar 2026 13:02:59 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0fgn-0000000E6EY-2J09;
	Thu, 12 Mar 2026 13:02:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 83A4460054;
	Thu, 12 Mar 2026 13:02:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AB65C4CEF7;
	Thu, 12 Mar 2026 13:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773320576;
	bh=TgSk+4s2logLCJYw1/1V/0WBGOGe8vlm4vuaxQUrDRo=;
	h=From:To:Cc:Subject:Date:From;
	b=l9mus12TCdN4ONMZHKmRMj7JZrcmLc6V/uu15lWYvKQwiyXIeEccIOyh9QWblL840
	 XKM9Xj20k3BUXAaQOUbsjssa36sXddRoOn+uRISawFuV/ynuA8loLqmzVY9HKBy8Bo
	 OjxdKGCE0Bfv/BXS+gzNCxBUQFPqi9bwEC9IWLa50KFU/wHaTQiY0fQ+Fnyb1zQd+j
	 qMeTgvH6J3q+E9LZyxMAdMjNGGxOVx0WqEKl4wo6QB3VrnwudN4kwgt/eKKj1CqQJ5
	 p7QaIEBtR82xTJJxeiMar/y7cMH4nNfKM+k8CkFlOsZ2HuDTwU4gBQ2ce0bX39jILm
	 3gn4Z9eMAEnSw==
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Minghuan Lian <minghuan.Lian@nxp.com>,
	Mingkai Hu <mingkai.hu@nxp.com>,
	Roy Zang <roy.zang@nxp.com>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Srikanth Thokala <srikanth.thokala@intel.com>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Christian Bruel <christian.bruel@foss.st.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Shuah Khan <shuah@kernel.org>
Cc: Manikanta Maddireddy <mmaddireddy@nvidia.com>,
	Koichiro Den <den@valinux.co.jp>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@axis.com,
	linux-rockchip@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-tegra@vger.kernel.org,
	linux-kselftest@vger.kernel.org
Subject: [PATCH v4 00/10] PCI: endpoint: Differentiate between disabled and reserved BARs
Date: Thu, 12 Mar 2026 14:02:28 +0100
Message-ID: <20260312130229.2282001-12-cassel@kernel.org>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2686; i=cassel@kernel.org; h=from:subject; bh=TgSk+4s2logLCJYw1/1V/0WBGOGe8vlm4vuaxQUrDRo=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGDI37UzN2dLNHDzr3bFkpbmbuvLOSQax7F/j874n3+aSi KahfSdLRykLgxgXg6yYIovvD5f9xd3uU44r3rGBmcPKBDKEgYtTACbydSYjw1PmY1NLXJUtzn+R 6X1joBrv12+ZfCb7h5VwRsB0F9bjFxkZVoT+ns4Zd255TqnKJrPrnfdf5v57cd3wNjOP3VTX8r9 LGAA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
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

Hello all,

This series was originally written in response to the patch series from
Manikanta Maddireddy that was posted here:
https://lore.kernel.org/linux-pci/291dab65-3fa6-4fc8-90a2-4ad608ca015c@nvidia.com/T/#t

Manikanta has reviewed this series and will send a small series on top of
this one.


Changes since v3:
-Modified patch 1 to simply drop BAR_RESERVED for a BAR following an
 only_64bit BAR (Manivannan).
-Added a patch from Manikanta, to make his follow-up series smaller,
 since this series touches the same lines anyway.

Link to v3:
https://lore.kernel.org/linux-pci/20260302095913.48155-11-cassel@kernel.org/


Koichiro Den (2):
  PCI: endpoint: Describe reserved subregions within BARs
  PCI: dw-rockchip: Describe RK3588 BAR4 DMA ctrl window

Manikanta Maddireddy (1):
  PCI: endpoint: Allow only_64bit on BAR_RESERVED

Niklas Cassel (7):
  PCI: endpoint: Do not mark the BAR succeeding a 64-bit BAR as
    BAR_RESERVED
  PCI: endpoint: Introduce pci_epc_bar_type BAR_DISABLED
  PCI: dwc: Replace certain BAR_RESERVED with BAR_DISABLED in glue
    drivers
  PCI: dwc: Disable BARs in common code instead of in each glue driver
  PCI: endpoint: pci-epf-test: Advertise reserved BARs
  misc: pci_endpoint_test: Give reserved BARs a distinct error code
  selftests: pci_endpoint: Skip reserved BARs

 drivers/misc/pci_endpoint_test.c              | 21 ++++++++-
 drivers/pci/controller/dwc/pci-dra7xx.c       |  4 --
 drivers/pci/controller/dwc/pci-imx6.c         | 22 +++------
 drivers/pci/controller/dwc/pci-keystone.c     | 12 +++++
 .../pci/controller/dwc/pci-layerscape-ep.c    |  6 ---
 drivers/pci/controller/dwc/pcie-artpec6.c     |  4 --
 .../pci/controller/dwc/pcie-designware-ep.c   | 24 ++++++++++
 .../pci/controller/dwc/pcie-designware-plat.c | 10 ----
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 23 ++++++----
 drivers/pci/controller/dwc/pcie-keembay.c     |  3 --
 drivers/pci/controller/dwc/pcie-qcom-ep.c     | 12 -----
 drivers/pci/controller/dwc/pcie-rcar-gen4.c   | 16 ++-----
 drivers/pci/controller/dwc/pcie-stm32-ep.c    | 10 ----
 drivers/pci/controller/dwc/pcie-tegra194.c    | 19 ++------
 drivers/pci/controller/dwc/pcie-uniphier-ep.c | 19 +-------
 drivers/pci/controller/pcie-rcar-ep.c         |  3 --
 drivers/pci/endpoint/functions/pci-epf-test.c | 24 ++++++++++
 drivers/pci/endpoint/pci-epc-core.c           |  5 +-
 include/linux/pci-epc.h                       | 46 +++++++++++++++----
 .../pci_endpoint/pci_endpoint_test.c          |  4 ++
 20 files changed, 154 insertions(+), 133 deletions(-)


base-commit: 0b74f7d72399d4c4422ed3d68ef28b3612f71e74
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
