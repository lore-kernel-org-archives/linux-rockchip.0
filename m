Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6EE2C05027
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 13:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AsPIVvAjb44pusJrxLsE+NAuA7JMzttoIf9kujG6PmI=; b=3O7wGw2loOQBYI
	aspJsnKqK2L9/V4wyY5b6pnnTem9NuQEhm0kJ//KeGcjUx/fmGlfkJIG5G+lKiT4pOL5/pTpUGQ6+
	+FqKZsBE1K4fzQAd63QGbeCRWLeAkNszpLTVLArTeG6GHsjfT0KMk7dXoTfS5KgdblH5AgtT4fgq9
	GQz7l6oRema7u0DuEHtiJ8KdCEFdOJTv0FhL7oZkNo++Tctgk4an6nenXkUdV+dLnr396dMYYBesP
	Oj9Aj1hiGXMtWgCUZvF9EPMcPJlhbsB69OtdwkNBnA2uLL/de06cv+Vkda1Sj6nYjlP0nhDJccBfv
	c4OG7B3UNTBcCINY22KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2jR-00B3sY-Up; Thu, 26 Jan 2023 13:56:02 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2gL-00B2N4-Pg; Thu, 26 Jan 2023 13:52:52 +0000
Received: by mail-ed1-x52f.google.com with SMTP id y11so1914596edd.6;
        Thu, 26 Jan 2023 05:52:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p1qvARZex2mJ+f/JraTvliX6iUTmZnqiuAeO19XtIBU=;
        b=Ey5Xb58219e3Bzs4lxei49vCA1u1PhPgHhTDcOHjtT9K6vEhPOlnVbRX13QgfE4f/y
         Biu9d0izs8J9uwswwMo1FmnRMkMftHhu3IDQNjaZxASvgXQnimkbXCRsyQ2qyNPCFHlh
         FsN34Z2UPWJtONroVLLFp2op/BEYkHLRDLf+h7gcN9caggZkUomRvf9Jger5g2ynqmZc
         A19jZxwzaHe7nzeZSoDpCURXETi+AetN11wlm6MZhzvWmNBdKfg52mawBZ6mUL3cKmkx
         rFMaJwaaxhR3GrzRTHdWhUVRNsedTSLSwapXQpo0rxl0WlExLh1WZ5qX4nh/ZLpCT7vc
         +5Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p1qvARZex2mJ+f/JraTvliX6iUTmZnqiuAeO19XtIBU=;
        b=OOWX778snRiQ+ZksnEp3Qzt/+alzKT5Ik4XBzSvjMInZSmLnWPziUYWAZJreLjRTiF
         8PLwd1gUSyHhMgwdMHXgOJJfNzCV//eazaH4fwwZTtRyZZwReOGJq9U8hqIsFsEuWhYA
         r99TKJoQhe+ltzY0xSEWpLd8bgn/orjEOLnO/1524ehuoRt4GxfRgyWtf+bapwmsQHV+
         76zE390NYeLaqERxOUY6vkJzDVL+KOsJXyQUpf+aefbb7Jw1ROpv/gHVmC7lyBJn93DP
         6Fti6E6l2pnalZNMKb8Sa+au1ld0hQjwB+HifNQ5LlhqnPnvL5kxbteYcbz3Ng29h4kQ
         dsBA==
X-Gm-Message-State: AFqh2kpUI2riqmehgJSpYbIk9piW3uWOmbZDJ8uJiX4O0xn9d0Vkp7ug
	oGx2GUPrLUxfFvU6whoFCC8=
X-Google-Smtp-Source: AMrXdXvoA9CVnX0Q88vIYXZ8497WQXu59ka5NiS+NHh/KSVZdkWJkWl1u7aEe/KUNvrhcTA04hfGaw==
X-Received: by 2002:a05:6402:5110:b0:49b:7e30:ae4a with SMTP id m16-20020a056402511000b0049b7e30ae4amr48353982edd.31.1674741168498;
        Thu, 26 Jan 2023 05:52:48 -0800 (PST)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id t15-20020a508d4f000000b004a0e2fe619esm591611edt.39.2023.01.26.05.52.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:52:48 -0800 (PST)
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
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Mikko Kovanen <mikko.kovanen@aavamobile.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: [PATCH 8/8] PCI: rockchip: Fixed MSI generation from PCIe endpoint core
Date: Thu, 26 Jan 2023 14:50:48 +0100
Message-Id: <20230126135049.708524-9-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
References: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_055250_096905_2471F030 
X-CRM114-Status: GOOD (  17.44  )
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

