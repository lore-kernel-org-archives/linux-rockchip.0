Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10BDBC761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AIMI2W+nsk2uzDZNJz7xLSIq9YQY0EsDYdOqCH4DXvE=; b=M/cthFNr/7gCSv
	pIj4k5qMpPCmjXlJFVcHMKdJrf/llEuuR7++OAms0hiFEVqrs51YE5n9WrhH3hCEIZnsaDANS+nYC
	qDRl49wTRj5aWyCHKSPuluhk7ttJtxMZ5Fa+uSQP/ZuC1MOI1Ch7GfcZvDqLlGWAo2by/nzJtOIeC
	H6hYlCVVUOwJyTuIYuvANy0AzBfrYU1YQ78r8wVJ3Q9guN3/CgzFWdQGotPneFuMMpKd4hDNBlxvi
	k93jGdjAAxjweLBkibpfrfP29jE7pX96fkwhgYgfe0pRrg5gM1rKyH8A2bHFqNEEaxuLSNQugwOFw
	l22BlV+Gw+ydI1BSLpOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjc6H-000VMI-2C;
	Tue, 04 Apr 2023 08:33:13 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbyn-000TDd-0S;
	Tue, 04 Apr 2023 08:25:41 +0000
Received: by mail-ed1-x529.google.com with SMTP id fi11so3771427edb.10;
        Tue, 04 Apr 2023 01:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680596720;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YHVGOq304MZL+RnDx3LZqqqIlwFjrlendPWEtfpj7A0=;
        b=VkJyocsaXuJV4kDy+4jpsJNaJcafypjt9XSJvCKwghlqePQqIVNcEroKJZWrjWP7/l
         /nOGGZBx4PZ+1eb9ZFTkDed1dvmOjcL59MTmyMZT/yGsh/A19x3O2WbGk83M0wCnFfxB
         +zGEpIhQ7/fe4gm6CpRx4tUfVOi9CtfmUo2UlMrOvld1atPx2eHndMpjQFuQPQjtd8Pb
         u68Eu8fHYWB1wz6vcDoXDHm4p+IsGwdkrLTt/nUgHtXRUptAMqk+Sla2t8N8rp4sCttB
         sU5jFCTItQ43WelMw+4t619QSFaaZ2Sg41zkv8NowKzIFsrJLycGvfILcEIltV3nQNuF
         TI7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680596720;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YHVGOq304MZL+RnDx3LZqqqIlwFjrlendPWEtfpj7A0=;
        b=dSjtwRaSqGdLh051uJNIL4EQ6BFAS9ucbh9zmMpSwkGeNZn7wEH8Xmdf8ZclEPIq/V
         n2mubKUExqp+DYyFdzsCMVuu+oyA4yk9N872++hcZa4GmF70Awc0yVPpFYR2KoxsQFoY
         V2zYPtwjL3FZ6qdUYlE1H2DQz6U14qPT69t/DW9VfL77TcQorflgPkMA14aPQ7mkicDK
         SsaNyxkNkVkZzY729vmk1Q5WGWtjNNub054CsdMh1wFzTV5T4dT7mPezV+g6Ng7o1mbD
         l3Erzg1J8GV/wq45mV0nnOrD+FoRjkG/R8DSJsDfSXhPdjkIYSumEHDQZZVO87s1u83J
         EovA==
X-Gm-Message-State: AAQBX9dDbkAL95cJONzYROAYsOcgIGYPriLiWV4RwtiaRGzO8FhBdMN0
	uaUVBCAWWM6Z1yWRhG6bZfgtsTBdH6ohNw==
X-Google-Smtp-Source: AKy350aQbY2w7XuNboeKDqI1MBiaRljmO31YwfSvQISROm2ErWgsBZUbBc+asCRSfErD1xHtj9kwcw==
X-Received: by 2002:a17:907:2da3:b0:935:1565:d661 with SMTP id gt35-20020a1709072da300b009351565d661mr1726882ejc.66.1680596719860;
        Tue, 04 Apr 2023 01:25:19 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id s5-20020a170906454500b008e54ac90de1sm5640652ejq.74.2023.04.04.01.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:25:19 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: damien.lemoal@opensource.wdc.com,
	xxm@rock-chips.com,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	stable@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Lin Huang <hl@rock-chips.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 08/11] PCI: rockchip: Fix window mapping and address translation for endpoint
