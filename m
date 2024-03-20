Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5916CD11DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Mar 2024 11:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3DYk4nc8hVzocNgcwNWnrtTocOL0fczWZDCHIaLbRSg=; b=HVd4ntVhen9TWH
	4DjtfWc965BW/GqRFlG9J4ii0Ld+2FZAz2slrc5ZHhAtHLuO4law+uTbmrXQu6FDIVva7iea27v2l
	/S9LcJPsrOO3Ry6fvDLT3HHFe8Z6kJ9z460OPscYD5XOTmJj3vUH0ePidumDRpUG6qejWxS/qZ+eY
	5qKtlwokwBSO63naC7abM9zzKxf53RjwFb0Aq5E5HxndnSUw19deTyQAE6adQZgTO6rvsCPu5j0Jd
	i1dA1jA++Zt3aUbFxQFzRXUgPDGTFV9VB5Utx78sqGZt45sVEX2PmjhWWZoPAztTf5bj2CLC2RWH0
	sWIOZ3W+YD5O7lt+hnJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmuBC-0000000GyWu-1LNn;
	Wed, 20 Mar 2024 11:32:22 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmuB8-0000000GySx-17Np;
	Wed, 20 Mar 2024 11:32:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id F0DC9CE10F6;
	Wed, 20 Mar 2024 11:32:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 268A0C433F1;
	Wed, 20 Mar 2024 11:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710934332;
	bh=tzgUpmABMb7wWge/LeYF3xODAAn0nytvaA+gThVT5y0=;
	h=From:To:Cc:Subject:Date:From;
	b=dFNWOVtrneTf+vbM/gl3vvwz2QOwiLHuJNmqN33YsSyuqudWO9FtfAImQ95XkhlnO
	 4V5kwHb9w0W62sQOeJBB6mI87oZWSeL6hKbgyxjuhkfIl/nLlcRi7e79W5RVcyp0TU
	 s4GFrMIak5yH9BOuwkwA591uKRFB6xQDaaOS4A6NjiHBoBoSt8ZQm/jvpeaYbDDC00
	 KMKwDGkH4VRWo2fVaapSNTS83L4K818g3xmWlW/uJqBy6KdwFZexBGmbkFa6KRlCZV
	 YE83u3MHIo2w3ytOPyPTDKqDNZiGqyQuRhUqsL5xS0HtmEhPTDE+DLY19CKcB8u3kW
	 fsau7LgzDB7Uw==
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
Subject: [PATCH v4 0/7] minor PCI endpoint cleanups
Date: Wed, 20 Mar 2024 12:31:47 +0100
Message-ID: <20240320113157.322695-1-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_043218_518528_CE65A93D 
X-CRM114-Status: UNSURE (   9.15  )
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

This series used to be called:
"PCI: endpoint: set prefetchable bit for 64-bit BARs"

However, since after discussions with Arnd and Mani, that patch has been
dropped, however, the other cleanups are still worth including IMO, thus
the series has been renamed.


Changes since v3:
-Picked up tags from Mani.
-Fixed minor comments from Mani.
-Dropped patch [PATCH v3 1/9] PCI: endpoint: pci-epf-test: Fix incorrect
 loop increment.
-Dropped patch [PATCH v3 9/9] PCI: endpoint: Set prefetch when allocating
 memory for 64-bit BARs.
-Reordered some of the patches to have a more logical ordering.


Niklas Cassel (7):
  PCI: endpoint: pci-epf-test: Simplify pci_epf_test_alloc_space() loop
  PCI: endpoint: Allocate a 64-bit BAR if that is the only option
  PCI: endpoint: pci-epf-test: Remove superfluous code
  PCI: endpoint: pci-epf-test: Simplify pci_epf_test_set_bar() loop
  PCI: endpoint: pci-epf-test: Clean up pci_epf_test_unbind()
  PCI: cadence: Set a 64-bit BAR if requested
  PCI: rockchip-ep: Set a 64-bit BAR if requested

 .../pci/controller/cadence/pcie-cadence-ep.c  |  5 +-
 drivers/pci/controller/pcie-rockchip-ep.c     |  2 +-
 drivers/pci/endpoint/functions/pci-epf-test.c | 62 +++++--------------
 drivers/pci/endpoint/pci-epf-core.c           |  9 ++-
 4 files changed, 23 insertions(+), 55 deletions(-)

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
