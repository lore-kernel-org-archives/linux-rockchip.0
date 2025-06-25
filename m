Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A68B9C7115C
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Jun 2025 12:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5ZiFkiAsBbBjOZVfdLA2hEGay2FvqHTW2VU8i3kAd0=; b=xXhX0TGCDwzCHd
	pkpDJsoGIwCK3gmXQltunZgSpUB7lJfMFygBzgWuJDFlmQm/aGrzc5VU1P5yI/L3ytv5tuieVt0QS
	ggB1OTkRuRJxu7VUlNIRHgdMtrSRkY6J2PPPHO9GFRD8tHsXzgrNocKMQB68ooXqstrEsDccaN+x9
	eBLqQzexUYKBiLhISLCbsh9elKkl/LhdCh6fz+/zc4D9n/Zdo+yGML7byY0qWoxFsr2g8NFa132YP
	zZbECD9hgFr8c93xL6THyhsfLjy+XkDriL3qbJ5ybWerLzkE2IsS1+37K1FzxaptkJ85Onanr5J9T
	gScNYgbItfd4HjFAFIqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUOvr-00000008a5m-4AMF;
	Wed, 25 Jun 2025 12:08:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUNIc-00000008Ik4-0ciR;
	Wed, 25 Jun 2025 10:24:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 80A5243CC2;
	Wed, 25 Jun 2025 10:24:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8ABC7C4CEF1;
	Wed, 25 Jun 2025 10:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750847053;
	bh=F2ftyv+Q/EHTUyO7jIwBMNf62KBdMrEQKTlHC9NEFOM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XQ4WearlTSgu+KRp7gt3QpzQdipavHkEEt4AAHZ1HbSpHdMMNEo8WdSQ3RXzwNYBf
	 07KZI3YHjgi2e9Olh7jQMsQQnv+v2reKQ+kKFw17K322jjE0OoBaUH7VN2tRGkkh+Z
	 dP7/JIarM3I3PEYnwbAVE0PnsL8lzGrkLJXVcxfBIRmDCurn2CEkF6UKqXO31Sq2SR
	 6XCkKdtYESboPHwRa3WgXwX5Zgpkc/hgJgbJ0KcjGkNXChuFVVTDf0Sc44kO1ZWpzZ
	 /0flIJysotNd0DKRktGbq2Sh8C0YlOP7fb+0pvf59DYSbh7L1qvrlK/50iYuyFpodr
	 zJ3YfNjC321rw==
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
Subject: [PATCH v4 2/7] PCI: rockchip-host: Use macro PCIE_RESET_CONFIG_WAIT_MS
Date: Wed, 25 Jun 2025 12:23:48 +0200
Message-ID: <20250625102347.1205584-11-cassel@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250625102347.1205584-9-cassel@kernel.org>
References: <20250625102347.1205584-9-cassel@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2163; i=cassel@kernel.org; h=from:subject; bh=F2ftyv+Q/EHTUyO7jIwBMNf62KBdMrEQKTlHC9NEFOM=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGDKiz1kobrN5bBI29VGoYV7nFy6XS3rqbbrCxV1H+fe8X rXjt5hLRykLgxgXg6yYIovvD5f9xd3uU44r3rGBmcPKBDKEgYtTACZSIsDIMD+uq1RE+1ZHs4aY h6/Fw4IyNWUm9nc7dns4nX8rnZw3g5HhSsn1X789np5lcTh9oqx94hOpv0FJM01+vyiR2dXeGrC FBQA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_032414_223852_4585508C 
X-CRM114-Status: GOOD (  11.99  )
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

Macro PCIE_RESET_CONFIG_DEVICE_WAIT_MS was added to pci.h in commit
d5ceb9496c56 ("PCI: Add PCIE_RESET_CONFIG_DEVICE_WAIT_MS waiting time
value").

Later, in commit 70a7bfb1e515 ("PCI: rockchip-host: Wait 100ms after reset
before starting configuration"), PCIE_T_RRS_READY_MS was added to pci.h.

These macros are duplicates, and represent the exact same delay in the
PCIe specification.

Since the comment above PCIE_RESET_CONFIG_WAIT_MS is strictly more correct
than the comment above PCIE_T_RRS_READY_MS, change rockchip-host to use
PCIE_RESET_CONFIG_WAIT_MS, and remove PCIE_T_RRS_READY_MS, as
rockchip-host is the only user of this macro.

Reviewed-by: Wilfred Mallawa <wilfred.mallawa@wdc.com>
Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-host.c | 2 +-
 drivers/pci/pci.h                           | 7 -------
 2 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index b9e7a8710cf0..c11ed45c25f6 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -325,7 +325,7 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 	msleep(PCIE_T_PVPERL_MS);
 	gpiod_set_value_cansleep(rockchip->perst_gpio, 1);
 
-	msleep(PCIE_T_RRS_READY_MS);
+	msleep(PCIE_RESET_CONFIG_WAIT_MS);
 
 	/* 500ms timeout value should be enough for Gen1/2 training */
 	err = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_BASIC_STATUS1,
diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
index 98d6fccb383e..819833e57590 100644
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