Date: Tue,  4 Apr 2023 10:24:21 +0200
Message-Id: <20230404082426.3880812-9-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
References: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_012526_055208_54B8D242 
X-CRM114-Status: GOOD (  26.06  )
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

The RK3399 PCI endpoint core has 33 windows for PCIe space, now in the
driver up to 32 fixed size (1M) windows are used and pages are allocated
and mapped accordingly. The driver first used a single window and allocated
space inside which caused translation issues (between CPU space and PCI
space) because a window can only have a single translation at a given
time, which if multiple pages are allocated inside will cause conflicts.
Now each window is a single region of 1M which will always guarantee that
the translation is not in conflict.

Set the translation register addresses for physical function. As documented
in the technical reference manual (TRM) section 17.5.5 "PCIe Address
Translation" and section 17.6.8 "Address Translation Registers Description"

Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
Cc: stable@vger.kernel.org
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 110 +++++++++-------------
 drivers/pci/controller/pcie-rockchip.h    |  30 +++---
 2 files changed, 64 insertions(+), 76 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 7591a7be78e0..f366846ad77c 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -64,52 +64,30 @@ static void rockchip_pcie_clear_ep_ob_atu(struct rockchip_pcie *rockchip,
 }
 
 static void rockchip_pcie_prog_ep_ob_atu(struct rockchip_pcie *rockchip, u8 fn,
-					 u32 r, u32 type, u64 cpu_addr,
-					 u64 pci_addr, size_t size)
+					 u32 r, u64 cpu_addr, u64 pci_addr,
+					 size_t size)
 {
 	u64 sz = 1ULL << fls64(size - 1);
 	int num_pass_bits = ilog2(sz);
-	u32 addr0, addr1, desc0, desc1;
-	bool is_nor_msg = (type == AXI_WRAPPER_NOR_MSG);
+	u32 addr0, addr1, desc0;
 
-	/* The minimal region size is 1MB */
 	if (num_pass_bits < 8)
 		num_pass_bits = 8;
 
-	cpu_addr -= rockchip->mem_res->start;
-	addr0 = ((is_nor_msg ? 0x10 : (num_pass_bits - 1)) &
-		PCIE_CORE_OB_REGION_ADDR0_NUM_BITS) |
-		(lower_32_bits(cpu_addr) & PCIE_CORE_OB_REGION_ADDR0_LO_ADDR);
-	addr1 = upper_32_bits(is_nor_msg ? cpu_addr : pci_addr);
-	desc0 = ROCKCHIP_PCIE_AT_OB_REGION_DESC0_DEVFN(fn) | type;
-	desc1 = 0;
-
-	if (is_nor_msg) {
-		rockchip_pcie_write(rockchip, 0,
-				    ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR0(r));
-		rockchip_pcie_write(rockchip, 0,
-				    ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR1(r));
-		rockchip_pcie_write(rockchip, desc0,
-				    ROCKCHIP_PCIE_AT_OB_REGION_DESC0(r));
-		rockchip_pcie_write(rockchip, desc1,
-				    ROCKCHIP_PCIE_AT_OB_REGION_DESC1(r));
-	} else {
-		/* PCI bus address region */
-		rockchip_pcie_write(rockchip, addr0,
-				    ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR0(r));
-		rockchip_pcie_write(rockchip, addr1,
-				    ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR1(r));
-		rockchip_pcie_write(rockchip, desc0,
-				    ROCKCHIP_PCIE_AT_OB_REGION_DESC0(r));
-		rockchip_pcie_write(rockchip, desc1,
-				    ROCKCHIP_PCIE_AT_OB_REGION_DESC1(r));
-
-		addr0 =
-		    ((num_pass_bits - 1) & PCIE_CORE_OB_REGION_ADDR0_NUM_BITS) |
-		    (lower_32_bits(cpu_addr) &
-		     PCIE_CORE_OB_REGION_ADDR0_LO_ADDR);
-		addr1 = upper_32_bits(cpu_addr);
-	}
+	addr0 = ((num_pass_bits - 1) & PCIE_CORE_OB_REGION_ADDR0_NUM_BITS) |
+		(lower_32_bits(pci_addr) & PCIE_CORE_OB_REGION_ADDR0_LO_ADDR);
+	addr1 = upper_32_bits(pci_addr);
+	desc0 = ROCKCHIP_PCIE_AT_OB_REGION_DESC0_DEVFN(fn) | AXI_WRAPPER_MEM_WRITE;
+
+	/* PCI bus address region */
+	rockchip_pcie_write(rockchip, addr0,
+			    ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR0(r));
+	rockchip_pcie_write(rockchip, addr1,
+			    ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR1(r));
+	rockchip_pcie_write(rockchip, desc0,
+			    ROCKCHIP_PCIE_AT_OB_REGION_DESC0(r));
+	rockchip_pcie_write(rockchip, 0,
+			    ROCKCHIP_PCIE_AT_OB_REGION_DESC1(r));
 }
 
 static int rockchip_pcie_ep_write_header(struct pci_epc *epc, u8 fn, u8 vfn,
@@ -248,6 +226,11 @@ static void rockchip_pcie_ep_clear_bar(struct pci_epc *epc, u8 fn, u8 vfn,
 			    ROCKCHIP_PCIE_AT_IB_EP_FUNC_BAR_ADDR1(fn, bar));
 }
 
