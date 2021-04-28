Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EE2AC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 14:59:33 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 29EA4613BD
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 14:59:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 29EA4613BD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pPmT+Ll9kXIX7EunXRwTezaS5m0ecUFlRy2VwaoQH4o=; b=nocHVAv+T0jMMX69in7fXIGgN
	H2XDSnFNkHw4ukF9LuA+na7L0d3P49HrmqVvO1LJbjn/9f9JWO5uUjJMgjSDoD43iMm3/E/7aUiVf
	4siPyLtnb+2E/DyaJx93MUbFRN7ipqvijwm9fHMXq3jdJSmrXbwF3ddVOlEeFSxarb/RhewP8Q8F7
	1T/+wsLZiY2Ceq2yLFmtOtdeDXEPTULGJpAA6qSB/RU/qQbdME7F4wioJizQtuoLcxoZSDTGUw7tR
	WpYoGZ+/i8FMLPBxrZkBdMCxCLE0Fo4akCmCgHB+2/QvdipbpeEqt7g8d/NoVWkGS+IyUw6CxwvlN
	CbP76PBtw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbley-003hcm-S7; Wed, 28 Apr 2021 14:59:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lblYu-003fSs-CB
 for linux-rockchip@desiato.infradead.org; Wed, 28 Apr 2021 14:53:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=u5PcMNolJ+Hbjx5TaiiRECAjrT7wB+0xPtci4EIZYbc=; b=gQUDjtwSB5tIU8jtkifI+/KjiX
 Z+H9B1Slgj9S/ipoSJTlR/znOPaX4yuzUZCL/RGkI2VVV+fJ0m8WAXE8cvVAYSXT720D0Sqlq5DtT
 JhQ07hCWqSlWHJtsy/8kwAG6HEWZQM0w52/046Avj9wkOSWXyDsPF8cERvIDtXWrqJAR8e3VUewN+
 vvJ37Du9pnMNDyrjyoAsAjL3Zw26ePmBKE4YKA6TBUbWA32Ub2GiDfeIiwYRuzgwX3lKN+GEKBrFQ
 oMftAE68bCqm33FfYeKoJOsOuDWaslmXmD+r7+ttVCFBCs1P3DFHB3jZ1WeYxvnFSXLas8WJ4KLp3
 eM+cbWeA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lblYW-00HVSj-0j
 for linux-rockchip@lists.infradead.org; Wed, 28 Apr 2021 14:52:51 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3655361492;
 Wed, 28 Apr 2021 14:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619621564;
 bh=LvHrsFJn6JLbIexuKZaI+hIEIjqhrM13uG8Z/t+ytHI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=acFeyWG85zM1TfdpyNY0FZBPG5b58t8Qda7XOXB/zjd1Di+P+E5Ci61lCLVsh36gs
 VtP1u3jvm640btrrknoGENeGr8LaSZ8tj/a1xr11u32LsCPQLhOQApFtrDzbrHvVSN
 6zPh8Sq5pzvrAi1VUvgpQjkyzKLaq9D6jt9zmTG21Kfa8+CEl5bOckwJnkZjDxg2p4
 mIhWMCa9AxkGFJkgugn+wmKTgU8bwBP+LRKdCXrlx7RochlM6Ek2V4dxKEsybL5Uri
 ZhaeqoGJqeZre6m/1ZcX+rG0WShzfbrFslKp1KyoVwML0IkC7RnNlfMGkPqySc/WOc
 9YFoyADpXvUdw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lblYQ-001DqY-4f; Wed, 28 Apr 2021 16:52:42 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 20/79] staging: media: rkvdec: fix pm_runtime_get_sync()
 usage count
Date: Wed, 28 Apr 2021 16:51:41 +0200
Message-Id: <4bc46252a7c7ae3612da6da8620ef7db775e27ca.1619621413.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619621413.git.mchehab+huawei@kernel.org>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_075248_110975_C9492E2B 
X-CRM114-Status: GOOD (  10.91  )
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
