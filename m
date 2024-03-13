Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D0D2C54E58
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Mar 2024 10:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dbKqPHtKOKl8tRdojWcd2IunrfAlWFTHB/lQ89Oos68=; b=wO18il56Va2+ca
	uyMKgnVS6kHBz0BkXaxOmRlgF6T3NqD77qdswV8H03jQwdNI0New7V4UmxBpoRI1/86pg8e8kABCG
	966NIkNJPDYx3lBxJhbxUTyVJ9qpinlg6c5uxbPNNeer5cGxzdyvpbff3lNKl63hrTvANm5NKg7s6
	AYtVK+pQ0rxBRdPLbhEze8RpA47NFMs+jXVU/Hi34Mf8Dvb9U+uTvqgylU+uprZLvWiVDVdnv03V5
	tXhqHz98ovxtuXwG8wslGhjDgpjzL1GhXybtM12rN6ZPkV+GuKaF4N5pGNVWq+3oCDZ+M6YMdLEIX
	BQmkIAyucXGOTyEQa6ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMJW-00000009lHQ-3nY6;
	Wed, 13 Mar 2024 10:58:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMJT-00000009lGE-0LQe;
	Wed, 13 Mar 2024 10:58:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 88DD161375;
	Wed, 13 Mar 2024 10:58:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43DE3C433C7;
	Wed, 13 Mar 2024 10:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710327501;
	bh=efgaR6TNaNFKA/8FNZRnotQOnzQaqJy11AVx/5XfNjM=;
	h=From:To:Cc:Subject:Date:From;
	b=So0Emeg6esGCvCNTWNaNGRtFW2MxuVmp0sn9jbg1DwUgWbAbnwPxe4Shj+b3Shk5q
	 JNcxc5mbRuch61sqYA0qXBMv4Oas1taoMLafc29LlhOixGD93ohlR3DUwdYNP3d4IL
	 dG7L4svrRcTXx89OHFM+TU9ftL127FLZnmNgZVawkVdWV5MZRJBbMQy8e8CDMCQdSW
	 PfpFnB4/rGIz/XiL4OaHy7FOXHodsnJl5sT/MGYVQv55MBEpjikPSYAvHjKJF1orTL
	 IAcasDbvQD7vAzh5lNMyC7LokZLdfsMlEB/rEtDOWsM0Mlq38xINoOCSMApmxlmUId
	 xNuVPDPp3ZpSw==
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Shradha Todi <shradha.t@samsung.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/9] PCI: endpoint: set prefetchable bit for 64-bit BARs
Date: Wed, 13 Mar 2024 11:57:52 +0100
Message-ID: <20240313105804.100168-1-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_035823_267518_5AD3AD35 
X-CRM114-Status: UNSURE (   9.63  )
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

Shradha Todi wanted to add prefetchable BAR support by adding more things
to epc_features:
https://lore.kernel.org/linux-pci/20240228134448.56372-1-shradha.t@samsung.com/T/#t

The series starts off with some generic cleanups and fixes which was needed
to make the implementation of the actual feature easier.

The final patch in the series sets the prefetchable bit for all backing memory
that the EPF core allocates for a 64-bit BAR.


Kind regards,
Niklas


Changes since V2:
-Fixed warning when building with W=1 reported by kernel test robot.


Niklas Cassel (9):
  PCI: endpoint: pci-epf-test: Fix incorrect loop increment
  PCI: endpoint: Allocate a 64-bit BAR if that is the only option
  PCI: endpoint: pci-epf-test: Remove superfluous code
  PCI: endpoint: pci-epf-test: Simplify pci_epf_test_alloc_space() loop
  PCI: endpoint: pci-epf-test: Simplify pci_epf_test_set_bar() loop
  PCI: endpoint: pci-epf-test: Clean up pci_epf_test_unbind()
  PCI: cadence: Set a 64-bit BAR if requested
  PCI: rockchip-ep: Set a 64-bit BAR if requested
  PCI: endpoint: Set prefetch when allocating memory for 64-bit BARs

 .../pci/controller/cadence/pcie-cadence-ep.c  |  5 +-
 drivers/pci/controller/pcie-rockchip-ep.c     |  2 +-
 drivers/pci/endpoint/functions/pci-epf-test.c | 70 +++++++------------
 drivers/pci/endpoint/pci-epf-core.c           | 10 ++-
 4 files changed, 33 insertions(+), 54 deletions(-)

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
