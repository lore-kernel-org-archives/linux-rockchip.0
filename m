Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15544606A31A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 02:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ad5kuWtE;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=buqtItTt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=CgbSfz/r4XsJXS3CO1DuKeWtDrRUO8RG9o9ofdEK4gA=; b=ad5kuWtEux3objOzP8vr9b5PFH
	HfQmfnnTCpxbuylTtMjK8RdetiB3A9yN6viAvs7oMXxQJ1MNj7mlhTvM+kyNd5QaEXXNm0Ve7g8z3
	EP0zT5u/Gu8SUTsmNsPJUryMQ32V8jK8czGCoeaw62ujKN74JdvNnw7x4SFnw2GhYJdmdGIcuQ2ra
	0v+TLtnwV0KHU5vN2+8ZrjbUzKApadE2Eeh4TUeo7f3Ag27FIdiU8KiUsu9D4tU4Tm4qtmoqGP45L
	sNGX0p/SXkT3tIjvd/eBrIdwoGzRdyq3v/c4iN82hG948VvJ1aflmaHgiLML6mYnSK3OQ94klGu4P
	QTCNz99Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMG42-00000008CcK-06GC;
	Thu, 29 Oct 2026 02:40:26 +0000
Received: from mail-m21472.qiye.163.com ([117.135.214.72])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMG3z-00000008Cay-0HJ7
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 02:40:24 +0000
Received: from localhost.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 52bb2512f;
	Thu, 29 Oct 2026 10:40:16 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 0/2] Manage the PCIe supplies with pwrctrl
Date: Thu, 29 Oct 2026 10:40:04 +0800
Message-Id: <20261029024006.3483210-1-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.25.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa185878e8703a4kunmf51ad3a01124bd
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCS01NVh4fGh5KHhpISRhKT1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=buqtItTtEUq3DI2U8GtApHJXiZmFzChzHwAcmbuHxVec6hvGWOfEd+KJUtKPJPPa2mzzeHR5IE0F3mB6FZdldBWG6IGhOu54M644gdGADJmRGZDRuaYVv8sVVR4lB8G1hduYfZvmGz43F9s65uZSdcdLi7GCfIUeeTlLNpZt6pc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Q4migt+JhVpeIUD/eAEu5pH5ki1PzAXg2mx7vuH89hk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_194023_754301_179299A1 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


The Rockchip PCIe host controller describes a single vpcie3v3 supply on
the controller node to power whatever is plugged into the slot. That is
enough for a board that only ever has one device there, but it cannot
express per-device supplies, and it does not fit boards where the slot
power is owned by a separate power sequencing or switch device.

This series switches the pcie-dw-rockchip driver to the generic PCI
pwrctrl framework, which lets the supplies of the devices below a host
controller be described in their own DT nodes and be enabled before the
PHY is initialized.

Patch 1 makes the driver create and power on the pwrctrl devices below
the controller ahead of the PHY init. The controller level vpcie3v3 supply
is kept for backward compatibility, so existing boards keep working unchanged.

Patch 2 moves the supply of the RK3588 EVB1 slot into a child node that
describes the slot as a PCI bridge.


Changes in v2:
- Select PCI_PWRCTRL_GENERIC from PCIE_ROCKCHIP_DW, so that the
  built-in controller driver cannot end up with undefined
  pci_pwrctrl_* references when the pwrctrl core is a module(sashiko)
- Do not destroy the pwrctrl devices on -EPROBE_DEFER, so that the
  deferred child devices can still bind and retrigger the
  probe(sashiko)

Shawn Lin (2):
  PCI: dw-rockchip: Power on devices below the RC using pwrctrl
  arm64: dts: rockchip: rk3588-evb1: describe the PCIe3x4 slot supply

 .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 14 +++++++-
 drivers/pci/controller/dwc/Kconfig            |  1 +
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 32 ++++++++++++++++---
 3 files changed, 42 insertions(+), 5 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
