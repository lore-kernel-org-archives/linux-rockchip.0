Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D39EC47094
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 19:09:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0740F61130
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 19:09:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0740F61130
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0OTKxuqvuJwltut7VnygIP1onICpZJY02RRZ/ZFkmw0=; b=C2xd1y5EP56qM7
	wr09AnAkBiawrwfnCMh8Mbi48vlKC2SC0NxTFNvwAoRiKs1KUmysbt14XB9xKiyiQrHdEJ2toxpxQ
	pbTsu+IqygJFXxBepP42sa8/g9uvYHwEL50ZqKez2DIyNB59Cko1/60BxSM1uh8vqnTwKz9wn9jzE
	6FRLGytksQrdphkgWI9MUJ+BNuuYaGXycJXp8lKzZZLbyltGA3vGSxaiGHKMUz6DKZwXtORukVY66
	eh5IkRBDJTFnXgRuqfmXZwdZt2NOSwu/ioE0fqSe0cbvrPgpDwNgZUPzDD5Az4UHnzoOIL29uW4RD
	5XfR/lVujGbMAVNHADEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqKcs-0059on-CL; Mon, 07 Jun 2021 19:09:30 +0000
Received: from mail-pl1-f173.google.com ([209.85.214.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqKce-0059md-Al; Mon, 07 Jun 2021 19:09:17 +0000
Received: by mail-pl1-f173.google.com with SMTP id e7so9259417plj.7;
 Mon, 07 Jun 2021 12:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9FzXIDnzKXRSrBY8Kk8hJH7reALJLs5lmYw6nUaN5uc=;
 b=t+W6xrNNSjfNOCvYsUQEVXevI7eJShRDECWAbs1R/BLAVY7EagUS1iKwYvm7b0WGiv
 dMiKzZPgWq+qHj30En2acgVajhuR7W+4xbwBkfnRjutecmsVPMRtRQxYMGK/zRxzz7w/
 /H8ElvbZssb7d9PdDeUPK4hDApDfyWSFBEpL5G96l4Izy/GiERnZ6KCk6sftRXt/5fjf
 7/tF/heBi8mM4YY6vyruyl/svuMdbQJspgPOVNb8q7pRWwEtyZvp8b3SJNbxyuxvG8P2
 DqxsomQNaPgULs5kkEyeMpqj+FOD8p0VpQAU8RowUegwiUbwfWUbKQBt05NNby2HcKIq
 0vuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9FzXIDnzKXRSrBY8Kk8hJH7reALJLs5lmYw6nUaN5uc=;
 b=Zxxiy+U4WGnMWTx8gZhMjljON0X55e0elWG3kJoAJ2CY2r52t5OBZgkmrrz1C/HgGW
 fqq1AdGv+yFPGqDyVmaVeaE0YFVacw9wEzh4UnG/X/JnL/76NqNes/CATx/4dJotU2GP
 bxKxHcH7539mu65M/u27O9fAg3UWZ9DA7z9BJqDFi/KbBotjRf7oa8sX1BElauEb8QeJ
 O8OcpbIwlxJ10J9SVctu9b8wpHdmoXXFMKS4c4ELgHwY/AFc5cz9Gq8qwEIMYpqhXHQ/
 JdyYKsF3RLpIFsaz73OHNtYB3mn3wkR6rIPmTVvyrcSF10x5bIgqhBs5asPKhwt/MX0M
 Yv0g==
X-Gm-Message-State: AOAM532fMP2wip+yJvkkB3NA9nV/jZDYU+bqHU2iEu67oBLFh9sCtTSz
 Px8ADr6AQOyIjBRHHctBLmU=
X-Google-Smtp-Source: ABdhPJwDxcNV9QzGcvVYMSqvZD5/AXHA6iscVWHj+JEY65hjgA3g3ZzFMc6bqEz+LF3TW+VyFm0RIA==
X-Received: by 2002:a17:902:8a83:b029:10f:45c4:b435 with SMTP id
 p3-20020a1709028a83b029010f45c4b435mr18173780plo.17.1623092894407; 
 Mon, 07 Jun 2021 12:08:14 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:9005:8001:a09b:9c7c:331d:38fe])
 by smtp.gmail.com with ESMTPSA id s22sm8588876pfe.208.2021.06.07.12.08.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Jun 2021 12:08:13 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	airlied@linux.ie,
	daniel@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Souptick Joarder <jrdr.linux@gmail.com>, kernel test robot <lkp@intel.com>,
 Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] drm/rockchip: remove of_match_ptr() from vop_driver_dt_match
Date: Tue,  8 Jun 2021 00:38:00 +0530
Message-Id: <20210607190800.3992-1-jrdr.linux@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_120916_384020_304B1EFC 
X-CRM114-Status: GOOD (  12.13  )
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

kernel test robot throws warning when CONFIG_OF not set.

>> drivers/gpu/drm/rockchip/rockchip_vop_reg.c:1038:34:
warning: unused variable 'vop_driver_dt_match' [-Wunused-const-variable]
   static const struct of_device_id vop_driver_dt_match[] = {

Fixed it by removing of_match_ptr().

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
Cc: Robin Murphy <robin.murphy@arm.com>
---
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index ca7cc82125cb..1f7353f0684a 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -1124,6 +1124,6 @@ struct platform_driver vop_platform_driver = {
 	.remove = vop_remove,
 	.driver = {
 		.name = "rockchip-vop",
-		.of_match_table = of_match_ptr(vop_driver_dt_match),
+		.of_match_table = vop_driver_dt_match,
 	},
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
