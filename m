Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B429DD41D74
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Dec 2025 01:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+Jb9yjBz2Yt4ocYWVrBoviqXxAaNRYbcTvzakl+NHj0=; b=KmVI9zhL5kLRSF
	nJ3xTtSM5I5vhoOkiAXZyXFKFxMjNATlSGwMqPtQhMWtOKS8PBzm2xWho6Z+ZpTbrfxIpyigm66sJ
	uPKlrTIq/05Tuqfb4WrYdIM1vzevrvLaDjoHxWQuh6AdACV4xhZkbykEFerytvjUM2zTW1CiPG37v
	jK0lsnKV8LcdrQvqcGy3LxgA/SCV7CNKvbuxH0qA/JgMdpY986RLKmeXYvcPDqRVnMOgGqX7xczVe
	9vWU5ddDj0cmJYRaJcsDbl3RDV68J2atowFeA/r2faPRIJ7i8Uca/ze5arzC9Lf2CpLR44iKm3ATU
	jZ6AFA6F5aZ07u5r/UtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTs2Y-0000000HUPd-3nmp;
	Fri, 12 Dec 2025 01:33:51 +0000
Received: from mail-m49212.qiye.163.com ([45.254.49.212])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTs2V-0000000HUOS-0qcr
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Dec 2025 01:33:49 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2ced0dd3b;
	Fri, 12 Dec 2025 09:33:39 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 1/2] PCI: dwc: Add L1 Substates context to ltssm_status of debugfs
Date: Fri, 12 Dec 2025 09:33:24 +0800
Message-Id: <1765503205-22184-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9b1031344709cckunm8cda450e102e55
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR8eHlZMH0lJQx9JGhgfTkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=fCOa2MeyETAxpRKmhV6LDnR4bUUDlzZsFIbiLkG5dg168ZnD7bA23o82S7YHhb4BX+UdNwJT6sv09MofoUwMiKphzfBZ9RexaUugL51BTyt3ZOmKwCicfvp890eQFLoQjnOyefJtSNErK9MIRjG/GGh2JaFn7aI03akCWvwUmpY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=myFdiZSeIHrA4E5OIQehoVWzGwxt0OZArwYqs8UXtI8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_173347_733008_5D5F5F05 
X-CRM114-Status: UNSURE (   9.77  )
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

dwc core couldn't distinguish LTSSM status among L1.0, L1.1 and L1.2.
But the variant driver may implement additional register to tell them
apart. Add two pseudo definitions for variant drivers to translate their
internal L1 Substates for debugfs to show.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2:
- fix the commit log and subject(Bjorn)
- Add space for code comment(Bjorn)

 drivers/pci/controller/dwc/pcie-designware-debugfs.c | 2 ++
 drivers/pci/controller/dwc/pcie-designware.h         | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware-debugfs.c b/drivers/pci/controller/dwc/pcie-designware-debugfs.c
index 0fbf86c..df98fee 100644
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
index 3168595..2526664 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -388,6 +388,10 @@ enum dw_pcie_ltssm {
 	DW_PCIE_LTSSM_RCVRY_EQ2 = 0x22,
 	DW_PCIE_LTSSM_RCVRY_EQ3 = 0x23,
 
+	/* Variant drivers provide pseudo L1 substates from get_ltssm() */
+	DW_PCIE_LTSSM_L1_1 = 0x141,
+	DW_PCIE_LTSSM_L1_2 = 0x142,
+
 	DW_PCIE_LTSSM_UNKNOWN = 0xFFFFFFFF,
 };
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
