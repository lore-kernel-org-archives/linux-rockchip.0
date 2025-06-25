Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09572C7115C
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Jun 2025 11:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tB/aMrx62Gy3W52pxui3VOzjaIoas+l95+CxNA/vUm4=; b=zQp4HRo+12pnup
	Xt9+9LHwYqNLIbZ7i6HJAX5LoMH0qrTF1TZSklLbXhbvtt6w/WjoG761OofQtBxbfH0eN0MRJ3h49
	OrEj+BMLfWqrsgHq9Ljx4vkI1eLXSyoI4i4sig/lgdzzS/juWt6uZiNjwBKPHhJRUMCNz8RY5gLG0
	nqYEUNo2GpRbZL9H+xm3r1D9JkIXWzfV4z1ol2BDe4Tz1Opf4SRtrMqAO2l8OwXJCG7ptUQc5C9y/
	z9yCElWIxkXh39ACSBEuotHa6hUBbPRcB8qTQobfbp+j1HomVaPUEsoKVj9F9Y/1eTG07EFPZCPIP
	6q8VxJ01xWiQ2vOQgVew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUNz7-00000008QWY-35B0;
	Wed, 25 Jun 2025 11:08:09 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUNIW-00000008Iig-0b0h;
	Wed, 25 Jun 2025 10:24:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CEC50A52186;
	Wed, 25 Jun 2025 10:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D8C6C4CEEA;
	Wed, 25 Jun 2025 10:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750847046;
	bh=lz4N5vzyJfYNDcEemSYn52O1R2oIT0tnhkw8QrN40KI=;
	h=From:To:Cc:Subject:Date:From;
	b=HSDzvOOt9QZbS5sSeRxHGHrTd0sVPRkyhyqCW7IKD2PNZ1YzXJPHMfg8IYKi3sMpo
	 j548/ZgmsJ7BslOPqlVlZYPBwqg6TjQcwogidxU51Au8pV2SfffpUYMuRpoWDn8mgd
	 SKl76C1UHM+Hpxgv7lcBBdf6McMMjDq6GK+e8N+YZsbSgov2/srVckeCLyYs67zMkX
	 iUW7jgc8Hytdj98nvWO3Z+DZjIfZFNUI/ajjzvy4BEzzuW3Oci55OtylUob6uf/Zo+
	 w2zrhh0TOmSHcCac0MrnUyXet9ZChvtZfCVmRzvmSyYb3mXWapNBwuQD1d+Z1iAlLu
	 UOsM4AVRsD8Cw==
From: Niklas Cassel <cassel@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Kevin Xie <kevin.xie@starfivetech.com>,
	Simon Xue <xxm@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Stanimir Varbanov <svarbanov@mm-sol.com>
Cc: Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Laszlo Fiat <laszlo.fiat@proton.me>,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v4 0/7] PCI: dwc: Do not enumerate bus before endpoint devices are ready
Date: Wed, 25 Jun 2025 12:23:46 +0200
Message-ID: <20250625102347.1205584-9-cassel@kernel.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1569; i=cassel@kernel.org; h=from:subject; bh=lz4N5vzyJfYNDcEemSYn52O1R2oIT0tnhkw8QrN40KI=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGDKizxk/Urnx8TPnvbnLnkcwKCgxv3jWYLPqsYZuQPTEv d+8/tQ0d5SyMIhxMciKKbL4/nDZX9ztPuW44h0bmDmsTCBDGLg4BWAi7M8Y/ocbbdYsPTl7z+zN d9fZBVcKMboJlm67/mwNc3B8QeOROS8ZGaZ1Rf9wLPh41sPfj7/z8ckMxYfG6yp59Ixa32zzWF+ vxAgA
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_032408_260277_51E1FFC4 
X-CRM114-Status: UNSURE (   9.21  )
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

Hello all,

The DWC PCIe controller driver currently does not follow the PCIe
specification with regards to the delays after link training, before
sending out configuration requests. This series fixes this.

At the same time, PATCH 3/7 addresses a regression where a Plextor
NVMe drive fails to be configured correctly. With this series, the
Plextor NVMe drive works once again.


Kind regards,
Niklas


Changes since v3:
-Move LINK_WAIT_MAX_RETRIES and LINK_WAIT_SLEEP_MS to pci.h (Mani)
-Only wait PCIE_RESET_CONFIG_WAIT_MS if > 5 GT/s (Mani)
-Fix nit in commit log (Mani)


Niklas Cassel (7):
  PCI: Rename PCIE_RESET_CONFIG_DEVICE_WAIT_MS to
    PCIE_RESET_CONFIG_WAIT_MS
  PCI: rockchip-host: Use macro PCIE_RESET_CONFIG_WAIT_MS
  PCI: dw-rockchip: Wait PCIE_RESET_CONFIG_WAIT_MS after link-up IRQ
  PCI: qcom: Wait PCIE_RESET_CONFIG_WAIT_MS after link-up IRQ
  PCI: dwc: Ensure that dw_pcie_wait_for_link() waits 100 ms after link
    up
  PCI: Move link up wait time and max retries macros to pci.h
  PCI: Reduce PCIE_LINK_WAIT_SLEEP_MS

 drivers/pci/controller/dwc/pcie-designware.c  | 20 +++++++++++++++----
 drivers/pci/controller/dwc/pcie-designware.h  |  4 ----
 drivers/pci/controller/dwc/pcie-dw-rockchip.c |  1 +
 drivers/pci/controller/dwc/pcie-qcom.c        |  1 +
 drivers/pci/controller/pcie-rockchip-host.c   |  2 +-
 drivers/pci/controller/plda/pcie-starfive.c   |  2 +-
 drivers/pci/pci.h                             | 18 +++++++++--------
 7 files changed, 30 insertions(+), 18 deletions(-)

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
