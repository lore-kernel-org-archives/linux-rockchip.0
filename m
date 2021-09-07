Return-Path: <SRS0=zMH+=N5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67A45C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Sep 2021 14:57:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 30A76600CD
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Sep 2021 14:57:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 30A76600CD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=puri.sm
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AfxbNli8zN2IXx6UJiaGtGXuAe+dbbcyzrvOXLF0EjU=; b=WwFTE4S6iJkzfG
	S+M7wnDRyPRjIPsVxhaXW6OwzgKW4kKlNk7cEsZV8nnkkYTapgflGQXq5eZIQFMDSUFeG08x3R+rG
	5MX7BofZsmCaIW+4405oqM6a0WHw1yAafEqSvALaV416jh50wzSbcHTWcrF3VKeBtPkbkY0Y9ISxY
	WW6egjgTRrXzOGVXPPVBTgrwhPwpCT+kzn9US1ZtXfcfGjWicrDYvr7tU51a+1teZdIRdgjuCKj8S
	fETuMIhQ5P+pTqqwbYImvZ9SH2ECUJ3ayQ4ba9mDboJ3/9zQom8F3pmA/OhmZ5KJsXJwGQqVFodbU
	upx8nIDedxuuZY806ihA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNcXN-003wWV-CS; Tue, 07 Sep 2021 14:57:25 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNcXK-003wTw-1Z
 for linux-rockchip@lists.infradead.org; Tue, 07 Sep 2021 14:57:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id 8C9EDDFA96;
 Tue,  7 Sep 2021 07:56:48 -0700 (PDT)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JEFBl3aCJ9Q9; Tue,  7 Sep 2021 07:56:47 -0700 (PDT)
From: Martin Kepplinger <martin.kepplinger@puri.sm>
To: ezequiel@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: [PATCH] media: hantro: Fix media device bus_info string
Date: Tue,  7 Sep 2021 16:56:37 +0200
Message-Id: <20210907145637.3161395-1-martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_075722_108053_2AF85423 
X-CRM114-Status: UNSURE (   8.84  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Even if model and bus_info currently both are 32 bytes large, use
the correct array size for bus_info.

Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
---
 drivers/staging/media/hantro/hantro_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 5f8e13eeeccc..f23fc14b3562 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -980,7 +980,7 @@ static int hantro_probe(struct platform_device *pdev)
 	vpu->mdev.dev = vpu->dev;
 	strscpy(vpu->mdev.model, DRIVER_NAME, sizeof(vpu->mdev.model));
 	strscpy(vpu->mdev.bus_info, "platform: " DRIVER_NAME,
-		sizeof(vpu->mdev.model));
+		sizeof(vpu->mdev.bus_info));
 	media_device_init(&vpu->mdev);
 	vpu->mdev.ops = &hantro_m2m_media_ops;
 	vpu->v4l2_dev.mdev = &vpu->mdev;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
