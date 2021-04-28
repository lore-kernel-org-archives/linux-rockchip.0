Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 240DFC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 14:58:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BACF861158
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 14:58:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BACF861158
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ihUoNfnFyhoZBdbOwsUHiuPRCNS1/vx7lpFRP7SymkI=; b=CWWFYbiI0Ai8BNvrDhJlJkt9q
	+mXKrBRQnnp4UsnIWvpERIPZPEjOQwRrEKkvdeAKTkBfgHgLYe+q4yxSsxOSBX21WAZWn7abEpAkq
	TB9QL90wfrYDfME3V64VZa68w8xMi5pUc/Qs6403DAk1ea84B6852xg3ILacDASFVoNg34g5L8IiD
	9FG1YxhQC8WxdoivIqcLI+9OtaVwba9TZwYYkurVyalCXklofiupIw3x7Q3kqMHEKiNmVtcgApExw
	6VnWiHmhOPBW2InlNJEU+9+YIopDQwNtcH6yD9GX5tXK/st1XgNXwsnre7NQ2zJKzJDDQiDIeYwP4
	mfvaIq/Eg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbldi-003h8t-Dx; Wed, 28 Apr 2021 14:58:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lblYq-003fSs-No
 for linux-rockchip@desiato.infradead.org; Wed, 28 Apr 2021 14:53:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=08Pql6ycWs4tcRy/N/vTwqCuHjAnRQ7cRAt7qSg447g=; b=bbc9tO98prhnOqHdMD1i0WHaPJ
 dzGDuK9OcIw0d/uhz319LHvc2avrYw7kdiBPxNgBz0zExsuP4RsHpZoWcox8i/Y8NPMZoQFE3pTFV
 zm7Flyu17mWqQBDqsOXH9RFLdCaThWz8urw1DiJUKZjuFgjxW1vuOtug9PfR/KDoVKqMj3Qvhsvxl
 uzjKiK1+hxNOe+uNbgqUczsYO8YHZbzvV0Hsae+JLwg0RLUf1qTyZ57DnHHHVfsOPp5cXIc3E+++D
 fnuj3rghQ/awEpo3DE6bRgVpigNFNjrwSCqvlkpym4EVEd5CKDQ2bttLKs+tVV0E0ckvzBXcZZaV/
 IiAj1IPQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lblYX-00HVQT-Ng
 for linux-rockchip@lists.infradead.org; Wed, 28 Apr 2021 14:52:53 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B07A561940;
 Wed, 28 Apr 2021 14:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619621564;
 bh=imJJDHPAiJP2c7eOJo+7OC5ScwYwgiXYY/gmGiNV2zo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FrSiQCIXXuso2wfxt2oWBwn4AMJwjz8RxRjTJjgHnGxwyzFc0LCrUdUYk5++nMpAe
 c1P6h5eH1YjBD0pJeYPtElY1j9WuyqiGHhdVHEu8/WDyZtDXJE3A2ynqb1MWZz2Gz/
 1RjL0x/mCShkNzl8ioFvY+tFclhDhOoEWK66pzL/qSZjVFfkbBTzQZiDZJMfSdQVib
 AtwRHtdt47HBU0zQhNHEllbJbZAgqLRMolrFtNQpYz/4h+Tlh/W88STDfdKHxPxfig
 LxSbnZLywI8vq1juQOXjkJsZHBD14FmeLObUWO84CIinBK/KXQX22U4Ybe6rkVUjlR
 gIkeZoUe/b2vg==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lblYS-001DuM-D5; Wed, 28 Apr 2021 16:52:44 +0200
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
Subject: [PATCH v4 79/79] media: hantro: do a PM resume earlier
Date: Wed, 28 Apr 2021 16:52:40 +0200
Message-Id: <569838d406dde80dcc64989a663882817a54cbb2.1619621413.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619621413.git.mchehab+huawei@kernel.org>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_075249_856592_06C8817C 
X-CRM114-Status: GOOD (  11.37  )
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

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/hantro/hantro_drv.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 25fa36e7e773..67de6b15236d 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -160,14 +160,14 @@ static void device_run(void *priv)
 	src = hantro_get_src_buf(ctx);
 	dst = hantro_get_dst_buf(ctx);
 
-	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
-	if (ret)
-		goto err_cancel_job;
-
 	ret = pm_runtime_resume_and_get(ctx->dev->dev);
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
