Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46524C52D6D
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Aug 2024 07:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=095PkqGaiZxwOccS4FwRofs78o0qWxxGixQtEj+koGo=; b=tZR4qUQgChIyz8
	uLDaxNBTwbOSQoFEM5875IyT6KpLLkM6ZwIxJG2OETYc9HZEUn3jZRlxy35UxBO0My5qGwuHUBE88
	oVzoa89PnaJbtx0VzeoZwNjekRP/Sem0MdRugiUzjJbsF0fZPdnGGYvhEb/t5wOqMlMdjjb2UotwZ
	8J3MUJzodQnTnOwMGcd62zHAX+koaC6gmnrt9+lEIyREfLN5WupfuxqZbps/6nmI9hB2jbSx/8l7M
	ac5sIGz5vmZXT0NWnUpeOlwIs5K8eJ06vONNBkWu0XQMdC2RvENqYllPHnleZXYgtTtNbe9KzPqSM
	dUVN7hIlD9M8XCgsDzFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbEX4-00000000mB4-488N;
	Tue, 06 Aug 2024 07:22:58 +0000
Received: from mail-m49244.qiye.163.com ([45.254.49.244])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbEUp-00000000lau-2xDL
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Aug 2024 07:20:41 +0000
DKIM-Signature: a=rsa-sha256;
	b=a7+pmduTfaZo0RXuqTOAD3tak+CNX30MER8fidFZ0XQAtSkmwBR0zgW6aeldCe751FPR+pcN8DnQzDgHun5M3GRPDkNVxhbY0hKiyUp3vZ3DBfAsbWOmKK+u1PoG+E6emaUCc7tzxX7sLaY0Kwa8U3af6qZfNXrAfqIjaT3h2Qk=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=oO6QiV9LFiusHne5Uw00k4qSuVf5cRytxrG80x+Kk2c=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id E04A64604F7;
	Tue,  6 Aug 2024 15:20:15 +0800 (CST)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	"Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v1 1/3] scsi: ufs: core: Export ufshcd_dme_link_startup() helper
Date: Tue,  6 Aug 2024 15:19:58 +0800
Message-Id: <1722928800-137042-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1722928800-137042-1-git-send-email-shawn.lin@rock-chips.com>
References: <1722928800-137042-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0MZGVYdGUsfSEpNGUlJGRpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91268f617403aekunme04a64604f7
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NDo6Ayo*NDIxCxIvCjgrSgod
	A0saCQFVSlVKTElJQklDQ0pMT09KVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhKTE43Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_002040_232855_285B9401 
X-CRM114-Status: GOOD (  11.60  )
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
