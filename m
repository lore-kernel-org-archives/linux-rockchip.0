Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 352A4C021BE
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 02:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EfmDEctDl+ecIuaC1cSigidKtrrWZXvxcxPkUH9QYzY=; b=OHksKeYglTIOjl
	ChWpleY848t63s01R0nTOgTb9KuD0pi9xb0SQQkEUL0JpX1Arb0axYOVJLQeJ3e8kEHM6s4/ZUAXt
	aDKm1dk2SRYnHzvuh5Ja0eqnWf4Y+rjsMdNB+TAakVNtHiEIhhvtSv80sK4xI2hhGCBB7h/WHtZCw
	LN0ijZxP4knUNHA4mQZf1SAOYpGI3wE8FFIopCkPzLaOA5s8ST+91p4p3bLlLhf3bOlzltwLhZjeV
	2xJyZ0UHf4OiLm7oIb9No51Q7xV39LvwMuQrDhZtFQ5YEwHSoOmsUSPXfuFt3v8Bc5MmlYtMOaJTE
	G0oQBNjJw5PNbQTBHntw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tn6vp-000000027xD-3ICw;
	Wed, 26 Feb 2025 02:13:53 +0000
Received: from out30-118.freemail.mail.aliyun.com ([115.124.30.118])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tn6uF-000000027Ym-1cwE;
	Wed, 26 Feb 2025 02:12:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linux.alibaba.com; s=default;
	t=1740535930; h=From:To:Subject:Date:Message-Id:MIME-Version;
	bh=ZQODXK1cc2I+sNWZIm9dydVGUE4aa1Jdys9cTr2m3fM=;
	b=gk4eX/8nv2FSMrmrBLoBhbF8+sRR6XounLzNNkMdVMh1sIX/K7EHnzakuyLxzC6CACyfOSoE8iMdnBWnObLiWb5r44O2OJdQqO/4zIitNRHSmxVaPQofKPROyxNA1FCpGfXcl7bevE8PFTzSv/FldNEHdJh3Rg3RBuNislXE+a0=
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0WQG7I3G_1740535919 cluster:ay36)
          by smtp.aliyun-inc.com;
          Wed, 26 Feb 2025 10:12:08 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: James.Bottomley@HansenPartnership.com
Cc: martin.petersen@oracle.com,
	heiko@sntech.de,
	linux-scsi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: [PATCH -next] scsi: ufs: rockchip: Simplify bool conversion
Date: Wed, 26 Feb 2025 10:11:57 +0800
Message-Id: <20250226021157.77934-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.32.0.3.g01195cf9f
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_181216_141343_6E287A53 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

./drivers/ufs/host/ufs-rockchip.c:268:70-75: WARNING: conversion to bool not needed here.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Closes: https://bugzilla.openanolis.cn/show_bug.cgi?id=19055
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/ufs/host/ufs-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ufs/host/ufs-rockchip.c b/drivers/ufs/host/ufs-rockchip.c
index 5b0ea9820767..350cb0f8d0c2 100644
--- a/drivers/ufs/host/ufs-rockchip.c
+++ b/drivers/ufs/host/ufs-rockchip.c
@@ -265,7 +265,7 @@ static int ufs_rockchip_runtime_suspend(struct device *dev)
 	clk_disable_unprepare(host->ref_out_clk);
 
 	/* Do not power down the genpd if rpm_lvl is less than level 5 */
-	dev_pm_genpd_rpm_always_on(dev, hba->rpm_lvl < UFS_PM_LVL_5 ? true : false);
+	dev_pm_genpd_rpm_always_on(dev, hba->rpm_lvl < UFS_PM_LVL_5);
 
 	return ufshcd_runtime_suspend(dev);
 }
-- 
2.32.0.3.g01195cf9f


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
