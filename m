Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A27B7C54EBD
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 01:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gaHXEK93ns4psOSYAaGq/mnCS2JjmUHESHBcp0AAxcQ=; b=HKaND0m4WQnqj/
	QN5S8zOPSFBW15REt0eGT0KyvVxvrN50OKRLMu8KHw/2T505ygHJM+m3PJW4UpzZPpzpX2ZAqfOu2
	dKIZELUhmDm+yg/H0PuxexXKFC7QPYRCoUUlX2KV3z80REQi+XSNO8eKwcKxxeLSlKprb7nGLoTeZ
	S81b8MtDIgbW4ya2YHko0ztCH+BT/60ce3ad4KevNOaxu3k2dWMEbUvno4U77rOqRZaxgj62k6VGS
	r4HBht7Q9An/GkYZsbhxpy5rbLPCp/qHvO+vNzcXEudSnXTMYlldO5lUSvOrBK6ZTJWeSAkxcwY+i
	tlbvpezWbgdC9+4tT/sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pF3IO-004pf2-LR; Tue, 10 Jan 2023 01:19:20 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pF3IM-004pcg-6Z
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 01:19:19 +0000
Received: by mail-pl1-x636.google.com with SMTP id w3so11562805ply.3
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Jan 2023 17:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JRJYNk03xPF7I0f3RiiUNSrwj7K0SCkYwCDphRZWj3c=;
        b=LYUy8d956TFa4i0X/jINb9cLqY6o2DO8RoacHNTbbqpl8LHI2/Qg246QCSQgHVA+nH
         HJSdqiBTvghIgiNFKN+RnWDfVLcTTn1WiBk2hYjjliNu1Hb2C6+1JXHTA8Yqa0uUud+P
         UdwMdphpyLdOm8qn7t1kn+/887P41sckwQAH0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JRJYNk03xPF7I0f3RiiUNSrwj7K0SCkYwCDphRZWj3c=;
        b=hqvrhyUARQCXgaDD4g3Rv38GxFhHWdm0mZ6cdMRTVQegcoejYWjWAd5pbrqkDNd9mJ
         Psd+hQMt1QvmbBYtIKmm9py8A47Ve+9HwMDSz7aVlKo+yg7/D/S8oZoCjJkgd8bYG6fS
         k3WR39O+jswUAxTuH/MG0JRuOWY3cG4UCYJNZTRMLnooWbwZIR1+Xj8YaXJ6o5oCIVhT
         ASRzDbAlgWjFzCHKudnP6WuHv0tXq0cS8N2c/TWbaJNk9+9JU4ZB62Jg9p5GaUkTMCQv
         lvsgU0fCH7j5do9nOfyl7A4xQyycYibs64RkTKc+MI+4JKQP/ndhmpfmq3CT/yRHjZIJ
         M0bw==
X-Gm-Message-State: AFqh2krzin2/xtSHntBjTUF2AazI2Zov2WCPjcL4KA2mnAvRHL/OwPpG
	yzZ09LZg2k3URJtM7BQKhOpQKA==
X-Google-Smtp-Source: AMrXdXt7E/WtGBXtZLOsFB0eXRM7CAxST+jXno99j/6BC6C7198kPAZn7z/EVahK9YCxBH+9/0JnBQ==
X-Received: by 2002:a17:902:e951:b0:193:2ed4:561a with SMTP id b17-20020a170902e95100b001932ed4561amr5989384pll.38.1673313552926;
        Mon, 09 Jan 2023 17:19:12 -0800 (PST)
Received: from localhost ([2620:15c:9d:2:99d8:feca:9efd:a216])
        by smtp.gmail.com with UTF8SMTPSA id u1-20020a170902714100b001933355456esm17519plm.215.2023.01.09.17.19.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jan 2023 17:19:12 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Daniel Vetter <daniel@ffwll.ch>,
	Sean Paul <seanpaul@chromium.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Michel=20D=C3=A4nzer?= <michel.daenzer@mailbox.org>,
	Brian Norris <briannorris@chromium.org>,
	stable@vger.kernel.org
Subject: [PATCH v3 1/2] drm/atomic: Allow vblank-enabled + self-refresh "disable"
Date: Mon,  9 Jan 2023 17:18:16 -0800
Message-Id: <20230109171809.v3.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_171918_288137_5B75F590 
X-CRM114-Status: GOOD (  17.03  )
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

The self-refresh helper framework overloads "disable" to sometimes mean
"go into self-refresh mode," and this mode activates automatically
(e.g., after some period of unchanging display output). In such cases,
the display pipe is still considered "on", and user-space is not aware
that we went into self-refresh mode. Thus, users may expect that
vblank-related features (such as DRM_IOCTL_WAIT_VBLANK) still work
properly.

However, we trigger the WARN_ONCE() here if a CRTC driver tries to leave
vblank enabled.

Add a different expectation: that CRTCs *should* leave vblank enabled
when going into self-refresh.

This patch is preparation for another patch -- "drm/rockchip: vop: Leave
vblank enabled in self-refresh" -- which resolves conflicts between the
above self-refresh behavior and the API tests in IGT's kms_vblank test
module.

== Some alternatives discussed: ==

It's likely that on many display controllers, vblank interrupts will
turn off when the CRTC is disabled, and so in some cases, self-refresh
may not support vblank. To support such cases, we might consider
additions to the generic helpers such that we fire vblank events based
on a timer.

However, there is currently only one driver using the common
self-refresh helpers (i.e., rockchip), and at least as of commit
bed030a49f3e ("drm/rockchip: Don't fully disable vop on self refresh"),
the CRTC hardware is powered enough to continue to generate vblank
interrupts.

So we chose the simpler option of leaving vblank interrupts enabled. We
can reevaluate this decision and perhaps augment the helpers if/when we
gain a second driver that has different requirements.

v3:
 * include discussion summary

v2:
 * add 'ret != 0' warning case for self-refresh
 * describe failing test case and relation to drm/rockchip patch better

Cc: <stable@vger.kernel.org> # dependency for "drm/rockchip: vop: Leave
                             # vblank enabled in self-refresh"
Signed-off-by: Brian Norris <briannorris@chromium.org>
---
 drivers/gpu/drm/drm_atomic_helper.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index d579fd8f7cb8..a22485e3e924 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -1209,7 +1209,16 @@ disable_outputs(struct drm_device *dev, struct drm_atomic_state *old_state)
 			continue;
 
 		ret = drm_crtc_vblank_get(crtc);
-		WARN_ONCE(ret != -EINVAL, "driver forgot to call drm_crtc_vblank_off()\n");
+		/*
+		 * Self-refresh is not a true "disable"; ensure vblank remains
+		 * enabled.
+		 */
+		if (new_crtc_state->self_refresh_active)
+			WARN_ONCE(ret != 0,
+				  "driver disabled vblank in self-refresh\n");
+		else
+			WARN_ONCE(ret != -EINVAL,
+				  "driver forgot to call drm_crtc_vblank_off()\n");
 		if (ret == 0)
 			drm_crtc_vblank_put(crtc);
 	}
-- 
2.39.0.314.g84b9a713c41-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
