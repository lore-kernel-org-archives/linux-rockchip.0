Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6044FC46CD4
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OEZnRIu1iZXUlazGwx5Lh//kRIXC5zyYE6jBDkLdtak=; b=1xvpMfb+UCNIxc
	DX9HnMiylsN6UPx91eUzn9JHfJDzXa1DY/+0ePdT/wvLrZFvth0MJ4sQ410hDSjgHzTs+c7tS8Cka
	a3SadrsyTj3+nN3QSrC5UlFP3aiCh5sZG8rnzrhoLEl+JaLwojas+RWjXoGEToS5GtZ2jt3SasCQp
	TPhELZtYiY8WYwOCLkc9m/hVk/ZrTibcfHSbXO0ILvQzv8vD/C3TuLjAQ2xbevfhGLI+rQPtV7Nvk
	PiHK/Kdg0zu/jj0Fy7JubmF5mg8te27l+xSSmygNEYD9PlD90l6aKYkQ8e74fjaLTECh9+E0I57l8
	CwU58YrIN4afgdcsXB8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTG-00EoIw-1Z;
	Tue, 19 Dec 2023 17:01:30 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdT0-00Enxg-0V;
	Tue, 19 Dec 2023 17:01:16 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40d31116dbeso612105e9.3;
        Tue, 19 Dec 2023 09:01:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005269; x=1703610069; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uClaQQ2dRjLaUKPRgkZZsqsXWCBLw2oyW3zHKJRRqCQ=;
        b=nHWZla9jDMDomZqx7OsrStTdb4EfDCN8MRHtNO59BlLtgXDEkVOiwIS1lTs+lRCAOZ
         xkQ0x9f1uO1UmpNCkYGPPHUFq503/imfkYaPtloDr0WpaAywpPEl/ovdexjtl0vCTg3u
         iUP/5ec8CWWMep4tBbHUUVX7U5Xz4t+izYK8YObYHFUWyOjc2oBKlqHN7TORbTxYaVC/
         1QOLRNPoJ5Ef3MLvhma2IdKmUDRuYGweIZOeqAhoQDPWGk+2EETZn0AfRLmEp/zzhH7B
         JvsYqOoQjA4jy5+VbrVi1DDUQiM70B3lV9CcsuMpzHihlCiEsJXz1nNvNSV+hXCpVoKE
         G+bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005269; x=1703610069;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uClaQQ2dRjLaUKPRgkZZsqsXWCBLw2oyW3zHKJRRqCQ=;
        b=mkgdoJyfM2tJepLioElYHTNDZy30PNM/fIxwI6PANLGmQbCKHHZmSAGvnIWuQldtWn
         TfPECOrWvlraTslmmcxwVm1PFY6Jn4JieZFwI6hiVzpfAT3XxGuxX9Uc9/Yw2LLp79fx
         gCGE8cM97NRvTWgP2AV6/WbwcqMhGAmJqVH/MAf/jD377B6LMNuxRCKePKNEun50ZwTD
         vTZyUuS/qzyj/M9QZH0P2DBpxEM7KeQozWFuRX1Dr0Lfhtn8YPpuZZfr9JIBejhh5TIy
         eL5s+6NFVIM4swvOQFliFOBv9Xh8zv+2a3/bjdliop5IwkzxxIXf0wDh1SYQZwyiwd77
         VfCg==
X-Gm-Message-State: AOJu0Yz+qPuVuczzU0Iy+G7fLfj1KwepofTzZwDqbNjNuem1g5HHZcir
	krC1RA7a2QSyh2/9H82pHg==
X-Google-Smtp-Source: AGHT+IFjM19BzeJ7opBdpwxu2A1HFwreYdOm1l3GDNQQNs3Nw6kKgPMgszKGHl0AEjwpNwVYqeSAcA==
X-Received: by 2002:a05:600c:2212:b0:40c:6160:98f7 with SMTP id z18-20020a05600c221200b0040c616098f7mr5158875wml.17.1703005269466;
        Tue, 19 Dec 2023 09:01:09 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:09 -0800 (PST)
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
	Alex Bee <knaerzche@gmail.com>,
	Zheng Yang <zhengyang@rock-chips.com>
Subject: [PATCH v3 03/29] drm/rockchip: inno_hdmi: Fix video timing
Date: Tue, 19 Dec 2023 18:00:33 +0100
Message-ID: <20231219170100.188800-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090114_214587_4AB25E33 
X-CRM114-Status: GOOD (  12.52  )
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

changes in v3:
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
