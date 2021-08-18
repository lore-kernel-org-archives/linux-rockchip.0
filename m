Return-Path: <SRS0=TfDj=NJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F7EBC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 12:42:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F1A8D61051
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 12:42:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F1A8D61051
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEjNWX9/wgFG3DWqrhT3o0ImUxLGjGZul/iMcutwwxU=; b=pxEGWGMH3oY+c+
	LVvjCB8p1l6L8Fip6FEfGS1jfB25WK9y5EmG5oE6OYWPQsoDVJwzIt83uJxcdCz/CNp+k/FUDkWXr
	Od8WAG1oTBrolrF57U3axgdcm4nGPuANf/GeOWz1WJD/DMvkti+W9nXYujx4hYctpjobZEVhARk+a
	eiry5NMydDkDxKyCtIUDlR6pkeYywmyYKiGjVj1c2h9mMqQufxkCmoq1c75peAs+3ekaxwSSPorXQ
	+DGDO5c7HcQv1g9PU961fiMcP7eXGZGyrYWXoNiXSR0sE1c/jW1BbO/HFXY1+KaXmJ7VlsZeVK0SU
	11O13LXRnVzCoiD5ttGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGKtc-005XRP-V7; Wed, 18 Aug 2021 12:42:17 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGKsq-005X97-7X; Wed, 18 Aug 2021 12:41:29 +0000
Received: by mail-wm1-x32e.google.com with SMTP id f10so1550516wml.2;
 Wed, 18 Aug 2021 05:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=REhMgVT+6ZjXEXXRs/yP5w88X232Fgpi2cGGVzDaXxE=;
 b=AdNRdIv77OE3YAdMkK2k6amx6PN8Ganr5o8QZM+19FIK6391iIU8yVSNCBUdp527hp
 4iGc0rBpFLJg8fw+C62V7NW1pxlL7O4a3r0TEqppoBxEPD4Pu5Z6ytnAGbol2UnsI/Wr
 vS5q54Zp69IB/88rn0zq8NOTbDUmFN1ns0oe5daUrJXIpKc0qDWOjrq+xCytz3le/3eX
 tiSOZRWS0maQC6YR/CfoWE1ytIJ2nnpsv/faO4q9BzpzeZ1wjTPdkwZB4Amj5Akc6r4O
 u5EpOe5I2ibte9oHuOPMCLKZ1+WBpDBGszOhkO/5x4yr2EJi6repnf0SjYsRMQI6tHuJ
 AlJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=REhMgVT+6ZjXEXXRs/yP5w88X232Fgpi2cGGVzDaXxE=;
 b=V0ulJKQ33xteVDGbb4hih0byPCTvd+81PTtxEjpdeFJzH5OkKyvc5FKzpxnVO6VC0k
 MxOCfsVTfziHe90p5+zDgrLsxK1MTjGg27w9r11AA4eg8D9s3Uep5ZFqdnnALg3U7Gzb
 19HDwdb0IMmaoxLmKvaArKiFH+kM5bu2SbR2mPfkXHqEcRjU+xklKqUyIgBWUW43WZci
 zJPD4eA3sWu3tqV24o8gRU8FIpSctZAYDRYiFxLorT2evLDgy+J4Uv5dYXNoti020rx3
 PlGfZBf75sv8Q6LxYyUPfpiK8KC/KvIFsUoLmFJew1rAph74f/FwQM67sAmXV09tzMF3
 gkmg==
X-Gm-Message-State: AOAM531IQLg8dDwi+/a4MOVxlnCYshyu0LIJQnJEJHU/WY9f+MFTtrcj
 lJRwil/M9Rqs6Oo/6/+7Y6c=
X-Google-Smtp-Source: ABdhPJyLjuqtTOZTR24aWisJ8tiRhVF/w2xm59RHeKTRwyZmJd/LAAzH/sJIPkjeU3aMqeJSdVDmGQ==
X-Received: by 2002:a05:600c:2147:: with SMTP id
 v7mr8099425wml.124.1629290486739; 
 Wed, 18 Aug 2021 05:41:26 -0700 (PDT)
Received: from localhost.localdomain (arl-84-90-178-246.netvisao.pt.
 [84.90.178.246])
 by smtp.gmail.com with ESMTPSA id a11sm5720454wrq.6.2021.08.18.05.41.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 05:41:26 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Emma Anholt <emma@anholt.net>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Arnd Bergmann <arnd@arndb.de>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH 3/5] drm: v3d: correct reference to config ARCH_BRCMSTB
Date: Wed, 18 Aug 2021 14:41:12 +0200
Message-Id: <20210818124114.28545-4-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210818124114.28545-1-lukas.bulwahn@gmail.com>
References: <20210818124114.28545-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_054128_321187_BD0094EA 
X-CRM114-Status: GOOD (  13.66  )
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

Commit 57692c94dcbe ("drm/v3d: Introduce a new DRM driver for Broadcom V3D
V3.x+") adds the config DRM_V3D, which depends on "ARCH_BCMSTB".

Although, a bit confusing: all Broadcom architectures in
./arch/arm/mach-bcm/Kconfig have the prefix "ARCH_BCM", except for
ARCH_BRCMSTB, i.e., the config for Broadcom BCM7XXX based boards.

So, correct the reference ARCH_BCMSTB to the intended ARCH_BRCMSTB.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
 drivers/gpu/drm/v3d/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/v3d/Kconfig b/drivers/gpu/drm/v3d/Kconfig
index 9a5c44606337..e973ec487484 100644
--- a/drivers/gpu/drm/v3d/Kconfig
+++ b/drivers/gpu/drm/v3d/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config DRM_V3D
 	tristate "Broadcom V3D 3.x and newer"
-	depends on ARCH_BCM || ARCH_BCMSTB || COMPILE_TEST
+	depends on ARCH_BCM || ARCH_BRCMSTB || COMPILE_TEST
 	depends on DRM
 	depends on COMMON_CLK
 	depends on MMU
-- 
2.26.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
