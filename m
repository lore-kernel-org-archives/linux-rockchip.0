Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA578C47DD9
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 04:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b88FVuh2EV+tbf1Gfpnb7XaB8L9t3SF+8gpjt8e/dS4=; b=GogeEC7MINf0kF
	IZPe845VunOGfCTmmBpXrsk4LbWIfhezBELtOWmmCuKU9jE1oQEW1/x0xBsBfHOfM+IX8w5w9OgdS
	ye6cKv/evY+S95EvxN3UeAhKNRAcEev/BFDWzsWtV4IeylkVhzAHoSFv9kAd42wqGQ5yV+V3prr5h
	iDJb2uwFrE0NqXiCrQ9hU47i7j0VPjOgGXxg9YuKlADtsSLSaKVa/tcCEjYS0ovwoSJK+ZZAQ8FvO
	lckev9ZMqLhBc+LSsXGEvyj6JJj384zRnhOX/zjMTzATjwNCeawaku0cFLUxyeeIWMhFAJENuP2ea
	w0X0xSmd85jnrAm6R3Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQBv-00000002jdR-22Qd;
	Sat, 30 Mar 2024 04:19:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQBq-00000002jcA-2IDy;
	Sat, 30 Mar 2024 04:19:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C53E36023A;
	Sat, 30 Mar 2024 04:19:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D786C433F1;
	Sat, 30 Mar 2024 04:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711772372;
	bh=yqcpDQ7Oi9nakTIZQuqI0KjlBKYztEHhTCBVRdVKIB8=;
	h=From:To:Cc:Subject:Date:From;
	b=CXjlqujSZFqUQeRyZD/h2KYRCvGo4Y4mk9Ja5F7MQHQfcTDcqRLu9LmiqyXCVlDsd
	 tG6FLkQol6Q+rrNk4ttvVK+1z9Wum1e5H/GUwVzc9AM9yMwc6OaLs/zoH6UHiXxrll
	 NdGXTsHyHPZbX5KzEZWNxfJ2u9ZWn1bd7rrluVx5W+6BoChSOWtIVD5LsU9Z8vflNM
	 ZhI0C0it2hpPuV40whGQJ6G7m9yXKVgc0bajFrqyWpZkqATMSAzsa/019BZcJUwe3i
	 tON8zV+F8XhCZJzmw2qoV0gqZ5yj3/UCy4gaS7D7haQrvPupBNWZl3GKON20G4sCMi
	 zcdGqBFDUa00g==
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
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v2 00/18] Improve PCI memory mapping API
Date: Sat, 30 Mar 2024 13:19:10 +0900
Message-ID: <20240330041928.1555578-1-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_211934_778112_A2BF02E7 
X-CRM114-Status: GOOD (  15.24  )
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

This series introduces the new functions pci_epc_map_align(),
pci_epc_mem_map() and pci_epc_mem_unmap() to improve handling of the
PCI address mapping alignment constraints of endpoint controllers in a
controller independent manner.

The issue fixed is that the fixed alignment defined by the "align" field
of struct pci_epc_features assumes that the alignment of the endpoint
memory used to map a RC PCI address range is independent of the PCI
address being mapped. But that is not the case for the rk3399 SoC
controller: in endpoint mode, this controller uses the lower bits of the
local endpoint memory address as the lower bits for the PCI addresses
for data transfers. That is, when mapping local memory, one must take
into account the number of bits of the RC PCI address that change from
the start address of the mapping.

To fix this, the new endpoint controller method .map_align is introduced
and called from pci_epc_map_align(). This method is optional and for
controllers that do not define it, the mapping information returned
is based of the fixed alignment constraint as defined by the align
feature.

The functions pci_epc_mem_map() is a helper function which obtains
mapping information, allocates endpoint controller memory according to
the mapping size obtained and maps the memory. pci_epc_mem_map() unmaps
and frees the endpoint memory.

This series is organized as follows:
 - Patch 1 tidy up the epc core code
 - Patch 2 and 3 introduce the new map_align endpoint controller method
   and related epc functions.
 - Patch 4 to 6 modify the test endpoint driver to use these new
   functions and improve the code of this driver.
 - Finally, Patch 7 to 18 fix the rk3399 endpoint driver, defining a
   .map_align method for it and improving its overall code readability
   and features.

Changes from v1:
 - Changed pci_epc_check_func() to pci_epc_function_is_valid() in patch
   1.
 - Removed patch "PCI: endpoint: Improve pci_epc_mem_alloc_addr()"
   (former patch 2 of v1)
 - Various typos cleanups all over. Also fixed some blank space
   indentation.
 - Added review tags

Damien Le Moal (17):
  PCI: endpoint: Introduce pci_epc_function_is_valid()
  PCI: endpoint: Introduce pci_epc_map_align()
  PCI: endpoint: Introduce pci_epc_mem_map()/unmap()
  PCI: endpoint: test: Use pci_epc_mem_map/unmap()
  PCI: endpoint: test: Synchronously cancel command handler work
  PCI: endpoint: test: Implement link_down event operation
  PCI: rockchip-ep: Fix address translation unit programming
  PCI: rockchip-ep: Use a macro to define EP controller .align feature
  PCI: rockchip-ep: Improve rockchip_pcie_ep_unmap_addr()
  PCI: rockchip-ep: Improve rockchip_pcie_ep_map_addr()
  PCI: rockchip-ep: Implement the map_align endpoint controller operation
  PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() memory allocations
  PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() MSI-X hiding
  PCI: rockchip-ep: Refactor endpoint link training enable
  PCI: rockship-ep: Introduce rockchip_pcie_ep_stop()
  PCI: rockchip-ep: Improve link training
  PCI: rockchip-ep: Handle PERST# signal in endpoint mode

Wilfred Mallawa (1):
  dt-bindings: pci: rockchip,rk3399-pcie-ep: Add ep-gpios property

 .../bindings/pci/rockchip,rk3399-pcie-ep.yaml |   3 +
 drivers/pci/controller/pcie-rockchip-ep.c     | 393 ++++++++++++++----
 drivers/pci/controller/pcie-rockchip.c        |  17 +-
 drivers/pci/controller/pcie-rockchip.h        |  22 +
 drivers/pci/endpoint/functions/pci-epf-test.c | 390 +++++++++--------
 drivers/pci/endpoint/pci-epc-core.c           | 213 +++++++---
 include/linux/pci-epc.h                       |  39 ++
 7 files changed, 768 insertions(+), 309 deletions(-)

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
