Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F113FCCFA18
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 04:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XQWgv5l+jKQtqwJQZUAEn7AmoIs0UkxRjvZHhczwCIk=; b=r6VIJJ05H6QFNc
	S3jidyo1swxL4r72IqP8Ja0PPuFIrOEcyJNSAojDApakbF/HMCfIYstUYoCaFSpbrb9cydRkFvFcX
	2+HzwNbyweN4cfz5KCssEUOmCmQgjDrnNdzrVg3SszW3baxzuA1qOmVEV/7ahbnL7fVDr98cxf2qr
	lA7t1o9JNAPfuIVUeByKlH8Rpc34qx+7u4AUJ2KikH/mRlkYFScSqC1L0ohweTV6eE2Ded7JObYyB
	PCze//qKhM3MyOechZpTTQJo+ffeiEL8BJEDaLHxVjOfvLWPFj6t2dTsw14P12r0u40jnpoMAIzBm
	TTyIPARHND9owzf2XPzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJPPp-00000009twe-4Bgu;
	Thu, 13 Nov 2025 04:58:38 +0000
Received: from mail-m49221.qiye.163.com ([45.254.49.221])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJPPn-00000009tvo-0abZ
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 04:58:36 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 296bfa5cc;
	Thu, 13 Nov 2025 12:53:27 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>
Cc: linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] scsi: ufs: rockchip: Reset controller on PRE_CHANGE of hce enable notify
Date: Thu, 13 Nov 2025 12:52:55 +0800
Message-Id: <1763009575-237552-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9a7b8fb58909cckunm46d766c72755ee
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk8aS1YeTUpCHkpKGkkeSx5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=J1XlFhEX2yFS7sC4gOYGGqYmfMuOVG92NPKwbE2CtnW49oKs/9NpZqWwiaqFcQLnE1dQHL5SrolvCFGrmcu2yxG1wxSue83TWZb5xFy53H/VoARY2o/c4w9OTh3Q9r4QpGhyiGvklHWBHk5qkp5vlFfL7NcM/5C3/As/zZCmc8U=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=N8ROXJH/S65qux5vKaPYPdwXagamfVXkgVOLDFKArRw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_205835_607834_220C7D2A 
X-CRM114-Status: GOOD (  10.55  )
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

This fixes the dme-reset failed when doing recoverying, because device
reset is not enough, we could occasionally see the error below:

ufshcd-rockchip 2a2d0000.ufs: uic cmd 0x14 with arg3 0x0 completion timeout
ufshcd-rockchip 2a2d0000.ufs: dme-reset: error code -110
ufshcd-rockchip 2a2d0000.ufs: DME_RESET failed
ufshcd-rockchip 2a2d0000.ufs: ufshcd_host_reset_and_restore: Host init failed -110

Fix this by resetting the controller on PRE_CHANGE stage of hce enable
notify.

Fixes: d3cbe455d6eb ("scsi: ufs: rockchip: Initial support for UFS")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/ufs/host/ufs-rockchip.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/ufs/host/ufs-rockchip.c b/drivers/ufs/host/ufs-rockchip.c
index 8754085..8cecb28 100644
--- a/drivers/ufs/host/ufs-rockchip.c
+++ b/drivers/ufs/host/ufs-rockchip.c
@@ -20,9 +20,17 @@
 #include "ufshcd-pltfrm.h"
 #include "ufs-rockchip.h"
 
+static void ufs_rockchip_controller_reset(struct ufs_rockchip_host *host)
+{
+	reset_control_assert(host->rst);
+	udelay(1);
+	reset_control_deassert(host->rst);
+}
+
 static int ufs_rockchip_hce_enable_notify(struct ufs_hba *hba,
 					 enum ufs_notify_change_status status)
 {
+	struct ufs_rockchip_host *host = ufshcd_get_variant(hba);
 	int err = 0;
 
 	if (status == POST_CHANGE) {
@@ -37,6 +45,9 @@ static int ufs_rockchip_hce_enable_notify(struct ufs_hba *hba,
 		return ufshcd_vops_phy_initialization(hba);
 	}
 
+	/* PRE_CHANGE */
+	ufs_rockchip_controller_reset(host);
+
 	return 0;
 }
 
@@ -156,9 +167,7 @@ static int ufs_rockchip_common_init(struct ufs_hba *hba)
 		return dev_err_probe(dev, PTR_ERR(host->rst),
 				"failed to get reset control\n");
 
-	reset_control_assert(host->rst);
-	udelay(1);
-	reset_control_deassert(host->rst);
+	ufs_rockchip_controller_reset(host);
 
 	host->ref_out_clk = devm_clk_get_enabled(dev, "ref_out");
 	if (IS_ERR(host->ref_out_clk))
@@ -282,9 +291,7 @@ static int ufs_rockchip_runtime_resume(struct device *dev)
 		return err;
 	}
 
-	reset_control_assert(host->rst);
-	udelay(1);
-	reset_control_deassert(host->rst);
+	ufs_rockchip_controller_reset(host);
 
 	return ufshcd_runtime_resume(dev);
 }
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
