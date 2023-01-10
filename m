Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B386BC54EBE
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 01:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b1ErSJMHWzQR56blz0cYOth/59z7NOAKVLYPGXJfFNM=; b=QCcrYH9tuGQnKF
	Xpdr2pfdpFh18a6JXyZqODXOGlfHUMOd1QcmOD7r/Yu0rNx8tGmzNa13ihHWB6EtHo//0aaB8b3XG
	Uw3QLJaiKec1fwmKI8WStbZhWLECa9ZqdMniU/KQ9WxwoSoo084bU+TXZPSJt0DiIlX08FhdeBTWA
	LSP0VJ+Qjv7KgK8MCpUE7YQWBSXZzMmvPh+NyYJZy9Wf9v8hPJZSHijyGhpqO3MtU1uPsxtX6BQl1
	mdTu3vW76r3/hQaj+ZUDSRxcDNoIXidzE0ZtQ8vByTNuJ+AaKDM+sg1gMpft9RE5utDTZ7R6y6gG6
	RzOKaN/RNl/cTsOPpHPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pF3IR-004pgO-82; Tue, 10 Jan 2023 01:19:23 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pF3IN-004pd6-3X
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 01:19:21 +0000
Received: by mail-pl1-x62a.google.com with SMTP id g16so11526444plq.12
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Jan 2023 17:19:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XYUtIGSdiXv+1u4fwXxMmXFQoGZCC8A3hPLYtYLpNZQ=;
        b=Bmk2SAk4VLW306BHVtiboysQjz5H/DFJf0Tjh0hvrntMIxLtck9ATcuiUFhmj7LHNL
         B2lYETyD1f5zrcSLwCFTSAlf7/2XYNt9xuJqUxURQT7gjmsPAV0cEbg1BsWx9KUl86lc
         IzdBVOADWqnelw8o3fWnEGPECU4Vf3WBPVXls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XYUtIGSdiXv+1u4fwXxMmXFQoGZCC8A3hPLYtYLpNZQ=;
        b=fnYzTI/1i52J2ofavstn0kPLE/TUrgYCj0HdfSHnuN+MC1dsxOVLOUbWgCO2M08TmP
         UQjTFGdEZZrd2B4PZnw4VtKOTGeMFMmPVf/T6W91bbn+/fDb3WPc9o84EUPpSOPqno+I
         pL5oNrzyaQ0GWgRkyZbBvUv2muVZhjOfUC8Uj1IfX5E7fWGO/1z073Vla90VQk9bGItD
         A9YCMq2vg+hPkG2LdYjJMnfmvQkAYOYNH1AsSrkij5V0V+ic0WTGUNi878uNSaL6VJeV
         NOQGheajCnxINFJCVb7nJq6YEYdKFci/1NzF5Mjog9nNhZJK4anRVoGO6/e+aacpxUgm
         WEtw==
X-Gm-Message-State: AFqh2kpFHmzKIRtZEi4o99Gk2DDl2ZCvn2qzp/6Aw5ina9N1NJmtbdnh
	dzZYGovRlRS/+XUKWlZ7J7iAaw==
X-Google-Smtp-Source: AMrXdXtC5EUTKJLeK/jZ2SnSPdj4TAQrYDbyicW7TAjCMQdn4sHpMINHMClNMz/+JBeoOEMkxs7HIw==
X-Received: by 2002:a05:6a21:999d:b0:9e:9685:f15e with SMTP id ve29-20020a056a21999d00b0009e9685f15emr100766242pzb.0.1673313555362;
        Mon, 09 Jan 2023 17:19:15 -0800 (PST)
Received: from localhost ([2620:15c:9d:2:99d8:feca:9efd:a216])
        by smtp.gmail.com with UTF8SMTPSA id j1-20020a170902c3c100b0018853416bbcsm6827097plj.7.2023.01.09.17.19.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jan 2023 17:19:14 -0800 (PST)
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
	stable@vger.kernel.org,
	"kernelci.org bot" <bot@kernelci.org>
Subject: [PATCH v3 2/2] drm/rockchip: vop: Leave vblank enabled in self-refresh
Date: Mon,  9 Jan 2023 17:18:17 -0800
Message-Id: <20230109171809.v3.2.Ic07cba4ab9a7bd3618a9e4258b8f92ea7d10ae5a@changeid>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
In-Reply-To: <20230109171809.v3.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
References: <20230109171809.v3.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_171919_166926_94537807 
X-CRM114-Status: GOOD (  19.87  )
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
KernelCI. The bug has been around a while (longer than KernelCI
noticed), but was only exposed once self-refresh was bugfixed more
recently, and so KernelCI could properly test it. Some other notes in:

  https://lore.kernel.org/dri-devel/Y6OCg9BPnJvimQLT@google.com/
  Re: renesas/master bisection: igt-kms-rockchip.kms_vblank.pipe-A-wait-forked on rk3399-gru-kevin

== Backporting notes: ==

Marking as 'Fixes' commit 6c836d965bad ("drm/rockchip: Use the helpers
for PSR"), but it probably depends on commit bed030a49f3e
("drm/rockchip: Don't fully disable vop on self refresh") as well.

We also need the previous patch ("drm/atomic: Allow vblank-enabled +
self-refresh "disable""), of course.

v3:
 * no update

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
