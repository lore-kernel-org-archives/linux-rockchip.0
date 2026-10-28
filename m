Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEFBE606A31D
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2026 07:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JVlkjQ1Z;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=TB+GQMii
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=SiE3p2sqfGLmyg/ktPlEjoJqS5i0y2QTe8yK9lJA/0w=; b=JVlkjQ1ZM6/XRnogDJF/jZ7Np9
	ZAIhgjJTUMVPJ16/nsAQGgunbttOv1R4vrvE377RonwpBb5q0uafWvHvOzOvgsrR/m+SkSVqZW+Kg
	x8G5iVPcgfrtaLH9Ec8H5lJR3osgDmxrT/QeBSUIR3kkOfAWjHzG3clI1W8As1m8clBOGfHIkf2jE
	6pEdoFGUg992kJK2nZoYho7Hd99TiXg6PrLG/NeEOffJoiX7ptYZ2MvTU3dXNOoLzfavI/3Po+9Vj
	An4GQAjMlLV+iV+FbkqEwG/L9/R2inAf4ECqTTlqNj3UdDDsyyYMbXt7DCO2Z344rMUr7SOrrppsA
	ZL3xjPpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLy8V-00000006TEB-00md;
	Wed, 28 Oct 2026 07:31:51 +0000
Received: from mail-m12843.netease.com ([103.209.128.43])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLy8R-00000006TDO-0a44
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Oct 2026 07:31:49 +0000
Received: from localhost.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 52a1342f6;
	Wed, 28 Oct 2026 15:31:39 +0800 (GMT+08:00)
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
Subject: [PATCH] scsi: ufs: core: Retry the full device init on fatal link loss
Date: Wed, 28 Oct 2026 15:31:29 +0800
Message-Id: <20261028073129.1661829-1-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.25.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa1816bf8ef03a4kunm8a59feb98d47f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaGk8ZVk5LTklJTkwfQ0oZTVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=TB+GQMiiZFz6iEXGHZpLEHkhiImt1AHwh5JT9q9S7vFCqPvkeXGWlvbQ4EzrWzsPfAlklF7HWq39Veuzngx5G5mWDoTEwGa7A0V4UKZxWesattozxQs0Suzt1Lmx8FTZK2IpvpwICsusizal8qyEsPUT3iF89ck8wmMZmK9+Qd0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=d20iozcM94y1ynJJGzlYfaLHRuOSfOKuZNnqcN4LWBQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_003147_752836_2738FA0E 
X-CRM114-Status: GOOD (  15.89  )
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

On an RK3576 board the UFS device is rarely reported dead during the
initialization at boot: DEVICE_FATAL_ERROR | UIC_LINK_LOST is latched and
the following UIC query fails with -EIO, leaving the device unusable.

Recover by resetting the device and the controller and redoing the whole
initialization sequence, up to three times with a 100 ms settle delay in
between. The retry covers the link startup, the device verification, the
completion of the device initialization and the device parameters setup,
since any of them can fail once the link has been lost.

This is done in ufshcd_init() rather than in the platform driver's probe.
A host driver only reaches its private data through ufshcd_get_variant(),
which is set from the ->init callback that ufshcd_pltfrm_init() invokes
on the caller's behalf, so the resources needed to reset the device are
not available before or after that call. More importantly, retrying
ufshcd_pltfrm_init() would request the interrupt, clocks and regulators a
second time without any of the earlier registrations being rolled back:
ufshcd_pltfrm_init() returns the error as-is, it does not undo what the
previous attempt already set up. That leaves the controller with leaked
resources and makes the retry fail on the interrupt registration.

Doing the retry inside ufshcd_init() avoids both problems: the host data
is already reachable through hba->priv, and the interrupt, clocks and
regulators are acquired only once.

The failure looks like this on RK3576:

  ufshcd-rockchip 29e00000.ufs: ufshcd_check_errors: saved_err 0x880 saved_uic_err 0x0
  host_regs: 00000000: 0187011f 00000000 00000200 00000000
  host_regs: 00000010: 00000000 000005e6 00000000 00000000
  host_regs: 00000020: 00000000 00031ef5 00000000 00000000
  host_regs: 00000030: 00000008 00000001 00000000 00000000
  host_regs: 00000040: 00000000 00000000 00000000 00000000
  host_regs: 00000050: 02dd3000 00000001 00000000 00000000
  host_regs: 00000060: 00000000 00000000 00000000 00000000
  host_regs: 00000070: 02dd4000 00000001 00000000 00000000
  host_regs: 00000080: 00000000 00000000 00000000 00000000
  host_regs: 00000090: 00000016 00000000 00000000 00000000
  ufshcd-rockchip 29e00000.ufs: ufshcd_err_handler started; HBA state eh_fatal; powered 1; shutting down 0; saved_err = 2176; saved_uic_err = 0; force_reset = 0
  ufshcd-rockchip 29e00000.ufs: ufshcd_query_flag: Sending flag query for idn 1 failed, err = 5

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/ufs/core/ufshcd.c | 29 +++++++++++++++++++++++++----
 1 file changed, 25 insertions(+), 4 deletions(-)

diff --git a/drivers/ufs/core/ufshcd.c b/drivers/ufs/core/ufshcd.c
index ee643830a57a..e75370d1b950 100644
--- a/drivers/ufs/core/ufshcd.c
+++ b/drivers/ufs/core/ufshcd.c
@@ -11419,12 +11419,14 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem *mmio_base, unsigned int irq)
 
 	/* Initialize hba, detect and initialize UFS device */
 	ktime_t probe_start = ktime_get();
+	int retries = 3;
 
+retry_init:
 	hba->ufshcd_state = UFSHCD_STATE_RESET;
 
 	err = ufshcd_link_startup(hba);
 	if (err)
-		goto out_release;
+		goto retry_device_init;
 
 	if (hba->mcq_enabled)
 		ufshcd_config_mcq(hba);
@@ -11441,16 +11443,16 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem *mmio_base, unsigned int irq)
 	/* Verify device initialization by sending NOP OUT UPIU */
 	err = ufshcd_verify_dev_init(hba);
 	if (err)
-		goto out_release;
+		goto retry_device_init;
 
 	/* Initiate UFS initialization, and waiting until completion */
 	err = ufshcd_complete_dev_init(hba);
 	if (err)
-		goto out_release;
+		goto retry_device_init;
 
 	err = ufshcd_device_params_init(hba);
 	if (err)
-		goto out_release;
+		goto retry_device_init;
 
 	err = ufshcd_post_device_init(hba);
 
@@ -11468,6 +11470,25 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem *mmio_base, unsigned int irq)
 	ufshcd_pm_qos_init(hba);
 	return 0;
 
+retry_device_init:
+	if (retries--) {
+		dev_warn(hba->dev, "UFS init failed %d, full retry (%d left)\n",
+			 err, retries);
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
+		msleep(100);
+		goto retry_init;
+	}
+
 out_release:
 	ufshcd_release(hba);
 out_disable:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
