Return-Path: <SRS0=vlpy=L4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D55E6C07E95
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jul 2021 23:39:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9A3C2613B9
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jul 2021 23:39:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9A3C2613B9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HbjwtQPZbNDrDepBqbOl1PYt30dq9tlV2E0iZYECBOc=; b=tSY/KxvY9aiFIR
	mPAohBp5IKB9hPnMZaLQtgEjbFUZR33rPFx4o+1wS1ie6oRLryi7ONvObPcL665x1/nq0nGYIk+q/
	cfmLYNFJkJSvTBmNghIdtTtanVBLYOmsQmJn/xmA5kBfggPMEpwIgQsRjbvwDormB5QRzhlMZIym8
	o6OzxSUimumLdpMkugcD0jrWUVkM+EePYW59CfeOAUTxOw9fRteZkp6MBbvFUIe96HX/FfBDS9f5o
	IU+0BqxlsmDYg7iz/wsHEi7rV5wfhxvqsy+sIapl3sUmziwpqUjQAwfbEgT9auH+VFJgzv6ne0VFU
	UzG086XPAEKf2SAecRbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0Bhd-007AXC-EK; Sun, 04 Jul 2021 23:39:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0BDd-006v2T-9Z
 for linux-rockchip@lists.infradead.org; Sun, 04 Jul 2021 23:08:10 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id F1B256194E;
 Sun,  4 Jul 2021 23:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625440088;
 bh=VcFcH5ns65QNQL6Uh4A/eiq75KTpr/4XR8S+9m8uuIU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tggSZIncA4H29GgnAE6zXa7woNtFmVVWJEXuYO7Bzg5btiCrVdTqKkztwjNkxVJ2s
 Km0LqjqZxUH3mha3uW98nyJfycEV4mUGt5L14IbSHF2ywBOBFgilRUF3wrh22qJ2Bh
 ywOuIkFeHr2CW3qs5rgE+Sr4dT73JNfsK9UWNpTLtXamFlMRVT1LnVEBiq8a5XGT1t
 sVwVTa1g26jhvfooPAj4TAwh25AzqZJyVf7Tq4WGNN1ClMIHLRp5cMPpNKSrEmFhmb
 LyLAfFpR845IqPYdJgLDAOeKD0hPuJ8SpzGlVizLqof2zyLqUc69GyyfE0DaAxIDeJ
 XspdOXRsp0RLw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Sasha Levin <sashal@kernel.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
Subject: [PATCH AUTOSEL 5.10 03/70] staging: media: rkvdec: fix
 pm_runtime_get_sync() usage count
Date: Sun,  4 Jul 2021 19:06:56 -0400
Message-Id: <20210704230804.1490078-3-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704230804.1490078-1-sashal@kernel.org>
References: <20210704230804.1490078-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210704_160809_423409_B541FBF7 
X-CRM114-Status: GOOD (  10.60  )
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

From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

[ Upstream commit e90812c47b958407b54d05780dc483fdc1b57a93 ]

The pm_runtime_get_sync() internally increments the
dev->power.usage_count without decrementing it, even on errors.
Replace it by the new pm_runtime_resume_and_get(), introduced by:
commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
in order to properly decrement the usage counter, avoiding
a potential PM usage counter leak.

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 1263991de76f..b630e161d4ce 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -691,7 +691,7 @@ static void rkvdec_device_run(void *priv)
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
