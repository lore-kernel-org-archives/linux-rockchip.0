Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B727D111B6
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Nov 2024 07:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfnZjsUde9jSHsSMcdKc69VDcNo58NGwbf/ZXcD7DOg=; b=oUDxRc+vrWGMw1
	9HbWoSqzJE/fnBprwRfBH/bVLO46vyKmaXjDp11v0/S6xZwr+QFcAWhO/rS38oNMGqowg5+KC2+/a
	ldIHlABqd/araM4LcTq0YN+RmO3CuordMDr45wlBqmTjqA3yN2jfxFnaWbMhGiL9YoCLAiL/z6KhQ
	CCDlA1+Mdb4ooy4n7gYNkiC4epf28URy/xbF3JqMkWuS5tomhWhkzLi8T8nx5u5UhFB6JoEqbfQij
	SdrJeSdovZOmBQ0v1eqk1+33Fe9ZqH2Z1LhiKudd6cn5Z8ymgIE1AoKNmp3qfcZgU1bqzvgonQGct
	hwVbeKuhLqgOUBHii2Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7rZr-0000000Cr9k-2VoU;
	Mon, 04 Nov 2024 07:32:43 +0000
Received: from mail-m24124.xmail.ntesmail.com ([45.195.24.124])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7rZp-0000000Cr90-22im
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Nov 2024 07:32:42 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1b5d898f;
	Mon, 4 Nov 2024 15:32:37 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v4 1/7] scsi: ufs: core: Add UFSHCI_QUIRK_DME_RESET_ENABLE_AFTER_HCE
Date: Mon,  4 Nov 2024 15:31:55 +0800
Message-Id: <1730705521-23081-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
References: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh9MTFZIS0xPHR0fTBpDTUpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a92f617072f09cckunm1b5d898f
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Myo6EBw*ITIaLDoKQys0CE0V
	EQgwFA1VSlVKTEhLTEtOTk5DQktCVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlKTU03Bg++
DKIM-Signature: a=rsa-sha256;
	b=fyTzUEGqpD7cOV/gtR7q6BW8ZrIP2F7Il0l0fRmIWbpntGqeRNaY0xD3go56SRvQDKFp6+9Vn8/QTcR8aBbVlulPDUK1DAXd+5Dc9IpmHP4w03liGg+JBkB6ZXLYqRd1As27+Q5dHci7nSbjEv4mCiQfdHPoDhHPShTxzJaej+w=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=H80kBB4v9HnGpTZXw3/vIrv2TnnmcgYDzbgw9IhYzgg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241103_233241_753497_16E0B10F 
X-CRM114-Status: GOOD (  14.90  )
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

HCE on Rockchip SoC is different from both of ufshcd_hba_execute_hce()
and UFSHCI_QUIRK_BROKEN_HCE case. It need to do dme_reset and dme_enable
after enabling HCE. So in order not to abuse UFSHCI_QUIRK_BROKEN_HCE, add
a new quirk UFSHCI_QUIRK_DME_RESET_ENABLE_AFTER_HCE, to deal with that
limitation.

Suggested-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v4:
- fix typo

Changes in v3: None
Changes in v2: None

 drivers/ufs/core/ufshcd.c | 17 +++++++++++++++++
 include/ufs/ufshcd.h      |  6 ++++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/ufs/core/ufshcd.c b/drivers/ufs/core/ufshcd.c
index 7cab1031..4084bf9 100644
--- a/drivers/ufs/core/ufshcd.c
+++ b/drivers/ufs/core/ufshcd.c
@@ -4819,6 +4819,7 @@ static int ufshcd_hba_execute_hce(struct ufs_hba *hba)
 {
 	int retry_outer = 3;
 	int retry_inner;
+	int ret;
 
 start:
 	if (ufshcd_is_hba_active(hba))
@@ -4865,6 +4866,22 @@ static int ufshcd_hba_execute_hce(struct ufs_hba *hba)
 	/* enable UIC related interrupts */
 	ufshcd_enable_intr(hba, UFSHCD_UIC_MASK);
 
+	/*
+	 * Do dme_reset and dme_enable if a UFS host controller needs
+	 * this procedure to actually finish HCE.
+	 */
+	if (hba->quirks & UFSHCI_QUIRK_DME_RESET_ENABLE_AFTER_HCE) {
+		ret = ufshcd_dme_reset(hba);
+		if (!ret) {
+			ret = ufshcd_dme_enable(hba);
+			if (ret)
+				dev_err(hba->dev,
+					"Failed to do dme_enable after HCE.\n");
+		} else {
+			dev_err(hba->dev, "Failed to do dme_reset after HCE.\n");
+		}
+	}
+
 	ufshcd_vops_hce_enable_notify(hba, POST_CHANGE);
 
 	return 0;
diff --git a/include/ufs/ufshcd.h b/include/ufs/ufshcd.h
index a95282b..e939af8 100644
--- a/include/ufs/ufshcd.h
+++ b/include/ufs/ufshcd.h
@@ -685,6 +685,12 @@ enum ufshcd_quirks {
 	 * single doorbell mode.
 	 */
 	UFSHCD_QUIRK_BROKEN_LSDBS_CAP			= 1 << 25,
+
+	/*
+	 * This quirk needs to be enabled if host controller need to
+	 * do dme_reset and dme_enable after hce.
+	 */
+	UFSHCI_QUIRK_DME_RESET_ENABLE_AFTER_HCE		= 1 << 26,
 };
 
 enum ufshcd_caps {
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
