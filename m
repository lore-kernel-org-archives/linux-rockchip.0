Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61E51C46CA2
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzLC6Wrf+GnU74ZLZ3JMQJHi8bSKwLZPOCPK2CEULBo=; b=WblsDslTsch1cN
	cdC+MmVsfZq4Y+Y9omq/vKBCRjBr6wRQlri4ZiaDv3sb0oTyYqogdttnORvqhvLSlmDX2CsA2jZh0
	fA1sjRfz4u4LIygqIOgd9TlOPmBjc+4slydXhQYhsx3TqZ0YvlKjTA5VyEOY3CB9Kh9Rb9fANmFEX
	VtXrkrWdqeRTEmspx/Jb5Ob17ISsB0gU1uAwuUzp7DZsqBrkR34ZWteG3utc84Sohe09g4rYz06/3
	g+KkZvK2yVmXgZ1B3rFDmqPIP6zH0tSkR7nUDvK49HgMOF6PTMC5za7qbGdrUFndIfZIsxHUoCNMM
	nPb8e1SwCwL+RtKLSIiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTJ-00EoND-1A;
	Tue, 19 Dec 2023 17:01:33 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdT0-00Eny7-0S;
	Tue, 19 Dec 2023 17:01:17 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40d2764c0f2so11335655e9.2;
        Tue, 19 Dec 2023 09:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005270; x=1703610070; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qdMgjNjNBTOoBWK3IcfrwTBNKKERl2lF+r21sur0UJs=;
        b=Z2Xv7uwB6tXpEZAvpyzjELEWsmhbx7McsEbiK31qGvFvwaNTDBUaAPc8zDCJtLtmKi
         D+H2LjwIW2ZeyDS1N+ehh6bJboVQ4rhPwCD21tGiDa5SrlOONJ4QBSG/lkG/FLZAFGdG
         7XIShiNfSCkzUVSijtMJb1e/bor8XAKeKUBl0uQ4wQV9a4lQudSMCtkD0TnpPZbL5G5c
         MuBaxSS9cueSbXq1DVnBy5i41DevHKV8ei/h99AB4pSMJVf73KykNPwhgAujq6NkI0AD
         yPk4J9Y1sY6+P0p64VfaaTEkhBEJbzoygEmLjjIMdJP0lQLvHlJSmkBfzZnTi3JMU3Ag
         nu1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005270; x=1703610070;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qdMgjNjNBTOoBWK3IcfrwTBNKKERl2lF+r21sur0UJs=;
        b=LHcHPA0NdnorG1q8Gw5/j7g0rP2eNxPaSGKnY1CacIfDqatKnorRUMvDoBJffaq+9J
         AIGr68MmCm6tD0IamT2Mbe+26EzcIF7Pe6XlChoSqW5gOBmweUmrPNrnGRfdXR8iuvqs
         eNOt9EjBukRkaHLF9zTQfy0Tx90PryMlrfg7vnaRU+sUQud2tRUznDqmqkuevHaLf2Yj
         3ueJNiEoleweBAsJwBTp5bbTDM3DwJmeX0P4IBcbTFglGUlKE7LPGcJ8+HlT58y+nmsr
         KQQqSHnQcfs5dulIfN3E8j0g7f8/xRarlKSkG/N7b3baCGewTCVCghy6jboq1whTutAh
         Xk7w==
X-Gm-Message-State: AOJu0YyZimrO623J2wxEA0BxQ15RaQShDmW4Rv3r8p1tayzJOJfBQ57v
	Tl4HKSerti5WqJtXh21ipw==
X-Google-Smtp-Source: AGHT+IEkfFJDXwsv4Zfxm5NA1za7VpADdznfWYCyodddd8eXDeufpwxwQM+20Je7C3cazgS46y7cEw==
X-Received: by 2002:a1c:7218:0:b0:40c:317e:7cb0 with SMTP id n24-20020a1c7218000000b0040c317e7cb0mr8717116wmc.158.1703005270277;
        Tue, 19 Dec 2023 09:01:10 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.09
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
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 04/29] drm/rockchip: inno_hdmi: Remove useless mode_fixup
Date: Tue, 19 Dec 2023 18:00:34 +0100
Message-ID: <20231219170100.188800-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090114_225308_4462C3E5 
X-CRM114-Status: GOOD (  11.24  )
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
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

changes in v3:
 - added my SoB

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
