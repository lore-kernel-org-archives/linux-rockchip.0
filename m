Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10373CD1288
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 09:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQLZJgue7eG33JZuSb5cGo52UdBRHfv9e0zAjuuAKZM=; b=hdQVD4cSyXyUnV
	ecG5VKeJwx5x9SG1VafB9/feT2VZj9nv/dltFH7j2y06BqKbEc0+VMrpR5eLF32GlWQFUc1Eo0pvs
	hFOZ/w0mNrdsU5NhqHnFr3ITYSbFgkoyVEM82j7DGYOYIS6SWhsYlQbgc5qOzOShewxz1GFdhNal8
	rvJuiZTfUp/XfqKPnIerKKOCeWxRj6JKr0d9aCrf2gL7n9RM/ctnH00LCIrM+y6280yIsSd58VSuO
	u3rUbCJU86O3Hx09uY5gbJOX/A4DD8wxMihayyxVBhl26hnxHlOk3hDzWmDiP63FkCASwZPLxpkzq
	PqzvU8yBA96XSA7oH9YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq8FI-0000000HQ5E-0y2Z;
	Fri, 29 Mar 2024 09:09:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq8FE-0000000HQ1O-03EA
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Mar 2024 09:09:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7178961710;
	Fri, 29 Mar 2024 09:09:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12B86C433F1;
	Fri, 29 Mar 2024 09:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711703391;
	bh=qCEbulFduSNumMtAvNmv8e5o53wv9ou11qaVvfYDl1I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cUcoX29lxqP3o/uu5GkmylQ2N850ka0wERjw1dqVGb49wl7di7Chx0LGV2MOCRhbf
	 YqKB3lJs/srqXgJ5ESNp6dZ3FaLEnHfd+pvParjPRNtUsxYI28M4he6fNjxH8gGHLU
	 H7df1HYmk4+ztyZJNKs1EjUUKhQczPTNjirJVWAMAuMHc9MeH93nnv3IyBo0uDnm+s
	 7EqxmefJG217c4x1jln5dUCW03VRDdAiYRD3BQ7Z75YOdfz5LvQ0dKDfKTyiedV1+N
	 4wQszNQW/LElYGRNMZr9hT4j6WO/z4uUWXtfYFpRQxIxUnLDx4ZraHS11pnJymWiy3
	 9ywVSWSZXFotQ==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Subject: [PATCH 02/19] PCI: endpoint: Improve pci_epc_mem_alloc_addr()
Date: Fri, 29 Mar 2024 18:09:28 +0900
Message-ID: <20240329090945.1097609-3-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240329090945.1097609-1-dlemoal@kernel.org>
References: <20240329090945.1097609-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_020952_153860_B270FAE5 
X-CRM114-Status: GOOD (  13.17  )
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

There is no point in attempting to allocate memory from an endpoint
controller memory window if the requested size is larger than the window
size. Add a check to skip bitmap_find_free_region() calls for such case.
Also change the final return to return NULL to simplify the code.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/endpoint/pci-epc-mem.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epc-mem.c b/drivers/pci/endpoint/pci-epc-mem.c
index a9c028f58da1..218a60e945db 100644
--- a/drivers/pci/endpoint/pci-epc-mem.c
+++ b/drivers/pci/endpoint/pci-epc-mem.c
@@ -178,7 +178,7 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
 void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
 				     phys_addr_t *phys_addr, size_t size)
 {
-	void __iomem *virt_addr = NULL;
+	void __iomem *virt_addr;
 	struct pci_epc_mem *mem;
 	unsigned int page_shift;
 	size_t align_size;
@@ -188,10 +188,13 @@ void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
 
 	for (i = 0; i < epc->num_windows; i++) {
 		mem = epc->windows[i];
-		mutex_lock(&mem->lock);
+		if (size > mem->window.size)
+			continue;
+
 		align_size = ALIGN(size, mem->window.page_size);
 		order = pci_epc_mem_get_order(mem, align_size);
 
+		mutex_lock(&mem->lock);
 		pageno = bitmap_find_free_region(mem->bitmap, mem->pages,
 						 order);
 		if (pageno >= 0) {
@@ -211,7 +214,7 @@ void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
 		mutex_unlock(&mem->lock);
 	}
 
-	return virt_addr;
+	return NULL;
 }
 EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
 
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
