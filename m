Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F190C71136
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 13:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BYJwUVOXaRrhcZv37s7shkHZH+yqw8ZigY8HDwC+zLg=; b=K2tbBDXx1acrZh
	IuFmHLCL0WmtgX8NyGIY49gbKPUAJleDgj4APIKFvobbN8oAZPJOhAP1ygZ3dYEENOLUOmI1BKrlH
	Ts4d8LDo76rYVu2oQC8hUuf9IBkv1vE6Ufp/cIl2imQ3/cCrEPzyYSeIID4Po39YNC87N+Ysm3jpe
	GN4veuxwBxnDAwDQBIKi2h35/08QoAwFac5CX1edQ7JMYI6GrRxw2uFX1IF/Q4WhvDIjOEFnUAIVs
	gmy3V5TXk1JzwAQbhCkiuiewPf7WE5V25PKQAoeLrLgQi/aRZfsF/1SMmLBpL9keK6zRTBmN3eWJu
	736TxMC8EFB5WmpfwtFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPhqe-0000000DORP-07IL;
	Thu, 12 Jun 2025 13:20:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPgRZ-0000000DBry-1dEz;
	Thu, 12 Jun 2025 11:50:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1FA0E4491B;
	Thu, 12 Jun 2025 11:50:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29921C4AF0C;
	Thu, 12 Jun 2025 11:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749729005;
	bh=GHuMuAeNK50IE8bnNq+YCIKQbjGZygjZTh2aEInq0qI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RpS2iSmY6gJsj1xmQLwNSatzd1YUcLQ6Z1HAp/6BAC6nadqpJTsiJZwcsiOqHzuZV
	 EWm60IVh1PZTq9i5n7IvP8cYojc8J728NRXQgsVPUFZF0Ly4aPKdYaIHvarUtIVcoZ
	 PsayNiGGp8QBVdzChUzwxlBxFpTgqOtHt1FjDKxUWo/5j9yx+x8FpXCxjzckBzs21+
	 0k1Dn0GvM02pSOnSyNZSRlggbdzSz4Qub53K8PsKewGg/iMJtkOyHxOcrV4QdLwaI1
	 fYlOKwkqRCjwLcYu7GXPe2P8v9uf+RQked3Mx8he46G8txXiQIEQK5AmLDG9ypxtYH
	 H8ljaiYjkkM6w==
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Laszlo Fiat <laszlo.fiat@proton.me>,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 5/5] PCI: rockchip-host: Use macro PCIE_RESET_CONFIG_DEVICE_WAIT_MS
Date: Thu, 12 Jun 2025 13:49:28 +0200
Message-ID: <20250612114923.2074895-12-cassel@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612114923.2074895-7-cassel@kernel.org>
References: <20250612114923.2074895-7-cassel@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2074; i=cassel@kernel.org; h=from:subject; bh=GHuMuAeNK50IE8bnNq+YCIKQbjGZygjZTh2aEInq0qI=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGDK89p2UvyofNoNVg0tjwU/bUP9na6M0Tk9/nPntwe8tO mJFuzfmd5SyMIhxMciKKbL4/nDZX9ztPuW44h0bmDmsTCBDGLg4BWAiHBsZ/gefsdfU5LrbsXzZ svgHDRNEEkPdAk9eLH62n7nWk1vj+wGGf9paj28uLI+68GX+LK3oyrQk+09VzDk73ON5tvOVlKS lsAMA
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_045005_464315_B012F6A0 
X-CRM114-Status: GOOD (  11.69  )
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

Macro PCIE_T_RRS_READY_MS was added to pci.h in commit 70a7bfb1e515 ("PCI:
rockchip-host: Wait 100ms after reset before starting configuration").

Later, in commit d5ceb9496c56 ("PCI: Add PCIE_RESET_CONFIG_DEVICE_WAIT_MS
waiting time value"), PCIE_RESET_CONFIG_DEVICE_WAIT_MS was added to pci.h.

These macros represent the same thing.

Since the comment above PCIE_RESET_CONFIG_DEVICE_WAIT_MS is strictly more
correct than the comment above PCIE_T_RRS_READY_MS, change rockchip-host
to use PCIE_RESET_CONFIG_DEVICE_WAIT_MS, and remove PCIE_T_RRS_READY_MS,
as rockchip-host is the only user of this macro.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-host.c | 2 +-
 drivers/pci/pci.h                           | 7 -------
 2 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index b9e7a8710cf0..3d40daff98bd 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -325,7 +325,7 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 	msleep(PCIE_T_PVPERL_MS);
 	gpiod_set_value_cansleep(rockchip->perst_gpio, 1);
 
-	msleep(PCIE_T_RRS_READY_MS);
+	msleep(PCIE_RESET_CONFIG_DEVICE_WAIT_MS);
 
 	/* 500ms timeout value should be enough for Gen1/2 training */
 	err = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_BASIC_STATUS1,
diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
index 12215ee72afb..5a83338c8f99 100644
--- a/drivers/pci/pci.h
+++ b/drivers/pci/pci.h
@@ -35,13 +35,6 @@ struct pcie_tlp_log;
  */
 #define PCIE_T_PERST_CLK_US		100
 
-/*
- * End of conventional reset (PERST# de-asserted) to first configuration
- * request (device able to respond with a "Request Retry Status" completion),
- * from PCIe r6.0, sec 6.6.1.
- */
-#define PCIE_T_RRS_READY_MS	100
-
 /*
  * PCIe r6.0, sec 5.3.3.2.1 <PME Synchronization>
  * Recommends 1ms to 10ms timeout to check L2 ready.
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
