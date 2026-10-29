Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7795D606A31A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 01:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MtJZYBCF;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=kWhPzudl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=37QEkuIkv3No6JZJnBZ3mzbS677yPZ75k5Y5V0nh0qw=; b=MtJZYBCFTTEHIBxU0gMuNY7cx0
	mBH3Q6ZqEN2NLFzxkNrYZ7WfbA/O+59Ja4WfGiSj3t5N24JzSGF33NtFPnToIDTddeeD4uwBe8Fm2
	hQtYasWo0OGOrXiGhZtXH/LVsLEnt4e/1Z0+Yk+8qTR3wlHODXRODgHNZ7pgDnA0M4VUjCvTgTmUi
	4cCA38wY9W9sZOzC8V6eaOnpPy1qyMZDxrrYIvJXqg5U5X9PA7FqVB/PNN8imBQTntN1sXERflVeh
	tpqGA/kzhHySVG2Sx98ZS9A7s8XiqMuoz2v4LkvucWoobIeBXt1+TTjalwsGviROEElzZrgsl8LPW
	IPDa/GTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMFGJ-000000089rI-2vbd;
	Thu, 29 Oct 2026 01:49:03 +0000
Received: from mail-m82207.xmail.ntesmail.com ([156.224.82.207])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMFGG-000000089p2-1iDr
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 01:49:02 +0000
Received: from localhost.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 52b924268;
	Thu, 29 Oct 2026 09:48:53 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <mkp@kernel.org>
Cc: Bart Van Assche <bvanassche@acm.org>,
	Bean Huo <beanhuo@micron.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Stanley Jhu <stanleyjhu@google.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-rockchip@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 2/2] scsi: ufs: core: Retry the full device init on fatal link loss
Date: Thu, 29 Oct 2026 09:48:39 +0800
Message-Id: <20261029014839.3390579-3-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20261029014839.3390579-1-shawn.lin@rock-chips.com>
References: <20261029014839.3390579-1-shawn.lin@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa18558876403a4kunmb608b1c4109653
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCThpNVhgaGExCSRpMTUNKHVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=kWhPzudlFpdUGE7DD6SN0cYrXRn3l0pPlW+c+RmQRQbBK1/qX5DEJqs3g9vSWlimbFsxImi3pht5v/EHRbsrwcyttxM4qx1CWPyrAM3S2VLacJfBqCAFYhaVnhac83ltliqymhFIA1bPj/Az5sZpd10quGj/PoDpQK0JGLp/8cY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=GnVcAOH2LmSWAQPFKCBX7AMqmJ+8lxkyCENmB7HkRJ0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_184900_729174_FAE0118E 
X-CRM114-Status: GOOD (  16.13  )
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

On an RK3572 board the UFS device is sometimes reported dead during the
initialization at boot: DEVICE_FATAL_ERROR | UIC_LINK_LOST is latched and
the following UIC query fails with -EIO, leaving the device unusable.

Recover by resetting the device and the controller and redoing the whole
initialization sequence, up to three times with a 100 ms settle delay in
between. Doing this in ufshcd_init() rather than in the platform driver's
probe keeps the interrupt, clock and regulator resources acquired only
once, and the UFS device is already reachable through hba->priv at that
point.

Each retry stops a pending error handler and clears the error state
latched by the failed attempt, reconfigures and re-enables MCQ if the
controller reset cleared it, and restores the reset ufshcd_state, so
that no stale error context survives into the retried initialization.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

Changes in v2:
- Move the initialization sequence into a new function and retry by
  looping over its call site instead of adding more gotos to
  ufshcd_init()(Bart)
- Stop a pending error handler and clear the error state latched by the
  failed attempt, so that the retry starts from a clean state(sashiko)
- Reconfigure and re-enable MCQ after the controller re-enable, since
  the HCE toggle clears the MCQ mode setting(sashiko)

 drivers/ufs/core/ufshcd.c | 46 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 45 insertions(+), 1 deletion(-)

diff --git a/drivers/ufs/core/ufshcd.c b/drivers/ufs/core/ufshcd.c
index f1e54d719537..bd82d6755739 100644
--- a/drivers/ufs/core/ufshcd.c
+++ b/drivers/ufs/core/ufshcd.c
@@ -11468,8 +11468,52 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem *mmio_base, unsigned int irq)
 
 	/* Initialize hba, detect and initialize UFS device */
 	ktime_t probe_start = ktime_get();
+	int retries = 3;
 
-	err = ufshcd_full_device_init(hba);
+	while (retries--) {
+		unsigned long flags;
+
+		err = ufshcd_full_device_init(hba);
+		if (!err)
+			break;
+
+		if (!retries)
+			break;
+
+		dev_warn(hba->dev, "UFS init failed %d, full retry (%d left)\n",
+			 err, retries);
+
+		/*
+		 * The failed attempt may have latched fatal errors and
+		 * scheduled the error handler. Stop it and start the retry
+		 * from a clean state, mirroring ufshcd_reset_and_restore().
+		 */
+		cancel_work_sync(&hba->eh_work);
+		spin_lock_irqsave(hba->host->host_lock, flags);
+		hba->saved_err = 0;
+		hba->saved_uic_err = 0;
+		hba->force_reset = false;
+		hba->ufshcd_state = UFSHCD_STATE_RESET;
+		spin_unlock_irqrestore(hba->host->host_lock, flags);
+
+		ufshcd_device_reset(hba);
+		ufs_put_device_desc(hba);
+		ufshcd_hba_stop(hba);
+		if (ufshcd_hba_enable(hba)) {
+			dev_err(hba->dev, "Host controller enable failed\n");
+			ufshcd_print_evt_hist(hba);
+			ufshcd_print_host_state(hba);
+			goto out_release;
+		}
+
+		/* Reconfigure MCQ upon controller re-enable */
+		if (hba->mcq_enabled) {
+			ufshcd_config_mcq(hba);
+			ufshcd_mcq_enable(hba);
+		}
+
+		msleep(100);
+	}
 
 	ufshcd_process_probe_result(hba, probe_start, err);
 	if (err)
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
