Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75B8606A324
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 02:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dauxBKSE;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=BF5o+P06
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sZAW8kkk499Mrfp1HrNlJlTYnLdRvzfldo8XVQDrQm0=; b=dauxBKSEMeSzBybB4JRe7HKvvj
	ZbWPu9wEOXZyunBfQ/iutZYVGrmGjBuVo1e0lUKIx7idFvTqxoYXPlc4xwpxmUSaz6j1XqGz6TG+R
	97DHusMdS1dA7kzbXGSoZzoRw/mIsTS330ehtC9LGk7+Q5nNtKIVHQ5Cu7GnppqPHKjR83Go2kiSf
	6ymqzzu4HVM5dtrhKN0gPYArym+HdQ59KbSy0h0ClEY6FR4fxRmSH9CBr0esIdL9OZri2qxSJBL2k
	qNFXfnFzNECurrrl4sON24E69BuBrsAMk/n5lW0m6opk/RgSQTvSBf9YxzVZobjQ4Yv0ViTFH80E0
	C40i60xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNhgX-0000000FOlu-2abh;
	Mon, 02 Nov 2026 02:22:09 +0000
Received: from mail-m12838.netease.com ([103.209.128.38])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNhgU-0000000FOkY-0C0K
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 02:22:07 +0000
Received: from localhost.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 531c1cf13;
	Mon, 2 Nov 2026 10:22:02 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <mkp@kernel.org>
Cc: Bart Van Assche <bvanassche@acm.org>,
	Bean Huo <beanhuo@micron.com>,
	Stanley Jhu <stanleyjhu@google.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-rockchip@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 1/2] scsi: ufs: core: Move the device initialization sequence into a new function
Date: Mon,  2 Nov 2026 10:21:53 +0800
Message-Id: <20261102022154.3903115-2-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20261102022154.3903115-1-shawn.lin@rock-chips.com>
References: <20261102022154.3903115-1-shawn.lin@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa19a104edd03a4kunmbd08b4a83acede
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCTR1DVh0eSEIdT0IfGU5NGFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=BF5o+P06WJg70luHhbGG1IHQsFZ6CCBizEXpHV/nd3SK8O6hMx8SY4y2oNcsVWrxaxAoYd4d4ME6qTMVdbSPNWZ1zCwD0xEc4FSrXe+PxWe2+ZkpsZijHDrejvp/MjuKSjrmYhj77vlch+QXwPyMu6yk5G76VxKvr7v8FLrpsAQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=WsV/pVz+kBSHoatUMurOiQfqwn6UNHm3oJuaUeI8ahY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_182206_337975_68BCCF5B 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Move the link startup and device initialization steps from ufshcd_init()
into a new function ufshcd_full_device_init(), so that the sequence can
be retried as a unit. No functional change intended.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

(no changes since v1)

 drivers/ufs/core/ufshcd.c | 84 +++++++++++++++++++++++----------------
 1 file changed, 50 insertions(+), 34 deletions(-)

diff --git a/drivers/ufs/core/ufshcd.c b/drivers/ufs/core/ufshcd.c
index fd52deb72d21..8a8083a8f024 100644
--- a/drivers/ufs/core/ufshcd.c
+++ b/drivers/ufs/core/ufshcd.c
@@ -11215,6 +11215,55 @@ static int ufshcd_add_scsi_host(struct ufs_hba *hba)
 	return err;
 }
 
+/**
+ * ufshcd_full_device_init - Link startup and full device initialization
+ * @hba: per-adapter instance
+ *
+ * Execute the whole device initialization sequence used during driver
+ * probe: link startup, MCQ configuration, device verification, device
+ * initialization completion and device parameter setup.
+ *
+ * Return: 0 upon success; < 0 upon failure.
+ */
+static int ufshcd_full_device_init(struct ufs_hba *hba)
+{
+	int err;
+
+	hba->ufshcd_state = UFSHCD_STATE_RESET;
+
+	err = ufshcd_link_startup(hba);
+	if (err)
+		return err;
+
+	if (hba->mcq_enabled)
+		ufshcd_config_mcq(hba);
+
+	if (hba->quirks & UFSHCD_QUIRK_SKIP_PH_CONFIGURATION)
+		return 0;
+
+	/* Debug counters initialization */
+	ufshcd_clear_dbg_ufs_stats(hba);
+
+	/* UniPro link is active now */
+	ufshcd_set_link_active(hba);
+
+	/* Verify device initialization by sending NOP OUT UPIU */
+	err = ufshcd_verify_dev_init(hba);
+	if (err)
+		return err;
+
+	/* Initiate UFS initialization, and waiting until completion */
+	err = ufshcd_complete_dev_init(hba);
+	if (err)
+		return err;
+
+	err = ufshcd_device_params_init(hba);
+	if (err)
+		return err;
+
+	return ufshcd_post_device_init(hba);
+}
+
 /**
  * ufshcd_init - Driver initialization routine
  * @hba: per-adapter instance
@@ -11428,41 +11477,8 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem *mmio_base, unsigned int irq)
 	/* Initialize hba, detect and initialize UFS device */
 	ktime_t probe_start = ktime_get();
 
-	hba->ufshcd_state = UFSHCD_STATE_RESET;
-
-	err = ufshcd_link_startup(hba);
-	if (err)
-		goto out_release;
-
-	if (hba->mcq_enabled)
-		ufshcd_config_mcq(hba);
-
-	if (hba->quirks & UFSHCD_QUIRK_SKIP_PH_CONFIGURATION)
-		goto initialized;
-
-	/* Debug counters initialization */
-	ufshcd_clear_dbg_ufs_stats(hba);
-
-	/* UniPro link is active now */
-	ufshcd_set_link_active(hba);
-
-	/* Verify device initialization by sending NOP OUT UPIU */
-	err = ufshcd_verify_dev_init(hba);
-	if (err)
-		goto out_release;
-
-	/* Initiate UFS initialization, and waiting until completion */
-	err = ufshcd_complete_dev_init(hba);
-	if (err)
-		goto out_release;
-
-	err = ufshcd_device_params_init(hba);
-	if (err)
-		goto out_release;
-
-	err = ufshcd_post_device_init(hba);
+	err = ufshcd_full_device_init(hba);
 
-initialized:
 	ufshcd_process_probe_result(hba, probe_start, err);
 	if (err)
 		goto out_release;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
