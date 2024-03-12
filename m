Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C902C54E58
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Mar 2024 10:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AtL3j5ozeQ0RctTre/VbuC6ja4TBs9MPbSvtj/g1hKY=; b=Ix+jZ+AHL9N2vo
	mfjaSLtLow86WWY6NIckCc+6l0vdeKi6WiyqQj0LjCoV16IinK54ZAeoXojxppRiE+t911iSexXaC
	nZ+Y9yZPBsQkwTHUWKiedIp8tv+r0VJmnZCRAuubi8+aJjwPU9L6t0zG+lCplJP0ypfCo2Dj3WRZa
	kmc4zRDLuYjj6ftayJNMd7C9iPezR1HI0XJEJRLr7waW0BzqtFDBc9ejNpo12vLfdadO8utbKEg0k
	JlBi787JoaBHRib24iBtQTcpF1Qn70TzDvVaWvELEWJghBLqAOOQ4m73LT1tk2d7DO3WHq5eJrv7v
	IwQbZomvpSmboDXUxaug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjzkI-00000005QSy-0TpZ;
	Tue, 12 Mar 2024 10:52:34 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjzkD-00000005QPl-1qIP;
	Tue, 12 Mar 2024 10:52:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 276F3CE12D4;
	Tue, 12 Mar 2024 10:52:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60213C433F1;
	Tue, 12 Mar 2024 10:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710240746;
	bh=gLB2KAEejr4yFbPG8yMOboe39FhTnoO5eBMwKPyo8g4=;
	h=From:To:Cc:Subject:Date:From;
	b=CzVsGs74ke+htWoFS1y92ISAzn84V9qYO620OqY4AaIRCoxZICT4QVvVOsI6RmJlY
	 joo81K7vtNGO3Ve1YuFQCMgJABzfhXHYDMf0ydEXD0Ey5PbEtv1N3CVyy6hECWxbyh
	 xb1uTmvupOXY2JFGcMbCFX5IR6VY9tvIu9rXIQgzSV6KCbVew6r0WzxhIBh8bS/4Ix
	 ll/dhYFRaZVwnnJ4iBvaQWVNctgDvg6hWPCNNJjDi1pDZzdnMLpc3vTvMqrh9u0Dwz
	 HemhIiE41ruFqblUSjv5c1HhnMSnlrYkYFza8n6hmvI6cgrKwfb5JSzBsR6w1OYmkx
	 4oNxChfd0Xr+w==
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
Subject: [PATCH v2 0/9] PCI: endpoint: set prefetchable bit for 64-bit BARs
Date: Tue, 12 Mar 2024 11:51:40 +0100
Message-ID: <20240312105152.3457899-1-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240312_035229_677693_498A1039 
X-CRM114-Status: UNSURE (   9.79  )
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
-Addressed my own comments.
-Added additional clean up patches.


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
 drivers/pci/endpoint/functions/pci-epf-test.c | 67 +++++++------------
 drivers/pci/endpoint/pci-epf-core.c           | 10 ++-
 4 files changed, 33 insertions(+), 51 deletions(-)

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
