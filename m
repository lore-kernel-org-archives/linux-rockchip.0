Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9B16EB64D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jun 2023 13:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ANTDfKKQGh+3UMuQ8fwrd0LfeMFr8bZSOAHh/S061/c=; b=IHMTzFk7W8Ov3R
	ANKcqX+hY+TnkmiAkTT4sxP+CTTVJUmcT+8pRq1URPhffhw7SF/LuCfVcQm52giZCl5XBp4oIClPK
	ad5imjMJnabU3IvavNq+LJBiBb16TK0DoMrofKW1YGJuFvRhUXBvyRFl9VWois78n2buuy9MPQI4D
	KApnn6OdbRGcpjSU8Gm0EvfrYPVrZ8B41rINSZbH2+EBQC9NZEwOeUltjeYNuBiqfP1fvoUBG3i30
	JgbVt95w2/6lCE2Y3s/8S/8S7r0hTEDWsMuxaHdm5W27lkyGVps3Et+sUWaWFmzpZYEO7F19e+77z
	SdsS9ToF8leyg4ffv3kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qFE2R-003kru-1E;
	Fri, 30 Jun 2023 13:19:51 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qFE2O-003kr0-2e;
	Fri, 30 Jun 2023 13:19:50 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4faaaa476a9so3082816e87.2;
        Fri, 30 Jun 2023 06:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688131184; x=1690723184;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5XR5ShywBTsDhxqrqnPNPImYwgLwdolYpfqjtsu6y5c=;
        b=gbCKNNtsQLcsUQlFs7+FLhqKUlnLm6Slc2QEcI/BGBoYVuKCOskfPLDyj+GqU4SJ2P
         mYqPGSi1xo4kNoxm8HjFV13PS/gaMZd3xWUDAaPJk8OaOUc3XzNi6eFA/cPuSPO//FCq
         HUsUgy5PMTVNddYkKfRFCS+jG5yIYsbJaxjlvosLzQtlFF8omDptyqNAMRnQJ6+1VIVj
         T0A1zXu6ygfYwNJr7uCSaVhyy49JPcddqe8fOlnxqhCU97wDPNg1O6lcQgmurdU1zJoZ
         KVEzB8ny0xFnhn22u5Aa5UZZacpog6ysnqmWuSDSfGovQGjiL2k2CUJX3S5hikZOSjCp
         QTmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688131184; x=1690723184;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5XR5ShywBTsDhxqrqnPNPImYwgLwdolYpfqjtsu6y5c=;
        b=ORdxvvZ4UtAQ4iEmT25CM2wSKIGR9Oc65VzKOkyBWJFN6BCglEHUwqX4BjVTeWlV9h
         ZrIGK4slHilMnRcJ8axy0TuFMZryscgA7Ecp+PP2kXWtEkg14fDd4ZdMiM5AeGq3NLYP
         an7KX0g3r3QOtVXYnwbFM2s09YTPk21srueV94uUVWIlh07wSXPqTJHqLxudwGT2guP3
         76gMy7uu9k0OeqOHHMsWWCy6GkAHTtdUINUx3EsP1oXHImNAjNuiC3agKwe3oSEdWaFW
         Pe0w6piyWUxiCMuy6HeDXfExmbqdLisfIyVSGhv8KpkBfXayeqcqLU+S0Bg58v/x0ZM5
         pEmg==
X-Gm-Message-State: ABy/qLZ6KxU/zH2HK6ayWZ+PCRyc7uucL6nqAYVyBcR+DuJ3A+m5R2P9
	TAIrpj99qS4Jv8a7UhIjaj8=
X-Google-Smtp-Source: APBJJlHbqV544RedYUwZYHpNe0Ten97YJSL9QE5S+bJRvvt/iFa6ErJQZ384JcSCGnOLJSySwE28mw==
X-Received: by 2002:a05:6512:3b8b:b0:4fb:774f:9a84 with SMTP id g11-20020a0565123b8b00b004fb774f9a84mr2822368lfv.13.1688131183984;
        Fri, 30 Jun 2023 06:19:43 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id bc23-20020a056402205700b0051d9dbf5edfsm4749059edb.55.2023.06.30.06.19.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jun 2023 06:19:43 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig.vd.ch
Cc: dlemoal@kernel.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Dan Carpenter <dan.carpenter@linaro.org>,
	stable@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] PCI: rockchip: Use 64-bit mask on MSI 64-bit PCI address
Date: Fri, 30 Jun 2023 15:17:52 +0200
Message-Id: <20230630131753.1549685-1-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230630_061948_880000_9DBB9388 
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

A 32-bit mask was used on the 64-bit PCI address used for mapping MSIs.
This would result in the upper 32 bits being unintentionally zeroed and
MSIs getting mapped to incorrect PCI addresses if the address had any
of the upper bits set.

