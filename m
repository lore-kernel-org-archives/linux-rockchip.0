Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E967C54F5C
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 04:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Fp/vssi20gaDQqDT0aLYtYV3eMftg6pZ6B+cVoglic=; b=evrcqXW72Y1fas
	bR/JAEFQBV+R6PLr/tY9J0PnnJ6FrvOaxmp3coXiIJuyjT1GuEPfXXG08gOgvcKbc5R7AYiQ2EIli
	J0/zX+Q1/BjazF79M+izNjMYQZovuf+iTtp0pimUrZzHJeuYGT9PExMoQ5lq905nCJO+Sl6mfI74X
	u1o7NZq+E6ulWJzqWlVrr25p2YZocUiMhhewpBcXiex+AY89iJrrN5uJxVbnu0vpG7jid7GJWYv23
	Tqy2Y+KfMhCJJoqL5y5sP0WdPpJakvJBWSegGifWlYuJF1+54RXwXKbvPJZkdnSrVXNxe+n9Ct9Xz
	pNATyCJLtsoRBgKbOIKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wowHi-00000006sMu-2Sob;
	Wed, 29 Jul 2026 04:52:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wowHf-00000006sLM-3IlY;
	Wed, 29 Jul 2026 04:52:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 286184512B;
	Wed, 29 Jul 2026 04:52:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7E19C2BCFC;
	Wed, 29 Jul 2026 04:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785300767;
	bh=GXsfpuBjTP8KRmTpmgSgO41ETDhVR5I3O4GjePFOCS4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=sUuiMVj0WFEsLwvanb5fQyGiJ+kk72IDMDfl2b8y0FL463crsP9DRi4MU3eMFfAli
	 5W4epMPrQ5hATPueK9tFxahndIMD+Qs+E/9xu2tyjd6OLBdiQUViNtoRGvMdVGV14+
	 L2PmYi4YMAffkIsMuVjj8/iaW5Xhi/UYiM0WO+cnU2hrc4NKRvUFTtKfhJ03CX2fVa
	 /TB5wFfKLLhOMMVFqQd7a+5B22X55BcOrtX4ISOIuVbC7hyS/mQaOdBRBK0UWemyHL
	 JtQmvmqiYGC1IeiPDd0oOqIK4AMHyPskYRLkjRCGs+MR4B/9EkI1eRTgsC4Y+OLW6z
	 ftrFXZqXYy+6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8FACC53219;
	Wed, 29 Jul 2026 04:52:46 +0000 (UTC)
From: Manivannan Sadhasivam via B4 Relay <devnull+manivannan.sadhasivam.oss.qualcomm.com@kernel.org>
Date: Wed, 29 Jul 2026 10:22:28 +0530
Subject: [PATCH v9 2/5] PCI/ERR: Add support for resetting the Root Ports
 in a platform specific way
MIME-Version: 1.0
Message-Id: <20260729-pci-port-reset-v9-2-53570b92064d@oss.qualcomm.com>
References: <20260729-pci-port-reset-v9-0-53570b92064d@oss.qualcomm.com>
In-Reply-To: <20260729-pci-port-reset-v9-0-53570b92064d@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>, 
 Mahesh J Salgaonkar <mahesh@linux.ibm.com>, 
 Oliver O'Halloran <oohall@gmail.com>, Will Deacon <will@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Jingoo Han <jingoohan1@gmail.com>, Koichiro Den <den@valinux.co.jp>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Niklas Cassel <cassel@kernel.org>, 
 Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
 Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
 mani@kernel.org, Lukas Wunner <lukas@wunner.de>, 
 Richard Zhu <hongxing.zhu@nxp.com>, Brian Norris <briannorris@chromium.org>, 
 Wilson Ding <dingwei@marvell.com>, Frank Li <Frank.Li@nxp.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
 Manivannan Sadhasivam <mani@kernel.org>
