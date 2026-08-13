Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74C2BC5DF67
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2026 14:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WE+UsZKQ2dAN5SFKcgCQkOzTqF+pD3gfXrZFZTmv9eA=; b=lAB8e5DiN8VhIA
	DgnOgu28NzImFwHjdURmgpLxds/vgdmOn6o5JNfgOU8jaR9txuUkZc/f4SqBcGXG8pe+lpRF23ZEw
	GyjeawC8lh6kEW6VS7qMwpOC+kuGwzgEtZ5Eg/TPzAd/aHhEihnZJZWfPvuxciRdqulY4+LAjimum
	ph62cX6dapHBdLGu2alpuJ+6Pue43dV3W4dci5NFinaCyCoC+w53nNoQfI5/upxzQbohWj2lnp49C
	6vzzeXPRaFKApd3JlKcj/lX8ZAn7zixwLk1SZrzVzL7RvD9CynXjNa83EZQ1ZM9t6rK9F5vbZelye
	9szIvw0EThx8FAucQKRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuWc9-00000000rOn-0umm;
	Thu, 13 Aug 2026 14:41:01 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuWc5-00000000rLI-0D7R
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Aug 2026 14:40:58 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-49987367394so5165e9.0
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Aug 2026 07:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786632055; x=1787236855; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4182N1qJg8wcsdY0I1VphGRMJvbBfDpbj3gNAH48eMo=;
        b=WDCNItftxIB39lQqMVQ92Ud7HaxYZnTjlClEUodUqbWjcN7AdZy1DcvL0lfr8jjpfL
         nDdEOp1DOV1W6TV/4P75J7J7G2gtuAVjNLV5Q+1tl5yPaDU1bI0+smTKQzopX5N08KOM
         co+ukoq3yhIIejO8oUz4lycoSoDDWHLla/7RUFPyl2PnZFyoCSTLH9sP9+oqdFnYCh9k
         4sny52JDCnLXLpJbGcH70qHvq9BQ55jYLtHUF9QqINZ3bt8iFa0mgV0fQhgIM1wYzcNW
         T+TnEWu5eGAIKFEN3uCifjwwO4RZwmMGtE7sj6TuoQyRcFVa40bTDMlW7C3dFyAvsTGm
         j9wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786632055; x=1787236855;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=4182N1qJg8wcsdY0I1VphGRMJvbBfDpbj3gNAH48eMo=;
        b=MrAYWLI0rTO5ckK7wSRkbm1Y+0dqIfl6JYbXlcOxqXGMSXZCTrX4SxYXWJHYygj3+W
         L+cZ0HtvB5vzoAtR27El/4LMIMJJJqanZCMvKT8PVIdstKrwNrQnWb8JG4H6tWdm3yTj
         Kc5J1W0M76kmT0XLBkzqBjoXmNLHRs4tgQ80B+dlovkayUDuZHQvrkdcfWyunOYmgXNc
         OW6vUlZKST+G4prnazLlM7L+1pA+2Oxbbr2T94tm+BP9a0PPHQfEvRP3x56IzX0KIjuU
         2PPWVC22tKyVev/e2f9/kPhgHsk7rAh5Sy15vZQXsQ7IxPnBhxDH2gzFs1hnSy+kK5eL
         OjdA==
X-Forwarded-Encrypted: i=1; AHgh+RqPj9WFuND6EX79WarF8mhG1mBrzwnATlHur8Umu3auitEtAlX4Wy6dhT4rloBAVn7+SBhsbutlKqmD9vq4uA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzK59YDHKM6ZG5XypREhDSYi/XuJHvB05ynvM1L88iGI75J8gwr
	HET2sPhh0E1BNHPIEEK5agFNWcadt2IAZkcoaUX1HUFu0Fa0nr0mIY/MIE2Oy4na
