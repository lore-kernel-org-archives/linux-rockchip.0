Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6930E75448
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 10:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q8bFcXspRuVUIllymnTUUp3ETEE/l0flWSsevsCfTes=; b=oQv9gCgUiaWnbz
	4hbq61+bAfke2bW4JFlwymvmzJhf7o22Zcwt1Q0hGSHsuOG+noy5D8S8CBR8VUZUIpBHXf7yrCKXm
	sHpNgZYIh2918LF4uXw3Ngn/lQUaXwNxFqhu4nZsl6CmbWIRH1s1KvNFEefo+h9ImKg8FVfPnV0Iu
	JIEVZdiQk0+HhZHhJqChYyQiKtQjPOHxc7gGjKBQCDkKQJrYnjVQisrWfX9VmmJIPNxwGsIJ0NnX4
	eK42NERUByldPLaRuNTF+gSuiJqWwbrHwKqRBdbD6sH8YdiyWemiZl/xa2ZNnMlBR6enuxVyoFsQT
	fVxiS05FMyViX82QiF/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYLgG-0000000Gemp-1NjW;
	Wed, 24 Dec 2025 10:01:20 +0000
Received: from mail-m49214.qiye.163.com ([45.254.49.214])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYLgC-0000000GemJ-0moM
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 10:01:18 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2e6ab1f19;
	Wed, 24 Dec 2025 18:01:09 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] PCI: dw-rockchip: Disable BAR 0 and BAR 1 for RC mode
Date: Wed, 24 Dec 2025 18:01:01 +0800
Message-Id: <1766570461-138256-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9b4fce266e09cckunm298113b63e6deb
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRlDHVYYTB5CTh9DSkpKGUhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=R5uSlLo7bMODDKI359E3dWoqT+7y4ciKWlllh+fSLdV0NNq5aVTYhCf2M5ZjF29CDjvzkYeFQ4vhrwO8m5i7UFNN4IJE9FwCZiorKoJ04tHldq0M5wMlQ21xt7SCEy8/hEeqN+NQ+eq2vaJrfaQettxkhndJ4KNqusB4klR4YBg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=gRw7JySXySjIwbtv2EmWdYL6jpAHHp6rm5lyTwVN6Bo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_020117_613240_530DF850 
X-CRM114-Status: GOOD (  10.11  )
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

To slitence the useless bar allocation error log of RC when
scanning bus, as RC doesn't need BARs at all.

  pci 0000:00:00.0: [1d87:3588] type 01 class 0x060400 PCIe Root Port
  pci 0000:00:00.0: BAR 0 [mem 0x00000000-0x3fffffff]
  pci 0000:00:00.0: BAR 1 [mem 0x00000000-0x3fffffff]
  pci 0000:00:00.0: ROM [mem 0x00000000-0x0000ffff pref]
	...
  pci 0000:00:00.0: BAR 0 [mem 0x900000000-0x93fffffff]: assigned
  pci 0000:00:00.0: BAR 1 [mem size 0x40000000]: can't assign; no space
  pci 0000:00:00.0: BAR 1 [mem size 0x40000000]: failed to assign
  pci 0000:00:00.0: ROM [mem 0xf0200000-0xf020ffff pref]: assigned
  pci 0000:00:00.0: BAR 0 [mem 0x900000000-0x93fffffff]: releasing
  pci 0000:00:00.0: ROM [mem 0xf0200000-0xf020ffff pref]: releasing
  pci 0000:00:00.0: BAR 0 [mem 0x900000000-0x93fffffff]: assigned
  pci 0000:00:00.0: BAR 1 [mem size 0x40000000]: can't assign; no space
  pci 0000:00:00.0: BAR 1 [mem size 0x40000000]: failed to assign

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index f8605fe..e421fa0 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -80,6 +80,8 @@
 #define  PCIE_LINKUP_MASK		GENMASK(17, 16)
 #define  PCIE_LTSSM_STATUS_MASK		GENMASK(5, 0)
 
+#define PCIE_TYPE0_HDR_DBI2_OFFSET      0x100000
+
 struct rockchip_pcie {
 	struct dw_pcie pci;
 	void __iomem *apb_base;
@@ -292,6 +294,8 @@ static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 	if (irq < 0)
 		return irq;
 
+	pci->dbi_base2 = pci->dbi_base + PCIE_TYPE0_HDR_DBI2_OFFSET;
+
 	ret = rockchip_pcie_init_irq_domain(rockchip);
 	if (ret < 0)
 		dev_err(dev, "failed to init irq domain\n");
@@ -302,6 +306,10 @@ static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 	rockchip_pcie_configure_l1ss(pci);
 	rockchip_pcie_enable_l0s(pci);
 
+	/* Disable RC's BAR0 and BAR1 */
+	dw_pcie_writel_dbi2(pci, PCI_BASE_ADDRESS_0, 0x0);
+	dw_pcie_writel_dbi2(pci, PCI_BASE_ADDRESS_1, 0x0);
+
 	return 0;
 }
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
