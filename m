Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08484C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 10:14:31 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 923E5613C5
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 10:14:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 923E5613C5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pPmT+Ll9kXIX7EunXRwTezaS5m0ecUFlRy2VwaoQH4o=; b=oC9oMbvO6OxQsQ0F4WWIEWtmX
	uLstDxykieZZ8f6GVe7ntyHS/9dnFQrDQn2TJOQ7MF6zYgDCRzXG+26ogppP+v6cMAO7jlSHde5ZZ
	WiOcu8Rtf7mxSxeoJRWMWGZi3yE6xjIo0iXdtyMWGum+phXlQdLNw/A6dgOU+00xuM2ks5fIHC3lk
	cFYF4rvqsbEPbw592yxu5qxRCLmenODhaJIA4OVMaf0efwc7/BHV00P0nnULLycwz+1hHVVJZmtHn
	ZOjnVee1HyRe+Oc/32owMX4Ixiczy6QTQc28V6qtPbPjKvekUO0mNksiRClTGFSHbm/s1/liqJSoc
	TQzlY/pmA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbKjV-001JIx-Cm; Tue, 27 Apr 2021 10:14:21 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbKj9-001JBt-LE
 for linux-rockchip@desiato.infradead.org; Tue, 27 Apr 2021 10:13:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=u5PcMNolJ+Hbjx5TaiiRECAjrT7wB+0xPtci4EIZYbc=; b=gIa77u+209SN0pgEVcfxtBausr
 Z7opXwJ31Q5TnTQcXUAzju2L/zBEhT7ZHfGIJnBzYeA4PBPvmA3DOwBdDauVc1CIrrrSAAiuwXRMu
 vQmrygCypzGhiyYBzxH+I1qVwZvvIzN9Dpdcu6uzPwQv8esJgW2rIqvaKuyvf0izXfj2BB2AaPPmz
 U6FKt/VjE0Q3K56sD1qlHv/cm1P0POInhKFRANvg1yK2NMB1m3OJyL3VsFvK+udS/Pr2cARDLgAct
 sk4j8UYIffCCY5pJjgEP9YB8ibZlmH/hppHONcO3/+1Mmn4JOOM1BhW/R1piNfCMdUqPkYKeDyGS4
 /gQttbgg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbKj5-00GbpS-Nh
 for linux-rockchip@lists.infradead.org; Tue, 27 Apr 2021 10:13:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2DE0E613DE;
 Tue, 27 Apr 2021 10:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619518431;
 bh=LvHrsFJn6JLbIexuKZaI+hIEIjqhrM13uG8Z/t+ytHI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MVqLR7mFtMTLO0mK1TyVv9e+yTmOBkTKp+10OaJB+E8GKGvWzwvNELM5c29euVRTA
 USlnGTJVTJc1qUs5eiLRzGraPsUzUVxRBRdZb3dj2QYodiUjT21ZyJ3XdxD0sYvdb5
 R8n08vJvzfzrjwR87IG9TYbo7F4hAXUTNwwiFTlSYLHGpPGL5JMt9a5XVt+otKb7Fk
 Qh8UHDBRVwMqDuoD7fHrAIuahwrZK7Ok4dbmXenwn7JQ3KIOyRWLDB3g8TBY9UOjrV
 XfCHLr0ZmqO/JJOaR4g8tbEZIoDPZc/cz4Ha+yXKWAuRKkaY4AHE5VXNYUixFP0vK3
 +74rLo8FW28lQ==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lbKiy-000j5Y-Uq; Tue, 27 Apr 2021 12:13:48 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 20/79] staging: media: rkvdec: fix pm_runtime_get_sync()
 usage count
Date: Tue, 27 Apr 2021 12:12:47 +0200
Message-Id: <8990782e13de0f4b91fa6675bc5fdaeda2fd038a.1619518193.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619518193.git.mchehab+huawei@kernel.org>
References: <cover.1619518193.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_031355_849976_61396612 
X-CRM114-Status: GOOD (  10.71  )
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
Replace it by the new pm_runtime_resume_and_get(), introduced by:
commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
in order to properly decrement the usage counter and avoid memory
leaks.

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
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
