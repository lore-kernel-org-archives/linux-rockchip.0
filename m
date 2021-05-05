Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D185C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 09:42:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 03267613ED
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 09:42:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 03267613ED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H4kUfWpy2sgzMvvu6WLd2QuCkxOQinwT4jTbVvKaOg8=; b=JVhiZvFEhkDJbEh2cxEU++kN1
	md6maq/LExM/m3snynTGF/m8M7EqtHD/bEM2Sn6sUO6GOw+YuD9QMcNMBqW7mHD5pEcJupsqnPvoa
	L7ZDP/AzWSQ5gGy6hwLlau53vNa+LBbJy+qrZyDkAaDMn+F41qUM67QRqhvS36PGOaPRd687j8m42
	8FilorBpR6At+tirqCiQ35B3Us2Oj8B4c1ekxZXyfKU0f0gF+9ScKFY0DJQhzvKfj2fGk+PwIbIWB
	TMs8ZIToRZ5tD7b25UHpzzmeXIdI6RPPl0ZE+IUzaj5sI+s614EALQD/FjJomnAOv0aEs9Vr1RtYE
	ZvkbCbfmQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leE3K-000lEq-RO; Wed, 05 May 2021 09:42:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leE2x-000l4O-Cm
 for linux-rockchip@desiato.infradead.org; Wed, 05 May 2021 09:42:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=5r7OzKRkv47fhzfFSxUspYabIaVgHv3zSrm9kTksCTY=; b=WXV7R5lanNQ4xkSe9/8ZjJbFIT
 n1Z5Ey+7ck/xmqHQal4he6ptECTf6Yfs95BmkAcOWWqLUEVSwx2/DnxNt5Y2buaKnqJf//YS6cuJs
 Ij+sK51ni5Zae0/Bgz3Y1Nt+5D4iXyozaUcczTqUl1s3BskdvQvuFny2yuL/j630TDWZV5pA2Ie2j
 7h35VA4y+h3jzx3onRkoxAmYSqwWy257zuMXt3RlWV9B3sX3eLaIrra6Z8OVQXf6ILBUNnOI54xPE
 1lHEcaHS5b1beQvrwdwJgouH07aUdbm5/qi6fy9GNxWzM93MImtGoalI+N3uev1PBE9DbiO8+Os/w
 bSQT16+A==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leE2u-004cct-5A
 for linux-rockchip@lists.infradead.org; Wed, 05 May 2021 09:42:22 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D4B2861106;
 Wed,  5 May 2021 09:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620207738;
 bh=Ge/Ah7ICxGTEtJ+zpzc3S/dZD8dc9zPvBoOlbXMznLs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aKdc/dLsQD5sO9k0fCMqOXnJ7qgJpGvzD3Kqmvh7aGjc+vOIc7pwwIUP3UwHCZ3GO
 nNL/E4OfhDT7M9e/GRXA7RfzmmBq8Amn1JODFN6yHTUIO8Ybviylgr6qLMEYV1DvsO
 U9Kigw+mIcaBTfuHrNCTPfmiE/R/P1RPhWBCqTNa7CbzP78Lw58K1NP5ulzghcukiN
 BzOr6k86KO6+W32Wnxg31jRaVclTzaBLR4tJuk5htHWTwaof4PXDRRPd/pVrz+DjiZ
 y2jjAPEfhLEtVj8Z5tSbwbNdY0VsI9rN3LT6wwxP4ljHZA6sfD42vFsqQH44Skxa0h
 BmNrU6nJGCccw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1leE2q-00AHvr-Jj; Wed, 05 May 2021 11:42:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: [PATCH 01/25] staging: media: rkvdec: fix pm_runtime_get_sync() usage
 count
Date: Wed,  5 May 2021 11:41:51 +0200
Message-Id: <dd3294f2d2777d41a27b4244f077f440df49a408.1620207353.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1620207353.git.mchehab+huawei@kernel.org>
References: <cover.1620207353.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_024220_252936_5B2C55A7 
X-CRM114-Status: GOOD (  10.83  )
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
in order to properly decrement the usage counter, avoiding
a potential PM usage counter leak.

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
