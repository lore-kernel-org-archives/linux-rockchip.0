Return-Path: <SRS0=S7g1=N4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BE9C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Sep 2021 19:52:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D2A261050
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Sep 2021 19:52:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6D2A261050
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Cc:MIME-Version:Message-Id:Date
	:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dbf9CVY1ZHX1WtMSFYeI4rrZOQq2gZzBtJxcAKCrdh8=; b=DVUMvbhzEOXxah
	4AnkZczzSjtEC+WnjgE79xtBVSLFMtjw1GJJcyGZgceWysWPaL1OFDM+dcUA792YJlQqGcPSBqxqw
	+MvBk0v7aCcWgVRKreu+oRQSkbULSwOguN7/cd2l3ekNQSG/lAdyoLUpQonO8XBpl/u3R6MW1l0s0
	JdxwvYNyTKQEademMQBi5Pp3xjZJ8SJtFdJJdzTAT2b1Vnj0+r9xaXmTXhKc5vlGKIGIvJVFqIiFu
	UvYsGWrrDI/zxbsJGUfnWfm9K0HHjl0PnnYTReW/T1ewAjU8k319iv5fTgN7/CvQ0c6zHeb1aRQTS
	ZXQEikCgwrbOS5NTbNqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNKf5-001otY-Ex; Mon, 06 Sep 2021 19:52:11 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNKf2-001osk-0d
 for linux-rockchip@lists.infradead.org; Mon, 06 Sep 2021 19:52:09 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id a5so4557046qvq.0
 for <linux-rockchip@lists.infradead.org>; Mon, 06 Sep 2021 12:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to; bh=/HWCAki5G+lVbiHxWhcyDiqEfC+VEd9DkU7YY2YmJIE=;
 b=mEMfKCujdhFTd1UNMLYapbDASirmCMlcWBmAG+ICS1uHk9R14HJqkGrlQUPsRRI25u
 P0Zdf7eVspSFnAUulxZHC+nvRVxMvW//gGUBb8CUDuNmC2IFXxxn4vvlJ4V7z+doCXGg
 vlSfvWDj58XD4pjDO+DUegyIt4r6BzyrwM+K4+zeQYwEZCIqNuVJ4NuAX8dsujwTTabb
 kBNFqmzIhkNJK4n5NBMhrYpZovE4ssULYobKDasABMNlf/QYd3Eg3jurWNGYB55wd8H3
 yhAgSIZarxCVlXOwMuS9r5YRoNF8jqkbXRTKaQ3kQa+ZKGBUEnuYQ1rCcS/LoRLe7gxB
 Xfbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=/HWCAki5G+lVbiHxWhcyDiqEfC+VEd9DkU7YY2YmJIE=;
 b=kystYXxRf93iJmBotx7PDFWLuT4Aiq/P6cFbVQNLo/ovCulMj/XyK3zc45XCAY4jJ5
 Z/zil/Z11L51lgxRXqBFORWlIEgiAQNqRCvsDKQbKqzu27WHrMheFYMaCTN9p6fupvlc
 es+yeLwH/oBXSmhO+0Dsy8QY/CDOXNlZwLEY9l2slLCNh68lhCWLdOsgkv+6O9O+v2Bd
 SlaJJ95dAbmWeCc+G+pGLKYJQ+SQR0rsFegXaiEvGPNMBddJsvQQzigtXaNXUphBns88
 XWvcawO4rfNkD6/Jzs2eaMaoE0pzRhW81pzWHttldKX0YlbMsJc0Dkn49aSMwcJ46a0I
 T2fA==
X-Gm-Message-State: AOAM531Kcsd1RK5yKPxoNZtOwdCyB0Tq0jdFMRkGl+tWxadVGRmJeKdT
 0YJayjZNYj3HKfuAqb0Tq1LgCg==
X-Google-Smtp-Source: ABdhPJxkMdyPqihtMbecIkVh3QvlQZ6CM5K9jNcXKt6Os+i9+qJJSTCujwN5BKXl3Q+du82VzB6IjA==
X-Received: by 2002:a0c:b293:: with SMTP id r19mr6066662qve.19.1630957925669; 
 Mon, 06 Sep 2021 12:52:05 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id m5sm7280699qkn.33.2021.09.06.12.52.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Sep 2021 12:52:04 -0700 (PDT)
Subject: [PATCH RESEND] drm/rockchip: cdn-dp-core: Fix cdn_dp_resume unused
 warning
Date: Mon,  6 Sep 2021 12:49:18 -0700
Message-Id: <20210906194917.376116-1-palmer@dabbelt.com>
X-Mailer: git-send-email 2.33.0.153.gba50c8fa24-goog
MIME-Version: 1.0
Cc: airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, 
 kernel-team@android.com, Palmer Dabbelt <palmerdabbelt@google.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: hjc@rock-chips.com, heiko@sntech.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210906_125208_147910_8EE66435 
X-CRM114-Status: GOOD (  14.24  )
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

From: Palmer Dabbelt <palmerdabbelt@google.com>

cdn_dp_resume is only used under PM_SLEEP, and now that it's static an
unused function warning is triggered undner !PM_SLEEP.  This
conditionally enables the function to avoid the warning.

Fixes: 7c49abb4c2f8 ("drm/rockchip: cdn-dp-core: Make cdn_dp_core_suspend/resume static")
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
I sent this one out in January, but it looks like it got lost in the shuffle.
I'm getting this on a RISC-V allmodconfig now.
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index 8ab3247dbc4a..bee0f2d2a9be 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -1123,6 +1123,7 @@ static int cdn_dp_suspend(struct device *dev)
 	return ret;
 }
 
+#ifdef CONFIG_PM_SLEEP
 static int cdn_dp_resume(struct device *dev)
 {
 	struct cdn_dp_device *dp = dev_get_drvdata(dev);
@@ -1135,6 +1136,7 @@ static int cdn_dp_resume(struct device *dev)
 
 	return 0;
 }
+#endif
 
 static int cdn_dp_probe(struct platform_device *pdev)
 {
-- 
2.33.0.153.gba50c8fa24-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
