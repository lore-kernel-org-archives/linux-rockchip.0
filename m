Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0131EC433B4
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 15:28:51 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5F21861A13
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 15:28:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5F21861A13
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PrjjTIznuqnKKLrWLbkzSPhr8b1QhRRyYcQkUoSVGk4=; b=DIiv5VW3cf3koh/c067Wk70Uw
	ICWDg5lSECbJqFyS1LHsl3NiXVLeEZYseQIbM+Cze0z6jgMbNvwhe87rUD5GR7VP/lGNuDD4VdPry
	b2T4fMQ0NuMK294plU1uLDVnCM1/m6U+kWZ3FM2z9EAD4N8YELUJdBvDwGrGCUQW09NkNe/wX/xt+
	ZM0J6wpSqLW46ybL7G10Cx39XGVFapQ1a38yy0+qJyZvjzMhy5YcRsqxyGox9tLJjLXXrX04zNAcQ
	cVfLfZELSKrEQhmgkwSnDmYgS08qjvKqT2OTH2aX8kkUSMsJPTz5CM5ndK7eo02NxpVfhQxEf20BO
	G3bbMm1lw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lefvf-004Ybd-Js; Thu, 06 May 2021 15:28:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leftl-004Xsr-2M; Thu, 06 May 2021 15:26:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=X3E5qrAd9LhofXUaewv7AB/0Kjm3+iqK+K8x/5xUMME=; b=ip+MGus50Xjrd71gTgtp761TCB
 csTGBGR5dFNnXHtJZnh+uf9F0w0vxrey6mXIb8Eodov2gUVxH5lrEfLqFzGp/XPWjeEDetN9gXBD9
 rXwNbfbnVWFIJeCeUwwMsGzHnyeMREwzvsmx/Qg99ZP2cs6Ed2f5aWLnAnNVO0KNP1tW8/uX9rYHv
 ZDIT1cO/vhh2yC1x6TlK1f1csOeZUHddH/NnijhIyfGoTboldEEkSaiyo+rph2cfiWxd+PKtZs/7L
 ctNLwcETpcaydJ/x7iUQbWrB69KK7MxtCd4aZAfl7qk9YmKlMlGPVF2oyyno6jZy1EjfIHjkSPH8e
 8KC0S4Rg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leftg-0068x0-F9; Thu, 06 May 2021 15:26:43 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E72E1613C7;
 Thu,  6 May 2021 15:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620314800;
 bh=4K87ljT9ixqFdaKF30WMhbJexV0Sw0oEND6zL2GFWyI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lLnjGGdtKuEp8Ae3/TLwodZT6L9J0mJGUVHCcp7oiubnKJP1SN9PJ3SE5sOvTz8H/
 jtqudlwpiO/23UqSTQDZCt3Pxq74xnaA+uOZSx30VRKccvIgAmiR7OvNO41C7iwNCX
 W0nzOB/wuyooRIvmkyzcbQ9DSP6HcVP6KcQ27M8XVL010CcUA/yY/vBCxdYUp3/OfM
 24y8PK3CbqFAx8Q5+64Omd3C05O4QRwUlx1qdkNm1bi5pXwl139s9xdyxK1ATvE6dO
 jBEjXvCS2XTutIlFerMoPnUREcvkAO4FXTnUiw5jxlHJn/6YDUiJtAjCcaB7tzyKh8
 JtYHol86iAkxQ==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1left7-000SBT-SM; Thu, 06 May 2021 17:26:05 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, Heiko Stuebner <heiko@sntech.de>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v5 07/25] media: rockchip/rga: use pm_runtime_resume_and_get()
Date: Thu,  6 May 2021 17:25:45 +0200
Message-Id: <ce18a4f9ca1bdcf4c68e77eaa410ec03a6ec8fe2.1620314616.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1620314616.git.mchehab+huawei@kernel.org>
References: <cover.1620314616.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_082640_629376_B56633B7 
X-CRM114-Status: GOOD (  12.19  )
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

Use the new API, in order to cleanup the error check logic.

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/media/platform/rockchip/rga/rga-buf.c | 3 +--
 drivers/media/platform/rockchip/rga/rga.c     | 4 +++-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
index bf9a75b75083..81508ed5abf3 100644
--- a/drivers/media/platform/rockchip/rga/rga-buf.c
+++ b/drivers/media/platform/rockchip/rga/rga-buf.c
@@ -79,9 +79,8 @@ static int rga_buf_start_streaming(struct vb2_queue *q, unsigned int count)
 	struct rockchip_rga *rga = ctx->rga;
 	int ret;
 
-	ret = pm_runtime_get_sync(rga->dev);
+	ret = pm_runtime_resume_and_get(rga->dev);
 	if (ret < 0) {
-		pm_runtime_put_noidle(rga->dev);
 		rga_buf_return_buffers(q, VB2_BUF_STATE_QUEUED);
 		return ret;
 	}
diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 9d122429706e..bf3fd71ec3af 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -866,7 +866,9 @@ static int rga_probe(struct platform_device *pdev)
 		goto unreg_video_dev;
 	}
 
-	pm_runtime_get_sync(rga->dev);
+	ret = pm_runtime_resume_and_get(rga->dev);
+	if (ret < 0)
+		goto unreg_video_dev;
 
 	rga->version.major = (rga_read(rga, RGA_VERSION_INFO) >> 24) & 0xFF;
 	rga->version.minor = (rga_read(rga, RGA_VERSION_INFO) >> 20) & 0x0F;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
