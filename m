Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71E61C5DF64
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2026 14:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKHLdr8/Inw6BiCtbiwjdETlTsmUT3NldAeMCofcplI=; b=xi6JyqImLr74OT
	6IdmcnYOxQVSadqdndAEOkN8AOD4dO56TIQIM4kl4nD/PjL5m+/NFvP+LDuIZTD4GDYqo+A+b6G7i
	GIsC8Vc+TFi2B7bnkZDgxN82FvklzKJ5v+CEucqOEv0FwGqUSJhi6Dve1tZHNvr0+rzzJmjay0H8g
	fHpwz1Pv3a/kukNq5H8tBP1cCy19bqlccvEbDdUa+AS+4t4FAKeS3zdkfmznXkJO9uzmzdd2Mo49g
	oBHLBjh4xm/TlNcg5gVOUA3b9bD1TNYMMXSh6xKd0elD7d1kvUJfJ/oPsTGEA2yJ18WRpuiW8bj7L
	rO9ex9YWNtS7nlPP6OAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuWc6-00000000rN6-3LFY;
	Thu, 13 Aug 2026 14:40:58 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuWc3-00000000rKD-2aHh
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Aug 2026 14:40:57 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-495773ee3edso1793285e9.3
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Aug 2026 07:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786632054; x=1787236854; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rW6YbGwCwODCemZSHGPE83tUot0DKF5hC6yD4MR3y14=;
        b=paz810gp9e7mSkPP5s9pnX4ffC+DKgCYyXifqbBDZcAIqWuEUOtzJA8D/m3Eg+dD+2
         S1tYiZzSUEk9PcSzWhSiop6m9ywGcyrhbuQxTqsX32v+x2oV/O8clWVJM+2XpEUfhyLx
         bZcnuYQe5ezmrRme1FSKQs+W6+BcioRwV2l5bcQceKlkbhJCSxmVXahyNLzb+NVMJp6c
         ZjONEb93g0hkmt1kzOJSGe/xLfKWoSNyZiXGdCxU/z0EX/RovFqMqr7fjSOfHuYWFIOl
         CRAw0V5Kaj8hcMIYVDCzIObv/tZg35fjnhyPPlCo2uXpELG2JcJh1pVjkEyaBCBlJ3UA
         bagQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786632054; x=1787236854;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=rW6YbGwCwODCemZSHGPE83tUot0DKF5hC6yD4MR3y14=;
        b=ZG+V8K89nmeR7X24rx1XwP4Z32ZQA7hH9TJCDNb8dY0/PSAPkxixs7oYj8wlonPAJU
         PAGm/X2Q0+IjrR18WqLCAwW7GCMpRSNY2g1qjjVG6Xr2BJu5Ak0/I2p048uya7Wmucnc
         iqzOOilt+E6cFGH4YdO5c31c15cQ7F4csNNM93uOj7bPvt1IYF3FDDATehBfgfPI4mz6
         euX/ZQONUxLgf0r/lHdhDOIje5XPWNjBIZ40EFYwKj0l1JS5d5IC//cVIQ2V8qBdhOkB
         mvKjnbWyNAvE2WJwF2WvocD7OTXPA7vfY3RJa8X+8KSgYLEB63CQx3MVVRy+8SLN2TnP
         H1zQ==
X-Forwarded-Encrypted: i=1; AHgh+RrBJTJsGkfheNfqWc3XgP0yNXIc0zG0Zrjhc8kxuFApcN/AhGNT74A1B4abNucGQJhUoYoIdLhBAmmro3v8yA==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywq8R98tb6D4rSiFc8x37PhAC/Vb9ZDxMThhYlH/Tu8AiEPY9h4
	mXlqrEO+2PAWWxY8cwLcKEH96zllHNR7cYBXM1+ryG6AklfmD6FdSYma55/Wnwso