The generation of MSI interrupts from the RK3399 PCIe endpoint core was
broken. The main issue came from u16 variables to be used to access u32
registers, this would lead to shifts of more than 16 bits moving data
out of the variable etc. Address translation for sending the MSI messages
over PCIe has also been fixed.

Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 37 +++++++++++++++--------
 drivers/pci/controller/pcie-rockchip.h    |  1 +
 2 files changed, 26 insertions(+), 12 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index a58c9d56b..b26f16bed 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -288,19 +288,31 @@ static void rockchip_pcie_ep_unmap_addr(struct pci_epc *epc, u8 fn, u8 vfn,
 }
 
 static int rockchip_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 vfn,
-				    u8 multi_msg_cap)
+				    u8 mmc)
 {
 	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
 	struct rockchip_pcie *rockchip = &ep->rockchip;
-	u16 flags;
+	u32 flags;
+	u32 multi_msg_cap;
+
+	if (fn) {
+		dev_err(&epc->dev, "This endpoint controller only supports a single physical function\n");
+		return -EINVAL;
+	}
+
+	if (mmc > 0x5) {
+		dev_err(&epc->dev, "Number of MSI IRQs cannot be more than 32\n");
+		return -EINVAL;
+	}
 
 	flags = rockchip_pcie_read(rockchip,
 				   ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
 				   ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
 	flags &= ~ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_MASK;
+	multi_msg_cap = mmc;
 	flags |=
-	   ((multi_msg_cap << 1) <<  ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET) |
-	   PCI_MSI_FLAGS_64BIT;
+	   (multi_msg_cap << ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET) |
+	   (PCI_MSI_FLAGS_64BIT << ROCKCHIP_PCIE_EP_MSI_FLAGS_OFFSET);
 	flags &= ~ROCKCHIP_PCIE_EP_MSI_CTRL_MASK_MSI_CAP;
 	rockchip_pcie_write(rockchip, flags,
 			    ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
@@ -312,7 +324,7 @@ static int rockchip_pcie_ep_get_msi(struct pci_epc *epc, u8 fn, u8 vfn)
 {
 	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
 	struct rockchip_pcie *rockchip = &ep->rockchip;
-	u16 flags;
+	u32 flags;
 
 	flags = rockchip_pcie_read(rockchip,
 				   ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
@@ -380,9 +392,10 @@ static int rockchip_pcie_ep_send_msi_irq(struct rockchip_pcie_ep *ep, u8 fn,
 					 u8 interrupt_num)
 {
 	struct rockchip_pcie *rockchip = &ep->rockchip;
-	u16 flags, mme, data, data_mask;
+	u32 flags, mme, data, data_mask;
 	u8 msi_count;
 	u64 pci_addr, pci_addr_mask = 0xff;
+	u32 r;
 
 	/* Check MSI enable bit */
 	flags = rockchip_pcie_read(&ep->rockchip,
@@ -416,16 +429,16 @@ static int rockchip_pcie_ep_send_msi_irq(struct rockchip_pcie_ep *ep, u8 fn,
 				       ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
 				       ROCKCHIP_PCIE_EP_MSI_CTRL_REG +
 				       PCI_MSI_ADDRESS_LO);
-	pci_addr &= GENMASK_ULL(63, 2);
 
 	/* Set the outbound region if needed. */
 	if (unlikely(ep->irq_pci_addr != (pci_addr & ~pci_addr_mask) ||
 		     ep->irq_pci_fn != fn)) {
-		rockchip_pcie_prog_ep_ob_atu(rockchip, fn, ep->max_regions - 1,
-					     AXI_WRAPPER_MEM_WRITE,
-					     ep->irq_phys_addr,
-					     pci_addr & ~pci_addr_mask,
-					     pci_addr_mask + 1);
+		r = (ep->irq_phys_addr >> ilog2(SZ_1M)) & 0x1f;
+		rockchip_pcie_prog_ep_ob_atu(rockchip, fn, r,
+					AXI_WRAPPER_MEM_WRITE,
+					ep->irq_phys_addr,
+					pci_addr & ~pci_addr_mask,
+					pci_addr_mask + 1);
 		ep->irq_pci_addr = (pci_addr & ~pci_addr_mask);
 		ep->irq_pci_fn = fn;
 	}
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index e90c2a2b8..11dbf53cd 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -227,6 +227,7 @@
 #define ROCKCHIP_PCIE_EP_CMD_STATUS			0x4
 #define   ROCKCHIP_PCIE_EP_CMD_STATUS_IS		BIT(19)
 #define ROCKCHIP_PCIE_EP_MSI_CTRL_REG			0x90
+#define   ROCKCHIP_PCIE_EP_MSI_FLAGS_OFFSET			16
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET		17
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_MASK		GENMASK(19, 17)
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MME_OFFSET		20
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
