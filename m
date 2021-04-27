Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45B95C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 10:18:01 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A9706611ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 10:18:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A9706611ED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+Rae2ZtGICAqJ8v9P9Bfp7HOOsi0SgNHRQZJR1yxU6Y=; b=A+uEBnKt1aNix4EP5+A9VWztZ
	f/axqyySUWS12IzNl0rQqeiKajZ89iSvzsK3KRx2psoYaQm6L/eCh/iLuF6cOOnMN8h6B8JQlLwX5
	CXQCoxNS5nMrcIyfxnNh0xZf5YAi8oTUItrktfNQttMNWN7L31lZ5S5P+sQf4cjA5oGVkU5V2wB4I
	bl+PG2p+ozuh0uqx6oW2ybzrzKrzCbkGOUOTlt0MAHlk6dK+aS4T1dUXkhz3nRdNnIB3yEihgWppV
	8Ut1Twc1Edo6WfMorz1v/TkyiAN+TyZvvXUQSDaaoMblX0F4EsoF/o6M+uB2C3mBV/AayH7ub4DlC
	nW5p0yfSA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbKmv-001KRq-Q0; Tue, 27 Apr 2021 10:17:54 +0000
Received: from bombadil.infradead.org ([198.137.202.133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbKjE-001JDU-Ep
 for linux-rockchip@desiato.infradead.org; Tue, 27 Apr 2021 10:14:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=6aHqXZX0GvEv8M689VN0ZTC03Iuok2m3bZyU4jw0V6I=; b=yYTqz04+6z5lJHxyNXPZ+yW8d6
 3CAvezdnb06kbTXlIuzoAQj14OyN1VDK12pLKGixTEK4N6lEQ+XK8OMkL5UvamuAFbMIrZTqCgxti
 7SgOUxHEg2Lt6HOPFfIPgwJBnWFUBARPMSm+vxB/7o4SydPDhssoB3PcWX/D3O1r8EnXGYOWuGE9G
 RuVl9OhTcu1e4fSrgB8wUV76ZXMS1hexkTPjLK143BRWe3NkJoGq/ZSpUKb4LserBj61LDK29tITD
 XEQvtMnf7M8a3YzURTeujaBG+FhzRNqTPoBvGT2LDL82mcMxyGkRNhhYr2KoUSiw4cBqozRqgo8UH
 E4MeuGnQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbKj8-00GbpW-NJ
 for linux-rockchip@lists.infradead.org; Tue, 27 Apr 2021 10:14:03 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 359A36196E;
 Tue, 27 Apr 2021 10:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619518434;
 bh=9XhzsT7qorzb0O8m+AZfDrHyIqnxWFrm1sswMUzcdRI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=homNswZsvi3mGrB+l98sroFS+C/F69CJQA+9KlUyxudW74Xi+ByY6ffj9t9pty0oW
 FYXGAGj4eQvOAlOjxHYdmWM7AfKSOtbfXnvOoKlORsojpR0Srlv/xGdiLrTZWhnQhq
 21ZL05Qiwme2NsO12Oq5nal3qRX+lK7scfhjCNDDm8Micc1frReWiNqg4jR1xgxQy8
 7/958He9RkPM/f9Njh/2KDGtyHv++RK5fa5eI2aZL1sBez0PzbgpA4tOhDsf/x9pPC
 lzut5TGIjsXxw9UAWXjvu7Vc8BRNzyE5omQiYa0pNduj9esu1e0x8IHZjYKwvlLj5z
 iV7WA6drJOYyQ==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lbKj2-000j8P-Cq; Tue, 27 Apr 2021 12:13:52 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 79/79] media: hantro: document the usage of
 pm_runtime_get_sync()
Date: Tue, 27 Apr 2021 12:13:46 +0200
Message-Id: <29a5f9cf9680a36fc1f6277364aa7c53776ed0cc.1619518193.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619518193.git.mchehab+huawei@kernel.org>
References: <cover.1619518193.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_031358_811826_4FDCD0E3 
X-CRM114-Status: GOOD (  10.89  )
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

Despite other *_get()/*_put() functions, where usage count is
incremented only if not errors, the pm_runtime_get_sync() has
a different behavior, incrementing the counter *even* on
errors.

That's an error prone behavior, as people often forget to
decrement the usage counter.

However, the hantro driver depends on this behavior, as it
will decrement the usage_count unconditionally at the m2m
job finish time, which makes sense.

So, intead of using the pm_runtime_resume_and_get() that
would decrement the counter on error, keep the current
API, but add a documentation explaining the rationale for
keep using pm_runtime_get_sync().

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/hantro/hantro_drv.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 595e82a82728..96f940c1c85c 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -155,6 +155,13 @@ static void device_run(void *priv)
 	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
 	if (ret)
 		goto err_cancel_job;
+
+	/*
+	 * The pm_runtime_get_sync() will increment dev->power.usage_count,
+	 * even on errors. That's the expected behavior here, since the
+	 * hantro_job_finish() function at the error handling code
+	 * will internally call pm_runtime_put_autosuspend().
+	 */
 	ret = pm_runtime_get_sync(ctx->dev->dev);
 	if (ret < 0)
 		goto err_cancel_job;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