X-Gm-Gg: AR+sD126cRYgUGd1BADKyfwxiYYKAcWJTjGLCKtPjFBlSaAoV7y3zK9VMz+7GDZ0tkM
	ryvy/OCzAG9LIg4YzkSNUP6+RELQrwLW8cJmPcFGhZeR1UgrDHRxwKEESLWRafhgivBKDOnQSX6
	BO/XamSIB1t39K5v+ZActSWczzrJ+lceHkSB9hqDjktrsgUMIY2aqJL29+NZaG1tgi/9xlF2/YU
	u7mVtEIkZ120M2H2uCL1CT/jQ31+UMlG7YX/OzVFWUk7mlH1NAdzGBbnqL0NvBNjuCd3OgQ23CW
	mzmMpNHIyU1QVwhEaeKzBMnuKinXW8s2zct/teusa/w3MP/ENjwN9nuwtIEzbaZBBCKRaynmH3c
	L00GNPLQpNpRDBievtzGAtTeNsjd6Qxf6EUUkY+AEp3aOkdPzqi6z0hJACzdYYYCNPkhQbppoKY
	MmeTCyI0Jr0iawoIzqh3J12pkD4U1/rEnEZcoQVnFXUbKtR1jV3ReMLtbsNj292bSK/BS5YarNn
	xbn+uVlfk4Y1qozli1mvnIbiTiakL2NX9k4GPuVBgLp6/M1u82aPviwXlwisx4hedQQVQ==
X-Received: by 2002:a05:600c:4443:b0:499:73ca:c419 with SMTP id 5b1f17b1804b1-4998265873cmr41318505e9.4.1786632053713;
        Thu, 13 Aug 2026 07:40:53 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B911C00AE6C52CFC8961284.dsl.pool.telekom.hu. [2001:4c4e:1b91:1c00:ae6c:52cf:c896:1284])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49981b58700sm66426445e9.9.2026.08.13.07.40.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Aug 2026 07:40:53 -0700 (PDT)
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
Subject: [PATCH 1/2] drm/rockchip: dw_dp: Select DRM_BRIDGE_CONNECTOR
Date: Thu, 13 Aug 2026 16:40:18 +0200
Message-ID: <20260813144019.12089-2-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260813144019.12089-1-royalnet026@gmail.com>
References: <20260813144019.12089-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_074055_668323_4FF7DFD1 
X-CRM114-Status: GOOD (  10.96  )
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

dw_dp-rockchip.c calls drm_bridge_connector_init(), but ROCKCHIP_DW_DP
does not select DRM_BRIDGE_CONNECTOR. A configuration with
ROCKCHIP_DW_DP as the only enabled Rockchip output option fails to
link:

  aarch64-linux-gnu-ld: drivers/gpu/drm/rockchip/dw_dp-rockchip.o: in function `dw_dp_rockchip_bind':
  dw_dp-rockchip.c:(.text+0x1d4): undefined reference to `drm_bridge_connector_init'

Five other Rockchip encoder options that call
drm_bridge_connector_init() (ROCKCHIP_ANALOGIX_DP, ROCKCHIP_CDN_DP,
ROCKCHIP_DW_HDMI_QP, ROCKCHIP_LVDS, ROCKCHIP_RGB) already select it,
which masks the gap in any configuration that enables one of them.
ROCKCHIP_INNO_HDMI is covered through its DRM_INNO_HDMI core option.

The same change was posted by Marius Dinu in March and dropped when
the failure stopped reproducing in his build. The failure is
configuration-dependent - any other enabled option that selects
DRM_BRIDGE_CONNECTOR hides it - and it still reproduces on current
drm-misc-next with the configuration described above.

Select DRM_BRIDGE_CONNECTOR like the other users do.

Fixes: d68ba7bac955 ("drm/rockchip: Add RK3588 DPTX output support")
Link: https://lore.kernel.org/r/aneNCDU12OzG99UX@venus # ack to handle this apart from the dw-dp series
Link: https://lore.kernel.org/r/20260319155051.1944-1-m95d+git@psihoexpert.ro # earlier submission by Marius Dinu
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
 drivers/gpu/drm/rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index e7f49fe845ea..697c0748eeca 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -68,6 +68,7 @@ config ROCKCHIP_CDN_DP
 
 config ROCKCHIP_DW_DP
 	bool "Rockchip specific extensions for Synopsys DW DP"
+	select DRM_BRIDGE_CONNECTOR
 	help
 	  This selects support for Rockchip SoC specific extensions
 	  to enable Synopsys DesignWare Cores based DisplayPort transmit
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
