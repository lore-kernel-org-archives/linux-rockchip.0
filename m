Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9D46CFD37C
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 12:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aeh2f63YwG0wpgoYASfLN+CyttVh/x6pOexHxV1Zxec=; b=ajTrA9qIExrb5l
	1LLCFsFfH4iuZNbxevIdj/qnowRmoQjYaUtNUo/N40OxaOS11wSLCWEKy1NDzXnlxXEP447zYtNRr
	MUDNfSq1r2dRokiKXvscyk+jEzuYQBemapvrEVdnWo/Ff0vDhJSeYBJa0Typis+6AHGXLQI0Cw9F+
	QGqhaVFdD2E31I0+PCS6k+dEDSE8Zh5a7v/4UT1o7VUAj4LEl922h4PluEihbq8ENtysplAMRUNys
	efsZfvwyANTmtNf28KLiRBXZ55LuuWXNceA3pkOeZFxbRyza3wQCy9b29kWMGKJzgGjyAKWQoHdwy
	GWloNHEhHu8Gm5njIb4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szEhc-0000000GHrZ-10M8;
	Fri, 11 Oct 2024 12:25:04 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szEX6-0000000GFl5-3c3C
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Oct 2024 12:14:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 19637A43D7B;
	Fri, 11 Oct 2024 12:14:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77999C4CEC3;
	Fri, 11 Oct 2024 12:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728648851;
	bh=kd54sH6YhOnXIo+Km/qLp2CNCHxAoohftut1wYnFYkA=;
	h=From:To:Cc:Subject:Date:From;
	b=IG2E0WoEvJqxcUAcVv7v+asTeHVwM4c49eBztyYcm3w0sc4waRiB1fPn5c/1VbENl
	 aUC2UzQ8g8A2YYQSrpRYyizf9JG0QUFjEteTADfPS7dZ7NviEG/jUaUB8Htr2aVy5z
	 KPPGT9N1ZtoqiEjYkxs9+c97rcgFu7EwlXHmwpk0cfPnfNcv1FOnt5brbdAEHsyLNU
	 Kkwf80MESHV4GgRsHgDZwcNUnqcO/+tfqPU0qO9vVb7E/0t6OF/i3DwMNqwN+Eknl6
	 XTV+0zvUVmyfOMuUhwStPxPl6snRszjjqoZKYBVbl/7Iq/2wkWp1Aw8SMj3eqQ78pK
	 f/x2ukcFEMAvQ==
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
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v4 00/12] Fix and improve the Rockchip endpoint driver
Date: Fri, 11 Oct 2024 21:13:56 +0900
Message-ID: <20241011121408.89890-1-dlemoal@kernel.org>
X-Mailer: git-send-email 2.46.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_051413_070076_F6910684 
X-CRM114-Status: GOOD (  12.24  )
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

This patch series fix the PCI address mapping handling of the Rockchip
endpoint driver, refactor some of its code, improves link training and
adds handling of the #PERST signal.

This series is organized as follows:
 - Patch 1 fixes the rockchip ATU programming
 - Patch 2, 3 and 4 introduce small code improvments
 - Patch 5 implements the .get_mem_map() operation to make the RK3399
   endpoint controller driver fully functional with the new
   pci_epc_mem_map() function
 - Patch 6, 7, 8 and 9 refactor the driver code to make it more readable
 - Patch 10 introduces the .stop() endpoint controller operation to
   correctly disable the endpopint controller after use
 - Patch 11 improves link training
 - Patch 12 implements handling of the #PERST signal

This patch series depends on the PCI endpoint core patches from the
V5 series "Improve PCI memory mapping API". The patches were tested
using a Pine Rockpro64 board used as an endpoint with the test endpoint
function driver and a prototype nvme endpoint function driver.

Changes from v3:
 - Addressed Mani's comments (see mailing list for details).
 - Removed old patch 11 (dt-binding changes) and instead use in patch 12
   the already defined reset_gpios property.
 - Added patch 6
 - Added review tags

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

Damien Le Moal (12):
  PCI: rockchip-ep: Fix address translation unit programming
  PCI: rockchip-ep: Use a macro to define EP controller .align feature
  PCI: rockchip-ep: Improve rockchip_pcie_ep_unmap_addr()
  PCI: rockchip-ep: Improve rockchip_pcie_ep_map_addr()
  PCI: rockchip-ep: Implement the pci_epc_ops::get_mem_map() operation
  PCI: rockchip-ep: Rename rockchip_pcie_parse_ep_dt()
  PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() memory allocations
  PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() MSI-X hiding
  PCI: rockchip-ep: Refactor endpoint link training enable
  PCI: rockship-ep: Implement the pci_epc_ops::stop_link() operation
  PCI: rockchip-ep: Improve link training
  PCI: rockchip-ep: Handle PERST# signal in endpoint mode

 drivers/pci/controller/pcie-rockchip-ep.c   | 408 ++++++++++++++++----
 drivers/pci/controller/pcie-rockchip-host.c |   4 +-
 drivers/pci/controller/pcie-rockchip.c      |  21 +-
 drivers/pci/controller/pcie-rockchip.h      |  24 +-
 4 files changed, 370 insertions(+), 87 deletions(-)

-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
