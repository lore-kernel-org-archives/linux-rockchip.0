Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CF09C43470
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 15:27:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E005F613C7
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 15:27:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E005F613C7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6qFeOrENuA3d98NJHF6QNUnhJoKXDv04/Bl0RMFEV+Q=; b=m+WVTstSZYt1ReETj/LZjMRov
	Hh54rTAzHRL3QjYCN5wUvkBIU/loLZmrZgIGLXhpQvu7ZFM7g2LT4FvmvnZkbyJrRSymiOp5xKmHF
	Z57YQwW0FJn47UDjAY/r/ST8c0B8c1pG8mLEyyX4ZsgsMs9xc/+L2Wi4Ce/c0/09jRuU2KHFQGyfj
	i79xUIYra82w6Aizj4oDjcBKzWJ7xucONiXvhGdNCRMZBojjhPe5o/1syOSlFVEbXZ4EiX8Xu9qIR
	3nSSIAoFQdQKAAfoNYWDPKRbbpe+zSEH6tNq69OdEmCpNgJ15lMGHQB+/MTA+Vxrdcnov5w3u1bjL
	eVixI4VMw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lefuC-004Xzc-Tr; Thu, 06 May 2021 15:27:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leftX-004XoS-Ha
 for linux-rockchip@desiato.infradead.org; Thu, 06 May 2021 15:26:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=LCS2DO2BGxm9672Y2FCmLYUq13JuYrqvFO5XM0Vc7VI=; b=wvaPQldJO2uDUVMSzu48M7GvZR
 6v9c+JLHTjhjilumL6mB9AMYRHTH82334WfT01gUr+FhOUmi5Mgnd5QRtq7zY+a60eRvue94KrQeW
 1j0aM0LAkp345mgcO2bQGBU4HEJ1K62YlLPKxGWUTu+gP340rDeMHEOlsBFWzuchygKNHy8q1pT/m
 X5bHHiMVqSA0gBHNOMKJwafJaydMgqzixPWiORE0gN9pGBohNDPe6Ituszsm7cLvFn82939xjU14+
 YUOucXBIXr6UCKhR1ixfiCyKQRKdcjYazF0M/toA9qTpS7TUlcKH8hY05FqQ+6KLza3l/f7quWbRz
 Yr54M7vg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leftT-0068oG-M7
 for linux-rockchip@lists.infradead.org; Thu, 06 May 2021 15:26:30 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1AD9A61969;
 Thu,  6 May 2021 15:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620314784;
 bh=CljwneJOzsAzCxr1z7NSaPn2lzrNFeMbh5spoGp6sG0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JpkDG+1kkaRH/dCZPmcLtq3DaDCDXgF5xWcjAlKhOuiUr1z/IQVXCsgyYy2omoce6
 /J75nCgEPRGrT+lFqehcRMdlScj/mf7jCFr2Z9aBMBMxECtiL4J6s64/MbFBeptZlX
 NZDUMytGMTCucl0bBrCTjkzqxTUtfV8jvInIhciF+n+CBWTTMvyzPwd01dvWT+aKuc
 O0fDecAngeMhSfJ2WbQRVDCOwVvnmXm3mb0lMpLfQ3Wg4d9Buv7RFYV5CMBMueHuLm
 G2QP2lombNU9zFcZ9gkn7ogCARdt5wj9AvXbuLpzWkKC640nDWOaY8D5R+22RRDvr4
 mBIh405q8I3mg==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1left8-000SCd-FN; Thu, 06 May 2021 17:26:06 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: [PATCH v5 25/25] media: hantro: use pm_runtime_resume_and_get()
Date: Thu,  6 May 2021 17:26:03 +0200
Message-Id: <0505970478fcb86e190ecdc4aefe55c9982ae7d5.1620314616.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1620314616.git.mchehab+huawei@kernel.org>
References: <cover.1620314616.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_082627_792128_41ED27F2 
X-CRM114-Status: GOOD (  11.10  )
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

Commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
added pm_runtime_resume_and_get() in order to automatically handle
dev->power.usage_count decrement on errors.

While there's nothing wrong with the current usage on this driver,
as we're getting rid of the pm_runtime_get_sync() call all over
the media subsystem, let's remove the last occurrence on this
driver.

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/hantro/hantro_drv.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index eea2009fa17b..74d6545395f9 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -160,9 +160,8 @@ static void device_run(void *priv)
 	src = hantro_get_src_buf(ctx);
 	dst = hantro_get_dst_buf(ctx);
 
-	ret = pm_runtime_get_sync(ctx->dev->dev);
-	if (ret < 0) {
-		pm_runtime_put_noidle(ctx->dev->dev);
+	ret = pm_runtime_resume_and_get(ctx->dev->dev);
+	if (ret < 0)
 		goto err_cancel_job;
 	}
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
