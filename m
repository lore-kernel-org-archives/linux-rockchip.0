Return-Path: <SRS0=5X13=PU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FE1AC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Nov 2021 11:46:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 17A1E60FC4
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Nov 2021 11:46:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 17A1E60FC4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=metanate.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L56tOKExWqCrW/vWtlzgC5niylITif8FUn4LMno576E=; b=vEP8ignTzsBt1g
	q8ri4rawkTzCMQW0zySfjUz2gi17rCEuSR54z3CgjSgUCJNTc4CVU9iprgUB6QwbW5zkEItWiOcTk
	U7axs2kWL/YIGbEywwIbg6kUB/U6NFRy8L3IuxUDht+ouXmQCaGLaBvlzT9FuIGMvuuXzUKoYsPqV
	4S64KhOKnwXuWok7X0S1qyvB7N3wYMybpjGmkgvPK2oy12INUq9rsu2v2hYJI7qEyD8B7GtZWSLMm
	0WmgqyO2mSsj8lBPJolB9GqVGeJjPt0C6wnhut6p1cdhEgiBVqO2BahOcz9qyncg+pMu7c+gDk3Rk
	5NH4tddz9tfuXXCkliNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhVm0-00G8Pd-JE; Mon, 01 Nov 2021 11:46:44 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhVlo-00G8Ns-Ne; Mon, 01 Nov 2021 11:46:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Content-Type:Reply-To:Content-ID:Content-Description:
 In-Reply-To:References; bh=kuLy/8jiUbD+nZ5OSmtZpAkZEkowU/+2O9rn5AK/AIQ=; b=Pv
 wwrJWqEA66dBac0YPxQHvqCPR5NMWbuE+zWGv94t2awG4N7lfHMyQxxYYjxRg8mIX9U0tzZ7kfPz8
 qNfKf/nzg77GRRPgtMQO8LfvEVazaqSGYzbEDSi9JliOZ5CLFZyGyq/bq1jpavOKOGrLqlNX2mW9+
 fPSuHzQshH97AcuwUVBtIFgboXsaHNM5AVcyIXQ7bO6frNlT0Kva5tfJNFAVvIZMv2cTr2LBycwYt
 HQ3qnkzaW5ECx2w7+ueUKnRL6ax0GIWiE5FWOnd2tQ+yJ7VXD9MZF/3cbi7OIfdPEje3X09sFwxY1
 QbN57r3v1rfNZ4vn15+hOb2O94Rm5/RA==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mhVlk-0007Ay-01; Mon, 01 Nov 2021 11:46:28 +0000
From: John Keeping <john@metanate.com>
To: dri-devel@lists.freedesktop.org
Cc: John Keeping <john@metanate.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: pass 0 to drm_fbdev_generic_setup()
Date: Mon,  1 Nov 2021 11:46:22 +0000
Message-Id: <20211101114622.813536-1-john@metanate.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_044632_805615_16CB5C93 
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

Allow drm_fbdev_generic_setup() to pick the default bpp value for the
framebuffer.

This has no functional impact because the default is 32, given that
mode_config.preferred_depth is not set for Rockchip.

Suggested-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: John Keeping <john@metanate.com>
---
This needs [1] to be applied first.

[1] https://lore.kernel.org/all/20211029115014.264084-1-john@metanate.com

 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 1481181445fd..e37e74998fa9 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -165,7 +165,7 @@ static int rockchip_drm_bind(struct device *dev)
 	if (ret)
 		goto err_kms_helper_poll_fini;
 
-	drm_fbdev_generic_setup(drm_dev, 32);
+	drm_fbdev_generic_setup(drm_dev, 0);
 
 	return 0;
 err_kms_helper_poll_fini:
-- 
2.33.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
