Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93E22C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 02:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G85SYzNT1G3pKo+8wgiHPWr8dH8TBdLjhylgDSQs/HE=; b=0c6wxb7I79/x3g
	FbM0bhI1dt2H5kiIwdI+SE9ia1J5YwlmCoZ61ZlBQOjayhZaiUYig1zoNX+bSlQTQijtjGO+9Ck2d
	8mj+3hyoPmgBqqinho60K+JEunTxQC2CsZAW0nZgX9AuFBYT01Y3HriZjuIRDAXq+mQrxhUtzlUDR
	00CwJRJZMEHXpilxbB9j1prZ4TL9cwKSgb87pYzqa4gXYwI66MNvyri6XWWf4/1geQIED84i1pv5X
	x+854kOGGbVq89x1ilvwPAAiCpTT3O11iIF2LsaYhSv5I8WRfh2X7yFIUTejmErWdTkQ6Z4/bSYba
	QN0UYncicu906OslAXJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPET4-0013M9-7X; Wed, 02 Mar 2022 02:11:54 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPET1-0013LB-0K
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 02:11:52 +0000
Received: by mail-pj1-x1031.google.com with SMTP id bx5so491219pjb.3
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Mar 2022 18:11:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F209WZI5vXfOkAuKwi/GeBW/6ePfEyIdvCWtsBXsuzo=;
 b=iu79tfZfv3syKE43Jc12ubc5bbfcm39Ba+iZqiH3YF6xx2VPj3Kue+5S3kBvepBO5q
 kdqhPnMePsk0a9w8OIsw9SA9VZIf2pxacttjWVOEkepKtTZDlhYIL9v+fhG0XVWGlEwh
 Se8dU2iquV0Zmid8y13HZf9VaAMALn+8EStJ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F209WZI5vXfOkAuKwi/GeBW/6ePfEyIdvCWtsBXsuzo=;
 b=E6RpzppP8mi65d9p4iem6CDYpdqI2lbjcrbDYI8KL8/UAJxbIssQfjPKZt6nnQhSBI
 QTJiJ2vLfQr13dgRn6GX2ocW1xGwk3u1ivOAnLyBLHQhLK/vuTA6lLpBAMvpuC0r+PbR
 zFlUGE0oF1/qlYryqgSNyes5W7MZLkjoAV5xLqG6G/0NQC8NZUtr+cHU4DUDDp29ptV2
 TUBjjJ/uOVhEhUaZr24PphDO/LEkhGpm0dyrpxmHFRlvE/iOiL78EZJ7SDBwRQLiiz5J
 yHgmjMNWmCfdUmyOqCzho8g0pmSnqtd++/xfMOtfuRbUJtGSRMm9bcxQsoYvO630BMMZ
 qcYw==
X-Gm-Message-State: AOAM531ImCwapkrUXsxbY5up0yo5i4tEmL6OgUxgNvsFXFRqnNVUwejx
 aT9UNrm0vE+MtdXsouaJ/1mFxg==
X-Google-Smtp-Source: ABdhPJwkV2kz8kBnK1WvzDVCNJRbzW5x17kwBoiaU5GguV6QDiHBp0jHTeZkBJ3WlYzD/yEyKxFkhQ==
X-Received: by 2002:a17:90a:4609:b0:1bc:f41e:5390 with SMTP id
 w9-20020a17090a460900b001bcf41e5390mr23827824pjg.27.1646187110276; 
 Tue, 01 Mar 2022 18:11:50 -0800 (PST)
Received: from localhost ([2620:15c:202:201:ddf3:7c12:38c:3c61])
 by smtp.gmail.com with UTF8SMTPSA id
 f15-20020a056a0022cf00b004f3b99a6c43sm18651207pfj.219.2022.03.01.18.11.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Mar 2022 18:11:49 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Sean Paul <sean@poorly.run>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Doug Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Brian Norris <briannorris@chromium.org>, stable@vger.kernel.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>
Subject: [PATCH v4 1/2] drm/bridge: analogix_dp: Grab runtime PM reference for
 DP-AUX
Date: Tue,  1 Mar 2022 18:11:38 -0800
Message-Id: <20220301181107.v4.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
X-Mailer: git-send-email 2.35.1.574.g5d30c73bfb-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_181151_083610_AC2724CA 
X-CRM114-Status: GOOD (  13.87  )
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

Let's get a runtime PM reference, and check that we "see" the panel.
Don't force any panel power-up, etc., because that can be intrusive, and
that's not what other drivers do (see
drivers/gpu/drm/bridge/ti-sn65dsi86.c and
drivers/gpu/drm/bridge/parade-ps8640.c.)

Fixes: 0d97ad03f422 ("drm/bridge: analogix_dp: Remove duplicated code")
Cc: <stable@vger.kernel.org>
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Signed-off-by: Brian Norris <briannorris@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v4:
- Add Doug's Reviewed-by

Changes in v3:
- Avoid panel power-up; just check for HPD state, and let the rest
  happen "as-is" (e.g., time out, if the caller hasn't prepared things
  properly)

Changes in v2:
- Fix spelling in Subject
- DRM_DEV_ERROR() -> drm_err()
- Propagate errors from un-analogix_dp_prepare_panel()

 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index b7d2e4449cfa..16be279aed2c 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1632,8 +1632,19 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
 				       struct drm_dp_aux_msg *msg)
 {
 	struct analogix_dp_device *dp = to_dp(aux);
+	int ret;
+
+	pm_runtime_get_sync(dp->dev);
+
+	ret = analogix_dp_detect_hpd(dp);
+	if (ret)
+		goto out;
 
-	return analogix_dp_transfer(dp, msg);
+	ret = analogix_dp_transfer(dp, msg);
+out:
+	pm_runtime_put(dp->dev);
+
+	return ret;
 }
 
 struct analogix_dp_device *
-- 
2.35.1.574.g5d30c73bfb-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
