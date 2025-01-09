Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9E2BE77197
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 09:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dmeLHqUdTKLoum5X7snijx49QcH0bM1PO6geR6iL0gg=; b=4CTv994a2aK7lY
	T1/5hkfbZM82LIHMU5bNw+03r1RCE9J/ARn+ZNAazh1wHYL48J0x6+xHqhxlBC4buwQvzVJOqzic2
	YpYS4/0Cj+Zu0Fgyvgn/FcDQLKba5w9pRtT2IJZRiKvxd3t2lRAdv0zJ8xwoQrJoejUuQrAZODkLU
	IYVCuWGvjVXNNlyUkb3oZ7E/v/zqDAB9pndozuc+8PaY0j9eKmgOYF6i2WrY98/d8yApFNAHdaE5y
	54wV0SVqVmogLPDk2ab5cPI+R0QP3nKUQOaeZgD7FI3w90m60ju7vtqRbxskd5Qz/oULGiYhnKJ1t
	75tO8XqManoXxwmcCzqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVoax-0000000BIDq-1imK;
	Thu, 09 Jan 2025 09:12:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVoVT-0000000BH0a-2bDQ;
	Thu, 09 Jan 2025 09:07:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B4E485C4820;
	Thu,  9 Jan 2025 09:06:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B31CDC4CED2;
	Thu,  9 Jan 2025 09:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736413630;
	bh=6KlrG7UfxSvJaPknWB0rSoQau5l3FVtxo3MXEwgzCUE=;
	h=From:To:Cc:Subject:Date:From;
	b=rTDqH0AHJ6nvoW+VFen417Pt0QdHWMJKtH/3GbENGtF1YnfNr21m63oE82LyJFKyB
	 9Wv+IUH8j+y3h/EW+g7rbgXlD6L4lBj+Qfcrybeaivm8AkvHlgnzipn48QwTNX/uou
	 jRPNhpkzWipvTz0E17r1VAwS9HwN/jAD+DnArnt+bbH/w7ryJUk2YRj2VTxdtFcqEA
	 nrjkLfxPPs/NI1VehquHkbYo6aV4FqxmtLUDPDMPtaGEYqqb225YaH+qAR1SWgztLp
	 5PRdw8Z+6gK7d/sGodEs7QKm2YZ9F65tnsYEYmx1H1fLxUoChAq2h5e4+GolToi2r9
	 1Q8Hf70hQ4eDw==
From: Niklas Cassel <cassel@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/6] PCI: endpoint: Add support for resizable BARs
Date: Thu,  9 Jan 2025 10:06:52 +0100
Message-ID: <20250109090652.110905-8-cassel@kernel.org>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2645; i=cassel@kernel.org; h=from:subject; bh=6KlrG7UfxSvJaPknWB0rSoQau5l3FVtxo3MXEwgzCUE=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNLrJ65RSb/AZanz+7n7qnvJ8btNVvKedXny6KGVRuqeN 3a7Hzz831HKwiDGxSArpsji+8Nlf3G3+5TjindsYOawMoEMYeDiFICJXHJl+Cu+UtuJ3Usif/4K pWvfsquab/QlPV/h79s55Z9l5gG7ZUIM/4tajh9dLf5mu+YqsZ83XlQ1cR0X8fdR1EkVXRWspFo wiwsA
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_010711_742672_428DAEEF 
X-CRM114-Status: GOOD (  12.36  )
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

The PCI endpoint framework currently does not support resizable BARs.

Add a new BAR type BAR_RESIZABLE, so that EPC drivers can support resizable
BARs properly.

For a resizable BAR, we will only allow a single supported size.
This is by design, as we do not need/want the complexity of the host side
resizing our resizable BAR.

In the DWC driver specifically, the DWC driver currently handles resizable
BARs using an ugly hack where a resizable BAR is force set to a fixed size
BAR with 1 MB size if detected. This is bogus, as a resizable BAR can be
configured to sizes other than 1 MB.

With these changes, an EPF driver will be able to call pci_epc_set_bar()
to configure a resizable BAR to an arbitrary size, just like for
BAR_PROGRAMMABLE. Thus, DWC based EPF drivers will no longer be forced to
a bogus 1 MB forced size for resizable BARs.


Tested/verified on a Radxa Rock 5b (rk3588) by:
-Modifying pci-epf-test.c to request BAR sizes that are larger than 1 MB:
 -static size_t bar_size[] = { 512, 512, 1024, 16384, 131072, 1048576 };
 +static size_t bar_size[] = { SZ_1M, SZ_1M, SZ_2M, SZ_2M, SZ_4M, SZ_4M };
 (Make sure to set CONFIG_CMA_ALIGNMENT=10 such that dma_alloc_coherent()
  calls are aligned even for allocations larger than 1 MB.)
-Rebooting the host to make sure that the DWC EP driver configures the BARs
 correctly after receiving a link down event.
-Modifying EPC features to configure a BAR as 64-bit, to make sure that we
 handle 64-bit BARs correctly.
-Modifying the DWC EP driver to set a size larger than 2 GB, to make sure
 we handle BAR sizes larger than 2 GB (for 64-bit BARs) correctly.
-Running the consecutive BAR test in pci_endpoint_test.c to make sure that
 the address translation works correctly.


Changes since V1:
-Fix Wtautological-constant-out-of-range-compare compiler warning on
 32-bit builds.


Kind regards,
Niklas

Niklas Cassel (6):
  PCI: endpoint: Add BAR type BAR_RESIZABLE
  PCI: dwc: ep: Move dw_pcie_ep_find_ext_capability()
  PCI: dwc: endpoint: Add support for BAR type BAR_RESIZABLE
  PCI: keystone: Describe resizable BARs as resizable BARs
  PCI: keystone: Specify correct alignment requirement
  PCI: dw-rockchip: Describe resizable BARs as resizable BARs

 drivers/pci/controller/dwc/pci-keystone.c     |   6 +-
 .../pci/controller/dwc/pcie-designware-ep.c   | 228 +++++++++++++++---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c |  22 +-
 drivers/pci/endpoint/pci-epf-core.c           |   4 +
 include/linux/pci-epc.h                       |   3 +
 5 files changed, 216 insertions(+), 47 deletions(-)

-- 
2.47.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
