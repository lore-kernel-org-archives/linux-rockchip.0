Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFA91CFD36C
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 01:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kvRyEaBTS+/nO96qGT9S6yWAHD2fU0c84AQhdAvB1AU=; b=c8ClY0a8lFiTju
	TVqJxQzyTLN4i5VQxkuqLQbmaIIFqqzzLkpDz9UQTzjuWodLfWuQnjlCMTrcxU62HFLxN4QPRnkh6
	emR/f1EX6cIGEjolmRafesyvYH88AJYYQfgFDp0qZU0KAjMvkyQJbOdNLwmukvgkba4Kf5QZGf32a
	NdzuuuokfPynQdVayF7DArovJ3a3thX6k0z0a03GPO3WL2zPJN6K3rZR5VFoaasqEz5kAXFRhWG5f
	WR9+LBvEVUDjP/aELP7RRXQ7TROxwJ7QQGQQP4VPlga3iU0dxfgjsNUdYQV25Ie1uAWE4RnbR1JXq
	GdsRhig5/8/qZojOkNZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNiG5-0000000CaM9-3NB2;
	Tue, 25 Nov 2025 01:54:21 +0000
Received: from mail-m21469.qiye.163.com ([117.135.214.69])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNiG1-0000000CaKw-3jIa
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Nov 2025 01:54:20 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2ac10622e;
	Tue, 25 Nov 2025 09:54:05 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-pci@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 1/2] PCI: dwc: Add L1ss context to ltssm_status of debugfs
Date: Tue, 25 Nov 2025 09:53:51 +0800
Message-Id: <1764035632-180821-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9ab8b7cf3409cckunmc92cec9842edfc
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkJIS1ZCGUoYSxpLSR9CTk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE
	pVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Ltr4dsMh8wI/9sc7SmWE51Rge2BjwPSYVnyJWwUwPnGuhe+ntzNajECvRd5KVOPdNZ+AP2VVqOPydgMe61nAmuUlUx6WH1xGxncfnJZXj3il3qiFkVttcedopDr/lcJYAJl5iHg4htAp6aXjHA46YaH+5k2r2ptJf7TmkrmJ6i4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=gnPCKZrubDiKp9Ce3hoVnypxFgyrp1MpSGv7XHiWqo8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_175418_294914_6E670D91 
X-CRM114-Status: UNSURE (   9.24  )
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

dwc core couldn't distinguish ltssm status among L1.0, L1.1 and L1.2.
But the variant driver may implement additional register to tell them
apart. So this patch adds two pseudo definitions for variant drivers to
transltae their internal L1 substates for debugfs to show.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---
This patch is based on latest pci controller/dwc branch given that L1ss support
for Rockchip has been applied.

 drivers/pci/controller/dwc/pcie-designware-debugfs.c | 2 ++
 drivers/pci/controller/dwc/pcie-designware.h         | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware-debugfs.c b/drivers/pci/controller/dwc/pcie-designware-debugfs.c
index 0fbf86c0b97e..df98fee69892 100644
--- a/drivers/pci/controller/dwc/pcie-designware-debugfs.c
+++ b/drivers/pci/controller/dwc/pcie-designware-debugfs.c
@@ -485,6 +485,8 @@ static const char *ltssm_status_string(enum dw_pcie_ltssm ltssm)
 	DW_PCIE_LTSSM_NAME(DW_PCIE_LTSSM_RCVRY_EQ1);
 	DW_PCIE_LTSSM_NAME(DW_PCIE_LTSSM_RCVRY_EQ2);
 	DW_PCIE_LTSSM_NAME(DW_PCIE_LTSSM_RCVRY_EQ3);
+	DW_PCIE_LTSSM_NAME(DW_PCIE_LTSSM_L1_1);
+	DW_PCIE_LTSSM_NAME(DW_PCIE_LTSSM_L1_2);
 	default:
 		str = "DW_PCIE_LTSSM_UNKNOWN";
 		break;
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index d3dc0cd8e7b5..3f4611882e29 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -380,6 +380,10 @@ enum dw_pcie_ltssm {
 	DW_PCIE_LTSSM_RCVRY_EQ2 = 0x22,
 	DW_PCIE_LTSSM_RCVRY_EQ3 = 0x23,
 
+	/* Variant drivers provide pseudo L1 substates from get_ltssm()*/
+	DW_PCIE_LTSSM_L1_1 = 0x141,
+	DW_PCIE_LTSSM_L1_2 = 0x142,
+
 	DW_PCIE_LTSSM_UNKNOWN = 0xFFFFFFFF,
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
