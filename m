Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7398CC05027
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 13:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7F+U/K6udDSu+97o0kQqU7sdhzhD/pM4AgDCeorihRk=; b=C3W36GQtIRiAHH
	qWYlUepDJIs9S/IIHjPl9R75Am8UpEHb2FsOFfpQtXWnSUO9dnyiaNH7Ipm2C7mKdres6VrpXB9hV
	OnPKMympB7v8g2A9fAPlVzPRj/QVT9SoKD2sBaZPIKdVNFYT7vC1nREOw4xDzbCabKNSxpJiDVsoP
	5Danp7EyqJ1T8ZFxX7MFGjhpcNDIfYqd1KxdCsarVtD1TrhEsqImf3V5fb18gxRLMtuk/mpBGP1Ud
	DDKWsEgWIh/+BcPeymrhNgh5XQiDUFQ1ZmuIYmIwm4WbdeKitvWETMeurLU4Zl6h8aYoLkzQxPfkb
	PCNgxpqbMatQflsU7jdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2iw-00B3bV-09; Thu, 26 Jan 2023 13:55:30 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2gL-00B2KN-5V; Thu, 26 Jan 2023 13:52:52 +0000
Received: by mail-ed1-x531.google.com with SMTP id x10so1891925edd.10;
        Thu, 26 Jan 2023 05:52:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6r/M96HQ6mJOydikE9ZGICn1o9EE2Mcz4TRYdGEXn8Q=;
        b=TyW6NLtJ8v5kmKG2BGe12U4KSK9TECeMv9jubJzHBJ0TjOQ/q2LLvbWkYas9HW8dGk
         cpa3ySn2q6qKJJg3BCyqE1mZttvkF5necoQ7uGlzrbTvBXGV1wgUU7S4JJQS7qhDtsMA
         zsINNCPvcHKGurQT0TsAxCG1xINVM8a6dU9myMA643KiqKa10HwdiQgLjq9l5JG2hfLL
         VJbi/zrma4LMLfWm7Wu3M+wF4bonLVLwg/EW8cU9ruyfREbxjNu2b7FpILGWJ4/pMx9C
         CBhf67sF/RMQ9C+lTX4tsu8hkmyMhs+UoMjhCWg535hSL6gRCz8w7+4cOuxp2A/x4oLY
         DM7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6r/M96HQ6mJOydikE9ZGICn1o9EE2Mcz4TRYdGEXn8Q=;
        b=oj/LmpQFcw7VtEBMdu9XpVFQ8bWvPw/pxF2ZhPrYktUD0jSVL0bQnqxHZC0GnhZxQg
         htstMquFYo+qaaXjX5N6ofFAjm4bxEspk/HXZaeOL/jfOePxsosCJRGNDTNQhKr9FS0e
         xHZswIJ3jHoJASO5K6qMGAH+/wM3Q7xEQYqTLWF7bf7daHWqc9PfaUolASX5WiBSShDp
         SRQH6I1TgKOkMjgPFP81zIjM1cTSSDBsHnjPrCvsNZIdqMA7uwb0anCC9SgzHBJoqjGL
         SCuKWFpAU0VwiDCy3M/BTCuEfMef37PB9k6AKnhqoMBL7I/saBmFuSgj7hK0pcfGhYSg
         fFuw==
X-Gm-Message-State: AO0yUKVSpLZCmJiAl7Lie4MhWuUArb5jpYkbD0MMNx6mYSTQpaWRDmX4
	UcsWzwk4N2mgcSBVfYI01IU=
X-Google-Smtp-Source: AK7set9ZDtLOSbKu0u8jvVMmA7AG7TgSoLpJ+4v8nul7Tr0tSupEGmENIbcIwVO7QeZZjqi8o9nBPw==
X-Received: by 2002:aa7:cfc5:0:b0:4a0:b978:4533 with SMTP id r5-20020aa7cfc5000000b004a0b9784533mr3320734edy.32.1674741163011;
        Thu, 26 Jan 2023 05:52:43 -0800 (PST)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id t15-20020a508d4f000000b004a0e2fe619esm591611edt.39.2023.01.26.05.52.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:52:42 -0800 (PST)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	wenrui.li@rock-chips.com,
	rick.wertenbroek@heig-vd.ch,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jani Nikula <jani.nikula@intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Mikko Kovanen <mikko.kovanen@aavamobile.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: [PATCH 6/8] PCI: rockchip: Fixed window mapping and address translation for endpoint
Date: Thu, 26 Jan 2023 14:50:46 +0100
Message-Id: <20230126135049.708524-7-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
References: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_055249_298683_4AB9C618 
X-CRM114-Status: GOOD (  23.48  )
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