X-Mailer: b4 0.15.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3066;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=1Oy19557+yV3/9OLsUixcbfzFzWsM2UYeBRw29jVti8=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBqaYccd5GhRxgafeOVS/QPxoXKKMCDKbr6/Y8uN
 27gAISBB3yJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCammHHAAKCRBVnxHm/pHO
 9RI1B/47y1/xQOdgi41SJopTqMvwW3CUl1cVKVXn9Dsvs2ZZIikdDnfTrq9aGJuCTVzXpqdDnLz
 eRZH2AYOjLg+OceKeoWTGOF131FgQ/Xnuj9tjF28EQhu4e3s0ZFSNV2Aq3qA1y4x0jKHCP9TRUQ
 W8Ok6P0P5dCwuRVnnvuVK1ZGK7ny7fwmEyi7+VxKh0GyI/NlOzF8dhRlfk/K8mHdagYQjA+PmdT
 82WSlklvfMpUopl3ys3GNhrZzzXY4rRBquhdvNBpL1+FG/kIj92Mig0jyyhMZjIuvkPwoijnrGk
 2BygcS8joCV6HPClOuSToRF66ZPZ5B3I3MfpLjllCIXC7tcU
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-Endpoint-Received: by B4 Relay for
 manivannan.sadhasivam@oss.qualcomm.com/default with auth_id=461
X-Original-From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
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
Reply-To: manivannan.sadhasivam@oss.qualcomm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Manivannan Sadhasivam <mani@kernel.org>

Some host bridge devices require resetting the Root Ports in a platform
specific way to recover them from error conditions such as Fatal AER
errors, Link Down etc... So introduce pci_host_bridge::reset_root_port()
callback and call it from pcibios_reset_secondary_bus() if available. Also,
save the Root Port config space before reset and restore it afterwards.

The 'reset_root_port' callback is responsible for resetting the given Root
Port referenced by the 'pci_dev' pointer in a platform specific way and
bring it back to the working state if possible. If any error occurs during
the reset operation, relevant errno should be returned.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Tested-by: Brian Norris <briannorris@chromium.org>
Tested-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Tested-by: Richard Zhu <hongxing.zhu@nxp.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
---
 drivers/pci/pci.c      | 13 +++++++++++++
 drivers/pci/pcie/err.c |  5 -----
 include/linux/pci.h    |  1 +
 3 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 77b17b13ee61..12e099489690 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -4841,6 +4841,19 @@ void pci_reset_secondary_bus(struct pci_dev *dev)
 
 void __weak pcibios_reset_secondary_bus(struct pci_dev *dev)
 {
+	struct pci_host_bridge *host = pci_find_host_bridge(dev->bus);
+	int ret;
+
+	if (pci_is_root_bus(dev->bus) && host->reset_root_port) {
+		ret = host->reset_root_port(host, dev);
+		if (ret)
+			pci_err(dev, "Failed to reset Root Port: %d\n", ret);
+		else
+			pci_restore_state(dev);
+
+		return;
+	}
+
 	pci_reset_secondary_bus(dev);
 }
 
diff --git a/drivers/pci/pcie/err.c b/drivers/pci/pcie/err.c
index bebe4bc111d7..13b9d9eb714f 100644
--- a/drivers/pci/pcie/err.c
+++ b/drivers/pci/pcie/err.c
@@ -256,11 +256,6 @@ pci_ers_result_t pcie_do_recovery(struct pci_dev *dev,
 	}
 
 	if (status == PCI_ERS_RESULT_NEED_RESET) {
-		/*
-		 * TODO: Should call platform-specific
-		 * functions to reset slot before calling
-		 * drivers' slot_reset callbacks?
-		 */
 		status = PCI_ERS_RESULT_RECOVERED;
 		pci_dbg(bridge, "broadcast slot_reset message\n");
 		pci_walk_bridge(bridge, report_slot_reset, &status);
diff --git a/include/linux/pci.h b/include/linux/pci.h
index ebb5b9d76360..be82cc0a3371 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -646,6 +646,7 @@ struct pci_host_bridge {
 	void (*release_fn)(struct pci_host_bridge *);
 	int (*enable_device)(struct pci_host_bridge *bridge, struct pci_dev *dev);
 	void (*disable_device)(struct pci_host_bridge *bridge, struct pci_dev *dev);
+	int (*reset_root_port)(struct pci_host_bridge *bridge, struct pci_dev *dev);
 	void		*release_data;
 	unsigned int	ignore_reset_delay:1;	/* For entire hierarchy */
 	unsigned int	no_ext_tags:1;		/* No Extended Tags */

-- 
2.51.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
