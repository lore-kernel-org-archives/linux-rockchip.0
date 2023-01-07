Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3BD8C54EBD
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Jan 2023 01:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bgjyv3Zx3jjm8PCXnuU3Uvm5Ww689yV4r50bUOmDQhc=; b=0AGODEE/W7yecE
	lLn59sHlIpZOJc/k9PyAn/2zbIjF+SVw8Q4qgrWvu34gPxYyedOj4CspgvpwfTMSmknUu2kT5NEum
	ss7NOhgSbjXMSobQghr8WWFvL7r8JIchrPCu2CuCLV1t0kLUJ8cbwmDa5DTF1PHMKCyk3UpoNJh1q
	mWiFn9rMgzYnMMuqBjaj5wNZgUGO+CbTBWv0T8jdDz6w4jrjygDgglyjS2OM6vrUNQXefcHIdvIhy
	QUun8sA5zLTJaru8BueB7Tn9l9ODFkpgTYEcU72IkCa2aBMOATTkUGAOUfZsXbxjIZpM3oHDdGRwg
	RwUw1sneZFWnMri/smCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDxwH-00GHCr-TO; Sat, 07 Jan 2023 01:24:01 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDxwE-00GHAT-JB
	for linux-rockchip@lists.infradead.org; Sat, 07 Jan 2023 01:24:00 +0000
Received: by mail-pj1-x1034.google.com with SMTP id o21so3216486pjw.0
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Jan 2023 17:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fqc+kkMFie/fztyQhVGKblB/deI6poCZbFpfQY0gQ5M=;
        b=T58kzIf5KVpaNXEtW9T33Mo50vYqvco1twQmTAboyo/KCu3tpXXPxRX3is2nRboBkK
         IFmSrS0lC/MbF3+tyDud6LC3NdPNHNDld4SpKQ/1bF5KEgQ1Cd/Puai5wuLafJcGw5hQ
         Xu6lrgspDIHnr68pABxoI/C7OTjXX4iVHNjOg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fqc+kkMFie/fztyQhVGKblB/deI6poCZbFpfQY0gQ5M=;
        b=NdY1Hp80bqFkbZGnCs1XtHa3v80rhMV4ZNlNYsfhiPK51JGRn7zWQ8zqZ55YOLijL3
         /tntBf8N9cIuzQEBq+IdhgkkE1HyRg/90+mpCmKvgSG509cIhdfDQJRv+GWqJ55qDh9q
         X2op+8XtG8xLCbQU74QBwLnuW34/7fN2+MUkCWyJSXtCFDUfyci8Pj6Je5Z33bCSv3Fo
         ykHtSN7t1xsKDCGMuu+nPQOYNX+DA+TmesA674enNTZ0xcg2FvEZAIglpaDMGomgCWmw
         O6m3jwCQ6Ot1U91d1n0tTLYjnAGrdWXRnhQBMhZWdKlWltV7WSoOxlv7rec9CXEqJrGe
         I0Iw==
X-Gm-Message-State: AFqh2kpwT0vYrMKMQYTd2bUM9aFUq6hJBl4CehYBYioSqKsb5KRvZ6mP
	r8EtNlQYsJFM4EqjW1HmiyBrXQ==
X-Google-Smtp-Source: AMrXdXvm4NOW/ltnbwyEvzMNORkJ0sSf/IJ/q3eNi+aIWeAhDUuIo1PyIhxCieNcGFJa22JoQ5TygQ==
X-Received: by 2002:a17:902:ee13:b0:189:13df:9d86 with SMTP id z19-20020a170902ee1300b0018913df9d86mr65902309plb.14.1673054636979;
        Fri, 06 Jan 2023 17:23:56 -0800 (PST)
Received: from localhost ([2620:15c:9d:2:bc4e:2cc9:68b3:15dc])
        by smtp.gmail.com with UTF8SMTPSA id cp12-20020a170902e78c00b0019276616eb0sm1569183plb.83.2023.01.06.17.23.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 17:23:56 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Daniel Vetter <daniel@ffwll.ch>,
	Sean Paul <seanpaul@chromium.org>
Cc: =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel.daenzer@mailbox.org>,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Brian Norris <briannorris@chromium.org>,
	stable@vger.kernel.org,
	"kernelci.org bot" <bot@kernelci.org>
Subject: [PATCH v2 2/2] drm/rockchip: vop: Leave vblank enabled in self-refresh
Date: Fri,  6 Jan 2023 17:23:23 -0800
Message-Id: <20230106172310.v2.2.Ic07cba4ab9a7bd3618a9e4258b8f92ea7d10ae5a@changeid>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
In-Reply-To: <20230106172310.v2.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
References: <20230106172310.v2.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230106_172358_652798_A0C95C80 
X-CRM114-Status: GOOD (  18.01  )
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

If we disable vblank when entering self-refresh, vblank APIs (like
DRM_IOCTL_WAIT_VBLANK) no longer work. But user space is not aware when
we enter self-refresh, so this appears to be an API violation -- that
DRM_IOCTL_WAIT_VBLANK fails with EINVAL whenever the display is idle and
enters self-refresh.

The downstream driver used by many of these systems never used to
disable vblank for PSR, and in fact, even upstream, we didn't do that
until radically redesigning the state machine in commit 6c836d965bad
("drm/rockchip: Use the helpers for PSR").

Thus, it seems like a reasonable API fix to simply restore that
behavior, and leave vblank enabled.

Note that this appears to potentially unbalance the
drm_crtc_vblank_{off,on}() calls in some cases, but:
(a) drm_crtc_vblank_on() documents this as OK and
(b) if I do the naive balancing, I find state machine issues such that
    we're not in sync properly; so it's easier to take advantage of (a).

This issue was exposed by IGT's kms_vblank tests, and reported by
KernelCI.

Backporting notes:
Marking as 'Fixes' commit 6c836d965bad ("drm/rockchip: Use the helpers
for PSR"), but it probably depends on commit bed030a49f3e
("drm/rockchip: Don't fully disable vop on self refresh") as well.

We also need the previous patch ("drm/atomic: Allow vblank-enabled +
self-refresh "disable""), of course.

v2:
 * skip unnecessary lock/unlock

Fixes: 6c836d965bad ("drm/rockchip: Use the helpers for PSR")
Cc: <stable@vger.kernel.org>
Link: https://lore.kernel.org/dri-devel/Y5itf0+yNIQa6fU4@sirena.org.uk/
Reported-by: "kernelci.org bot" <bot@kernelci.org>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index fa1f4ee6d195..9fea03121247 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -717,13 +717,13 @@ static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
 	if (crtc->state->self_refresh_active)
 		rockchip_drm_set_win_enabled(crtc, false);
 
+	if (crtc->state->self_refresh_active)
+		goto out;
+
 	mutex_lock(&vop->vop_lock);
 
 	drm_crtc_vblank_off(crtc);
 
-	if (crtc->state->self_refresh_active)
-		goto out;
-
 	/*
 	 * Vop standby will take effect at end of current frame,
 	 * if dsp hold valid irq happen, it means standby complete.
@@ -757,9 +757,9 @@ static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
 	vop_core_clks_disable(vop);
 	pm_runtime_put(vop->dev);
 
-out:
 	mutex_unlock(&vop->vop_lock);
 
+out:
 	if (crtc->state->event && !crtc->state->active) {
 		spin_lock_irq(&crtc->dev->event_lock);
 		drm_crtc_send_vblank_event(crtc, crtc->state->event);
-- 
2.39.0.314.g84b9a713c41-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
