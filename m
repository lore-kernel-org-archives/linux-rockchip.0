Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B760CCFB43C
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 04:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ey7CLvTzAVC2dzdGSs/ZtbwBbKV0gR7zX9sCiv3vJYA=; b=T9hyTtrULv0PvL
	hIHBRJFC2UWWH43UuKPFskgMnl1nBs+ZBhuBeSXtR1T8oPQxktjVItHHCeXqVIuDD2Rg54MtazjYR
	SrHSXKDRtWO1TSm5uX6X1tDiPyCUJYl2LjX2b4vesYfYQHkhNOTsr/B7anwOyHLVSGwgSez/0iCCv
	AX6cPIT5AxhBKvkwag0wK91YF9qdpD2DiTDCz3KNgPzY2s50/Kb3H5vg1Q2reWt0+CVkNaGQEBdng
	i9+pIjC0gyh/oLcre8fD6+lEbS8p7b4jrDpryXV7L1D8krF4Qb+N8vAp/MjErW+LjNOB+P/xj/01L
	61QfVIYn9oDtKGeucEjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxf6h-00000001Cvk-0rcl;
	Mon, 07 Oct 2024 04:12:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxf6d-00000001Cv5-2BKV
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 04:12:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0D7AB5C5BB1;
	Mon,  7 Oct 2024 04:12:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDCC2C4CEC6;
	Mon,  7 Oct 2024 04:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728274342;
	bh=pBd4mpQbBt2uBbtEczYEejdQ6FSxmXUytAe+feLiGd8=;
	h=From:To:Cc:Subject:Date:From;
	b=gJzb3hlLIGeNwg2h5HQYF02ldUMLXclzAE+Y4MITxeM/pPn8bRL3cvs0csIHhnVtm
	 sR+NvRGwHIabPnsPiW0rWCzwtb3qxChjHWciLiokc7Ocjt7MwoKtENUugCVluNKp29
	 /abhzrx+IFGUJXEKWigGqBI56ugP70nD/Ke79PtZ0zTIptxwkLGfbDZ8tlWZuEkbO+
	 eMBWKI+V0OCV2Puhaa/u0vzJ6BLVIjJamCI3G7dx5zaJIsIG4g1/fX1oxEVpFjRaF0
	 jVwhM+AF6uf6NmyM+Ei4q0kd8PsXw2LCIULfw8FAHte+NUBdvuWuJLewVk+scb0R/u
	 uRG1C1syfYtgA==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v3 00/12] 
Date: Mon,  7 Oct 2024 13:12:06 +0900
Message-ID: <20241007041218.157516-1-dlemoal@kernel.org>
X-Mailer: git-send-email 2.46.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_211223_625500_D7EA4F71 
X-CRM114-Status: GOOD (  10.82  )
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

This patch series is the second part of the former version 2 of the
patch series "Improve PCI memory mapping API". This second part is split
out as it deals solely with the rockchip/rk3399 PCI endpoint controller
driver.

This series is organized as follows:
 - Patch 1 fixes the rockchip ATU programming
 - Patch 2, 3 and 4 introduce small code improvments
 - Patch 5 implements the .map_align() operation to make the rk3399
   endpoint controller driver fully functional
 - Patch 6, 7 and 8 refactor the driver code to make it more readable
 - Patch 9 introduces the .stop() endpoint controller operation to
   correctly disable the endpopint controller after use
 - Patch 10 improves link training
 - Patch 11 and 12 implement handling of the #PERST signal

Changes from v2:
 - Split the patch series
 - Corrected patch 11 to add the missing "maxItem"

Changes from v1:
 - Changed pci_epc_check_func() to pci_epc_function_is_valid() in patch
   1.
 - Removed patch "PCI: endpoint: Improve pci_epc_mem_alloc_addr()"
   (former patch 2 of v1)
 - Various typos cleanups all over. Also fixed some blank space
   indentation.
 - Added review tags

Damien Le Moal (11):
  PCI: rockchip-ep: Fix address translation unit programming
  PCI: rockchip-ep: Use a macro to define EP controller .align feature
  PCI: rockchip-ep: Improve rockchip_pcie_ep_unmap_addr()
  PCI: rockchip-ep: Improve rockchip_pcie_ep_map_addr()
  PCI: rockchip-ep: Implement the .map_align() controller operation
  PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() memory allocations
  PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() MSI-X hiding
  PCI: rockchip-ep: Refactor endpoint link training enable
  PCI: rockship-ep: Introduce rockchip_pcie_ep_stop()
  PCI: rockchip-ep: Improve link training
  PCI: rockchip-ep: Handle PERST# signal in endpoint mode

Wilfred Mallawa (1):
  dt-bindings: pci: rockchip,rk3399-pcie-ep: Add ep-gpios property

 .../bindings/pci/rockchip,rk3399-pcie-ep.yaml |   4 +
 drivers/pci/controller/pcie-rockchip-ep.c     | 392 +++++++++++++++---
 drivers/pci/controller/pcie-rockchip.c        |  17 +-
 drivers/pci/controller/pcie-rockchip.h        |  22 +
 4 files changed, 358 insertions(+), 77 deletions(-)

-- 
2.46.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
