Return-Path: <SRS0=ouUy=OB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE37C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Sep 2021 03:49:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8E50461212
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Sep 2021 03:49:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8E50461212
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Cc:MIME-Version:Message-Id:Date
	:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FPfFt0WxjnZzKTRTbZZeGkzVC7Y/T0ngzlKVGLMTrSs=; b=sNS3mxC2VnW/J5
	yCQ7RMGdYJc6IDqGawa531SQVq3gsZChzbW/bh3QXbWFyDGtV3fSKjlZ4t8FnWf2B8DUyOqEATf71
	znNSLjR1lg+zhSp6EVAL0046DfTpaLFe8o9+ue2fX6LwG3VKHVxOfnQEiv/J2u01SSQjuvNnGLQD7
	SNFLlk6XXyeZrED538YlgVDBwDJTQMTRX6kwyaQFbpGDUDc+6EZwmJ1SWAjIPOpZdviqJ0t7M9by2
	wmnsfRVt0jnplfFbE1Y2a+KJIoP+brSH6Z5sF2k/ByEmUZ8WNqqMETOBd6ep4109O2Z/7bZMoligL
	lSEnk0HzbW7fptgdALug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOu0r-00EDze-5X; Sat, 11 Sep 2021 03:49:09 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOu0o-00EDyg-B6
 for linux-rockchip@lists.infradead.org; Sat, 11 Sep 2021 03:49:08 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d17so2372930plr.12
 for <linux-rockchip@lists.infradead.org>; Fri, 10 Sep 2021 20:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to; bh=DzaIdSdfFubKopkCOrptYgOiLd7HKVfZtJyuoqzoNt8=;
 b=C8UBBiko8kEn/wSOUZVcwwN7OH6XGDrT1X48dR7/CZ7kTBkVKWQu5rR/jHct9gqFnU
 h/gmZWSW2MGUKMqlW7/AA/WhBbDPTc3n1mKjHYCPYj2+0f8ffubhgbjvujGkWobH/uAl
 ATnCNhGYlbPR0TLuymKV1KyJIfIN5aJ8Ry+iBkaO7AtYTR6hnZTJ4Dbi0Rf83N62Y+bi
 eEemDpRXY2M7PQaHc1HZ17clcosVJFGZg76MRO/QeF0F+z2L2QqOo9aQB/qkJn5ctKC9
 plth2//1t4vWhVWIdxFprrxCz92FN+zRf4bNKfPudl2oeQSiLHus29sp6gNmLY7+7jNz
 lJHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=DzaIdSdfFubKopkCOrptYgOiLd7HKVfZtJyuoqzoNt8=;
 b=ULmeroAmVGVsHDIPUrl+3MZYgE0nRpPR2Cc0onVAWnsAtVj2cr6Kg745uGC+rQcHJW
 pFg6XDj5rbEk+YJPz0x3N2Q1dqQEuxtl+kJU3WqhC2kQrLkOanmcTBDo8vKmGwS3uPwP
 aL5UEhZV8Mr3KdCzUQ22akFJjTY6OPMOPcl9rD1qUWetEd3PcNRLZ2pn8mqJy4lSJvfY
 8TieLhTmkHUToUSeL0tu+ONYYJsjAtzMg+qAzCQUUVUyYUHaZO0jZJ3R0YO8pJ7AyqwJ
 uyMju/Lqcy8VDTyvnIe5VZkJ8aWFtCGWEY8bOxSM6pq0TPGs0PNRqqK5Lgni24GZEvfs
 AQNg==
X-Gm-Message-State: AOAM53118dda82gPlDT4Phyb08LmPg7iLiW08M+id7N+ifMj/iKBXKMb
 6a22jnS5XR4rwGCV8hoTAMn8Mg==
X-Google-Smtp-Source: ABdhPJwvLN8bfHfGluy9Iw3pbtnJt2AuK5+jLiz6yCRmD84GF/OziqDW9kPdqQEWqXQfc8FHYONa2g==
X-Received: by 2002:a17:90a:da02:: with SMTP id
 e2mr1051170pjv.89.1631332144742; 
 Fri, 10 Sep 2021 20:49:04 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id n1sm301315pfv.209.2021.09.10.20.49.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 20:49:04 -0700 (PDT)
Subject: [PATCH v2] drm/rockchip: cdn-dp-core: Fix cdn_dp_resume unused warning
Date: Fri, 10 Sep 2021 20:43:18 -0700
Message-Id: <20210911034317.1719619-1-palmer@dabbelt.com>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
MIME-Version: 1.0
Cc: airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, 
 kernel-team@android.com, Palmer Dabbelt <palmerdabbelt@google.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: hjc@rock-chips.com, heiko@sntech.de, Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210910_204906_476570_97BE9960 
X-CRM114-Status: GOOD (  14.25  )
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
unused function warning is triggered undner !PM_SLEEP.  This marks the
function as possibly unused, to avoid triggering compiler warnings.

Fixes: 7c49abb4c2f8 ("drm/rockchip: cdn-dp-core: Make cdn_dp_core_suspend/resume static")
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
This is breaking my builds and looks like it'll land after -rc1, so I've put it
on a shared tag for-rockchip-cdn_dp_resume-v2 which will let me pull it in to
my fixes.  LMK if you guys want me to send this up on my own, but I'm assuming
that the drm/rockchip folks will handle it.
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index 8ab3247dbc4a..13c6b857158f 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -1123,7 +1123,7 @@ static int cdn_dp_suspend(struct device *dev)
 	return ret;
 }
 
-static int cdn_dp_resume(struct device *dev)
+static __maybe_unused int cdn_dp_resume(struct device *dev)
 {
 	struct cdn_dp_device *dp = dev_get_drvdata(dev);
 
-- 
2.33.0.309.g3052b89438-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
