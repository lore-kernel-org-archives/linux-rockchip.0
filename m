Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF977C35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 15:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/zsbydysxFeCaxs719nGxJVf9CgrZQ1fpsDK+4ztr4=; b=o62vEolaZlWzd6
	/5yDIJzVD7ySboWuORNg0au7tpkK9sfIBaRDwG4s/YRCOnohKij9ab+R1a4xWw8Y7tDo6RRY0ZUuq
	HQ0C6m9BZ9HzfQZ//gzj0/o/u9y8f2Njf7JB0uB4y8+Ukmg9Zz2/5WPZvckB75DdRaEPrBEs+/so1
	S0YncaNyEYNvPts8+ywyVzk0I7JwX56CxG6EU/rcxDvkMYQGuye6h4OV5xhk9XmytIcGtQFt8R4xR
	a8/lRvsJvrNTVGxZNny1FOPMbQrBOJL7xPhxYUxYNs/yo4wk+43Ec+mCPoVPbMv9Jhy8ivpvLLMuw
	wAUjC/5icbpKWF8PQoJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFFrn-00BHyE-23;
	Mon, 18 Dec 2023 15:49:15 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFFri-00BHu0-1r;
	Mon, 18 Dec 2023 15:49:12 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5532b348d30so1613851a12.1;
        Mon, 18 Dec 2023 07:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702914548; x=1703519348; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DCQzgc7HZIXkjhrSZNLJQoxchuiI/YLWggopgdNCG/w=;
        b=X/5KY3QHxI+m38mz4QxpNAbcSxDFbspj0RYuekGuKlPz3L/CTgUA2K07TNm9bK6jAw
         fLW3rdB9XylxOOoJXUAfHlGyYEXmBXg4jTkvEkSOtmbVtUG21THuuYTGkYbcW7NUqZ+b
         jwE6uBrdhtd7Vot9qAG/Aj0Z21neOIl4o17BhWLhmR83N2bLS03zSXJ1PpLohiccYH//
         FRaBNKj8y6L9/jU+eYtugR0i1mhVJ5sCoK+ED4oXmY8gZkz2mKDz3zvtel3ehPRGzqSI
         l5H2kspXvKacfm1cdWLXs8/PDH2kZiFj//equlTeGaztfvBSu8iVEHfpOL6yrRotjoc7
         Kvng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702914548; x=1703519348;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DCQzgc7HZIXkjhrSZNLJQoxchuiI/YLWggopgdNCG/w=;
        b=VFK5S+55OT+ZAY8RlGMmrzuYCgKfXfY1d+P5tcr41V2brZ/Y6wZJLzXG47jZN+7CMO
         v6K4ofHeUB10of1jp5G9dmlBb+iOmu1g93H7f6+m8pv3HRwxFC8VSFyauH/7mIC07z+e
         UmWg0FfA4hd4GAknV4RBB2eAOIhY9b+ze0hdcu1bC6VDuVSvGh15jir4IOM1MAd/2DMy
         JzOd3c+otwVHc9tFhHgycTDjba11i2Krkx+KAcjS4QTG4Fym/nZ2O6xDJifDzDj5sysS
         UQr/U3MJf6Q93pFHRbTo9l4QoNF79nG3yMVgiOQ2ySve4m0rGI63ilO7FEz3/hAeeY+h
         IwGw==
X-Gm-Message-State: AOJu0YzruGAp0/rF/cPDN8NVoNa1VRv9Z9P10ncrmvF9QqxN9ZkFXai0
	8ezbExcoEPuR5cbjsY5D3+8=
X-Google-Smtp-Source: AGHT+IE0dLdHYhpXc1l9yUsJLLTeyu7fPpLWHCXq007NrPDn70yB+TVn+T7YKt5u3Yd3coevCH6ExA==
X-Received: by 2002:a17:906:da08:b0:a19:a19a:eadf with SMTP id fi8-20020a170906da0800b00a19a19aeadfmr7048806ejb.152.1702914547563;
        Mon, 18 Dec 2023 07:49:07 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id v19-20020a170906489300b00a236378a43fsm654118ejq.62.2023.12.18.07.49.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Dec 2023 07:49:07 -0800 (PST)
Message-ID: <410b116b-cb63-7ba7-3689-4f0832ab5796@gmail.com>
Date: Mon, 18 Dec 2023 16:49:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 2/2] drm/rockchip: rk3066_hdmi: drop custom fill_modes hook
To: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <f86ec29f-194a-800d-0aaf-9e16e551b37d@gmail.com>
Content-Language: en-US
In-Reply-To: <f86ec29f-194a-800d-0aaf-9e16e551b37d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_074911_000305_792105E5 
X-CRM114-Status: UNSURE (   9.88  )
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

CRTC size validation for the display controller has been added with
Commit 8e140cb60270 ("drm/rockchip: vop: limit maximum resolution to
hardware capabilities"), so we can drop the custom fill_modes hook.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index 0dac6d133767..6dadd753985c 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -501,18 +501,6 @@ rk3066_hdmi_connector_best_encoder(struct drm_connector *connector)
 	return &hdmi->encoder.encoder;
 }

-static int
-rk3066_hdmi_probe_single_connector_modes(struct drm_connector *connector,
-					 uint32_t maxX, uint32_t maxY)
-{
-	if (maxX > 1920)
-		maxX = 1920;
-	if (maxY > 1080)
-		maxY = 1080;
-
-	return drm_helper_probe_single_connector_modes(connector, maxX, maxY);
-}
-
 static void rk3066_hdmi_connector_destroy(struct drm_connector *connector)
 {
 	drm_connector_unregister(connector);
@@ -520,7 +508,7 @@ static void rk3066_hdmi_connector_destroy(struct drm_connector *connector)
 }

 static const struct drm_connector_funcs rk3066_hdmi_connector_funcs = {
-	.fill_modes = rk3066_hdmi_probe_single_connector_modes,
+	.fill_modes = drm_helper_probe_single_connector_modes,
 	.detect = rk3066_hdmi_connector_detect,
 	.destroy = rk3066_hdmi_connector_destroy,
 	.reset = drm_atomic_helper_connector_reset,
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
