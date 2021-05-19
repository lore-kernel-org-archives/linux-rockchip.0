Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98278C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 13:47:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 52B5F6108D
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 13:47:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 52B5F6108D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IL2EeSg/o06rdeBEpwubi29D7BuJxh10GnbBldvVdZw=; b=flrIKk51mDxvp4HYlFOrXrGf2d
	4bpTDkt+VFoMPlchGViZEPmI5wRIYphxqeu3VaxE7PhV9efwuvM8kB/vpZ/6aYxbVNRGrzmkjqBpf
	QYANwyG6Bt+SUBn/IVL6dhxtJ2Kd9LECKYHUnaPWxZU4cJzenJXdUJfcRXrA2o9HDS1GDHosK6/uI
	m7rEbH6uJLqttHHR3RiBc+FooOVvTWlwcd2BneFIx5kgoXthLyBmLvYSnR+1LBmhgKJLmzmmCXELO
	FBnrY/CuCs5JF79zGGwN4avTH3X2QxE4kgXkoPtB/k2M+6wXqrlZ6SB+I4umV/8bkdask7kSeVlh5
	OgOpOxQQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljMXz-004BML-55; Wed, 19 May 2021 13:47:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljMXm-004BL2-6r; Wed, 19 May 2021 13:47:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From:
 Sender:Reply-To:Content-ID:Content-Description:In-Reply-To:References;
 bh=1HUXUWVIfWhQRHh1W1y106aW0AdVfM2HaCxzSzZGna8=; b=bKVQBFcFm2xtbBw8q3cE+nRhBs
 paC/zaaP5W2usqc8ngJKk2tCUJb/cqLLeftG1QtzYUfws38d9JxWu8NXghdZowmgF25z5Fb0TuKBE
 VUYUcGF9XucJXRnTHZI4WYjY8aC+cBiJNfqDD3X6lftsQxutonTEcGFrvbLFvH7RRdnlFwaAC/Jp0
 /0zPHFnTPyH/6ZbyALLGDdJtIhJqX7sAXTRmji6dUxxBGpyb7LKPtCxwsAwoGtsypgcAAeD8DvBBL
 CQTgIfYiooI9/X8GxGz/Y0uUx2j+vrnT9KJnXVWoAzcAXfgQR1s7kj1ZmSoJ3f04b48VX+Fg9Zvlj
 niFYtCjw==;
Received: from szxga06-in.huawei.com ([45.249.212.32])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljMXj-00FVpd-H4; Wed, 19 May 2021 13:47:25 +0000
Received: from dggems703-chm.china.huawei.com (unknown [172.30.72.58])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4FlYyd3rkxzmX7b;
 Wed, 19 May 2021 21:44:57 +0800 (CST)
Received: from dggpeml500017.china.huawei.com (7.185.36.243) by
 dggems703-chm.china.huawei.com (10.3.19.180) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 19 May 2021 21:47:13 +0800
Received: from huawei.com (10.175.103.91) by dggpeml500017.china.huawei.com
 (7.185.36.243) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Wed, 19 May
 2021 21:47:13 +0800
From: Yang Yingliang <yangyingliang@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <dri-devel@lists.freedesktop.org>
CC: <hjc@rock-chips.com>, <heiko@sntech.de>
Subject: [PATCH -next] drm/rockchip: cdn-dp-core: add missing
 clk_disable_unprepare() on error in cdn_dp_grf_write()
Date: Wed, 19 May 2021 21:49:28 +0800
Message-ID: <20210519134928.2696617-1-yangyingliang@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.103.91]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpeml500017.china.huawei.com (7.185.36.243)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_064723_755207_91F1899F 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

After calling clk_prepare_enable(), clk_disable_unprepare() need
be called when calling regmap_write() failed.

Fixes: 1a0f7ed3abe2 ("drm/rockchip: cdn-dp: add cdn DP support for rk3399")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index a4a45daf93f2..6802d9b65f82 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -73,6 +73,7 @@ static int cdn_dp_grf_write(struct cdn_dp_device *dp,
 	ret = regmap_write(dp->grf, reg, val);
 	if (ret) {
 		DRM_DEV_ERROR(dp->dev, "Could not write to GRF: %d\n", ret);
+		clk_disable_unprepare(dp->grf_clk);
 		return ret;
 	}
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
