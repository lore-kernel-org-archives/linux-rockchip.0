Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D40BC47DD9
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 04:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2IW/8r1vsTNwIeim/kQURufB4i4iFd9/Rz3IJ9y8JvQ=; b=pGbucbqEO5VKw8
	gN3NnYG8oJNEWgAyvKMc73oYFb1LcLSDqf1syKksUOr2I5bcOLksBiFfuzX+GvJb4bPuW7chmDsmo
	JFJrcZq5Gwt5o1i5InoaYc4XvcUzhO+rHnZX+whoshhr/qahtw4O2itEdHKwL4EyIuyaetpaPA/3j
	n/Cjm31amUu3yU/nG0VBpxcH6AdPme6G0y6pjy7xoIvFanfiWmYcl5TmC7c4nZRYGC+7plDCqulqa
	QYDV5TlYKhlN6pJia4O3kOmnHcXr4v9GlQCB5caDU0Dx4ytZpBJzDekMTS9R8rGar8rL1iaLPenxy
	WPAV38cNIUCYzuCaij0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQC3-00000002jh1-3y7N;
	Sat, 30 Mar 2024 04:19:47 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQBs-00000002jcY-13Rw;
	Sat, 30 Mar 2024 04:19:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A1CF46028C;
	Sat, 30 Mar 2024 04:19:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 984A6C433B1;
	Sat, 30 Mar 2024 04:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711772375;
	bh=PWaeozMIGpKKMKSCRnXNKHlQUzaWsxtzM/PgCIXS/Eg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ICJPjRGgaGJCzWDRXLGghUcGHdRNC78NtVvRihRfIzF+VK1Uoax+3EXyUZbWQCP+5
	 CeoGWaxcoMB94HX2JhQLx+DxdL2NBLBw8wL4RCgSKKknSLHQZT7sFRoWTrHFVV9340
	 zn7o4xAFJtY2IkJBJ7xmHgKnoflWlNv2PF3mPmXXaVZD8jWvkygQllDoJrYBUFDaZ1
	 hl46JZ0BjaAIg3L7+kZo8UzGTfWXuved3q6vp+D8jAO31Gz7UvhMAKo01Ubmog/WD4
	 Q3d5enzWlXuBYRwO3noz7aV4DU3Xs6NmJiZIgoFRtaax0ZtDDIg1xoNMUc8RBi8NZD
	 ZzEDG9aQf5I5g==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v2 01/18] PCI: endpoint: Introduce pci_epc_function_is_valid()
Date: Sat, 30 Mar 2024 13:19:11 +0900
Message-ID: <20240330041928.1555578-2-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240330041928.1555578-1-dlemoal@kernel.org>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_211936_406772_4DA174A0 
X-CRM114-Status: GOOD (  12.22  )
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

Introduce the epc core helper function pci_epc_function_is_valid() to
verify that an epc pointer, a physical function number and a virtual
function number are all valid. This avoids repeating the code pattern:

if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
	return err;

if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
	return err;

in many functions of the endpoint controller core code.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/endpoint/pci-epc-core.c | 79 +++++++++++------------------
 1 file changed, 31 insertions(+), 48 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index da3fc0795b0b..754afd115bbd 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -126,6 +126,18 @@ enum pci_barno pci_epc_get_next_free_bar(const struct pci_epc_features
 }
 EXPORT_SYMBOL_GPL(pci_epc_get_next_free_bar);
 
