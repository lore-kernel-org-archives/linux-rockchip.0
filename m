Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAA9ACCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 07:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTbJ3vqslquitWQ5mG0s7XrNxq99QmsGui7emXe3o3s=; b=xAHX6cI9nepTX8
	VSXUO8NhIAuH5jDPj1vv+vPfOX7iQLgcObLwQ4QcSv1P458ht+DU894ZnP5pKPveOBlGL77bwOyHj
	l1OdipEACg4oySE19XS24tb6xq37kAINZhWSe3F9NuBLygwuSLXbq7SIzpaQqHcRhP+L2JcHudTFN
	BXoTzBVvkZ4HeTMCUpwKCE3vH/rMfQuWGT5Vdb+Isx3t0AHqbSKY6Rn8mEA+enAl3PmP1qcuPC6UG
	gRLF3U5lkYheYhJqL9/+XpYRp+pYv+G6qUO0AKsFofZtGlx9EDRiZw7gDSAfkwpY1jMBMJn5QQHEX
	fvoOAyC8aD2OKU3++KbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB77F-0000000G9eM-1yyE;
	Tue, 21 Oct 2025 07:49:09 +0000
Received: from mail-m19731114.qiye.163.com ([220.197.31.114])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB77C-0000000G9aX-2S1R
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 07:49:07 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 26a1f5286;
	Tue, 21 Oct 2025 15:49:00 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	linux-rockchip@lists.infradead.org,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 1/4] PCI: of: Add of_pci_clkreq_present()
Date: Tue, 21 Oct 2025 15:48:24 +0800
Message-Id: <1761032907-154829-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1761032907-154829-1-git-send-email-shawn.lin@rock-chips.com>
References: <1761032907-154829-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9a05be2cfe09cckunm38953c5864808b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh9LHlZMHUwYHx1ITkwdGUlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=I37gjNrOB0UUpW8X5UZTolq/v5JQkNseWBFPCxyJjgTDoezRAM3/+2JvP2W2Ef1z8gGwtMbpjkm5flw1qYWzTZd8RtBd2lzSSCRbv43yx/efAVGxsxk+WrB48P0tyYFcD1wSCaihiqgU2P8pPaZtLIqKaVNeyp1CihevtWL4Z08=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Hn9ORcaY3DZtJ5tmGSYeDmjTWhW/CR3G52XVpkaa9bU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_004906_792723_E7BF1215 
X-CRM114-Status: UNSURE (   9.55  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

of_pci_clkreq_present() is used by host drivers to decide whether the clkreq#
is properly connected and could enable L1.1/L1.2 support.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---
 drivers/pci/of.c  | 18 ++++++++++++++++++
 drivers/pci/pci.h |  6 ++++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index 3579265f1198..52c6d365083b 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -1010,3 +1010,21 @@ int of_pci_get_equalization_presets(struct device *dev,
 	return 0;
 }
 EXPORT_SYMBOL_GPL(of_pci_get_equalization_presets);
+
+/**
+ * of_pci_clkreq_present() - Check if the "supports-clkreq" is present
+ * @np: Device tree node
+ *
+ * If the property is present, it means CLKREQ# is properly connected
+ * and the hardware is ready to support L1.1/L1.2
+ *
+ * Return: true if the property is available, false otherwise.
+ */
+bool of_pci_clkreq_present(struct device_node *np)
+{
+	if (!np)
+		return false;
+
+	return of_property_present(np, "supports-clkreq");
+}
+EXPORT_SYMBOL_GPL(of_pci_clkreq_present);
diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
index 4492b809094b..2421e39e6e48 100644
--- a/drivers/pci/pci.h
+++ b/drivers/pci/pci.h
@@ -1061,6 +1061,7 @@ bool of_pci_supply_present(struct device_node *np);
 int of_pci_get_equalization_presets(struct device *dev,
 				    struct pci_eq_presets *presets,
 				    int num_lanes);
+bool of_pci_clkreq_present(struct device_node *np);
 #else
 static inline int
 of_get_pci_domain_nr(struct device_node *node)
@@ -1106,6 +1107,11 @@ static inline bool of_pci_supply_present(struct device_node *np)
 	return false;
 }
 
+static inline bool of_pci_clkreq_present(struct device_node *np)
+{
+	return false;
+}
+
 static inline int of_pci_get_equalization_presets(struct device *dev,
 						  struct pci_eq_presets *presets,
 						  int num_lanes)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
