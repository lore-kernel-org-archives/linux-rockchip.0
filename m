Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2F38C36002
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Apr 2025 09:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=atV4GDYm6JnpI7aWVax2xmT3K2HKiyjGbjiAL/fjZL0=; b=dav3FNS/kncDk9
	k6jhOTItJi2vLmthU6ZePBqWl8KqPSpfkys5STYvRIeGHrdDIPdonYVQglFIewVx0kNnY9Bm3fhrK
	YP7XMPEbBwCyPLoI/6RqgChTq0LBzj1IglbM+F6EKPekemlJzzaIWVihmJ38/w9e0aD3rfLUtnyA0
	On7mlQQuUcq2/L6Vi9puymyKAUDQF9uWynrpUeH3BtewjAqgBAdoe/LJJklctWPo2LYrWQjYioUKr
	KsNNT7xoEmW9hjrRDdvAznEx+soy+ajjblcy8tJhqkCwoa1oFY+ozihrVRoL1scHhB3dIWLLhdc8i
	c7DoCXLdWApbbfTPYkhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2S7H-00000006kpe-351v;
	Wed, 09 Apr 2025 09:53:07 +0000
Received: from mail-m3281.qiye.163.com ([220.197.32.81])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2S68-00000006kh4-1oGe
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Apr 2025 09:51:57 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1139d61b6;
	Wed, 9 Apr 2025 17:51:53 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2] PCI: dw-rockchip: Remove PCIE_L0S_ENTRY check from rockchip_pcie_link_up()
Date: Wed,  9 Apr 2025 17:51:48 +0800
Message-Id: <1744192308-238386-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUlKSFYZSEkZTh5DHU1IGkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9619f6985f09cckunm1139d61b6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ODY6Hww6DjJMAjw4LBM1DwEI
	Dx0wFA1VSlVKTE9PSkJJSEpPSU1NVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlKSEM3Bg++
DKIM-Signature: a=rsa-sha256;
	b=BAaE1NXiTZZ9JEFZ2uhIVmzg/FZyQMyATMIsWDV63JNsCSzzXo+ZBdz0tfoe0Hu0ojFxeMnI/Q0RPZTdMydmNlwwyz4KP2zVjtnAoGrWT3EwVF82bzLW6c6+ZgTBCAUezhWGZuVZiyG1maTTll2jDNFrXsUXoYjap11ExDNoY4Y=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=gywVutG6WB6sYLQFgYZ+H7rTiQCGSWF3bbpFAggbU2g=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_025156_638836_7A664DD7 
X-CRM114-Status: GOOD (  10.10  )
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

Two mistakes here:
1. 0x11 is L0 not L0S, so the naming is wrong from the very beginning.
2. It's totally broken if enabling ASPM as rockchip_pcie_link_up() treat other
states, for instance, L0S or L1 as link down which is obviously wrong.

Remove the check.

Fixes: 0e898eb8df4e ("PCI: rockchip-dwc: Add Rockchip RK356X host controller driver")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2:
- add Fixes tag

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index c624b7e..21dc99c 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -44,7 +44,6 @@
 #define PCIE_LINKUP			(PCIE_SMLH_LINKUP | PCIE_RDLH_LINKUP)
 #define PCIE_RDLH_LINK_UP_CHGED		BIT(1)
 #define PCIE_LINK_REQ_RST_NOT_INT	BIT(2)
-#define PCIE_L0S_ENTRY			0x11
 #define PCIE_CLIENT_GENERAL_CONTROL	0x0
 #define PCIE_CLIENT_INTR_STATUS_LEGACY	0x8
 #define PCIE_CLIENT_INTR_MASK_LEGACY	0x1c
@@ -177,8 +176,7 @@ static int rockchip_pcie_link_up(struct dw_pcie *pci)
 	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
 	u32 val = rockchip_pcie_get_ltssm(rockchip);
 
-	if ((val & PCIE_LINKUP) == PCIE_LINKUP &&
-	    (val & PCIE_LTSSM_STATUS_MASK) == PCIE_L0S_ENTRY)
+	if ((val & PCIE_LINKUP) == PCIE_LINKUP)
 		return 1;
 
 	return 0;
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
