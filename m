Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 011B3C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 09:43:37 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD71A61106
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 09:43:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AD71A61106
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HXGGorDr/aSPeiNOOCxP6spNv6Meka8t2qqjl9dnUAM=; b=VPc2/lGeC7wvWNZyWc8WSWw3+
	ZmddmTr8rFVEvKqAsKHF0WIYm3ui6DcVPwt/UxwIMgbT7jUKEsnv4+9983qiZCa3PLM8ZvYhpItXE
	U8xMym7K58InjqCfPqwKSrRNc6RXvBI2g7xmuwjB6d5JmsICDMpsNWoWYqt1kXHicyjtM28MrJJ8c
	jobLxdhqx5TlRAUjOKgaPar1pI3Q5/SM1pWJ2/CBgqTWczP+AiqanJtrrEd3pQioGIlOHz5Vcvt/F
	TOrB4gKEnMDlTINC9MIIjtQfo7KmFbLQNaFPT0TUSVKIJeujm0bsIS4LVjZIrG/95bl1JWw9ZRx3e
	sOz/WIVAw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leE41-000lUA-JO; Wed, 05 May 2021 09:43:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leE2z-000l5e-9J
 for linux-rockchip@desiato.infradead.org; Wed, 05 May 2021 09:42:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=8NehB0bHaN0i3xYOIzTYzlkaJczlWkn3wPru+u3fu2s=; b=arov/SD1t0bJKeSWlQBompL84f
 NI4jC4xwKkeKxBeqTdDbrZQOHmsLn1B0drviK0EylkMs1QwETyjvonimO+BRrYKEW8xVtF1mNLjFp
 /RWpVHLmLztEIPj73o3Qklm6LKYYoE3D6oz7ev/PT2DE93K/iEO5/VLaYiWw2GhTs1DwBpmENi/Hc
 ury5uHbMbwy6223KJeWBrqYLD9DqtgGkMWgXhlu6AVe+9JyufIogWS58rmsX2BxP3DvvWIVs11ELC
 D9eYazwwVotEigGxIAHoHuyfiApEBeU62a2w71jGJ9wC8btIc6TngMyB4NaJmhfOMzIytyhBa2k9M
 EViWpgvA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leE2v-004cfK-NS
 for linux-rockchip@lists.infradead.org; Wed, 05 May 2021 09:42:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1DCD961411;
 Wed,  5 May 2021 09:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620207739;
 bh=/VfMQN3+pkon4IAGYHihI8JDgg/MmcbaQd2LgSvJOKs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OJwXWSgCTeFz4nYyd0dPxgy9oWhU8iKG/zEMSgLxJk9nEFTQlcGrcj6aQAzFg8GOx
 QVVoLds9pHATVB973bb6D5NJ/4900udi760KWYgOCfjTG2huOov9iIGMjl8fYqrUTj
 tqQjLvebLD9FOGARehRd+WMzGSPCanIGJ36e1RZp7wDOdRn+8ap5QHz3kYwNh9pLf3
 FBfnEmhMRBPKhjcZkUJM02ecdANSZeZkA3wBhZcwmg11kwyOLUwolHZZL/5zqltfvg
 FT8BgIxPvmzD4sDImXahZtGrgOFuiXwD/NEFHYWSMcs7ziApJJZaCfjh5keDxY9TFq
 ZAUI+Gxg5QIfg==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1leE2q-00AHwF-Vt; Wed, 05 May 2021 11:42:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: [PATCH 09/25] media: hantro: do a PM resume earlier
Date: Wed,  5 May 2021 11:41:59 +0200
Message-Id: <82114a4bd9c7bc1188c6a7167a6e74bb3360961d.1620207353.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1620207353.git.mchehab+huawei@kernel.org>
References: <cover.1620207353.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_024221_820122_8D623C43 
X-CRM114-Status: GOOD (  11.16  )
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

The device_run() first enables the clock and then
tries to resume PM runtime, checking for errors.

Well, if for some reason the pm_runtime can not resume,
it would be better to detect it beforehand.

So, change the order inside device_run().

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Fixes: 775fec69008d ("media: add Rockchip VPU JPEG encoder driver")
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/hantro/hantro_drv.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 595e82a82728..4387edaa1d0d 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -152,13 +152,14 @@ static void device_run(void *priv)
 	src = hantro_get_src_buf(ctx);
 	dst = hantro_get_dst_buf(ctx);
 
-	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
-	if (ret)
-		goto err_cancel_job;
 	ret = pm_runtime_get_sync(ctx->dev->dev);
 	if (ret < 0)
 		goto err_cancel_job;
 
+	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
+	if (ret)
+		goto err_cancel_job;
+
 	v4l2_m2m_buf_copy_metadata(src, dst, true);
 
 	ctx->codec_ops->run(ctx);
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
