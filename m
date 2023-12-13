Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21269C19774
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 19:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6V5fAIU16JQN67aUXEmgVLY3DCVK7i8r+sHxuQ92yA=; b=ncEucIeOBE+d7x
	RsSU7eStAMBUPgVk25EDAGfiI4iPLCT9SRALZ0jlI9bbmX29zRuceCyJfMQ6yTsXk97CizGVfG1f9
	Oh3hYQDQJbKQRJcgae6rPobwTGEDv5eGFaxJoF5pp/NOpKXSlIRPP1tOsU0Ty4Ga47Suu+qbOEqQe
	b8Q0IDZF+btdbNPZW5kuw+xfy3hq3Kc82NuwBp3ABY4fZhfsxr4RtbIbrrdIeLD3KhmyjahhwUTyh
	4QAHHEYlOddIVdGnAAGdgmvJq5xeXhLZWHHs/wq+oGOKdMfhKMFUJLUV6r4LfJdBf8W+o4sJn1Jzi
	53KceDWrsx2ggGcrPchA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGs-00Fsq8-2u;
	Wed, 13 Dec 2023 19:51:54 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGa-00FsVS-0A;
	Wed, 13 Dec 2023 19:51:37 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40c3f68b69aso44461345e9.1;
        Wed, 13 Dec 2023 11:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702497092; x=1703101892; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SDq2fLVuR6T1GPARTMOS6b3H20znzfoIBUzVKBtShU4=;
        b=BsvB0ZBuO1gJVVQVgW989iFkngYXSOohx6UxfVrw3S+8YUFZdDn7Gq7UPH2C0AZhDn
         bjJUCj+8l+VV+jRZp5iD6PRiP5BewWovCAcp8nduSBB1uUj+fY+MzR1A8C22W+kzFJBS
         rgh0+mDHfEgPMmpJ+ai+uCxGGYhAUME/FYXvm2/rO44AMTcFL9frZiCvqDqBTFq96fGI
         P0YtPyymxgEzW2A0zY3+uSbsorrYYjTKdVihd8WQwz39DpJDx/2m5BOL7baR567XCumH
         cI6NbGkKoddLtKmr/7QzgjpaU8rJ4UoVGatlUfq98ELsEnRtcdZN6obV2R7PFDcSKTSw
         yXjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702497092; x=1703101892;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SDq2fLVuR6T1GPARTMOS6b3H20znzfoIBUzVKBtShU4=;
        b=eDej5i67O3YQ+sevLG/o/OlNa/T8P6udg9tIMn42zI5OjaAxVga7UmG+W26ZYOxqvP
         E2jA1qsTztFoeEVcZzAtlaJZAVNyV/B8eGTMXam8w5o3bVwFI/XD391gsxScyK1WZWJA
         TvNLHztPfNkWZfejGfLsLaXIVFn8zIMSPxE3ZdQ5NYsxyfC/oucvp75Tf8T5ucHMfhIG
         /78tsW9yaWTWo6v3gtltjyks6jRqgLdZqcbz2gC1eHqjLvaB+Daj2vRJ9of/0aP0Umlv
         v7myUI44nX7rwkji2DTY/E7hQNY/6poFrnIPC8ydtiWhES83BVR7qk7hNjNdRd6+FC7j
         6YEw==
X-Gm-Message-State: AOJu0YxBev8xD99vHpegDb8uLb6oF/+KPw51TsSIJP43MSGnrBM+p/AK
	sk3AUq05OP1dUMn1Z1mdHg==
X-Google-Smtp-Source: AGHT+IELl0hfWLjSptTvXIEl3IsyO0H+O35wlMRi+ihqAK0nI8r+NnvvoiYtiu2tVq5so95DtF4X5Q==
X-Received: by 2002:a05:600c:4f48:b0:40c:426b:fd2d with SMTP id m8-20020a05600c4f4800b0040c426bfd2dmr3758370wmq.102.1702497092225;
        Wed, 13 Dec 2023 11:51:32 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:92dc:8b1c:e01c:b93c])
        by smtp.gmail.com with ESMTPSA id fm14-20020a05600c0c0e00b00407b93d8085sm24050698wmb.27.2023.12.13.11.51.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 11:51:32 -0800 (PST)
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
Subject: [PATCH 08/11] drm/rockchip: inno_hdmi: Drop custom fill_modes hook
Date: Wed, 13 Dec 2023 20:51:22 +0100
Message-ID: <20231213195125.212923-9-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213195125.212923-1-knaerzche@gmail.com>
References: <20231213195125.212923-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_115136_087055_640948B3 
X-CRM114-Status: GOOD (  11.45  )
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

Now that we have proper pixelclock-based validation we can drop the
custom fill_modes hook.
CRTC size validation for the display controller has been added with
Commit 8e140cb60270 ("drm/rockchip: vop: limit maximum resolution to
hardware capabilities")

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 2f839ff31c1c..84520da8c995 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -696,13 +696,6 @@ inno_hdmi_connector_mode_valid(struct drm_connector *connector,
 	return inno_hdmi_mode_valid(hdmi, mode);
 }
 
-static int
-inno_hdmi_probe_single_connector_modes(struct drm_connector *connector,
-				       uint32_t maxX, uint32_t maxY)
-{
-	return drm_helper_probe_single_connector_modes(connector, 1920, 1080);
-}
-
 static void inno_hdmi_connector_destroy(struct drm_connector *connector)
 {
 	drm_connector_unregister(connector);
@@ -710,7 +703,7 @@ static void inno_hdmi_connector_destroy(struct drm_connector *connector)
 }
 
 static const struct drm_connector_funcs inno_hdmi_connector_funcs = {
-	.fill_modes = inno_hdmi_probe_single_connector_modes,
+	.fill_modes = drm_helper_probe_single_connector_modes,
 	.detect = inno_hdmi_connector_detect,
 	.destroy = inno_hdmi_connector_destroy,
 	.reset = drm_atomic_helper_connector_reset,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
