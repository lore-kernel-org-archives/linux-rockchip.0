Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEF99C10F05
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 12:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKKV3wAADEtiHmBuSortRggkiPcOQF3gH8vYLneLgn4=; b=P5QN49Hral+v3U
	ihpdHPNjtPM08yn6141txFPfXzXnZyDXiO45YSNt6XuRPMy3HjIBOyu9C4l/fGZz9UWRygHU7mJNC
	X3CBxV7SAhQ76VD8fmIetArWhq4dOnV2k4rpYbiSftqlvgcK9tRgPIBwFh4gB0HacUnZM02Z7YWk7
	2yrV6Fz0WTelQRckcClBW47KzHxZ+oiCQTpmrBFWDeftGFq9xDwNtLhS1h6Ep90BsYOjyhW7NhzzE
	s6pNOwd8Avx62IJbQz93UhgLLd0l8vzFux4oQFNvkPWvmRM5ENJXTU7x3SseZjOElalldoY0c6A0A
	BcDpBQCvWNAULIpFl3DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PTa-00Fhvb-2y;
	Sat, 02 Dec 2023 12:52:06 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PTY-00FhtX-0J;
	Sat, 02 Dec 2023 12:52:05 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40b552deba0so32601355e9.1;
        Sat, 02 Dec 2023 04:52:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701521520; x=1702126320; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZZ7Vk4rlYI4wpR0DprPRhwDbWK92/MFMHHXtx/iHz6w=;
        b=fbLxV5PL/6GyUySrm+K0d3HC7MTQMnytUdTCOBd1e04UVtJgsQz6Wy2qiHGYO5gyRL
         ruQQH4ao18W+nWLQhbTrAdGlw08HkVeYD1LKqDuSsRKrP3VrznK5ohp6kDNKx0D8yNZX
         7SxnMGXiXIKcl5peuNr14pjaCh2o8a+99bmk3R6GbIPkU7nt+mXeZfXmNdnwn6qqkbnU
         C6So7t6GdfdDu3iP3qX6tkuhz5P6EoARkprfaqFPJuClM/bpi7WdB2giUrETV8o/NtGl
         yd+kzt64GGlsbs94V/ewG5FcHMleZ1eRrgWIk7LwCFf/vDZUyIEuHUIojciIiYrAKy01
         Ekjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701521520; x=1702126320;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZZ7Vk4rlYI4wpR0DprPRhwDbWK92/MFMHHXtx/iHz6w=;
        b=NEiZe3dt2bcI56198cexzWRhR8O3/AIZJYtBojFQGEeBqT0EQ8wUN2MmbTW9PIKgYX
         9vAWTHbqluQcYKdGTB1awUBbjI+tcs8J9k4Iu4kVlq2iqQynTZ31Httdh3xcLoaYkNJm
         yMdeb+CofLXRizeTrlSWhj9th8Ohf82tDPXeBsRlJye6PjdUcIbL4l0h/zHy3Z8Lgslo
         /+phMaWEWxxpn279iZIoxg9VvYBooC/Xax0aIe0CBT5uVZ+6yYGSnOViGftcf3eTrxCU
         91DPQ1UWtLBLLWhVtdjxDFxSy0X0AYYcMJR1kYk5YqMYH3iTBi7Bf512d/6CT7AkAJQA
         hQdg==
X-Gm-Message-State: AOJu0YzgEXOa0kh8y4eyeWJ/iBGmtnRTeZDw4YWSQTi0/eGbJbn+75mh
	ylYcZxzFaIHNME/o2erolw==
X-Google-Smtp-Source: AGHT+IGHKK9cB3J1W0QWDzln8wREBYdZjVmE10rf8PD+2/UqMjmKdajLeMCstCvLsLWhy3jXHtShew==
X-Received: by 2002:a05:600c:3b85:b0:40b:5e21:dd1a with SMTP id n5-20020a05600c3b8500b0040b5e21dd1amr414964wms.72.1701521520134;
        Sat, 02 Dec 2023 04:52:00 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:908e:b829:354b:f8ee])
        by smtp.gmail.com with ESMTPSA id g5-20020a170906198500b009c5c5c2c5a4sm3018161ejd.219.2023.12.02.04.51.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Dec 2023 04:51:59 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 1/5] pmdomain: rockchip: Add missing powerdomains for RK3128
Date: Sat,  2 Dec 2023 13:51:40 +0100
Message-ID: <20231202125144.66052-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231202125144.66052-1-knaerzche@gmail.com>
References: <20231202125144.66052-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_045204_134789_EC8576AC 
X-CRM114-Status: GOOD (  12.22  )
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

For RK3128 the powerdomains PD_PERI, PD_SYS and PD_CRYPTO are currently
missing.
Add them.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/pmdomain/rockchip/pm-domains.c   | 13 ++++++++-----
 include/dt-bindings/power/rk3128-power.h |  3 +++
 2 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 9b76b62869d0..62ba4129f6bb 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -998,11 +998,14 @@ static const struct rockchip_domain_info rk3066_pm_domains[] = {
 };
 
 static const struct rockchip_domain_info rk3128_pm_domains[] = {
-	[RK3128_PD_CORE]	= DOMAIN_RK3288("core",  BIT(0), BIT(0), BIT(4), false),
-	[RK3128_PD_MSCH]	= DOMAIN_RK3288("msch",  0,      0,      BIT(6), true),
-	[RK3128_PD_VIO]		= DOMAIN_RK3288("vio",   BIT(3), BIT(3), BIT(2), false),
-	[RK3128_PD_VIDEO]	= DOMAIN_RK3288("video", BIT(2), BIT(2), BIT(1), false),
-	[RK3128_PD_GPU]		= DOMAIN_RK3288("gpu",   BIT(1), BIT(1), BIT(3), false),
+	[RK3128_PD_CORE]	= DOMAIN_RK3288("core",   BIT(0), BIT(0), BIT(4), false),
+	[RK3128_PD_MSCH]	= DOMAIN_RK3288("msch",   0,      0,      BIT(6), true),
+	[RK3128_PD_VIO]		= DOMAIN_RK3288("vio",    BIT(3), BIT(3), BIT(2), false),
+	[RK3128_PD_VIDEO]	= DOMAIN_RK3288("video",  BIT(2), BIT(2), BIT(1), false),
+	[RK3128_PD_GPU]		= DOMAIN_RK3288("gpu",    BIT(1), BIT(1), BIT(3), false),
+	[RK3128_PD_PERI]	= DOMAIN_RK3288("peri",   0,      0,      BIT(0), false),
+	[RK3128_PD_SYS]		= DOMAIN_RK3288("sys",    0,      0,      BIT(5), true),
+	[RK3128_PD_CRYPTO]	= DOMAIN_RK3288("crypto", 0,      0,      BIT(7), false),
 };
 
 static const struct rockchip_domain_info rk3188_pm_domains[] = {
diff --git a/include/dt-bindings/power/rk3128-power.h b/include/dt-bindings/power/rk3128-power.h
index c051dc3108db..68af6c68c272 100644
--- a/include/dt-bindings/power/rk3128-power.h
+++ b/include/dt-bindings/power/rk3128-power.h
@@ -10,5 +10,8 @@
 #define RK3128_PD_VIDEO		2
 #define RK3128_PD_GPU		3
 #define RK3128_PD_MSCH		4
+#define RK3128_PD_PERI		5
+#define RK3128_PD_SYS		6
+#define RK3128_PD_CRYPTO	7
 
 #endif
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
