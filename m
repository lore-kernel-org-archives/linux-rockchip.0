Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1880C47DD9
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 04:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FlXj87lwpFgc6l+ASDetaGJ2FkMxIrzF1gm+ef/10uw=; b=fsusOtAuYJPuGy
	RcOiwj3oC1gXJUPH8sKiOPbK1D7GjVIzpqXwqiBzbn7OB1mX8Opyg7vMFeiX+CWOJCeKnoBbsLwtv
	KWwzuMb/0nHrSl2wiAQd8PJnDgn6qfnA/YZudG05u6k5GlkHtOjlHZzEvbYBKUOKdcNS/jo8dIBbX
	s20baAkZpgKG49s0xYOHNp02A0iFYULkAXrKooQXuDUEtdwwfKBZ9s0X1h5PKXyeh8fPZqQr3r6Bd
	nFymf6SAFQYbWNpDzns4NJPhlyKGua6i/QVtrWr4UXXccwTKvJ5eUaMtaSax7OU9fcc6z9XYcnYv2
	OPgwKCzO1QoC1mvq/4OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQCp-00000002kGl-2gRX;
	Sat, 30 Mar 2024 04:20:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQCE-00000002jov-04Za;
	Sat, 30 Mar 2024 04:19:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8Wsm/BZGC+KimJrX1Ds8CLSCn+rz/7FYdkvB/KVscAk=; b=lgG1QrSKhjtt/qILeccR2iQR2H
	/VgwhLqkil2fRB6ZdZMbrRbKobofFgqvXSkzTJ5EkNJsZTYY1j0qz03GqcsstaF33ngapd7aeC76b
	hPQOCextSBNTraX5dmf7lkF+L4mmJxCRYKzaYMKZihdIKwC638Vy2pUjCmqBaF0Wuq0OI8Klrrc+Y
	n8oefe0+e9tB5onRFvn0EFn595ZRaXOB/2e5YVq0/hHEpwloi7SwcCzpDarD7gBvh4341TZ4x+qFs
	RufqFVVS821TfaBBfT9WaVuLL/yMNV5YyuIxaB4iumWT1/elMYXM3OveiRbt9mcgLWy2Yn3DD94RV
	fxRd4Tsw==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQC6-00000001uM9-2XcW;
	Sat, 30 Mar 2024 04:19:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 50F64CE319D;
	Sat, 30 Mar 2024 04:19:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8BCEC433F1;
	Sat, 30 Mar 2024 04:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711772384;
	bh=HDumR+C0lGN+JmG5mxEWg0Dd7ELkE1gQie7RsRRWKzI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RvH876P8Cg9HRvsXw9mKUTaRThvjSubsFNiCCtvm+opc+Z3oJRs2bmY/fKbEDh7Jq
	 k5CWGaOsno5YX7e1aeYWzGo2megjYU6ZmKSsa9xIj8IUV/CuoQW2B7FEO2720ANHYr
	 y+pTVN4IHWvN5ZsS38uTT4gmo/FUCsoQCWNgtqcOWCYhTWyXxBM4OaRtTd7EUku7RC
	 rzdo/MDkqmPKzuiINF71v4sjeiUes0MroQ4cjs/fr34EWqYkBlHLZ/iQ/2QjEbv0qM
	 vTlPXzt9JhrPhyRg094V7pvHj7fmp1q5p0O/7cBMWhSbDbA/fymIDb05DAu3FxyFAU
	 h27UQSqTaVOXg==
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
Subject: [PATCH v2 04/18] PCI: endpoint: test: Use pci_epc_mem_map/unmap()
Date: Sat, 30 Mar 2024 13:19:14 +0900
Message-ID: <20240330041928.1555578-5-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240330041928.1555578-1-dlemoal@kernel.org>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240330_041954_049185_4CAAB993 
X-CRM114-Status: GOOD (  17.30  )
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

Modify the endpoint test driver to use the functions pci_epc_mem_map()
and pci_epc_mem_unmap() for the read, write and copy tests. For each
test case, the transfer (dma or mmio) are executed in a loop to ensure
that potentially partial mappings returned by pci_epc_mem_map() are
correctly handled.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/endpoint/functions/pci-epf-test.c | 378 +++++++++---------
 1 file changed, 197 insertions(+), 181 deletions(-)

diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
index cd4ffb39dcdc..0e285e539538 100644
--- a/drivers/pci/endpoint/functions/pci-epf-test.c
+++ b/drivers/pci/endpoint/functions/pci-epf-test.c
@@ -317,91 +317,94 @@ static void pci_epf_test_print_rate(struct pci_epf_test *epf_test,
 static void pci_epf_test_copy(struct pci_epf_test *epf_test,
 			      struct pci_epf_test_reg *reg)
 {
-	int ret;
-	void __iomem *src_addr;
-	void __iomem *dst_addr;
-	phys_addr_t src_phys_addr;
-	phys_addr_t dst_phys_addr;
+	int ret = 0;
 	struct timespec64 start, end;
 	struct pci_epf *epf = epf_test->epf;
-	struct device *dev = &epf->dev;
 	struct pci_epc *epc = epf->epc;
+	struct device *dev = &epf->dev;
+	struct pci_epc_map src_map, dst_map;
+	u64 src_addr = reg->src_addr;
+	u64 dst_addr = reg->dst_addr;
+	size_t copy_size = reg->size;
+	ssize_t map_size = 0;
+	void *copy_buf = NULL, *buf;
 
-	src_addr = pci_epc_mem_alloc_addr(epc, &src_phys_addr, reg->size);
-	if (!src_addr) {
-		dev_err(dev, "Failed to allocate source address\n");
-		reg->status = STATUS_SRC_ADDR_INVALID;
-		ret = -ENOMEM;
-		goto err;
-	}
-
-	ret = pci_epc_map_addr(epc, epf->func_no, epf->vfunc_no, src_phys_addr,
-			       reg->src_addr, reg->size);
-	if (ret) {
-		dev_err(dev, "Failed to map source address\n");
-		reg->status = STATUS_SRC_ADDR_INVALID;
-		goto err_src_addr;
-	}
-
-	dst_addr = pci_epc_mem_alloc_addr(epc, &dst_phys_addr, reg->size);
-	if (!dst_addr) {
-		dev_err(dev, "Failed to allocate destination address\n");
-		reg->status = STATUS_DST_ADDR_INVALID;
-		ret = -ENOMEM;
-		goto err_src_map_addr;
-	}
-
-	ret = pci_epc_map_addr(epc, epf->func_no, epf->vfunc_no, dst_phys_addr,
-			       reg->dst_addr, reg->size);
-	if (ret) {
-		dev_err(dev, "Failed to map destination address\n");
-		reg->status = STATUS_DST_ADDR_INVALID;
-		goto err_dst_addr;
-	}
-
-	ktime_get_ts64(&start);
 	if (reg->flags & FLAG_USE_DMA) {
 		if (epf_test->dma_private) {
 			dev_err(dev, "Cannot transfer data using DMA\n");
 			ret = -EINVAL;
-			goto err_map_addr;
+			goto set_status;
 		}
-
-		ret = pci_epf_test_data_transfer(epf_test, dst_phys_addr,
-						 src_phys_addr, reg->size, 0,
-						 DMA_MEM_TO_MEM);
-		if (ret)
-			dev_err(dev, "Data transfer failed\n");
 	} else {
-		void *buf;
-
-		buf = kzalloc(reg->size, GFP_KERNEL);
-		if (!buf) {
+		copy_buf = kzalloc(copy_size, GFP_KERNEL);
+		if (!copy_buf) {
 			ret = -ENOMEM;
-			goto err_map_addr;
+			goto set_status;
 		}
-
-		memcpy_fromio(buf, src_addr, reg->size);
-		memcpy_toio(dst_addr, buf, reg->size);
-		kfree(buf);
+		buf = copy_buf;
 	}
-	ktime_get_ts64(&end);
-	pci_epf_test_print_rate(epf_test, "COPY", reg->size, &start, &end,
-				reg->flags & FLAG_USE_DMA);
 
-err_map_addr:
-	pci_epc_unmap_addr(epc, epf->func_no, epf->vfunc_no, dst_phys_addr);
+	while (copy_size) {
+		map_size = pci_epc_mem_map(epc, epf->func_no, epf->vfunc_no,
+					   src_addr, copy_size, &src_map);
+		if (map_size < 0) {
+			dev_err(dev, "Failed to map source address\n");
+			reg->status = STATUS_SRC_ADDR_INVALID;
+			ret = map_size;
+			goto free_buf;
+		}
+
+		map_size = pci_epc_mem_map(epf->epc, epf->func_no, epf->vfunc_no,
+					   dst_addr, copy_size, &dst_map);
+		if (map_size < 0) {
+			dev_err(dev, "Failed to map destination address\n");
+			reg->status = STATUS_DST_ADDR_INVALID;
+			ret = map_size;
+			pci_epc_mem_unmap(epc, epf->func_no, epf->vfunc_no,
+					  &src_map);
+			goto free_buf;
+		}
+
+		map_size = min_t(size_t, map_size, src_map.pci_size);
+
+		ktime_get_ts64(&start);
+		if (reg->flags & FLAG_USE_DMA) {
+			ret = pci_epf_test_data_transfer(epf_test,
+					dst_map.phys_addr, src_map.phys_addr,
+					map_size, 0, DMA_MEM_TO_MEM);
+			if (ret) {
+				dev_err(dev, "Data transfer failed\n");
+				goto unmap;
+			}
+		} else {
+			memcpy_fromio(buf, src_map.virt_addr, map_size);
+			memcpy_toio(dst_map.virt_addr, buf, map_size);
+			buf += map_size;
+		}
+		ktime_get_ts64(&end);
+
+		copy_size -= map_size;
+		src_addr += map_size;
+		dst_addr += map_size;
 
-err_dst_addr:
-	pci_epc_mem_free_addr(epc, dst_phys_addr, dst_addr, reg->size);
+		pci_epc_mem_unmap(epc, epf->func_no, epf->vfunc_no, &dst_map);
+		pci_epc_mem_unmap(epc, epf->func_no, epf->vfunc_no, &src_map);
+		map_size = 0;
+	}
 
-err_src_map_addr:
-	pci_epc_unmap_addr(epc, epf->func_no, epf->vfunc_no, src_phys_addr);
+	pci_epf_test_print_rate(epf_test, "COPY", reg->size, &start,
+				&end, reg->flags & FLAG_USE_DMA);
+
+unmap:
+	if (map_size) {
+		pci_epc_mem_unmap(epc, epf->func_no, epf->vfunc_no, &dst_map);
+		pci_epc_mem_unmap(epc, epf->func_no, epf->vfunc_no, &src_map);
+	}
 
-err_src_addr:
-	pci_epc_mem_free_addr(epc, src_phys_addr, src_addr, reg->size);
+free_buf:
+	kfree(copy_buf);
 
-err:
+set_status:
 	if (!ret)
 		reg->status |= STATUS_COPY_SUCCESS;
 	else
@@ -411,82 +414,89 @@ static void pci_epf_test_copy(struct pci_epf_test *epf_test,
 static void pci_epf_test_read(struct pci_epf_test *epf_test,
 			      struct pci_epf_test_reg *reg)
 {
-	int ret;
-	void __iomem *src_addr;
-	void *buf;
+	int ret = 0;
+	void *src_buf, *buf;
 	u32 crc32;
-	phys_addr_t phys_addr;
+	struct pci_epc_map map;
 	phys_addr_t dst_phys_addr;
 	struct timespec64 start, end;
 	struct pci_epf *epf = epf_test->epf;
-	struct device *dev = &epf->dev;
 	struct pci_epc *epc = epf->epc;
+	struct device *dev = &epf->dev;
 	struct device *dma_dev = epf->epc->dev.parent;
+	u64 src_addr = reg->src_addr;
+	size_t src_size = reg->size;
+	ssize_t map_size = 0;
 
-	src_addr = pci_epc_mem_alloc_addr(epc, &phys_addr, reg->size);
-	if (!src_addr) {
-		dev_err(dev, "Failed to allocate address\n");
-		reg->status = STATUS_SRC_ADDR_INVALID;
+	src_buf = kzalloc(src_size, GFP_KERNEL);
+	if (!src_buf) {
 		ret = -ENOMEM;
-		goto err;
-	}
-
-	ret = pci_epc_map_addr(epc, epf->func_no, epf->vfunc_no, phys_addr,
-			       reg->src_addr, reg->size);
-	if (ret) {
-		dev_err(dev, "Failed to map address\n");
-		reg->status = STATUS_SRC_ADDR_INVALID;
-		goto err_addr;
-	}
-
-	buf = kzalloc(reg->size, GFP_KERNEL);
-	if (!buf) {
-		ret = -ENOMEM;
-		goto err_map_addr;
+		goto set_status;
 	}
+	buf = src_buf;
+
+	while (src_size) {
+		map_size = pci_epc_mem_map(epc, epf->func_no, epf->vfunc_no,
+					   src_addr, src_size, &map);
+		if (map_size < 0) {
+			dev_err(dev, "Failed to map address\n");
+			reg->status = STATUS_SRC_ADDR_INVALID;
+			ret = map_size;
+			goto free_buf;
+		}
 
-	if (reg->flags & FLAG_USE_DMA) {
-		dst_phys_addr = dma_map_single(dma_dev, buf, reg->size,
-					       DMA_FROM_DEVICE);
-		if (dma_mapping_error(dma_dev, dst_phys_addr)) {
-			dev_err(dev, "Failed to map destination buffer addr\n");
-			ret = -ENOMEM;
-			goto err_dma_map;
+		if (reg->flags & FLAG_USE_DMA) {
+			dst_phys_addr = dma_map_single(dma_dev, buf, map_size,
+						       DMA_FROM_DEVICE);
+			if (dma_mapping_error(dma_dev, dst_phys_addr)) {
+				dev_err(dev,
+					"Failed to map destination buffer addr\n");
+				ret = -ENOMEM;
+				goto unmap;
+			}
+
+			ktime_get_ts64(&start);
+			ret = pci_epf_test_data_transfer(epf_test,
+					dst_phys_addr, map.phys_addr,
+					map_size, src_addr, DMA_DEV_TO_MEM);
+			if (ret)
+				dev_err(dev, "Data transfer failed\n");
+			ktime_get_ts64(&end);
+
+			dma_unmap_single(dma_dev, dst_phys_addr, map_size,
+					 DMA_FROM_DEVICE);
+
+			if (ret)
+				goto unmap;
+		} else {
+			ktime_get_ts64(&start);
+			memcpy_fromio(buf, map.virt_addr, map_size);
+			ktime_get_ts64(&end);
 		}
 
-		ktime_get_ts64(&start);
-		ret = pci_epf_test_data_transfer(epf_test, dst_phys_addr,
-						 phys_addr, reg->size,
-						 reg->src_addr, DMA_DEV_TO_MEM);
-		if (ret)
-			dev_err(dev, "Data transfer failed\n");
-		ktime_get_ts64(&end);
+		src_size -= map_size;
+		src_addr += map_size;
+		buf += map_size;
 
-		dma_unmap_single(dma_dev, dst_phys_addr, reg->size,
-				 DMA_FROM_DEVICE);
-	} else {
-		ktime_get_ts64(&start);
-		memcpy_fromio(buf, src_addr, reg->size);
-		ktime_get_ts64(&end);
+		pci_epc_mem_unmap(epc, epf->func_no, epf->vfunc_no, &map);
+		map_size = 0;
 	}
 
-	pci_epf_test_print_rate(epf_test, "READ", reg->size, &start, &end,
-				reg->flags & FLAG_USE_DMA);
+	pci_epf_test_print_rate(epf_test, "READ", reg->size, &start,
+				&end, reg->flags & FLAG_USE_DMA);
 
-	crc32 = crc32_le(~0, buf, reg->size);
+	crc32 = crc32_le(~0, src_buf, reg->size);
 	if (crc32 != reg->checksum)
 		ret = -EIO;
 
-err_dma_map:
-	kfree(buf);
+unmap:
+	if (map_size)
+		pci_epc_mem_unmap(epc, epf->func_no, epf->vfunc_no, &map);
 
-err_map_addr:
-	pci_epc_unmap_addr(epc, epf->func_no, epf->vfunc_no, phys_addr);
+free_buf:
+	kfree(src_buf);
 
-err_addr:
-	pci_epc_mem_free_addr(epc, phys_addr, src_addr, reg->size);
-
-err:
+set_status:
 	if (!ret)
 		reg->status |= STATUS_READ_SUCCESS;
 	else
@@ -496,71 +506,79 @@ static void pci_epf_test_read(struct pci_epf_test *epf_test,
 static void pci_epf_test_write(struct pci_epf_test *epf_test,
 			       struct pci_epf_test_reg *reg)
 {
-	int ret;
-	void __iomem *dst_addr;
-	void *buf;
-	phys_addr_t phys_addr;
+	int ret = 0;
+	void *dst_buf, *buf;
+	struct pci_epc_map map;
 	phys_addr_t src_phys_addr;
 	struct timespec64 start, end;
 	struct pci_epf *epf = epf_test->epf;
-	struct device *dev = &epf->dev;
 	struct pci_epc *epc = epf->epc;
+	struct device *dev = &epf->dev;
 	struct device *dma_dev = epf->epc->dev.parent;
+	u64 dst_addr = reg->dst_addr;
+	size_t dst_size = reg->size;
+	ssize_t map_size = 0;
 
-	dst_addr = pci_epc_mem_alloc_addr(epc, &phys_addr, reg->size);
-	if (!dst_addr) {
-		dev_err(dev, "Failed to allocate address\n");
-		reg->status = STATUS_DST_ADDR_INVALID;
+	dst_buf = kzalloc(dst_size, GFP_KERNEL);
+	if (!dst_buf) {
 		ret = -ENOMEM;
-		goto err;
+		goto set_status;
 	}
-
-	ret = pci_epc_map_addr(epc, epf->func_no, epf->vfunc_no, phys_addr,
-			       reg->dst_addr, reg->size);
-	if (ret) {
-		dev_err(dev, "Failed to map address\n");
-		reg->status = STATUS_DST_ADDR_INVALID;
-		goto err_addr;
-	}
-
-	buf = kzalloc(reg->size, GFP_KERNEL);
-	if (!buf) {
-		ret = -ENOMEM;
-		goto err_map_addr;
-	}
-
-	get_random_bytes(buf, reg->size);
-	reg->checksum = crc32_le(~0, buf, reg->size);
-
-	if (reg->flags & FLAG_USE_DMA) {
-		src_phys_addr = dma_map_single(dma_dev, buf, reg->size,
-					       DMA_TO_DEVICE);
-		if (dma_mapping_error(dma_dev, src_phys_addr)) {
-			dev_err(dev, "Failed to map source buffer addr\n");
-			ret = -ENOMEM;
-			goto err_dma_map;
+	get_random_bytes(dst_buf, dst_size);
+	reg->checksum = crc32_le(~0, dst_buf, dst_size);
+	buf = dst_buf;
+
+	while (dst_size) {
+		map_size = pci_epc_mem_map(epc, epf->func_no, epf->vfunc_no,
+					   dst_addr, dst_size, &map);
+		if (map_size < 0) {
+			dev_err(dev, "Failed to map address\n");
+			reg->status = STATUS_DST_ADDR_INVALID;
+			ret = map_size;
+			goto free_buf;
 		}
 
-		ktime_get_ts64(&start);
+		if (reg->flags & FLAG_USE_DMA) {
+			src_phys_addr = dma_map_single(dma_dev, buf, map_size,
+						       DMA_TO_DEVICE);
+			if (dma_mapping_error(dma_dev, src_phys_addr)) {
+				dev_err(dev,
+					"Failed to map source buffer addr\n");
+				ret = -ENOMEM;
+				goto unmap;
+			}
+
+			ktime_get_ts64(&start);
+
+			ret = pci_epf_test_data_transfer(epf_test,
+						map.phys_addr, src_phys_addr,
+						map_size, dst_addr,
+						DMA_MEM_TO_DEV);
+			if (ret)
+				dev_err(dev, "Data transfer failed\n");
+			ktime_get_ts64(&end);
+
+			dma_unmap_single(dma_dev, src_phys_addr, map_size,
+					 DMA_TO_DEVICE);
+
+			if (ret)
+				goto unmap;
+		} else {
+			ktime_get_ts64(&start);
+			memcpy_toio(map.virt_addr, buf, map_size);
+			ktime_get_ts64(&end);
+		}
 
-		ret = pci_epf_test_data_transfer(epf_test, phys_addr,
-						 src_phys_addr, reg->size,
-						 reg->dst_addr,
-						 DMA_MEM_TO_DEV);
-		if (ret)
-			dev_err(dev, "Data transfer failed\n");
-		ktime_get_ts64(&end);
+		dst_size -= map_size;
+		dst_addr += map_size;
+		buf += map_size;
 
-		dma_unmap_single(dma_dev, src_phys_addr, reg->size,
-				 DMA_TO_DEVICE);
-	} else {
-		ktime_get_ts64(&start);
-		memcpy_toio(dst_addr, buf, reg->size);
-		ktime_get_ts64(&end);
+		pci_epc_mem_unmap(epc, epf->func_no, epf->vfunc_no, &map);
+		map_size = 0;
 	}
 
-	pci_epf_test_print_rate(epf_test, "WRITE", reg->size, &start, &end,
-				reg->flags & FLAG_USE_DMA);
+	pci_epf_test_print_rate(epf_test, "WRITE", reg->size, &start,
+				&end, reg->flags & FLAG_USE_DMA);
 
 	/*
 	 * wait 1ms inorder for the write to complete. Without this delay L3
@@ -568,16 +586,14 @@ static void pci_epf_test_write(struct pci_epf_test *epf_test,
 	 */
 	usleep_range(1000, 2000);
 
-err_dma_map:
-	kfree(buf);
-
-err_map_addr:
-	pci_epc_unmap_addr(epc, epf->func_no, epf->vfunc_no, phys_addr);
+unmap:
+	if (map_size)
+		pci_epc_mem_unmap(epc, epf->func_no, epf->vfunc_no, &map);
 
-err_addr:
-	pci_epc_mem_free_addr(epc, phys_addr, dst_addr, reg->size);
+free_buf:
+	kfree(dst_buf);
 
-err:
+set_status:
 	if (!ret)
 		reg->status |= STATUS_WRITE_SUCCESS;
 	else
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
