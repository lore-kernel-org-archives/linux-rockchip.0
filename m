Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BBD3606A31F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 07:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aZezfHxY;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=C9vlpw2a
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=kLUAZNlfj7MvSHbWEaVxntUnlPJL4ybyKznoCUInFyY=; b=aZezfHxYk+E7RfYjxWHUwPGwTt
	gOxbK91zuVTx4Rfo662/+ZIA9+nji2OV8qtWHtzIYrBj3RzYLsYMlBEH0nc/7jf32Xpi2ST+fCBRq
	pSjpVCGeKPnLaA/+RyOxbytGIZtgpZbySk13ZOS8j336mhooFzMZQk2vA9w6EIpWEdGv0DPhyFJ/I
	pqmzq9Vm29ApIR4oFEABnvn/K1I3+xVIAUKid7WoEegRH2r6iy69EmBDtTii+TcM8NxKhM2mpa3OH
	G6XKkZnfYT80i5f5cgAWXRouaZFEsv5B+Is+09J657tWoMJiI6kya2z5OOq+BW/ozD1IwNISLZB4S
	sNm+UP/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLc22-00000003xJ2-1ggn;
	Tue, 27 Oct 2026 07:55:42 +0000
Received: from mail-m8320.xmail.ntesmail.com ([156.224.83.20])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLc1y-00000003xH6-0aza
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 07:55:41 +0000
Received: from localhost.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 527d681d1;
	Tue, 27 Oct 2026 15:55:33 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 0/2] Manage the PCIe supplies with pwrctrl
Date: Tue, 27 Oct 2026 15:55:18 +0800
Message-Id: <20261027075520.3591049-1-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.25.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa17c5b7cf003a4kunmefbf004c4b8273
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDSEtOVkJCHRlCSkkYGRhCQlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=C9vlpw2ajSEUYZfntgIh45itrjseVYKzWGhYBVtKPodxZVz3HQVJbtg6p6v8MUzi5BLNMAENNwU5BY/kOJb4rTx+L2HgPm66vOI5SM6wuXY8EV3nwv83nPKIsQKZFrEZYXR8ASSX9+IV4tLAix9vhd7b3a9+kGog6FdndoJbdMY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=1fJwad9d4tyqt4SjrD99rAhUThoxvoAA2TOTT72jfPw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_005538_747213_90E49260 
X-CRM114-Status: GOOD (  10.09  )
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
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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



Shawn Lin (2):
  PCI: dw-rockchip: Power on devices below the RC using pwrctrl
  arm64: dts: rockchip: rk3588-evb1: describe the PCIe3x4 slot supply

 .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 14 ++++++++-
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 30 ++++++++++++++++---
 2 files changed, 39 insertions(+), 5 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
