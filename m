Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0532B606A31E
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2026 02:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PNt2Xc9M;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=SQsWjO/B
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kqWrw6VaChPXSvIB/APiF+9y59XcQaS7AKB9e5zJTpk=; b=PNt2Xc9MIJxknG
	eK9yYtEu1XHWS+I48OGMyP1Usneb8Tm1F38I5s+60CA39Hmsr2Wy1X35ITqx6Yf4Tpx+tpM7knHJR
	OVgm76nzmKRAwvDKCCmNsTyi6MbYNVeqLo0HMCxh23c6lLgsL2JeOl4vZHvPRBEOGDEdtPruGD+wZ
	RKVL+sp5Q2NTYtLnMTrYWGOUgqZRmQ/89pch4vmfy8Bw17Z51SyzP7VxP77DToPjnILFyJfwXHMr1
	OXlpC/Q5PWhbXb/TkbQRPpaLYC6jekfVKue2q4ZcJJ1FgFwDSF941ki9EoibCXh2Xc40x5ENwCp8c
	0s+niQLaHf/QhzKdfIfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJiR3-0000000DByn-25bU;
	Thu, 22 Oct 2026 02:21:41 +0000
Received: from mail-m82218.xmail.ntesmail.com ([156.224.82.218])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJiQy-0000000DBxx-2r5r
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Oct 2026 02:21:39 +0000
Received: from xf.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 51ed1a686;
	Thu, 22 Oct 2026 10:21:21 +0800 (GMT+08:00)
From: Finley Xiao <finley.xiao@rock-chips.com>
To: finley.xiao@rock-chips.com,
	heiko@sntech.de,
	linux-pm@vger.kernel.org
Cc: cw00.choi@samsung.com,
	myungjoo.ham@samsung.com,
	kant@allwinnertech.com,
	kyungmin.park@samsung.com,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	tony.xie@rock-chips.com,
	huangtao@rock-chips.com,
	stable@vger.kernel.org
Subject: [PATCH v2] PM / devfreq: governor_userspace: Guard against NULL governor_data during switch
Date: Thu, 22 Oct 2026 10:21:09 +0800
Message-ID: <20261022022109.642339-1-finley.xiao@rock-chips.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa16169bbfa03a8kunm107f5dafdcf40
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCGkNMVktIGh4aSR5PGUhKTVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=SQsWjO/BBQxHRkBsgnOgPcYakFTvOHyIRj2GImr8AO68bBY89hVXHoLa6TNZu3KXBhhUd81Q+Ribz86i2eUFntrPEMtZHVgnMh5vImDK3OYzXDhNouRqu3OqVlHl2Zspg1EK0I+0QzZRqyi52cDbqSf7FKScBLfaDFvv0wkp4KU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=rTtOEHpuUdG1ZN7wpfmh79f1UZoM9LFVHJpiq1FULQo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_192137_346648_F8549416 
X-CRM114-Status: GOOD (  12.04  )
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

The userspace governor is the only one that uses devfreq->governor_data,
allocated in its DEVFREQ_GOV_START handler (userspace_init()) and freed
in its DEVFREQ_GOV_STOP handler (userspace_exit()).

When switching governors via sysfs (governor_store in devfreq.c), the
sequence is:

STOP(old) -> df->governor = userspace -> START(userspace) -> userspace_init

Between the df->governor assignment and userspace_init() completing,
governor_data is still NULL (the previous governor never touched it,
and the core does not clear or pre-allocate it). During that window,
asynchronous paths that call update_devfreq() outside of the driver's
control -- the OPP notifier (devfreq.c:686) and the pm_qos notifier
(devfreq.c:707) -- run devfreq_update_target() under df->lock and reach
devfreq_userspace_func(), which dereferences governor_data without a
NULL check, causing:

  Unable to handle kernel access to user memory outside uaccess routines
  pc : devfreq_userspace_func+0xc/0x28
  lr : devfreq_update_target+0x58/0x158

Add a NULL check in devfreq_userspace_func() and fall back to
previous_freq, which is the same behaviour as the existing "no user
frequency specified yet" branch. This closes the race for all callers
since every path ultimately goes through get_target_freq.

Additionally, take devfreq->lock around the kfree()/NULL assignment in
userspace_exit(). Without it, a concurrent OPP/pm_qos notifier running
under devfreq->lock could read governor_data after it is freed but
before it is set to NULL, constituting a use-after-free.

Fixes: 5fdded844892 ("PM/devfreq: governor: Add a private governor_data for governor")
Cc: stable@vger.kernel.org
Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>

Link: https://lore.kernel.org/linux-pm/20260723080806.1451-1-finley.xiao@rock-chips.com/
---
Changes in v2:
- Add Fixes: tag and Cc: stable@vger.kernel.org

 drivers/devfreq/governor_userspace.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/devfreq/governor_userspace.c b/drivers/devfreq/governor_userspace.c
index 3906ebedbae8..f7a485c43fd7 100644
--- a/drivers/devfreq/governor_userspace.c
+++ b/drivers/devfreq/governor_userspace.c
@@ -24,7 +24,7 @@ static int devfreq_userspace_func(struct devfreq *df, unsigned long *freq)
 {
 	struct userspace_data *data = df->governor_data;
 
-	if (data->valid)
+	if (data && data->valid)
 		*freq = data->user_frequency;
 	else
 		*freq = df->previous_freq; /* No user freq specified yet */
@@ -110,8 +110,10 @@ static void userspace_exit(struct devfreq *devfreq)
 	if (devfreq->dev.kobj.sd)
 		sysfs_remove_group(&devfreq->dev.kobj, &dev_attr_group);
 
+	mutex_lock(&devfreq->lock);
 	kfree(devfreq->governor_data);
 	devfreq->governor_data = NULL;
+	mutex_unlock(&devfreq->lock);
 }
 
 static int devfreq_userspace_handler(struct devfreq *devfreq,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
