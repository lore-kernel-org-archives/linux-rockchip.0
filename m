Return-Path: <SRS0=Y7pG=FI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A919BC4361A
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 08:30:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0C6C822582
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 08:30:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0C6C822582
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Cs4/EntOF29u0op0yX4G5ibd+1iyc8VJ6Yf5MgnwrJM=; b=P9qJGc+kawYzuk6uB/WKA7CYzn
	CR2id+3mQNrwK+P3giFBMSWGY1wJ2fZ2tFGIBbj19Smkn9y9x5gko0bCxn2+90P2wdpfqjdirElQJ
	8FUXW8gEiP6zzomnbXbPdLN3Y2umKpGtFG/HDKPLH6+T49N2lboxS6rth9zHN6oxLI2qjf0zkxsUR
	8JA79HzAil4MLYr6WH9W1bUZEWkOIkh5/zvMDXg73vKvfvvo7EU9pvdRPKDNpr+ydiT9CYV+CvGB7
	jhv1xSNY2Gv0mc1PhV+Wg/oba+A3fNDSrdnkO94pIqo2XCBB5RSJBuzzeNqNxvQHQc+IQ2yQs8Kp7
	r7J7cepA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kl6Tq-0007A2-0X; Fri, 04 Dec 2020 08:30:18 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kl6Tn-00077h-DS
 for linux-rockchip@lists.infradead.org; Fri, 04 Dec 2020 08:30:16 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4CnQqP3FbXz15XKk;
 Fri,  4 Dec 2020 16:29:37 +0800 (CST)
Received: from compute.localdomain (10.175.112.70) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server (TLS)
 id 14.3.487.0; Fri, 4 Dec 2020 16:29:56 +0800
From: Zhang Changzhong <zhangchangzhong@huawei.com>
To: Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki"
 <rafael.j.wysocki@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH] PM: AVS: rockchip-io: Fix error return code in
 rockchip_iodomain_probe()
Date: Fri, 4 Dec 2020 16:33:25 +0800
Message-ID: <1607070805-33038-1-git-send-email-zhangchangzhong@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.70]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201204_033015_705373_16A1F3F9 
X-CRM114-Status: GOOD (  10.81  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Zhang Changzhong <zhangchangzhong@huawei.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fix to return a negative error code from the error handling
case instead of 0, as done elsewhere in this function.

Fixes: e943c43b32ce ("PM: AVS: rockchip-io: Move the driver to the rockchip specific drivers")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Zhang Changzhong <zhangchangzhong@huawei.com>
---
 drivers/soc/rockchip/io-domain.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
index eece97f..b29e829 100644
--- a/drivers/soc/rockchip/io-domain.c
+++ b/drivers/soc/rockchip/io-domain.c
@@ -547,6 +547,7 @@ static int rockchip_iodomain_probe(struct platform_device *pdev)
 		if (uV < 0) {
 			dev_err(iod->dev, "Can't determine voltage: %s\n",
 				supply_name);
+			ret = uV;
 			goto unreg_notify;
 		}
 
-- 
2.9.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
