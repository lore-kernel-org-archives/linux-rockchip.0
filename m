Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53164C46CA2
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cXba+veiHWS8JGvIeVeIl6gHaBnl7z6uPAzEMov2ZI=; b=3I4REIk9gw0586
	Hp3zmsnAK44eZepSfUmr/hJYK5fHyvOgMGWSvkduVDNEon5pjdbzHMvGzJ90kyZ3iVP8iTyclVdYD
	m4iRC614EsYxqvI9wqUvUT5S4UYxq4/pGjiCfbX1KYqNrvmh3tPxl/UfYx8fsTOboP4IwJgrR9RCn
	a0fkQcpauEy7wrKhqKVa0UrhevJ6Y6+O4ywxJcCEUMY4QK2DkosfjygJ3S8qAabw/3IK2t4Oq47mo
	60LFBB14auhi2iqRXsTijWmusdwuUA6gED13wcahTT9KaBYbuMZFwbg/cNkIKU6zbs/jzIsaL0giQ
	JCL/VmUmwxecR7Lk0L3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdUO-00EpWq-2h;
	Tue, 19 Dec 2023 17:02:40 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTB-00EoCB-2M;
	Tue, 19 Dec 2023 17:01:29 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40d12b56a38so39143915e9.2;
        Tue, 19 Dec 2023 09:01:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005283; x=1703610083; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bc0b+TzRBYlgBswaLzZiZATkVZXs4jtzYrqChWAdmP8=;
        b=X14rFBnEdNkx8opFqWdZFUDavNIg+Qljdcv+r/APPMka61McxY7e/JIMMTqwNn6aPb
         HfTRuv1N9KQ+/Cjco9q7BGVZFMm2Cej/LlpwTZLr4FUtqrsO64KOXVtMfckZsmemB5B5
         dv2VOL6WG7mwGRz9FqM454HyT0t4/nZXObIyeb/X48TvYeUxr4fd6zaPS9K/hSGPwI8G
         ofi524lce7dki3k6QZj/FRplDFhB4dAK1TdjGR0RwvQ71C0JASseeEVX2dAbUtvTQSdY
         VxpiHDxkCPhfGb9PBrn5o3VWsQCflGc5of9pg8ToEVb1g9LVpHgGUAxkKUZMO2Cm+khL
         vaIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005283; x=1703610083;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bc0b+TzRBYlgBswaLzZiZATkVZXs4jtzYrqChWAdmP8=;
        b=YzbJ+qzCi7MO35ezvU6kSFlJ4fjpKnHBGr79MZzc5C9dXVQOTP4Zr+ODnGtd25Gdyd
         WyNaRKAfWKhm9k3H6maQVBJVGBlnrHHN2NJZjTMsQ83MzHv7LtNDTwbMiGLIu1FawvkQ
         b4lyalz2F3e+3s+5p5ySUZahTt1Sk8O2y6861+d0od58rCwOct7Qijhr3aGEd0gmKoOZ
         lDBwo8PJtkqNvLqBukGUD7p0tb8G24epAF/mPBsHoV69gHa8PW8wru+ND3Jip2ps1BLe
         S9byz5TvPDx95/Hj6jiibXfrRIfzTSkyn57Uy6QkMSLyCrjT3mlil3qroSVnVgsNlRRK
         Ndkw==
X-Gm-Message-State: AOJu0YxOJ6I9ceRBjnWaMuP8A1FaxTTncm/KfvODEj6yEJDmrGxa288h
	C7RFlEkCPN7arDfok1AUzg==
X-Google-Smtp-Source: AGHT+IGsXiyRLPSKTLiCmb5HKcIoTm/Gx4nMKjVc/FhMnHN1ip8FwDTTR8xwruHseC++DoM215yynw==
X-Received: by 2002:a05:600c:4588:b0:40c:6b55:2a0f with SMTP id r8-20020a05600c458800b0040c6b552a0fmr2064612wmo.224.1703005283542;
        Tue, 19 Dec 2023 09:01:23 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:23 -0800 (PST)
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
Subject: [PATCH v3 18/29] drm/rockchip: inno_hdmi: Remove useless include
Date: Tue, 19 Dec 2023 18:00:48 +0100
Message-ID: <20231219170100.188800-19-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090125_803915_C12A499E 
X-CRM114-Status: GOOD (  10.33  )
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
