Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94987C52D7C
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 03:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=354bAtkN/wpdt/H4xWDp9kKzi5Pi8lw7LjxzZxlYOZY=; b=A3btNmdt+AbJ/K
	7dkWmK0Ba4DDjGjAYsbwFKgoZVRxexmeF7i1XAZ+12I5M6jW1LI6zOU2P7K0loGfKRYsUtuvZ188q
	bDYBb7IPXUg0T1VsDPTnrpex5py5bLFq4XZhLDDGWOgW1M2ugFvsIeC9tn3vqMnZBP0h52Gg5YAkA
	USAc3kaEANdJk9pOjelyQ+90MvGFXGunPcNPLqAc+oXnLg+0K03zBj1YQhjjEeNdXvQcv5zIOX6VD
	R/fuTZZf4v75Mn8dRPMrvnpv2NlsiAah5Qqr9AOG83+OcXk2ut+U5+QcFvkNjo3JNT8D2YbYaVOsl
	BypG6qxsSOwmG1j6JzRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbuDg-00000006xqC-0ZYb;
	Thu, 08 Aug 2024 03:53:44 +0000
Received: from mail-m3279.qiye.163.com ([220.197.32.79])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbuDc-00000006xoB-2fnF
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Aug 2024 03:53:42 +0000
DKIM-Signature: a=rsa-sha256;
	b=C6Qc1zZCbwq3gyPEJCt2aXffC1lXAgfkCt5iaq4GM8MRCgUxpcsOjRQj9bu38sAQtskppzj/NMhQRfpjGwRT8/r1qZCZAxBW0P/tsANArajIwg0xg0M5enEvECbikZjo2Hn4E+d5YNZxQ9YXhekdPkMz95qpWNkLAtOkI8kmhl8=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=gA/OcFEf+xm3tk0hvXdWxM6LYScuTWZNo5bHWGuX6kI=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 73BD44600D6;
	Thu,  8 Aug 2024 11:53:08 +0800 (CST)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 1/3] scsi: ufs: core: Export ufshcd_dme_link_startup() helper
Date: Thu,  8 Aug 2024 11:52:41 +0800
Message-Id: <1723089163-28983-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
References: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0lIHlZJQx0ZHUgeTh5LTkxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91301e79b203aekunm73bd44600d6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mj46NAw6QzIxAwszEQksKD9W
	SEoaChhVSlVKTElIS0NCSkNCTEhMVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhNTUM3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_205341_156418_53F64315 
X-CRM114-Status: GOOD (  12.17  )
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

Export it for host drivers.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2: None

 drivers/ufs/core/ufshcd.c | 4 +++-
 include/ufs/ufshcd.h      | 1 +
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/ufs/core/ufshcd.c b/drivers/ufs/core/ufshcd.c
index 8f4abc5..e09f004 100644
--- a/drivers/ufs/core/ufshcd.c
+++ b/drivers/ufs/core/ufshcd.c
@@ -4019,7 +4019,7 @@ static void ufshcd_host_memory_configure(struct ufs_hba *hba)
  *
  * Return: 0 on success, non-zero value on failure.
  */
-static int ufshcd_dme_link_startup(struct ufs_hba *hba)
+int ufshcd_dme_link_startup(struct ufs_hba *hba)
 {
 	struct uic_command uic_cmd = {
 		.command = UIC_CMD_DME_LINK_STARTUP,
@@ -4032,6 +4032,8 @@ static int ufshcd_dme_link_startup(struct ufs_hba *hba)
 			"dme-link-startup: error code %d\n", ret);
 	return ret;
 }
+EXPORT_SYMBOL_GPL(ufshcd_dme_link_startup);
+
 /**
  * ufshcd_dme_reset - UIC command for DME_RESET
  * @hba: per adapter instance
diff --git a/include/ufs/ufshcd.h b/include/ufs/ufshcd.h
index cac0cdb..8bc28c1 100644
--- a/include/ufs/ufshcd.h
+++ b/include/ufs/ufshcd.h
@@ -1432,6 +1432,7 @@ int ufshcd_read_string_desc(struct ufs_hba *hba, u8 desc_index,
 void ufshcd_hold(struct ufs_hba *hba);
 void ufshcd_release(struct ufs_hba *hba);
 
+int ufshcd_dme_link_startup(struct ufs_hba *hba);
 void ufshcd_clkgate_delay_set(struct device *dev, unsigned long value);
 
 int ufshcd_get_vreg(struct device *dev, struct ufs_vreg *vreg);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
