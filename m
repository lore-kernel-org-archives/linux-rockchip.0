Return-Path: <SRS0=IWi6=FF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBCEDC64E7B
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 12:47:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3767F206C1
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 12:47:29 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="n3I79RBe"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3767F206C1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KD8LqS9QooeG8nHLd0KDcslaaFvxQDPlYgZZj0QPMys=; b=n3I79RBeIv6Zivwg83U+M3XMJ
	D06bBOKmTsKEbkFRFIBmmOVXBBIhJ03zNjXqi/+Smq+ydnBLJ4LQDF6uNZGwivMca8KDM5q3xs2RZ
	LmJNtX2SRIjuz/IY351WbpcsI0lvv2HJBSkTWtzXZZJ+zQPfGaYJTCF0hACObC8WZKPKv4yQDmNxH
	/gGpHMN468w0Dqic0fgcxnaMWw2Wj6UfaRFRFtCkDbPf1GTb7ET/WGucOTIDqXhRtyi3Ddvv7OjAE
	cmDYsBjmpo1AEBvhCn9bsB579g6GuWtHi7BIIVpXU0HY1vtNJ6Cf0ga3PcdqhRpw0XEtOyyViCvF7
	Hh5Lxcugw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kk541-0004Cy-IG; Tue, 01 Dec 2020 12:47:25 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kk53t-00049a-4k; Tue, 01 Dec 2020 12:47:18 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4ClhgM5frgzkjvg;
 Tue,  1 Dec 2020 20:46:39 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Tue, 1 Dec 2020 20:47:01 +0800
From: Qinglang Miao <miaoqinglang@huawei.com>
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?=
 <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>
Subject: [PATCH 1/3] drm/rockchip: cdn-dp: fix reference leak when
 pm_runtime_get_sync fails
Date: Tue, 1 Dec 2020 20:54:57 +0800
Message-ID: <20201201125459.142178-2-miaoqinglang@huawei.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201201125459.142178-1-miaoqinglang@huawei.com>
References: <20201201125459.142178-1-miaoqinglang@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201201_074717_479573_55F48E80 
X-CRM114-Status: GOOD (  11.38  )
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
Cc: linux-rockchip@lists.infradead.org, Qinglang Miao <miaoqinglang@huawei.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The PM reference count is not expected to be incremented on
return in cdn_dp_clk_enable.

However, pm_runtime_get_sync will increment the PM reference
count even failed. Forgetting to putting operation will result
in a reference leak here.

Replace it with pm_runtime_resume_and_get to keep usage
counter balanced.

Fixes: efe0220fc2d2 ("drm/rockchip: cdn-dp: Fix error handling")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Qinglang Miao <miaoqinglang@huawei.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index a4a45daf9..9b4406191 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -98,7 +98,7 @@ static int cdn_dp_clk_enable(struct cdn_dp_device *dp)
 		goto err_core_clk;
 	}
 
-	ret = pm_runtime_get_sync(dp->dev);
+	ret = pm_runtime_resume_and_get(dp->dev);
 	if (ret < 0) {
 		DRM_DEV_ERROR(dp->dev, "cannot get pm runtime %d\n", ret);
 		goto err_pm_runtime_get;
-- 
2.23.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
