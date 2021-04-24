Return-Path: <SRS0=NLp6=JV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA804C433ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 06:54:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 94A0861465
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 06:54:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 94A0861465
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rcSwQLc1rkS7H8qg45tz87qWp+ZD0dsV0gRCOmDfL1w=; b=dPcXhyFI1+Ay7ZBfZCEDuV2/p
	vZHCANxgWusLOD4XX/GQF/KEib5pm46++djVgYicCJZznwrsOICRWAUV7QfQwKyUOIeR2TpBLIfyL
	MYJ1umRRo6tasLCrvsdtdxhJjon4w5kqU9fkdpq5HNEg2CmTTXzzcWtWomu9N3ZrQ8IhACmRWT2eY
	uSwe9X2++5/MUUb9TgsYDunsgEBM8IP3ReKOuV6lUiA6Mx3uLytYPlPq1CHm33yur691uT8M0Wn4J
	pghVXcNU8N3j2F5weZX/4A/3AS2wTxD8QhQI+OPe9/qOaHVbaZDeu57o5wpuJ2HtSlZX5hljk7A2v
	LDoxqtbEw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laCB7-003Bcm-8B; Sat, 24 Apr 2021 06:54:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laC2t-003B16-0j
 for linux-rockchip@desiato.infradead.org; Sat, 24 Apr 2021 06:46:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=oMBG16nKn+4qoVxTUY/HKPszUNeQPkTmVhN7FD9lqJ8=; b=wYYivSixIkno7pUmlBtpxK7iyD
 7ePgJg2jIU2Cdg+xIwza5Wjzm3URXtqCbSveiPLxnfUvFPyai4Hc/PkDYUTlqjO3Xm+i4/1pxVdP8
 zgXNbs27Mnu4G80yhuw1bOBBDVCD7qxbHPCo+QL2MWmPyeBNKrw41502jbp/Vr3GLFZEWqgoNcPAV
 lkSFYTCGjOJQ2kwEttQFTe0qI01T2aW6U7m6schFE/ost4d3FulNPOaMHgnh1q8i/vg3hzSu75Mfv
 Ko7sJ8TaHvlwk3lroh0VrKzRMY1QmC06OGUU0xOvUgI0J0OG4fWaXrIr5GQL211S6yPIxaKu//BdH
 lO8BIoag==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laC2o-00EsJa-Rp
 for linux-rockchip@lists.infradead.org; Sat, 24 Apr 2021 06:45:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DDD1261481;
 Sat, 24 Apr 2021 06:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619246732;
 bh=Z69ehY7S6HpjbLMjJqStag1+c7JNJRTD4xVET17kLNs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WBeluuHPMoohV6kjXrt6232lvnQ1kN4ts7abU9qOxVGedDbsoVZUjVlSx9CyzK6he
 Yiun2LKC9gsmGZXQ7r3fYBgg0To3UQmQ8rl4yu4FcbytktdlfWtttfxdkuKW2zsrIH
 f0CGqlaey01b8FdGWH9TDAddwcEXlftj0t/Ipb371f0LY6bOc8TQrGShe1yV2OGRPi
 VhE/jWKWaRKQlCi4Szq8Y8jnua/fBZiZHFrwqO5OppoJHmvGALTUK/MTtQnYYRJZj4
 gzBKC3fZWy4qM5uz6TWHbJ7xF5aDneI93POB3PKIZSFr2mIDfmM+oHs1kWFE0SMVc4
 64uoUkHsBG9YA==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1laC2l-004JeF-6F; Sat, 24 Apr 2021 08:45:31 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 11/78] staging: media: rkvdec: fix pm_runtime_get_sync() usage
 count
Date: Sat, 24 Apr 2021 08:44:21 +0200
Message-Id: <978ba3b7acceb858870c8029f761ae47ea59563d.1619191723.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619191723.git.mchehab+huawei@kernel.org>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_234535_045600_E8C76634 
X-CRM114-Status: UNSURE (   9.77  )
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

The pm_runtime_get_sync() internally increments the
dev->power.usage_count without decrementing it, even on errors.
replace it by the new pm_runtime_resume_and_get(), introduced by:
commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
in order to properly decrement the usage counter and avoid memory
leaks.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index d821661d30f3..8c17615f3a7a 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -658,7 +658,7 @@ static void rkvdec_device_run(void *priv)
 	if (WARN_ON(!desc))
 		return;
 
-	ret = pm_runtime_get_sync(rkvdec->dev);
+	ret = pm_runtime_resume_and_get(rkvdec->dev);
 	if (ret < 0) {
 		rkvdec_job_finish_no_pm(ctx, VB2_BUF_STATE_ERROR);
 		return;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
