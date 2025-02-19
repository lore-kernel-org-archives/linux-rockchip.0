Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50EEFC021AA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Feb 2025 00:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t1rA25HMyP+GTnHMMykA3K+HyvT7UAVPPlb+wEKiFE4=; b=e0FJRqFTQfWBqu
	IYbhF6rAlVgZR/9zNlvZhDsMxFDLLDUD1rENIfctnfeHS4JykrfhOmM1gFiyxKs5OEwETZ+q7b1EM
	UO577KnV+tcqoZzE4Wv9IAbCqRLqrYGWV/xLJCwd00dXHEYfXsXYPzVc4NLaJx+LAeZe7jKvnoQq9
	41vA/QzQuQbi9gn5ZrQqGg/w7g1SOeMjsXedYxqWX16piC4jmuf4ploZoCuja6jXDVDHbkX+3AD03
	XrdJ4iuuy0Ofyn+H2wch+0oihhZtQcIoQ1CUip95mW7LReDXWAtSCfu7dSq3/zWvuYiMeRwP+PDqZ
	McLo/lZWjAkpAu4/c0BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkYQ9-0000000ARZY-0X5a;
	Wed, 19 Feb 2025 00:58:37 +0000
Received: from mail-m1973193.qiye.163.com ([220.197.31.93])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkYQ5-0000000ARXG-1Wup
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Feb 2025 00:58:35 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id b774aefb;
	Wed, 19 Feb 2025 08:58:23 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Steven Price <steven.price@arm.com>
Subject: [PATCH] pmdomain: rockchip: Check if smcc could be handled by TA
Date: Wed, 19 Feb 2025 08:58:09 +0800
Message-Id: <1739926689-151827-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0tMGVYdSx0ZTBpKHxgaGRlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a951bb68d1609cckunmb774aefb
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mhw6HAw6GjITCSoUHygfLgEX
	QhAKFDJVSlVKTEhCQklNTEtPSUNLVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpPS0o3Bg++
DKIM-Signature: a=rsa-sha256;
	b=ERLBN7Rz3H2DSPSW/m0wV8JSeC8MviFnWIwNscccKqCu66EQcwUWByOo1tU5rMQFE40XiIgB5cpPQWYFAOB/tB2pYW9CWW+gOh67EWd/05a50bGDNxsEf+T0XBWUgWfzwPwXybSZnsBRUTnMXgxYqhxnFQ9y+3VnthRN2mKbJT4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=/L+rxxDdxBVSEg2Gbb6eyXH3WgN6VmGddD0kTepWZjE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_165833_885858_7CE439C5 
X-CRM114-Status: GOOD (  10.68  )
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

Non-existent trusted-firmware could lead smcc calls into some
unset location which breaks the system.

Reported-by: Steven Price <steven.price@arm.com>
Cc: Steven Price <steven.price@arm.com>
Suggested-by: Heiko Stuebner <heiko@sntech.de>
Fixes: 58ebba35ddab ("pmdomain: rockchip: Add smc call to inform firmware")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---
Hi Ulf, this's a follow-up patch fixing the issue Steven saw.

 drivers/pmdomain/rockchip/pm-domains.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 49842f1..27a5c68 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -572,9 +572,10 @@ static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
 	}
 
 	/* Inform firmware to keep this pd on or off */
-	arm_smccc_smc(ROCKCHIP_SIP_SUSPEND_MODE, ROCKCHIP_SLEEP_PD_CONFIG,
-			pmu->info->pwr_offset + pd_pwr_offset,
-			pd->info->pwr_mask, on, 0, 0, 0, &res);
+	if (arm_smccc_1_1_get_conduit() != SMCCC_CONDUIT_NONE)
+		arm_smccc_smc(ROCKCHIP_SIP_SUSPEND_MODE, ROCKCHIP_SLEEP_PD_CONFIG,
+				pmu->info->pwr_offset + pd_pwr_offset,
+				pd->info->pwr_mask, on, 0, 0, 0, &res);
 }
 
 static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
