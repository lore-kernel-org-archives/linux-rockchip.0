Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32EEBD5E141
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 07:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+94caijnIU9Pf2c6ukRxvhzU8TvE1dwRgldn3HRTYg=; b=2c6FHtAMrtRwix
	NTsRzMyOF86VljQGlBEjfMm4tyPZPYqh3JY4Vp0gsr2EaaNFB6AjQe2DkngdpIioEyDHtm2aBTU9R
	1Yv0jsJ8tBqYd5yg5PkRlRW/8OecUWVhE6bh9AiPb47+7ExSu2C/Aas65bOjR2eY9ctJqTvdhpYEc
	TLXV5OfYgkbjg3GxvC/s4LfeLF5bQNs70xyqcKi65Xr5pAx3rtMFTsnd4en00opi8gWADOAad9j/o
	hw4eg1YYklhQwp7VswaiMAUb3IbhPz7pSzGlHP+qWJfCpHhOmG4hn29nLiLNJPLp2msXkTDmnSFkn
	jk1PA2vEMB62muk68fxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9J1U-00000009Ze1-1B3w;
	Fri, 08 Nov 2024 07:03:12 +0000
Received: from ec2-44-216-146-169.compute-1.amazonaws.com ([44.216.146.169])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9J1R-00000009ZdB-2VzO
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Nov 2024 07:03:11 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 22d55ccc;
	Fri, 8 Nov 2024 14:57:59 +0800 (GMT+08:00)
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
Subject: [PATCH v5 5/7] scsi: ufs: core: Export ufshcd_dme_reset() and ufshcd_dme_enable()
Date: Fri,  8 Nov 2024 14:56:24 +0800
Message-Id: <1731048987-229149-6-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1731048987-229149-1-git-send-email-shawn.lin@rock-chips.com>
References: <1731048987-229149-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR1CTVYfT0IaTR0ZTUlNGk5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a930a90c14509cckunm22d55ccc
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OSo6IRw4MzIZCioqUSgrK00x
	F0kwCxlVSlVKTEhKS09CS0NLTEhDVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlKS0s3Bg++
DKIM-Signature: a=rsa-sha256;
	b=GzqVrhrSU2Utj463fLTSS5yGJ+BtHdmPP1B1Ztdljdbf8Gnld1Aa5v1w/WtpiAUth/SlzoguaumLd0G59zigKXTVgyrITO9zbF/KKAtMVUxKNKXWel34MBXwND2vffI3QqRleeHxuV4jwfF4wsuHySsyDqhY6LOng5aZ99uxEb4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=pMAlr3pzhcf2KZDKp9eFnavRLAmIbHd/sKcZqBP9xAk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_230310_229248_3617FD9F 
X-CRM114-Status: GOOD (  12.31  )
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

These two APIs will be used by host driver if they need a different
HCE process.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 drivers/ufs/core/ufshcd.c | 6 ++++--
 include/ufs/ufshcd.h      | 2 ++
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/ufs/core/ufshcd.c b/drivers/ufs/core/ufshcd.c
index 24a32e2..9d1d56d 100644
--- a/drivers/ufs/core/ufshcd.c
+++ b/drivers/ufs/core/ufshcd.c
@@ -4039,7 +4039,7 @@ static int ufshcd_dme_link_startup(struct ufs_hba *hba)
  *
  * Return: 0 on success, non-zero value on failure.
  */
-static int ufshcd_dme_reset(struct ufs_hba *hba)
+int ufshcd_dme_reset(struct ufs_hba *hba)
 {
 	struct uic_command uic_cmd = {
 		.command = UIC_CMD_DME_RESET,
@@ -4053,6 +4053,7 @@ static int ufshcd_dme_reset(struct ufs_hba *hba)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(ufshcd_dme_reset);
 
 int ufshcd_dme_configure_adapt(struct ufs_hba *hba,
 			       int agreed_gear,
@@ -4078,7 +4079,7 @@ EXPORT_SYMBOL_GPL(ufshcd_dme_configure_adapt);
  *
  * Return: 0 on success, non-zero value on failure.
  */
-static int ufshcd_dme_enable(struct ufs_hba *hba)
+int ufshcd_dme_enable(struct ufs_hba *hba)
 {
 	struct uic_command uic_cmd = {
 		.command = UIC_CMD_DME_ENABLE,
@@ -4092,6 +4093,7 @@ static int ufshcd_dme_enable(struct ufs_hba *hba)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(ufshcd_dme_enable);
 
 static inline void ufshcd_add_delay_before_dme_cmd(struct ufs_hba *hba)
 {
diff --git a/include/ufs/ufshcd.h b/include/ufs/ufshcd.h
index 3f68ae3e4..b9733dc 100644
--- a/include/ufs/ufshcd.h
+++ b/include/ufs/ufshcd.h
@@ -1360,6 +1360,8 @@ extern int ufshcd_system_thaw(struct device *dev);
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