Replace 32-bit mask by appropriate 64-bit mask and rename 32-bit mask
for clarity.

Fixes: dc73ed0f1b8b ("PCI: rockchip: Fix window mapping and address translation for endpoint")
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/linux-pci/8d19e5b7-8fa0-44a4-90e2-9bb06f5eb694@moroto.mountain/
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: stable@vger.kernel.org
---
 drivers/pci/controller/pcie-rockchip-ep.c | 12 ++++++------
 drivers/pci/controller/pcie-rockchip.h    |  6 +++---
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 0af0e965fb57..313face6a87f 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -354,7 +354,7 @@ static int rockchip_pcie_ep_send_msi_irq(struct rockchip_pcie_ep *ep, u8 fn,
 	struct rockchip_pcie *rockchip = &ep->rockchip;
 	u32 flags, mme, data, data_mask;
 	u8 msi_count;
-	u64 pci_addr;
+	u64 pci_addr, pci_addr_mask = GENMASK(63, 8);
 	u32 r;
 
 	/* Check MSI enable bit */
@@ -391,18 +391,18 @@ static int rockchip_pcie_ep_send_msi_irq(struct rockchip_pcie_ep *ep, u8 fn,
 				       PCI_MSI_ADDRESS_LO);
 
 	/* Set the outbound region if needed. */
-	if (unlikely(ep->irq_pci_addr != (pci_addr & PCIE_ADDR_MASK) ||
+	if (unlikely(ep->irq_pci_addr != (pci_addr & pci_addr_mask) ||
 		     ep->irq_pci_fn != fn)) {
 		r = rockchip_ob_region(ep->irq_phys_addr);
 		rockchip_pcie_prog_ep_ob_atu(rockchip, fn, r,
 					     ep->irq_phys_addr,
-					     pci_addr & PCIE_ADDR_MASK,
-					     ~PCIE_ADDR_MASK + 1);
-		ep->irq_pci_addr = (pci_addr & PCIE_ADDR_MASK);
+					     pci_addr & pci_addr_mask,
+					     ~pci_addr_mask + 1);
+		ep->irq_pci_addr = (pci_addr & pci_addr_mask);
 		ep->irq_pci_fn = fn;
 	}
 
-	writew(data, ep->irq_cpu_addr + (pci_addr & ~PCIE_ADDR_MASK));
+	writew(data, ep->irq_cpu_addr + (pci_addr & ~pci_addr_mask));
 	return 0;
 }
 
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index fe0333778fd9..2d7b05f07b7e 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -158,11 +158,11 @@
 #define PCIE_RC_CONFIG_THP_CAP		(PCIE_RC_CONFIG_BASE + 0x274)
 #define   PCIE_RC_CONFIG_THP_CAP_NEXT_MASK	GENMASK(31, 20)
 
-#define PCIE_ADDR_MASK			0xffffff00
+#define PCIE_LO_ADDR_MASK		GENMASK(31, 8)
 #define PCIE_CORE_AXI_CONF_BASE		0xc00000
 #define PCIE_CORE_OB_REGION_ADDR0	(PCIE_CORE_AXI_CONF_BASE + 0x0)
 #define   PCIE_CORE_OB_REGION_ADDR0_NUM_BITS	0x3f
-#define   PCIE_CORE_OB_REGION_ADDR0_LO_ADDR	PCIE_ADDR_MASK
+#define   PCIE_CORE_OB_REGION_ADDR0_LO_ADDR	PCIE_LO_ADDR_MASK
 #define PCIE_CORE_OB_REGION_ADDR1	(PCIE_CORE_AXI_CONF_BASE + 0x4)
 #define PCIE_CORE_OB_REGION_DESC0	(PCIE_CORE_AXI_CONF_BASE + 0x8)
 #define PCIE_CORE_OB_REGION_DESC1	(PCIE_CORE_AXI_CONF_BASE + 0xc)
@@ -170,7 +170,7 @@
 #define PCIE_CORE_AXI_INBOUND_BASE	0xc00800
 #define PCIE_RP_IB_ADDR0		(PCIE_CORE_AXI_INBOUND_BASE + 0x0)
 #define   PCIE_CORE_IB_REGION_ADDR0_NUM_BITS	0x3f
-#define   PCIE_CORE_IB_REGION_ADDR0_LO_ADDR	PCIE_ADDR_MASK
+#define   PCIE_CORE_IB_REGION_ADDR0_LO_ADDR	PCIE_LO_ADDR_MASK
 #define PCIE_RP_IB_ADDR1		(PCIE_CORE_AXI_INBOUND_BASE + 0x4)
 
 /* Size of one AXI Region (not Region 0) */
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
