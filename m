Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C4E6CCFA03
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 03:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1QNkiC1ABbnWFUZdyayWkIAXvfzfF7EUVO/1jtobGCA=; b=nstkhiyukaDV5V
	F9eAesoWREvJQ7LREwN2z9g1bSeflyX4p6ddwZsHfiEyKhClqmd/1EzldYmW99CWaz+WJDr3We/5J
	FXnTWMvnu1Lc6lzdS4H8a2eD/z9DRVwfaeiFp46J/BdoMYTcUpdZFvw2z9cr7xcgZzUgXNASyXyMB
	jI0XlFNY0zK9IEWwvSgm+6UNF5gDBfmtV0b40TLwzartmHk5Hfq+pIcxEnb64RozdjlaeUmPCoKTQ
	IMoHuRCZNEp0/mbyFPCw2vfgTTF/TAu9S68Y9IWQuQWq8RNaJw3axHPUpcKRaGBaaifvj3rieBq0P
	w1BgX1LKC+PmIptAHl2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGr2j-0000000EqAe-0mbH;
	Thu, 06 Nov 2025 03:52:13 +0000
Received: from mail-m93109.xmail.ntesmail.com ([103.126.93.109])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGr2d-0000000EqAB-2em4
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 03:52:11 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 28958a74a;
	Thu, 6 Nov 2025 11:52:02 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] PCI: Add ASPM quirk for Hi1105 PCIe Wi-Fi
Date: Thu,  6 Nov 2025 11:51:59 +0800
Message-Id: <1762401119-232631-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9a574af90209cckunmc10c5b4edfd220
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhodTVZDSk4eGhkZThoaS0hWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpMTU
	1VSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=LcNe6dPcznv0ogN4jyV/P9T2o5haKihe5jZHNhyKEPuUZsUwXE/FIlnRddS+LKvRbsq9oqMZg5ptwkPiJP+i6fjtDvi81WH50CjdpOlaDmWBSuq8GSeW9VYRfUo1j7foxvq+X9riL2Wklrns12V57FhmJso1CXEU90la1SxkVvo=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=KXVfLfjQl7Jc2uWt/iluuVv1/POOyLkrkqzuVKsR3Bg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_195209_885472_C2F96971 
X-CRM114-Status: UNSURE (   8.65  )
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

This Wi-Fi advertises the L0s and L1 capabilities but actually
it doesn't support them. This's comfirmed by Hisilicon team in
actual productization.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/pci/quirks.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
index 214ed06..67250d4 100644
--- a/drivers/pci/quirks.c
+++ b/drivers/pci/quirks.c
@@ -2526,6 +2526,12 @@ static void quirk_disable_aspm_l0s_l1(struct pci_dev *dev)
 DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_ASMEDIA, 0x1080, quirk_disable_aspm_l0s_l1);
 
 /*
+ * The Hi1105 PCIe Wi-Fi doesn't support L0s and L1 but advertise the capability.
+ * Disable both L0s and L1 for now.
+ */
+DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_HUAWEI, 0x1105, quirk_disable_aspm_l0s_l1);
+
+/*
  * Some Pericom PCIe-to-PCI bridges in reverse mode need the PCIe Retrain
  * Link bit cleared after starting the link retrain process to allow this
  * process to finish.
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
