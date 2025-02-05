Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D3B5C02192
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Feb 2025 06:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFu1PPwsDmQEqcT1i17OS/VGlDKOxbYotGrMXdnKO2k=; b=xCS+jxYG0lYWrf
	N1I62ScgPQkyecrpTH92RCVTzNN2gdfhW6YM7yJaONqL+3ZtJLvhB7iiX9MYANx6SJy9AiXEKPo9U
	nVypWqxtIqxJJKfhhrI3bQXuWEDrx6TpZ2FIsKC1HQtvyJeyT8Z8u3o009CfHqxVxI2h2BLXN1VXI
	Qn8KjUnb7mlbchy8ilT77UCzmII6gcaFb0ovXsHlk16YwFVtwolNbKTxJMamEKUqf3NRnWVCLNuYq
	fus54IuWN3RqEiPgEHY/uuyVSlh4+DBWzV9Z4Sb7+3GOb2PhGbSoaBm/tb3L5dd6aYaiLZ7hxbPyr
	AkS/nbjSornGi0CB8HTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfYjx-00000002PCj-2zXM;
	Wed, 05 Feb 2025 06:18:25 +0000
Received: from mail-m32124.qiye.163.com ([220.197.32.124])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfYjv-00000002PC4-2YLW
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Feb 2025 06:18:24 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id a34e52b8;
	Wed, 5 Feb 2025 14:18:19 +0800 (GMT+08:00)
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
Subject: [PATCH v7 5/7] scsi: ufs: core: Export ufshcd_dme_reset() and ufshcd_dme_enable()
Date: Wed,  5 Feb 2025 14:15:54 +0800
Message-Id: <1738736156-119203-6-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ09ITVZOTR9LTx1NHRlMHkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a94d4c26db509cckunma34e52b8
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MU06PCo6MjINDgtDODcpHCpJ
	L08KCglVSlVKTEhDTEhNSEtKS0xDVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlJQkg3Bg++
DKIM-Signature: a=rsa-sha256;
	b=OztpeoIQaadXhInVaxSz6SrW4MXIUqpglyw6hyB8h8SQrPlnunzycFFkxFC+wLbo0e58uU+GTGnvT9MlnCUnwTR8mWI8LBz2pURW7hdDWMhrnWMPiUPSwmvNM3Uu9/HJuvKdcYSNQCS8xYrNXbNYzRBjVVxzT0KYqI/ynUkA8kk=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=tQBe00/5+XR3AuyJ7x8v0mQNDVOcfg72dNI5pbcGOVo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250204_221823_837235_D7789F5B 
X-CRM114-Status: GOOD (  12.74  )
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

These two APIs will be used by glue driver if they need a different
HCE process.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v7: None
Changes in v6:
- replace host drivers with glue drivers suggested by Mani
- add Main's review tag

Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 drivers/ufs/core/ufshcd.c | 6 ++++--
 include/ufs/ufshcd.h      | 2 ++
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/ufs/core/ufshcd.c b/drivers/ufs/core/ufshcd.c
index cd404ad..d9cb60d 100644
--- a/drivers/ufs/core/ufshcd.c
+++ b/drivers/ufs/core/ufshcd.c
@@ -4002,7 +4002,7 @@ static int ufshcd_dme_link_startup(struct ufs_hba *hba)
  *
  * Return: 0 on success, non-zero value on failure.
  */
-static int ufshcd_dme_reset(struct ufs_hba *hba)
+int ufshcd_dme_reset(struct ufs_hba *hba)
 {
 	struct uic_command uic_cmd = {
 		.command = UIC_CMD_DME_RESET,
@@ -4016,6 +4016,7 @@ static int ufshcd_dme_reset(struct ufs_hba *hba)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(ufshcd_dme_reset);
 
 int ufshcd_dme_configure_adapt(struct ufs_hba *hba,
 			       int agreed_gear,
@@ -4041,7 +4042,7 @@ EXPORT_SYMBOL_GPL(ufshcd_dme_configure_adapt);
  *
  * Return: 0 on success, non-zero value on failure.
  */
-static int ufshcd_dme_enable(struct ufs_hba *hba)
+int ufshcd_dme_enable(struct ufs_hba *hba)
 {
 	struct uic_command uic_cmd = {
 		.command = UIC_CMD_DME_ENABLE,
@@ -4055,6 +4056,7 @@ static int ufshcd_dme_enable(struct ufs_hba *hba)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(ufshcd_dme_enable);
 
 static inline void ufshcd_add_delay_before_dme_cmd(struct ufs_hba *hba)
 {
diff --git a/include/ufs/ufshcd.h b/include/ufs/ufshcd.h
index 650ff23..31661a4 100644
--- a/include/ufs/ufshcd.h
+++ b/include/ufs/ufshcd.h
@@ -1369,6 +1369,8 @@ extern int ufshcd_system_thaw(struct device *dev);
 extern int ufshcd_system_restore(struct device *dev);
 #endif
 
+extern int ufshcd_dme_reset(struct ufs_hba *hba);
+extern int ufshcd_dme_enable(struct ufs_hba *hba);
 extern int ufshcd_dme_configure_adapt(struct ufs_hba *hba,
 				      int agreed_gear,
 				      int adapt_val);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
