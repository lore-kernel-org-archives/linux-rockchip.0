Return-Path: <SRS0=t/9b=OT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C5A3C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 21:42:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B7B861368
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 21:42:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1B7B861368
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Otitz7D2qr2FcJebwJ+6rCzmTK7jnYfcP0baR20pNzM=; b=aWbonDjIyGgQvD
	NoVzZUAVgbtK/PBlaP0bNRc9wpv/rHpbv0o9DZ31cLlmW/0TXUkcPRLHxqJl3S0avYVn4TuL4vC1o
	mdnc4qU8AIuy2+4Qku73Kdnzag0CeQgmu88QsYPoqCqMv+LEmgWMqMrntAP27dlw8fWZwNY91NseB
	VAxZS8VpKj5/9EvPNjZX+s7RXJHhd541rXB5L07g8eDS6KyOGHD3hftBmQXh5U0stHnEH34yPTBwH
	sSfRs2BV6/GghWnn3LE4W/Y2mXkJeBM/dZxPe4g446wk9fs6pILDekBM/g27YkYE/n9Qqyn/Ataz7
	PxvZXE6ZPdSLnYd1ExmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVhL1-00CPf0-Uy; Wed, 29 Sep 2021 21:42:03 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVhKz-00CPds-0k
 for linux-rockchip@lists.infradead.org; Wed, 29 Sep 2021 21:42:02 +0000
Received: by mail-pf1-x432.google.com with SMTP id m26so3121099pff.3
 for <linux-rockchip@lists.infradead.org>; Wed, 29 Sep 2021 14:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=abMqKB2u9rMv7oTMhh3m+4tF/IOseMheczHvshPya7I=;
 b=m2TpfLPcLu9QNlpl9HdlKoBc8s1yHlw4a109KsDKLctrx7o8muqZD1eHvNnSMFttA4
 fG/Qr03uUF4rZlyD2y5we7iu/kBHcB7kAcgNqqFQxqqdqXM4LcSJU7E1Kk2EQDquxze3
 ukoem9hVnnoq3QW4dNuZ5rJ+R/K06pjADNQPM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=abMqKB2u9rMv7oTMhh3m+4tF/IOseMheczHvshPya7I=;
 b=SXa1pM7wfka3d3iKv63Tw/BFxhqsmM4dVpUIw7dVv1SgVrKgmST57zUFVO7mdrk0Nz
 13m3JmGDFntkWNp3+lUOrYyBwd1j1XQ9CzkFbVWnY+4Cy1tGErDR3j/Ra3FGUm/Mqg+1
 FS6CAz19CQM7IQa9Zg+ZGxlMeZqEUv1I23wFCwC5vayPTGZDEMeBc1xbsK7VLjhpqwdE
 c9rH8dGcREzI284J8QsieNoKsMiUIivrhg6EtJvmC3kLtw/Bm9VQnxjvDAoNofxPJEz0
 jEZLKcSy7xsTXF28DGFb0+zhkdpCsVTf8n6vZAnnqiE3dyYBs9rtStLHDPiOLPu2PSY+
 lE2A==
X-Gm-Message-State: AOAM5339ZB49gIc9Q4APIxELALieVmVkiWLXqpjtwmLV1HguUURAX3YY
 gjMo/FFuCXpEw8wLWa+i7/UPOg==
X-Google-Smtp-Source: ABdhPJz6ktUCSGWMztTH+AFVhmEQXYShJtqGc2SK/UWNTJBqVnMthbvvG3CKCGzYVePbkfPuK8YC7Q==
X-Received: by 2002:a63:1d5c:: with SMTP id d28mr1797415pgm.143.1632951718606; 
 Wed, 29 Sep 2021 14:41:58 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:1bde:f4ad:4338:e765])
 by smtp.gmail.com with UTF8SMTPSA id p9sm698691pfo.153.2021.09.29.14.41.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Sep 2021 14:41:57 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Brian Norris <briannorris@chromium.org>, stable@vger.kernel.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>
Subject: [PATCH] drm/brdige: analogix_dp: Grab runtime PM reference for DP-AUX
Date: Wed, 29 Sep 2021 14:41:03 -0700
Message-Id: <20210929144010.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
X-Mailer: git-send-email 2.33.0.685.g46640cef36-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210929_144201_097711_CC532158 
X-CRM114-Status: GOOD (  11.89  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

If the display is not enable()d, then we aren't holding a runtime PM
reference here. Thus, it's easy to accidentally cause a hang, if user
space is poking around at /dev/drm_dp_aux0 at the "wrong" time.

Let's get the panel and PM state right before trying to talk AUX.

Fixes: 0d97ad03f422 ("drm/bridge: analogix_dp: Remove duplicated code")
Cc: <stable@vger.kernel.org>
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 .../gpu/drm/bridge/analogix/analogix_dp_core.c  | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index b7d2e4449cfa..a1b553904b85 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1632,8 +1632,23 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
 				       struct drm_dp_aux_msg *msg)
 {
 	struct analogix_dp_device *dp = to_dp(aux);
+	int ret, ret2;
 
-	return analogix_dp_transfer(dp, msg);
+	ret = analogix_dp_prepare_panel(dp, true, false);
+	if (ret) {
+		DRM_DEV_ERROR(dp->dev, "Failed to prepare panel (%d)\n", ret);
+		return ret;
+	}
+
+	pm_runtime_get_sync(dp->dev);
+	ret = analogix_dp_transfer(dp, msg);
+	pm_runtime_put(dp->dev);
+
+	ret2 = analogix_dp_prepare_panel(dp, false, false);
+	if (ret2)
+		DRM_DEV_ERROR(dp->dev, "Failed to unprepare panel (%d)\n", ret2);
+
+	return ret;
 }
 
 struct analogix_dp_device *
-- 
2.33.0.685.g46640cef36-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
