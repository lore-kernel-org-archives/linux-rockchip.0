Return-Path: <SRS0=ewtI=OV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0488EC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 21:50:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C181261A56
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 21:50:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C181261A56
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aNJgIqV0cJKDr1sR9CHfrPWaBz5VIO4d1LvMhqYFNg0=; b=vMLbMByRSGsQ6U
	fzldA27yOtXM/siUcFc2kBXNYxEiOaGqhwCv7sbNazja4zEWYSAIuCmCW45VvHaZ28h9oAaZjKdpF
	DGTCDPymoVR1e7b5NRw3WRChWWoOecmEOXqS62M5aR/2RreZX7fHdqt2z20dOmHzfRva9QQGkhCcA
	v6Bh22O++xR9wXecdk3KmSGZmFCJJKSRDfy6Gm71PzBEscU2/DUE0Iyd0WAfaYAYsUhnfWu7WF9wE
	WTu+6kgpdNQJXW8W4S2rgZg1aJxZTHm7z+ZOVaXiK47qxnkHdlQbkFhmKXaNRj1lfi/BUFvVxZDsH
	Dp1uD85Q8nSRbdYHcOxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWQQA-001MDi-Ch; Fri, 01 Oct 2021 21:50:22 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWQQ7-001MCu-RT
 for linux-rockchip@lists.infradead.org; Fri, 01 Oct 2021 21:50:21 +0000
Received: by mail-pj1-x102b.google.com with SMTP id
 na16-20020a17090b4c1000b0019f5bb661f9so4287021pjb.0
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Oct 2021 14:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NL7Ui4pDzKD6Cqfc/rSld3tguEIwYPG7fUSYDal4DEY=;
 b=m5z3+8aUGB1/aVqhdvcvLjWaweeugGKaJ2xm3YgW2o29YhTbamwXAXZg7cLIQD1tCZ
 fvN2Q8ZX5iSk4zKhCdWb49sctlPcBg+q1vWgc1vYwKqU9r/8vkuzpBrHdzDf921Ezfiv
 q5Lh1OIAONXX9dSbdT7CpFkVidsPqatUSsulg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NL7Ui4pDzKD6Cqfc/rSld3tguEIwYPG7fUSYDal4DEY=;
 b=cXLg/eMW2OpxJK0x2j0BXcuTCEk4wTQ8qyvRlsszDjdNbjIU8E+wlXwZbkcQRXTbd6
 IUjfxBeXz9akOTh/4cABlGcUXHFq8/j7/5JMINWrHsxsyh6S72/Yb0B96PYiTfWRtfeq
 iSzA86qvyXwa4VrclT2rFHWdkyLkD9gt6PmECbzd56K1a1NKMt5XkgXy0APh2FX7x0jQ
 wcSTpTGYNwUFbmVuRsDBOSpdy7mnghlp0ZeLHBu2gLws+k76kNGTzD6uPPGe9LOIHVnJ
 5q4w60x+1wr43wh3zv6p4/xQntvyvV+V5N/0oDmutlFI5vGVR+OpP2HcUYoP1IGB5tf7
 bNrw==
X-Gm-Message-State: AOAM532YZTsABL5X0hyGmahkOslczwz/LoxoZHPG+dDzkN23vTATw6Wr
 xAI135DDzsYf7XuVSiCTyQW5hlVYGGXumQ==
X-Google-Smtp-Source: ABdhPJxAa+ytqGV91qQywYgHfFgfudFxi7R0Gdv7bI8eSjvNvxkJPbbYbO5+jovj0Lp9k88a23k6hA==
X-Received: by 2002:a17:90a:16:: with SMTP id 22mr22720079pja.25.1633125017619; 
 Fri, 01 Oct 2021 14:50:17 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:1e7d:5e91:4390:d04b])
 by smtp.gmail.com with UTF8SMTPSA id d5sm6405749pjs.53.2021.10.01.14.50.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 Oct 2021 14:50:17 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Cc: Sean Paul <sean@poorly.run>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Brian Norris <briannorris@chromium.org>, stable@vger.kernel.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>
Subject: [PATCH v2] drm/bridge: analogix_dp: Grab runtime PM reference for
 DP-AUX
Date: Fri,  1 Oct 2021 14:42:55 -0700
Message-Id: <20211001144212.v2.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
X-Mailer: git-send-email 2.33.0.800.g4c38ced690-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_145019_976974_CBFFAB8D 
X-CRM114-Status: GOOD (  13.54  )
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

Changes in v2:
- Fix spelling in Subject
- DRM_DEV_ERROR() -> drm_err()
- Propagate errors from un-analogix_dp_prepare_panel()

 .../drm/bridge/analogix/analogix_dp_core.c    | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index b7d2e4449cfa..6fc46ac93ef8 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1632,8 +1632,27 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
 				       struct drm_dp_aux_msg *msg)
 {
 	struct analogix_dp_device *dp = to_dp(aux);
+	int ret, ret2;
 
-	return analogix_dp_transfer(dp, msg);
+	ret = analogix_dp_prepare_panel(dp, true, false);
+	if (ret) {
+		drm_err(dp->drm_dev, "Failed to prepare panel (%d)\n", ret);
+		return ret;
+	}
+
+	pm_runtime_get_sync(dp->dev);
+	ret = analogix_dp_transfer(dp, msg);
+	pm_runtime_put(dp->dev);
+
+	ret2 = analogix_dp_prepare_panel(dp, false, false);
+	if (ret2) {
+		drm_err(dp->drm_dev, "Failed to unprepare panel (%d)\n", ret2);
+		/* Prefer the analogix_dp_transfer() error, if it exists. */
+		if (!ret)
+			ret = ret2;
+	}
+
+	return ret;
 }
 
 struct analogix_dp_device *
-- 
2.33.0.800.g4c38ced690-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