+static inline bool pci_epc_function_is_valid(struct pci_epc *epc,
+					     u8 func_no, u8 vfunc_no)
+{
+	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
+		return false;
+
+	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
+		return false;
+
+	return true;
+}
+
 /**
  * pci_epc_get_features() - get the features supported by EPC
  * @epc: the features supported by *this* EPC device will be returned
@@ -143,10 +155,7 @@ const struct pci_epc_features *pci_epc_get_features(struct pci_epc *epc,
 {
 	const struct pci_epc_features *epc_features;
 
-	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
-		return NULL;
-
-	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
+	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
 		return NULL;
 
 	if (!epc->ops->get_features)
@@ -216,10 +225,7 @@ int pci_epc_raise_irq(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 {
 	int ret;
 
-	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
-		return -EINVAL;
-
-	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
+	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
 		return -EINVAL;
 
 	if (!epc->ops->raise_irq)
@@ -260,10 +266,7 @@ int pci_epc_map_msi_irq(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 {
 	int ret;
 
-	if (IS_ERR_OR_NULL(epc))
-		return -EINVAL;
-
-	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
+	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
 		return -EINVAL;
 
 	if (!epc->ops->map_msi_irq)
@@ -291,10 +294,7 @@ int pci_epc_get_msi(struct pci_epc *epc, u8 func_no, u8 vfunc_no)
 {
 	int interrupt;
 
-	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
-		return 0;
-
-	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
+	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
 		return 0;
 
 	if (!epc->ops->get_msi)
@@ -327,11 +327,10 @@ int pci_epc_set_msi(struct pci_epc *epc, u8 func_no, u8 vfunc_no, u8 interrupts)
 	int ret;
 	u8 encode_int;
 
-	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions ||
-	    interrupts < 1 || interrupts > 32)
+	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
 		return -EINVAL;
 
-	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
+	if (interrupts < 1 || interrupts > 32)
 		return -EINVAL;
 
 	if (!epc->ops->set_msi)
@@ -359,10 +358,7 @@ int pci_epc_get_msix(struct pci_epc *epc, u8 func_no, u8 vfunc_no)
 {
 	int interrupt;
 
-	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
-		return 0;
-
-	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
+	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
 		return 0;
 
 	if (!epc->ops->get_msix)
@@ -395,11 +391,10 @@ int pci_epc_set_msix(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 {
 	int ret;
 
-	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions ||
-	    interrupts < 1 || interrupts > 2048)
+	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
 		return -EINVAL;
 
-	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
+	if (interrupts < 1 || interrupts > 2048)
 		return -EINVAL;
 
 	if (!epc->ops->set_msix)
@@ -426,10 +421,7 @@ EXPORT_SYMBOL_GPL(pci_epc_set_msix);
 void pci_epc_unmap_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 			phys_addr_t phys_addr)
 {
-	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
-		return;
-
-	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
+	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
 		return;
 
 	if (!epc->ops->unmap_addr)
@@ -457,10 +449,7 @@ int pci_epc_map_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 {
 	int ret;
 
-	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
-		return -EINVAL;
-
-	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
+	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
 		return -EINVAL;
 
 	if (!epc->ops->map_addr)
@@ -487,12 +476,11 @@ EXPORT_SYMBOL_GPL(pci_epc_map_addr);
 void pci_epc_clear_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 		       struct pci_epf_bar *epf_bar)
 {
-	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions ||
-	    (epf_bar->barno == BAR_5 &&
-	     epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64))
+	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
 		return;
 
-	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
+	if (epf_bar->barno == BAR_5 &&
+	    epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64)
 		return;
 
 	if (!epc->ops->clear_bar)
@@ -519,18 +507,16 @@ int pci_epc_set_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 	int ret;
 	int flags = epf_bar->flags;
 
-	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions ||
-	    (epf_bar->barno == BAR_5 &&
-	     flags & PCI_BASE_ADDRESS_MEM_TYPE_64) ||
+	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
+		return -EINVAL;
+
+	if ((epf_bar->barno == BAR_5 && flags & PCI_BASE_ADDRESS_MEM_TYPE_64) ||
 	    (flags & PCI_BASE_ADDRESS_SPACE_IO &&
 	     flags & PCI_BASE_ADDRESS_IO_MASK) ||
 	    (upper_32_bits(epf_bar->size) &&
 	     !(flags & PCI_BASE_ADDRESS_MEM_TYPE_64)))
 		return -EINVAL;
 
-	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
-		return -EINVAL;
-
 	if (!epc->ops->set_bar)
 		return 0;
 
@@ -559,10 +545,7 @@ int pci_epc_write_header(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 {
 	int ret;
 
-	if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
-		return -EINVAL;
-
-	if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
+	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
 		return -EINVAL;
 
 	/* Only Virtual Function #1 has deviceID */
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