The RK3399 PCI EP core has 33 windows for PCIe space, here in the driver
up to 32 fixed size (1M) windows are used and pages are allocated /
mapped accordingly. The driver first used a single window and allocated
space inside which caused translation issues (between CPU space and PCI
space) because a window can only have a single translation at a given
time, which if multiple regions are allocated inside will cause conflicts.
Now each window is a single region of 1M which will always guarantee that
the translation is not in conflict.

Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 62 ++++++++++++-----------
 drivers/pci/controller/pcie-rockchip.h    | 25 ++++-----
 2 files changed, 46 insertions(+), 41 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 4c84e403e..a682a941d 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -76,11 +76,17 @@ static void rockchip_pcie_prog_ep_ob_atu(struct rockchip_pcie *rockchip, u8 fn,
 	if (num_pass_bits < 8)
 		num_pass_bits = 8;
 
-	cpu_addr -= rockchip->mem_res->start;
-	addr0 = ((is_nor_msg ? 0x10 : (num_pass_bits - 1)) &
-		PCIE_CORE_OB_REGION_ADDR0_NUM_BITS) |
-		(lower_32_bits(cpu_addr) & PCIE_CORE_OB_REGION_ADDR0_LO_ADDR);
-	addr1 = upper_32_bits(is_nor_msg ? cpu_addr : pci_addr);
+	if (is_nor_msg) {
+		dev_warn(rockchip->dev, "NOR MSG\n");
+		cpu_addr -= rockchip->mem_res->start;
+		addr0 = (0x10 & PCIE_CORE_OB_REGION_ADDR0_NUM_BITS) |
+			(lower_32_bits(cpu_addr) & PCIE_CORE_OB_REGION_ADDR0_LO_ADDR);
+		addr1 = upper_32_bits(cpu_addr);
+	} else {
+		addr0 = (num_pass_bits & PCIE_CORE_OB_REGION_ADDR0_NUM_BITS) |
+			(lower_32_bits(pci_addr) & PCIE_CORE_OB_REGION_ADDR0_LO_ADDR);
+		addr1 = upper_32_bits(pci_addr);
+	}
 	desc0 = ROCKCHIP_PCIE_AT_OB_REGION_DESC0_DEVFN(fn) | type;
 	desc1 = 0;
 
@@ -103,12 +109,6 @@ static void rockchip_pcie_prog_ep_ob_atu(struct rockchip_pcie *rockchip, u8 fn,
 				    ROCKCHIP_PCIE_AT_OB_REGION_DESC0(r));
 		rockchip_pcie_write(rockchip, desc1,
 				    ROCKCHIP_PCIE_AT_OB_REGION_DESC1(r));
-
-		addr0 =
-		    ((num_pass_bits - 1) & PCIE_CORE_OB_REGION_ADDR0_NUM_BITS) |
-		    (lower_32_bits(cpu_addr) &
-		     PCIE_CORE_OB_REGION_ADDR0_LO_ADDR);
-		addr1 = upper_32_bits(cpu_addr);
 	}
 }
 
@@ -256,15 +256,7 @@ static int rockchip_pcie_ep_map_addr(struct pci_epc *epc, u8 fn, u8 vfn,
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
+	r = (addr >> ilog2(SZ_1M)) & 0x1f;
 
 	rockchip_pcie_prog_ep_ob_atu(pcie, fn, r, AXI_WRAPPER_MEM_WRITE, addr,
 				     pci_addr, size);
@@ -282,15 +274,11 @@ static void rockchip_pcie_ep_unmap_addr(struct pci_epc *epc, u8 fn, u8 vfn,
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
@@ -539,6 +527,8 @@ static int rockchip_pcie_parse_ep_dt(struct rockchip_pcie *rockchip,
 	if (err < 0 || ep->max_regions > MAX_REGION_LIMIT)
 		ep->max_regions = MAX_REGION_LIMIT;
 
+	ep->ob_region_map = 0;
+
 	err = of_property_read_u8(dev->of_node, "max-functions",
 				  &ep->epc->max_functions);
 	if (err < 0)
@@ -559,7 +549,10 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	struct rockchip_pcie *rockchip;
 	struct pci_epc *epc;
 	size_t max_regions;
+	struct pci_epc_mem_window *windows = NULL;
 	int err;
+	u32 cfg;
+	int i;
 
 	ep = devm_kzalloc(dev, sizeof(*ep), GFP_KERNEL);
 	if (!ep)
@@ -606,15 +599,26 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
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
index f3a5ff1cf..72e427a0f 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -134,6 +134,7 @@
 
 #define PCIE_RC_RP_ATS_BASE		0x400000
 #define PCIE_RC_CONFIG_NORMAL_BASE	0x800000
+#define PCIE_EP_PF_CONFIG_REGS_BASE	0x800000
 #define PCIE_RC_CONFIG_BASE		0xa00000
 #define PCIE_EP_CONFIG_BASE		0xa00000
 #define PCIE_EP_CONFIG_DID_VID		(PCIE_EP_CONFIG_BASE + 0x00)
@@ -228,13 +229,14 @@
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MASK_MSI_CAP	BIT(24)
 #define ROCKCHIP_PCIE_EP_DUMMY_IRQ_ADDR				0x1
 #define ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR		0x3
-#define ROCKCHIP_PCIE_EP_FUNC_BASE(fn)	(((fn) << 12) & GENMASK(19, 12))
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
@@ -242,20 +244,19 @@
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
+		(PCIE_RC_EP_ATR_OB_REGIONS_1_32 + 0x0008 + ((r) & 0x1f) * 0x0020)
 #define ROCKCHIP_PCIE_AT_OB_REGION_DESC1(r)	\
-		(PCIE_RC_RP_ATS_BASE + 0x000c + ((r) & 0x1f) * 0x0020)
-#define ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR0(r) \
-		(PCIE_RC_RP_ATS_BASE + 0x0018 + ((r) & 0x1f) * 0x0020)
-#define ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR1(r) \
-		(PCIE_RC_RP_ATS_BASE + 0x001c + ((r) & 0x1f) * 0x0020)
+		(PCIE_RC_EP_ATR_OB_REGIONS_1_32 + 0x000c + ((r) & 0x1f) * 0x0020)
 
 #define ROCKCHIP_PCIE_CORE_EP_FUNC_BAR_CFG0(fn) \
 		(PCIE_CORE_CTRL_MGMT_BASE + 0x0240 + (fn) * 0x0008)
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
