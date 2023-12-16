Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6A12C46CA2
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fOwYks93k3konZWL0Rlbxw1T9l/TuartL8+l4wvNlfk=; b=f9K1LacNOccm+u
	BQJWmw2ughqml9nVm3nWHWPwDptjmarmkYMeA+21ghHMaZGtfUUdp3RH3ATiCgX6H9qYWIWzDr33f
	gGzVva/tQ8ZPFnWy505lcO4+3EqXjysHPqs67+lCmSjCqTAgXMQ5XUTxih1bK2/QziDLdvKXZj9pv
	2gTVmREtgGVktQZ65xWJqhzUsJxXhXjHvDaoEnSolIJNEEPJYQxIjy/6yN7Id2zU4TPzMthKKCKla
	2dnIGXK72/0kPuUzI7czsaLAF8fQ+d5XYzYTGl4epN01/ftJ0uOSjiRy+fj3446zp9tfNOU/PX6hB
	low/Xmj9gSGBmR5TZi1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVu-006KJR-2L;
	Sat, 16 Dec 2023 16:27:42 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVQ-006JnD-1O;
	Sat, 16 Dec 2023 16:27:15 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-5531c36ed2bso95346a12.0;
        Sat, 16 Dec 2023 08:27:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744028; x=1703348828; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qyAWfNkXQL+v/gZSDlmmFF5ztG5yHb26ZkJxvxzB8Hc=;
        b=nlNIvu0b6w5uA+0iL7FvJXG/uYnZyYuw4ISCZgcVoHP358/Vbxte6p0jUZPfLPlsxh
         x3YG7x9dkiX4oYDIEjk6zYHgahtEmVOnQk1ur8wYZ4J18ZM8QqTKgbuFF1jEonl7vm16
         V1BxqtrmkIVOw6RP8y5UbCWvir/o6BD8AbzCWRtieKo6f1lnV5Pbao8oNTcX2JNhFXdB
         suDyuS0MgDNM6L7G8Bqfh6gPPbGoX3RgWr420xAkEMSZthpM+6eP/BaG1A6gy96E/Kum
         yMuiQzT00WlWULwJAhiNgmDORdXpFN7/7vb/kkqo3saxRvVqPw/CiU1irQHWIM+Kg0Kb
         XD2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744028; x=1703348828;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qyAWfNkXQL+v/gZSDlmmFF5ztG5yHb26ZkJxvxzB8Hc=;
        b=L8AkwPuARbkvCPpUzXDGsyiyqgfhpub1L8trXd5yhaaChK/IDAjWedIGs38yHQA3aa
         s4TkuD7gh2t9yaEb/we6pfLIGujYlH0nqQR+usM/hZ+m7pjDowPE9JCO4AGq7abi83va
         jgYrNytcYfFJongRrZL601034225KfurB3aDgSdpmGV+UnKwPhA98rggiGyyRWcwhjxr
         uD71JwuWtIZT3uyzOSl3/sHtJzxVLugd/A7kDbYKFwBGrBvlLoM23LQpnB8UT41Rier/
         kRuyQb2XnRB+52+BVJTjm3OQILPkEVVED6bOnISPfX4yAwqSNZJk9ODU0CeGtgFRyl+m
         turQ==
X-Gm-Message-State: AOJu0Yz99B487KfhMbWsgnFIZe04UZjshNZFvWcnPMOUX7jbJoOvsawO
	D6nT+nP6m/G9I7Az/eOJQw==
X-Google-Smtp-Source: AGHT+IG3ytNKpYhW3AxvamdKVLTOk5M5VW41roA7N2pAlKA2C2kww6MnweL75Ttzw+MUjezGDENIdQ==
X-Received: by 2002:a17:906:6a1d:b0:9c2:2d0a:320c with SMTP id qw29-20020a1709066a1d00b009c22d0a320cmr8522242ejc.46.1702744027873;
        Sat, 16 Dec 2023 08:27:07 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:07 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>,
	Zheng Yang <zhengyang@rock-chips.com>
Subject: [PATCH v2 03/27] drm/rockchip: inno_hdmi: Fix video timing
Date: Sat, 16 Dec 2023 17:26:14 +0100
Message-ID: <20231216162639.125215-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082712_466420_29730169 
X-CRM114-Status: GOOD (  11.91  )
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

The controller wants the difference between *total and *sync_start in the
HDMI_VIDEO_EXT_*DELAY registers. Otherwise the signal is very unstable for
certain non-VIC modes. See downstream commit [0].

[0] https://github.com/rockchip-linux/kernel/commit/8eb559f2502c

Fixes: 412d4ae6b7a5 ("drm/rockchip: hdmi: add Innosilicon HDMI support")
Co-developed-by: Zheng Yang <zhengyang@rock-chips.com>
Signed-off-by: Zheng Yang <zhengyang@rock-chips.com>
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - none
 
 drivers/gpu/drm/rockchip/inno_hdmi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 6e5b922a121e..345253e033c5 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -412,7 +412,7 @@ static int inno_hdmi_config_video_timing(struct inno_hdmi *hdmi,
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HBLANK_L, value & 0xFF);
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HBLANK_H, (value >> 8) & 0xFF);
 
-	value = mode->hsync_start - mode->hdisplay;
+	value = mode->htotal - mode->hsync_start;
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDELAY_L, value & 0xFF);
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDELAY_H, (value >> 8) & 0xFF);
 
@@ -427,7 +427,7 @@ static int inno_hdmi_config_video_timing(struct inno_hdmi *hdmi,
 	value = mode->vtotal - mode->vdisplay;
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VBLANK, value & 0xFF);
 
-	value = mode->vsync_start - mode->vdisplay;
+	value = mode->vtotal - mode->vsync_start;
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VDELAY, value & 0xFF);
 
 	value = mode->vsync_end - mode->vsync_start;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