+static inline u32 rockchip_ob_region(phys_addr_t addr)
+{
+	return (addr >> ilog2(SZ_1M)) & 0x1f;
+}
+
 static int rockchip_pcie_ep_map_addr(struct pci_epc *epc, u8 fn, u8 vfn,
 				     phys_addr_t addr, u64 pci_addr,
 				     size_t size)
@@ -256,18 +239,9 @@ static int rockchip_pcie_ep_map_addr(struct pci_epc *epc, u8 fn, u8 vfn,
 	struct rockchip_pcie *pcie = &ep->rockchip;
 	u32 r;
 
-	r = find_first_zero_bit(&ep->ob_region_map, BITS_PER_LONG);
-	/*
-	 * Region 0 is reserved for configuration space and shouldn't
-	 * be used elsewhere per TRM, so leave it out.
-	 */
-	if (r >= ep->max_regions - 1) {
-		dev_err(&epc->dev, "no free outbound region\n");
-		return -EINVAL;
-	}
+	r = rockchip_ob_region(addr);
 
-	rockchip_pcie_prog_ep_ob_atu(pcie, fn, r, AXI_WRAPPER_MEM_WRITE, addr,
-				     pci_addr, size);
+	rockchip_pcie_prog_ep_ob_atu(pcie, fn, r, addr, pci_addr, size);
 
 	set_bit(r, &ep->ob_region_map);
 	ep->ob_addr[r] = addr;
@@ -282,15 +256,11 @@ static void rockchip_pcie_ep_unmap_addr(struct pci_epc *epc, u8 fn, u8 vfn,
 	struct rockchip_pcie *rockchip = &ep->rockchip;
 	u32 r;
 
-	for (r = 0; r < ep->max_regions - 1; r++)
+	for (r = 0; r < ep->max_regions; r++)
 		if (ep->ob_addr[r] == addr)
 			break;
 
-	/*
-	 * Region 0 is reserved for configuration space and shouldn't
-	 * be used elsewhere per TRM, so leave it out.
-	 */
-	if (r == ep->max_regions - 1)
+	if (r == ep->max_regions)
 		return;
 
 	rockchip_pcie_clear_ep_ob_atu(rockchip, r);
@@ -388,6 +358,7 @@ static int rockchip_pcie_ep_send_msi_irq(struct rockchip_pcie_ep *ep, u8 fn,
 	u16 flags, mme, data, data_mask;
 	u8 msi_count;
 	u64 pci_addr, pci_addr_mask = 0xff;
+	u32 r;
 
 	/* Check MSI enable bit */
 	flags = rockchip_pcie_read(&ep->rockchip,
@@ -421,13 +392,12 @@ static int rockchip_pcie_ep_send_msi_irq(struct rockchip_pcie_ep *ep, u8 fn,
 				       ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
 				       ROCKCHIP_PCIE_EP_MSI_CTRL_REG +
 				       PCI_MSI_ADDRESS_LO);
-	pci_addr &= GENMASK_ULL(63, 2);
 
 	/* Set the outbound region if needed. */
 	if (unlikely(ep->irq_pci_addr != (pci_addr & ~pci_addr_mask) ||
 		     ep->irq_pci_fn != fn)) {
-		rockchip_pcie_prog_ep_ob_atu(rockchip, fn, ep->max_regions - 1,
-					     AXI_WRAPPER_MEM_WRITE,
+		r = rockchip_ob_region(ep->irq_phys_addr);
+		rockchip_pcie_prog_ep_ob_atu(rockchip, fn, r,
 					     ep->irq_phys_addr,
 					     pci_addr & ~pci_addr_mask,
 					     pci_addr_mask + 1);
@@ -516,6 +486,8 @@ static int rockchip_pcie_parse_ep_dt(struct rockchip_pcie *rockchip,
 	if (err < 0 || ep->max_regions > MAX_REGION_LIMIT)
 		ep->max_regions = MAX_REGION_LIMIT;
 
+	ep->ob_region_map = 0;
+
 	err = of_property_read_u8(dev->of_node, "max-functions",
 				  &ep->epc->max_functions);
 	if (err < 0)
@@ -536,7 +508,8 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	struct rockchip_pcie *rockchip;
 	struct pci_epc *epc;
 	size_t max_regions;
-	int err;
+	struct pci_epc_mem_window *windows = NULL;
+	int err, i;
 
 	ep = devm_kzalloc(dev, sizeof(*ep), GFP_KERNEL);
 	if (!ep)
@@ -583,15 +556,26 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	/* Only enable function 0 by default */
 	rockchip_pcie_write(rockchip, BIT(0), PCIE_CORE_PHY_FUNC_CFG);
 
-	err = pci_epc_mem_init(epc, rockchip->mem_res->start,
-			       resource_size(rockchip->mem_res), PAGE_SIZE);
+	windows = devm_kcalloc(dev, ep->max_regions, sizeof(struct pci_epc_mem_window), GFP_KERNEL);
+	if (!windows) {
+		err = -ENOMEM;
+		goto err_uninit_port;
+	}
+	for (i = 0; i < ep->max_regions; i++) {
+		windows[i].phys_base = rockchip->mem_res->start + (SZ_1M * i);
+		windows[i].size = SZ_1M;
+		windows[i].page_size = SZ_1M;
+	}
+	err = pci_epc_multi_mem_init(epc, windows, ep->max_regions);
+	devm_kfree(dev, windows);
+
 	if (err < 0) {
 		dev_err(dev, "failed to initialize the memory space\n");
 		goto err_uninit_port;
 	}
 
 	ep->irq_cpu_addr = pci_epc_mem_alloc_addr(epc, &ep->irq_phys_addr,
-						  SZ_128K);
+						  SZ_1M);
 	if (!ep->irq_cpu_addr) {
 		dev_err(dev, "failed to reserve memory space for MSI\n");
 		err = -ENOMEM;
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index ffc68a3a5fee..5797ba73bb6b 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -139,6 +139,7 @@
 
 #define PCIE_RC_RP_ATS_BASE		0x400000
 #define PCIE_RC_CONFIG_NORMAL_BASE	0x800000
+#define PCIE_EP_PF_CONFIG_REGS_BASE	0x800000
 #define PCIE_RC_CONFIG_BASE		0xa00000
 #define PCIE_EP_CONFIG_BASE		0xa00000
 #define PCIE_EP_CONFIG_DID_VID		(PCIE_EP_CONFIG_BASE + 0x00)
@@ -232,13 +233,15 @@
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_ME				BIT(16)
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MASK_MSI_CAP	BIT(24)
 #define ROCKCHIP_PCIE_EP_DUMMY_IRQ_ADDR				0x1
-#define ROCKCHIP_PCIE_EP_FUNC_BASE(fn)	(((fn) << 12) & GENMASK(19, 12))
+#define ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR		0x3
+#define ROCKCHIP_PCIE_EP_FUNC_BASE(fn) \
+	(PCIE_EP_PF_CONFIG_REGS_BASE + (((fn) << 12) & GENMASK(19, 12)))
+#define ROCKCHIP_PCIE_EP_VIRT_FUNC_BASE(fn) \
+	(PCIE_EP_PF_CONFIG_REGS_BASE + 0x10000 + (((fn) << 12) & GENMASK(19, 12)))
 #define ROCKCHIP_PCIE_AT_IB_EP_FUNC_BAR_ADDR0(fn, bar) \
-	(PCIE_RC_RP_ATS_BASE + 0x0840 + (fn) * 0x0040 + (bar) * 0x0008)
+	(PCIE_CORE_AXI_CONF_BASE + 0x0828 + (fn) * 0x0040 + (bar) * 0x0008)
 #define ROCKCHIP_PCIE_AT_IB_EP_FUNC_BAR_ADDR1(fn, bar) \
-	(PCIE_RC_RP_ATS_BASE + 0x0844 + (fn) * 0x0040 + (bar) * 0x0008)
-#define ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR0(r) \
-	(PCIE_RC_RP_ATS_BASE + 0x0000 + ((r) & 0x1f) * 0x0020)
+	(PCIE_CORE_AXI_CONF_BASE + 0x082c + (fn) * 0x0040 + (bar) * 0x0008)
 #define ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR0_DEVFN_MASK	GENMASK(19, 12)
 #define ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR0_DEVFN(devfn) \
 	(((devfn) << 12) & \
@@ -246,20 +249,21 @@
 #define ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR0_BUS_MASK	GENMASK(27, 20)
 #define ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR0_BUS(bus) \
 		(((bus) << 20) & ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR0_BUS_MASK)
+#define PCIE_RC_EP_ATR_OB_REGIONS_1_32 (PCIE_CORE_AXI_CONF_BASE + 0x0020)
+#define ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR0(r) \
+		(PCIE_RC_EP_ATR_OB_REGIONS_1_32 + 0x0000 + ((r) & 0x1f) * 0x0020)
 #define ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR1(r) \
-		(PCIE_RC_RP_ATS_BASE + 0x0004 + ((r) & 0x1f) * 0x0020)
+		(PCIE_RC_EP_ATR_OB_REGIONS_1_32 + 0x0004 + ((r) & 0x1f) * 0x0020)
 #define ROCKCHIP_PCIE_AT_OB_REGION_DESC0_HARDCODED_RID	BIT(23)
 #define ROCKCHIP_PCIE_AT_OB_REGION_DESC0_DEVFN_MASK	GENMASK(31, 24)
 #define ROCKCHIP_PCIE_AT_OB_REGION_DESC0_DEVFN(devfn) \
 		(((devfn) << 24) & ROCKCHIP_PCIE_AT_OB_REGION_DESC0_DEVFN_MASK)
 #define ROCKCHIP_PCIE_AT_OB_REGION_DESC0(r) \
-		(PCIE_RC_RP_ATS_BASE + 0x0008 + ((r) & 0x1f) * 0x0020)
-#define ROCKCHIP_PCIE_AT_OB_REGION_DESC1(r)	\
-		(PCIE_RC_RP_ATS_BASE + 0x000c + ((r) & 0x1f) * 0x0020)
-#define ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR0(r) \
-		(PCIE_RC_RP_ATS_BASE + 0x0018 + ((r) & 0x1f) * 0x0020)
-#define ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR1(r) \
-		(PCIE_RC_RP_ATS_BASE + 0x001c + ((r) & 0x1f) * 0x0020)
+		(PCIE_RC_EP_ATR_OB_REGIONS_1_32 + 0x0008 + ((r) & 0x1f) * 0x0020)
+#define ROCKCHIP_PCIE_AT_OB_REGION_DESC1(r) \
+		(PCIE_RC_EP_ATR_OB_REGIONS_1_32 + 0x000c + ((r) & 0x1f) * 0x0020)
+#define ROCKCHIP_PCIE_AT_OB_REGION_DESC2(r) \
+		(PCIE_RC_EP_ATR_OB_REGIONS_1_32 + 0x0010 + ((r) & 0x1f) * 0x0020)
 
 #define ROCKCHIP_PCIE_CORE_EP_FUNC_BAR_CFG0(fn) \
 		(PCIE_CORE_CTRL_MGMT_BASE + 0x0240 + (fn) * 0x0008)
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
