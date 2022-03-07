Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B7ACC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Mar 2022 18:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D44ZXmIBORfU7ExW/6GIg5/G5oqpZotvGIMz5HRcn7A=; b=tzK8VoRHUUrPfs
	9SZU5/z/e1+0Gw5vd9XuXeU6Mr2oBpvLN0fQSPufnYaJG3gdO5noIySqQtGDMOsqBnG2bZA0wbOzw
	iAMaesLXaGVWXyMJlxcXE923WJjH0i8PdC83cjpo1FconawNmIm5RhjQ0ncMrVh/URbbhw8P8DwMV
	BSs8tzEcawNVnr3rRGXiA7ZXSrpYpvA9tXtSRz9wtTheKg6CrPW5tOZAO+4DGHkg0MELwi3xwr8gI
	8G1NrGpLsrVGutN6PN45/jdNVEU3TRhefflzkYALkH7kr6JeyrILdyWLlxPP5pe5xooqal9mJQfai
	JypJTHTe+XN7YN80iY7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRHv6-0016pg-Kq; Mon, 07 Mar 2022 18:17:20 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRHuu-0016l4-Ec; Mon, 07 Mar 2022 18:17:09 +0000
Received: by mail-wm1-x336.google.com with SMTP id q20so7391682wmq.1;
 Mon, 07 Mar 2022 10:17:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sayrSIk+NDM65AKvFJGH6QJQ+sc3l62Epi/p4rWp0co=;
 b=oax+5ZR4uPTHvguofbQbtcUO/6gTvB/BultTtgRVppN+Esz2DDuKovZi47mRi4VUab
 voCR7Gz7m8k+D6WiKFDW3fubOt1z2EDvArL67+T8JgyD66xpEXqa/Toqn6f/pbrOJrcF
 ETUjSWPZgFa4LgVcFGzB51T78/WUfxACryDkxzAEaDnCyAh+gQU9Nww5E78NzHrPbPx7
 BWxccytxW3SW0v5bf85gZrIkwmECGTbOepkjvCgh7A7f9x46chlArdPVMQfq7+55wTtk
 xW18sa01nWH81gCf828GYjkClQEkYyP0WHjSMrXK60GYrwDbNx8GqV65ygerkdG0lx0C
 KGyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sayrSIk+NDM65AKvFJGH6QJQ+sc3l62Epi/p4rWp0co=;
 b=r9eODeNPD2RSVxvsw+B5NBlgrhLNHmPSX9lpamoZU7bnppYAJdFs+q1HkDvYa/0A1e
 z2vqESbNKO+NLd4bne0PzGcbg6YpZ0EiXAqk3f1nTe1Vwj07CZSeqI+PpKlvhz1Yb9w3
 Vly8ml/7LOLOC1Qr7xlbt/b+A0tSlLEX2uFSXERgMHM+sav9cuspk6JNoWiYZP0wifOj
 C1ZRpkL4F5rvS0NNYEK4Pn9JJEGMgJA2fQopHVOD9rY5pe9G6he0XtYd/ekKcb+wtxke
 iR2L6vZCNxyraV0rUuLFfrUbYjjltlBhaC2M+1QDXk2MouFsJjqjXFLR4SXCW9wuSiei
 PJ2g==
X-Gm-Message-State: AOAM533eVylOqQIbyYO1oq5+BJaHrb86IMi/leVl5OiUQvi2XY2nOmCX
 zTDEk88P1AamwiArzhlAUEQ=
X-Google-Smtp-Source: ABdhPJxdUz78okhuvUq7H9aHqcb9xUZ5Eomn4OM9KtxAU3Wo+/Qd9m5moXVVdWEcWCu0X3A31wQ3Ow==
X-Received: by 2002:a7b:c8cf:0:b0:389:a5f5:5b0 with SMTP id
 f15-20020a7bc8cf000000b00389a5f505b0mr145235wml.37.1646677025308; 
 Mon, 07 Mar 2022 10:17:05 -0800 (PST)
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net.
 [80.193.200.194]) by smtp.gmail.com with ESMTPSA id
 a10-20020a7bc1ca000000b00389bc87db45sm66515wmj.7.2022.03.07.10.17.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Mar 2022 10:17:04 -0800 (PST)
From: Colin Ian King <colin.i.king@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 llvm@lists.linux.dev
Subject: [PATCH] drm/rockchip: remove redundant assignment to pointer connector
Date: Mon,  7 Mar 2022 18:17:04 +0000
Message-Id: <20220307181704.149076-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_101708_516118_A5B56E52 
X-CRM114-Status: GOOD (  10.97  )
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

The pointer connector is being assigned a value that is never read,
it is being re-assigned in the following statement. The assignment
is redundant and can be removed.

Cleans up clang scan build warning:
drivers/gpu/drm/rockchip/rockchip_rgb.c:153:2: warning: Value stored
to 'connector' is never read [deadcode.DeadStores]

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_rgb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/rockchip/rockchip_rgb.c
index 2494b079489d..92a727931a49 100644
--- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
@@ -150,7 +150,6 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
 	if (ret)
 		goto err_free_encoder;
 
-	connector = &rgb->connector;
 	connector = drm_bridge_connector_init(rgb->drm_dev, encoder);
 	if (IS_ERR(connector)) {
 		DRM_DEV_ERROR(drm_dev->dev,
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
