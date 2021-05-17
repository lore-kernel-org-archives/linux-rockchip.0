Return-Path: <SRS0=F3mh=KM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA3B1C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 08:20:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AFDB5611EE
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 08:20:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AFDB5611EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KOKPrlmgpyirAGG8hm8qK8LlrC3G9gSb3yL6G/9q2GQ=; b=B47h9HJwi9mW4QWLd7CS2EpdUB
	bpIW1uVSz15/IjZ4G1SirjYuyjIBL6OsVHU/7Mq/WMiyDjoGuYWHDcwI6eEmfnJPTdkhOSjN79cuv
	Ap0G6oAGeHV4h1CahOrwOuenPQAnK3H+BNkerWrho8CywVpFtWP32Hyeceagt0vWqDPs6FZ70R60Z
	TEsOlLfOrzNCLohKRf4mUemzPXuOmPf0akbXXk1ENw6BR8z9XRB6QVDHlj2MPcrVR+i+xJSfNX3cb
	cVBNUYZC43f9tAqW/C4rGiKm6/0z7VzngGgcitwgeaOvuezg5W+hciHHuNM0/aiy/7MX/X6CYocyq
	HAWvliiA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liYTv-00ECsm-3R; Mon, 17 May 2021 08:20:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liYI7-00EAXE-Hi
 for linux-rockchip@desiato.infradead.org; Mon, 17 May 2021 08:08:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From:
 Sender:Reply-To:Content-ID:Content-Description:In-Reply-To:References;
 bh=7E7Itipba93hw9GHPPQgQt5nVJ6MMm36Qq2WweGaRJ4=; b=Su2Rxc8LrRJ8RwI1RdTxQoTgIP
 YPZUEvcQpDErAUp+kV8Ji8rLK7/p/SnXwCF1cfGiHCjijqWPi8WdbbCEETpTv95N27Y481z0hM4Ss
 51N6qQw3VYt62L8tEWkja2ZuyxtwOYtEnG7wck8umqRTw2d3tJwVbh227uD2rBoKtn30hl5Kt3cX8
 NfmwDt76KzMwv1tQwwwV1OUsUfqJbKrtzUlqpbUTEfZLbEaMOaTsS+f1pZYfyOEkdUTLkP75uu+0B
 tP9Qky4tT1MbGY9UDwZLowyffnYV7LL6dFwflD2x0zilnIGlKxJE/lFZYterT9aYyKE2l+S46Moje
 f+kO+sKA==;
Received: from szxga06-in.huawei.com ([45.249.212.32])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liYI3-00DZt4-Uo
 for linux-rockchip@lists.infradead.org; Mon, 17 May 2021 08:07:54 +0000
Received: from dggems706-chm.china.huawei.com (unknown [172.30.72.58])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4FkBWw5xTjzmWtW;
 Mon, 17 May 2021 16:05:32 +0800 (CST)
Received: from dggema762-chm.china.huawei.com (10.1.198.204) by
 dggems706-chm.china.huawei.com (10.3.19.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Mon, 17 May 2021 16:07:47 +0800
Received: from huawei.com (10.175.127.227) by dggema762-chm.china.huawei.com
 (10.1.198.204) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 17
 May 2021 16:07:46 +0800
From: Yu Kuai <yukuai3@huawei.com>
To: <ezequiel@collabora.com>, <p.zabel@pengutronix.de>, <mchehab@kernel.org>, 
 <gregkh@linuxfoundation.org>
CC: <linux-media@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-staging@lists.linux.dev>, <linux-kernel@vger.kernel.org>,
 <yukuai3@huawei.com>, <yi.zhang@huawei.com>
Subject: [PATCH] media: hantro: Fix PM reference leak in device_run()
Date: Mon, 17 May 2021 16:15:16 +0800
Message-ID: <20210517081516.1562794-1-yukuai3@huawei.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-Originating-IP: [10.175.127.227]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggema762-chm.china.huawei.com (10.1.198.204)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_010752_161307_32475572 
X-CRM114-Status: UNSURE (   8.26  )
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

pm_runtime_get_sync will increment pm usage counter even it failed.
Forgetting to putting operation will result in reference leak here.
Fix it by replacing it with pm_runtime_resume_and_get to keep usage
counter balanced.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Yu Kuai <yukuai3@huawei.com>
---
 drivers/staging/media/hantro/hantro_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index eea2009fa17b..7a6d3ef22096 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -160,7 +160,7 @@ static void device_run(void *priv)
 	src = hantro_get_src_buf(ctx);
 	dst = hantro_get_dst_buf(ctx);
 
-	ret = pm_runtime_get_sync(ctx->dev->dev);
+	ret = pm_runtime_resume_and_get(ctx->dev->dev);
 	if (ret < 0) {
 		pm_runtime_put_noidle(ctx->dev->dev);
 		goto err_cancel_job;
-- 
2.25.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
