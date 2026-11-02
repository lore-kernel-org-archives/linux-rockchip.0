Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB8D1606A324
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 02:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hoKeeLpQ;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=UnEAQrmy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=PTDLJM8Vy5Qv9mbCbmBu3KdheQSEcancfBrVAD9tuw4=; b=hoKeeLpQNTuYyrYGj4CnDIEIsl
	zZzTjIvpNHtnYCe4bsF0ioPw7l5/X7yE0s1UN4zToCaIOj1wmZfq9vxS83Uej2quGEsXBBlFENTh7
	gw8YJLtjmZlY1sCwNS05cKTlTNiri6hL4ysDStu0JwYXLoQvEr2gAo3AEfNzk+ill3FQg9PwdUSxT
	0Lfupv+7NhT+YYa9C8ChMLaS9+cNQEiVJCmfuksTTgdm8OT6WYIUw9HZszWuFykv6uuxA5U9kZz9h
	7Mjv051oAl4CBJ2FB6Avpyrf1SzgWY0AvuVd5MKH2qrWXTag5g5psICB55PUV91mq49Ssb8UtZntO
	AzJx25Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNhgX-0000000FOm0-2oAs;
	Mon, 02 Nov 2026 02:22:09 +0000
Received: from mail-m1080.netease.com ([154.81.10.80])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNhgV-0000000FOkZ-0orw
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 02:22:08 +0000
Received: from localhost.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 531c1cf21;
	Mon, 2 Nov 2026 10:22:03 +0800 (GMT+08:00)
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
Subject: [PATCH v3 2/2] scsi: ufs: core: Retry the full device init on fatal link loss
Date: Mon,  2 Nov 2026 10:21:54 +0800
Message-Id: <20261102022154.3903115-3-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20261102022154.3903115-1-shawn.lin@rock-chips.com>
References: <20261102022154.3903115-1-shawn.lin@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa19a10543b03a4kunmbd08b4a83acef4
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCTB4fVh5CHxoYS04dSklMTlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=UnEAQrmy7nCScL/WCloOYfNhMYOuJZGw/gf34eHF9aqQ3YoPEfpBggpTtWuyB7bAfJw69xi/0V1p76jLC/9lnvGBD6TNutrBm4iYBFx6KZRFgbgCdWcHTSD+aSaI147wWjp64kweEv8CWQfaJ+AP0sbpMfYIaTRVx5z3cwBQDUA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=6NSlm/gQ6ex25LMpDXwQqTaUIKaCdvh7oKUkBiBqu+U=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_182207_492602_CEEB752F 
X-CRM114-Status: GOOD (  21.51  )
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

Each retry stops the controller first, so that no interrupt can interfere
with the cleanup, then stops a pending error handler and clears the error
state latched by the failed attempt. The controller reset clears the MCQ
mode, so it is restored after the controller re-enable. The hwmon device
and the exception event masks of the failed attempt are dropped as well,
since the device reset wiped their state on the device side.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v3:
- Stop the controller before draining the error handler and clearing
  the error state, so that no interrupt can re-latch errors or
  schedule the error handler during the cleanup(sashiko)
- Remove the hwmon device and reset the exception event masks
  between retries, since the device reset wipes their state on the
  device side; also remove the hwmon device on the init failure
  path(sashiko)
- Only restore the MCQ mode after the controller re-enable and let
  the next attempt configure the queues(sashiko)
- Take the address of the by-value host_lock for
  spin_lock_irqsave()(sashiko)

Changes in v2:
- Move the initialization sequence into a new function and retry by
  looping over its call site instead of adding more gotos to
  ufshcd_init()(Bart)
- Stop a pending error handler and clear the error state latched by the
  failed attempt, so that the retry starts from a clean state(sashiko)
- Reconfigure and re-enable MCQ after the controller re-enable, since
  the HCE toggle clears the MCQ mode setting(sashiko)

 drivers/ufs/core/ufshcd.c | 60 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 59 insertions(+), 1 deletion(-)

diff --git a/drivers/ufs/core/ufshcd.c b/drivers/ufs/core/ufshcd.c
index 8a8083a8f024..12ada46d2b7e 100644
--- a/drivers/ufs/core/ufshcd.c
+++ b/drivers/ufs/core/ufshcd.c
@@ -11476,8 +11476,65 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem *mmio_base, unsigned int irq)
 
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
+		 * scheduled the error handler. Stop the controller first
+		 * so that no interrupt can interfere with the cleanup,
+		 * then drain the error handler and start the retry from a
+		 * clean state.
+		 */
+		ufshcd_hba_stop(hba);
+		cancel_work_sync(&hba->eh_work);
+		spin_lock_irqsave(&hba->host->host_lock, flags);
+		hba->saved_err = 0;
+		hba->saved_uic_err = 0;
+		hba->force_reset = false;
+		hba->ufshcd_state = UFSHCD_STATE_RESET;
+		spin_unlock_irqrestore(&hba->host->host_lock, flags);
+
+		ufshcd_device_reset(hba);
+		ufs_put_device_desc(hba);
+
+		/*
+		 * The device reset cleared the exception event control of
+		 * the device: drop the hwmon device of the previous attempt
+		 * and reset the masks, so that the next attempt registers a
+		 * fresh hwmon device and re-enables the exception events.
+		 */
+		mutex_lock(&hba->ee_ctrl_mutex);
+		hba->ee_ctrl_mask = 0;
+		hba->ee_drv_mask = 0;
+		mutex_unlock(&hba->ee_ctrl_mutex);
+		ufs_hwmon_remove(hba);
+
+		if (ufshcd_hba_enable(hba)) {
+			dev_err(hba->dev, "Host controller enable failed\n");
+			ufshcd_print_evt_hist(hba);
+			ufshcd_print_host_state(hba);
+			goto out_release;
+		}
+
+		/* The controller reset cleared the MCQ mode: restore it. */
+		if (hba->mcq_enabled)
+			ufshcd_mcq_enable(hba);
+
+		msleep(100);
+	}
 
 	ufshcd_process_probe_result(hba, probe_start, err);
 	if (err)
@@ -11493,6 +11550,7 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem *mmio_base, unsigned int irq)
 	return 0;
 
 out_release:
+	ufs_hwmon_remove(hba);
 	ufshcd_release(hba);
 out_disable:
 	hba->is_irq_enabled = false;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