X-Gm-Gg: AR+sD11BFeItWJzch8ZifKiJxmza4DEAtc7Qz1sLToWkGF5WeyCie3gt1YZTwCS+Du5
	hC0xTe0QZBNla6x6uWnAfMP6RLmxUWc3k5Zx+ylX4a0A+7MXvZHRFO6WDhHIK85pogyHDR9YGzd
	rDCfekGWb1sG8/LVkZJI8UmBJPbZwIp88KNki2Z/mfSgFbvMcdJEm8f3E7dglcTbErxmB6cha0K
	4qu+tSmPz+qsYGGyDQ4KXYPP+E/s+PelkjunvFQ0ZgOaNRFWQ/aXgf0URUCQDnPj+SiR/UATHBo
	hdLsvCxpoTr9qGHtQwhC81dPIZbm573IBqaIPkDQnsUpLYFZkcfz/D0od+lxj8RggqIwPeqc1tY
	Le4DcEzgBd097e+pC1eHEzbZtome04GuaijrO/Mb6HBGJ/4IT8u2JTLA/sdnwTi0t6gFmPY+T4Q
	C7ecxCt3YUy9oNOfFrpoKB9DliJssFV+0qXaxwPdZlA2hzTyOc+NbG29znKsUsJxmzlmap6is/R
	CB79L71YWoBblcEUSe4lgyc59ucw19BXH4Hae094cPeLthaf9itsioQzbOdGecU0oY2kg==
X-Received: by 2002:a05:600c:4513:b0:499:5b0f:72b with SMTP id 5b1f17b1804b1-499821aa11emr43142705e9.1.1786632055178;
        Thu, 13 Aug 2026 07:40:55 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B911C00AE6C52CFC8961284.dsl.pool.telekom.hu. [2001:4c4e:1b91:1c00:ae6c:52cf:c896:1284])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49981b58700sm66426445e9.9.2026.08.13.07.40.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Aug 2026 07:40:54 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Marius Dinu <m95d+git@psihoexpert.ro>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH 2/2] drm/rockchip: rk3066_hdmi: Add missing Kconfig selects
Date: Thu, 13 Aug 2026 16:40:19 +0200
Message-ID: <20260813144019.12089-3-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260813144019.12089-1-royalnet026@gmail.com>
References: <20260813144019.12089-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_074057_094562_23463DF9 
X-CRM114-Status: GOOD (  10.37  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

rk3066_hdmi.c calls drm_bridge_connector_init(), but
ROCKCHIP_RK3066_HDMI selects neither DRM_BRIDGE_CONNECTOR nor
DRM_DISPLAY_HELPER, whose module carries the bridge-connector code. A
configuration with ROCKCHIP_RK3066_HDMI as the only enabled Rockchip
output option fails to link:

  aarch64-linux-gnu-ld: drivers/gpu/drm/rockchip/rk3066_hdmi.o: in function `rk3066_hdmi_bind':
  rk3066_hdmi.c:(.text+0x7a4): undefined reference to `drm_bridge_connector_init'
  aarch64-linux-gnu-ld: drivers/gpu/drm/rockchip/rk3066_hdmi.o: in function `rk3066_hdmi_bridge_atomic_enable':
  rk3066_hdmi.c:(.text+0xe74): undefined reference to `drm_atomic_helper_connector_hdmi_update_infoframes'

Select both, like ROCKCHIP_CDN_DP, ROCKCHIP_LVDS and ROCKCHIP_RGB do.
DRM_BRIDGE_CONNECTOR in turn selects DRM_DISPLAY_HDMI_STATE_HELPER,
which resolves the second symbol.

Fixes: 57d6811e8a6d ("drm/rockchip: rk3066_hdmi: switch to drm bridge")
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
 drivers/gpu/drm/rockchip/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 697c0748eeca..4e58685f58ff 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -146,6 +146,8 @@ config ROCKCHIP_RGB
 config ROCKCHIP_RK3066_HDMI
 	bool "Rockchip specific extensions for RK3066 HDMI"
 	depends on DRM_ROCKCHIP
+	select DRM_DISPLAY_HELPER
+	select DRM_BRIDGE_CONNECTOR
 	help
 	  This selects support for Rockchip SoC specific extensions
 	  for the RK3066 HDMI driver. If you want to enable
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
