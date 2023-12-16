Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C5B4C46CD4
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NlP23ql/fzxr9BcHCf4pexTjZuW7S1j3eXbRCd1Bhv0=; b=egPgUvh8D/krdd
	iy/VNi7A0M2aYoXZTU/4TAUdw5JiaTKpRmz9/rFYqVIgXexF5A+vAzy950OI9eAsLOYT2q5qs3+wH
	JrXhIOUa0pfhXMJ86sPGb4EBELaEqb4pc6y42eHFcWP8a6Oe/7HD1YbAiP/aSWSaWLsN9/kAvDxjt
	zgtbGNB3sk6IxOHEqBFLSFmHCYjogHUqWixa/dB1X+PUxViMfG0mpCqEwALuykDTqSh0lwK6Krt+e
	qpSogkeZjg8Eh1n2YI+/aTOUfmvXXqkF3bkh6YJ638f4Bj7Zw/HCllbtNv9OMXtDYvnFDQu3xsZox
	l7IezBwyV8M5+ivChJRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVW-006Jve-1A;
	Sat, 16 Dec 2023 16:27:18 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVO-006JnQ-1s;
	Sat, 16 Dec 2023 16:27:11 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-50bdec453c8so1858427e87.3;
        Sat, 16 Dec 2023 08:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744028; x=1703348828; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ujhT/xhztHbY8JzCzlkbXu+iQMCJG+MMsIZQaYuJZKs=;
        b=SUtfAFMIbl1jKLXicM/GuMSQNGnoxRpGmMcVVccvMHb/1nwRF9kIsnAGMjucWmOq9W
         l+aBWfbGShGd/2Y2q3Hgq9eDsMpjlCKh1Qhwhx8lnfspW2m1acBvFglLxc9TPOiwy12a
         6R00eQ+apNg1lJLTMA0izgw48ZGZr0W1jHGXYDFsykMR/k2fnamPOHztxH3YWgCMqHMc
         7MxBMlEtMzusX5VdBOCbtORmPhC1X9funXgbYVL0yzML2jHPFSTXWXBrEMj7KZ5TfwvB
         Yev3NoFCzxQ1pHPg1hetmtBR8nnawg7nrnvRmq/NHRqrbKjdg+gndkqevbERYIqw0EET
         xjLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744028; x=1703348828;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ujhT/xhztHbY8JzCzlkbXu+iQMCJG+MMsIZQaYuJZKs=;
        b=s4yiAOvtRt7EqVOa1ixXkwkCQsWUd2gutQ18LRHDKdwsCw1B/E7pAC14NEQh+WhXJ0
         JXkr44iFFvWX7nHVogDrDwf10389374LNmq/YHN118fZ9E5kM6Pz1xK7HNtIvG4MHTPj
         YWSi783NXRbz4d0EX71aGARR+ZGjaQeN2VUawZh5pEQ8p5wDaGwBjA0VxnQYueiQF8+r
         GsrX6jWLmDkP89rKVXM6tT0Xp4oB1kFmyK1aFvliAUWUUUmPpYkPTTFqR3HxYxW97IzD
         89mba+jn4YMi5x+DKme6AHb+0BYW+lwwz1EIpiTlhQhoZnqxN67hGvNdzx4V5gviA6fA
         B3GQ==
X-Gm-Message-State: AOJu0YzpNGoO4nl0z7KgpZFPwzEOo0ypJ26W5/y8MiKz7MeYg/Z/yKpH
	J9JB+TvKOLRoFldkdbNhag==
X-Google-Smtp-Source: AGHT+IEoZS1JzzGc12YB/MN689Vsdo/GX0yIsCmhRzmI2mChIP6YnFGPdCsy2rPk5UV5T25TnOSVWw==
X-Received: by 2002:a19:8c0d:0:b0:50b:f55b:abb9 with SMTP id o13-20020a198c0d000000b0050bf55babb9mr6923253lfd.94.1702744028520;
        Sat, 16 Dec 2023 08:27:08 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:08 -0800 (PST)
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
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 04/27] drm/rockchip: inno_hdmi: Remove useless mode_fixup
Date: Sat, 16 Dec 2023 17:26:15 +0100
Message-ID: <20231216162639.125215-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082710_641370_1F02FF46 
X-CRM114-Status: GOOD (  10.50  )
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

From: Maxime Ripard <mripard@kernel.org>

The mode_fixup implementation doesn't do anything, so we can simply
remove it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Tested-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

 drivers/gpu/drm/rockchip/inno_hdmi.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 345253e033c5..0b1740b38c7b 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -517,13 +517,6 @@ static void inno_hdmi_encoder_disable(struct drm_encoder *encoder)
 	inno_hdmi_set_pwr_mode(hdmi, LOWER_PWR);
 }
 
-static bool inno_hdmi_encoder_mode_fixup(struct drm_encoder *encoder,
-					 const struct drm_display_mode *mode,
-					 struct drm_display_mode *adj_mode)
-{
-	return true;
-}
-
 static int
 inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 			       struct drm_crtc_state *crtc_state,
@@ -540,7 +533,6 @@ inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 static struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
 	.enable     = inno_hdmi_encoder_enable,
 	.disable    = inno_hdmi_encoder_disable,
-	.mode_fixup = inno_hdmi_encoder_mode_fixup,
 	.mode_set   = inno_hdmi_encoder_mode_set,
 	.atomic_check = inno_hdmi_encoder_atomic_check,
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
