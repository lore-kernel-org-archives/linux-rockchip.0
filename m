Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EC2CC41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ueL/LFqru0Qz1prghyS3W7A6CQ3vqJuf5L+S1JN40Y=; b=v4xKnP44dCZ98R
	zyOjb8A17d/IDW/JBOwkJQIhg13bt/xnVQWneVwVAi5v7qsrRbnb7T5G/XN7F5hY5K7bkDpvdqw/J
	sjvSR2R2YN4X7BVARnOEnSaw2VNWwWrLR1F1ced964vyI7FZ9kUpLt6vlKZaSKhReQMdUWW/cD+yd
	AA/wiXI3Z7y+6z3B58z7UGE+aqzLnBi2B03LGivGKWSAm7NFRV0pD+1w6nA3a9CZ0Cwe3FqcVNDuw
	RMvikUyVOM5x62z8/ELv3KdDyA51/stTC10tzHVqZYUmRgQ+OT3+GCg1IQWJH2aavm0k+ITaS/gcw
	sfN9OCUeU7Em1aZWA3+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjZQ-006Y8f-2M;
	Fri, 22 Dec 2023 17:44:24 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXg-006WSH-0h;
	Fri, 22 Dec 2023 17:42:37 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-33666fb9318so1833374f8f.2;
        Fri, 22 Dec 2023 09:42:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266955; x=1703871755; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EoHup+tJ34Km8AW+9n07V9L+jLAh9fwpCrHBqqRCe/E=;
        b=ZfHAewjRUD3d5BV3aF2QW/9i46ONRloraLpVT0AMHNAOl2P2VkWnpHJxvnal6RiSxl
         mu7cFoGSxm9M1cNXhOlmNs1UGXvYgrhmx+8T3ZRwobsm96GeftFll1X+AB8FW/s5MAmf
         NQopLwC3JdU++sg8tl9Ol9/6Dfre8+MXfXi2EeakWnK4EsDNWSup2Va0p07e/B49YAg1
         qSdIOkdVt6egGPJUqzsBr8YvHWnOjlROTZzLUCnfNu57GZSF/iKkKmdbt6zCKwXxjAX+
         SCo5xr8eHLlph25jzaDpXX9MXQwkBvVgSq+R7kOHXXNSk7AxITeE2JjIB4oop+k1CTBp
         E74Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266955; x=1703871755;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EoHup+tJ34Km8AW+9n07V9L+jLAh9fwpCrHBqqRCe/E=;
        b=eT9IO2zUA6yTjhWvCxjFkHt6Vakx/hqLag9dTufu2hQKXFp6FqZfg12wwaUNbWWLFr
         tfFGf55+CbNuwCa++LrXsf6q4vZaa1BOBK+gUKCGI6JrzzjV+3CnVMvY7TmRyMHKWnjU
         sxQ8fu6lBEwydb5L+UkvrmX+aUka5uQnTXGrePuUKox6UX6YBxalPphneH8FL0huOgf/
         ac9mgMtdjDRgVg+F18qPCCwOgeJAeMW08l327V8E/5YARTF6OAdINh7ONq8SgNsFB1gj
         b7FJvKdlYx23s/M7fy6ZfKMZTMNF2fOO4zaTmIqCBNNifNsDeLXNajzVtWazcG5zdI+k
         O58Q==
X-Gm-Message-State: AOJu0YyuHZmDxuudqYH+ZvyQk7uqPjLOhViCVOFcMt88sE8dd3FQBQ4y
	JrDreR40aBG/rgl+QMVEYA==
X-Google-Smtp-Source: AGHT+IEnGIoJqNWWyiWZwjEzr0L5g9377mlPC0xqKPYwtqdze7Um6irPMyQs814kV87bqN1XpP/smQ==
X-Received: by 2002:a5d:400f:0:b0:336:8063:e066 with SMTP id n15-20020a5d400f000000b003368063e066mr798319wrp.52.1703266954984;
        Fri, 22 Dec 2023 09:42:34 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:34 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v4 18/29] drm/rockchip: inno_hdmi: Remove useless include
Date: Fri, 22 Dec 2023 18:42:09 +0100
Message-ID: <20231222174220.55249-19-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094236_254260_369A0D72 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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

The inclusion syscon.h isn't used anywhere. Remove it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Reviewed-by: Maxime Ripard <mripard@kernel.org>
---
changes in v2:
 - new patch

changes in v3:
 - collect RB

changes in v4:
 - none

 drivers/gpu/drm/rockchip/inno_hdmi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 138cd4287dea..c306db90832a 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -10,7 +10,6 @@
 #include <linux/delay.h>
 #include <linux/err.h>
 #include <linux/hdmi.h>
-#include <linux/mfd/syscon.h>
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
