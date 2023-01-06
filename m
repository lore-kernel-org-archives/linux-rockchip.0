Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78F01C4708E
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jan 2023 01:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdGqru3ODZFR4vjCHKyUILXyWjTpTvATpfM37qRUke0=; b=F48CFK6IQuwY+3
	v8cFp6h3cjfmu7NbExrq7ZGQcfIsEvnXh25J/mFV9rboORY4569JTiNO7Jjy24N1iBgIWeyBEJEda
	2Tqm4EjpggYoCq3msH0oKQ0Xu37bTAJhZ1tYZokSpW0QuXn43BqgiLtaJOHwPs/i+nLAQcfdOthzH
	o9v50zaIPVR38jRNkG3JGr0+WPQUlPI2MiQ7hDdRW+SwuHC20fGGpqxWaRlMaIKXsDpt46eYBz33Y
	S2uDUzImr/IJQ9ZXIgxgOVZ6llFHyT0SsE1oUR0r/3OMgQRI6P2ClXG03+FH0FR0jqQkLxo+G+GaL
	sA3K/9BMUmev4HelVjnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDbij-00GvQv-Uz; Fri, 06 Jan 2023 01:40:34 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDbig-00GvP6-Af
	for linux-rockchip@lists.infradead.org; Fri, 06 Jan 2023 01:40:31 +0000
Received: by mail-pf1-x42b.google.com with SMTP id w203so81727pfc.12
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Jan 2023 17:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c8gCbSML/p6Kr09DdbXaCD2bHHww6ZP3H/AZnf3Fw7g=;
        b=glG7tzqprNLpK21tSwouvhh29Ru3oQMMT++WF/8EdyAe9E16EXDVV2gQ7MgD/YLbfD
         7i5ORFsmWI/15TfC6bE9Zh+BDD8BK7F3Cr25qWSmjIrnEIqHKvXKZPM93FIz7er9IXb9
         P09kmLdjasAmuSD6VJ5W6wIZSgZ1vfi8G3Cak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c8gCbSML/p6Kr09DdbXaCD2bHHww6ZP3H/AZnf3Fw7g=;
        b=U5qPfMYImxeHqDmMj+qHkV4e28+mLQYEtZUPqupcJqLmt6tak76YAdy9d/xNuTbiUi
         EpApQ7IXAxdKUYGPluaNPnaPmsejaj4CXVqif0mfAyvcxoG6iCc1jPSQCRbAHk1asWm5
         TnveiO87ZrcPnHi97h2fTI67pJuVRPH6bXErlqMTO3PrG8bwMHcpq9GxvlqhEA3ayShg
         eY8ihhvI0Ob9cyh9OAc7tmM+vSYa00Pf++PBhcPRgbGoqm8RoY9dvzDjhnsE/d0ZjvVM
         2qVYSf4tDy3JCXixzAIrJdVvMM6GefyY1aunQNd6Tkxjx9DyLlM4cKUzlJQm0zVlKlSx
         NPOg==
X-Gm-Message-State: AFqh2krCmQUwpiU2uREUgYNjdRW8pr81zizKHpabHcT8YyE2fmh7ucix
	81KqoX35VAcxXUCzVxkkefFfJQ==
X-Google-Smtp-Source: AMrXdXvC7oDu6YyGV+8jfSbsR7fE2kCUxk5coKNVNbu0UAKMzyqM7NgLBCShEMc/OPWHessmN1xdtQ==
X-Received: by 2002:a62:e510:0:b0:582:5b8d:52be with SMTP id n16-20020a62e510000000b005825b8d52bemr19080880pff.8.1672969229354;
        Thu, 05 Jan 2023 17:40:29 -0800 (PST)
Received: from localhost ([2620:15c:9d:2:5567:fb20:aa4f:352])
        by smtp.gmail.com with UTF8SMTPSA id 142-20020a621994000000b00575caf80d08sm17868008pfz.31.2023.01.05.17.40.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 17:40:28 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Sean Paul <seanpaul@chromium.org>
Cc: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Michel=20D=C3=A4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Brian Norris <briannorris@chromium.org>,
	stable@vger.kernel.org,
	"kernelci.org bot" <bot@kernelci.org>
Subject: [PATCH 2/2] drm/rockchip: vop: Leave vblank enabled in self-refresh
Date: Thu,  5 Jan 2023 17:40:18 -0800
Message-Id: <20230105174001.2.Ic07cba4ab9a7bd3618a9e4258b8f92ea7d10ae5a@changeid>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
In-Reply-To: <20230105174001.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
References: <20230105174001.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230105_174030_389307_8D403521 
X-CRM114-Status: GOOD (  19.08  )
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

Backporting notes:
Marking as 'Fixes' commit 6c836d965bad ("drm/rockchip: Use the helpers
for PSR"), but it probably depends on commit bed030a49f3e
("drm/rockchip: Don't fully disable vop on self refresh") as well.

We also need the previous patch ("drm/atomic: Allow vblank-enabled +
self-refresh "disable""), of course.

Fixes: 6c836d965bad ("drm/rockchip: Use the helpers for PSR")
Cc: <stable@vger.kernel.org>
Link: https://lore.kernel.org/dri-devel/Y5itf0+yNIQa6fU4@sirena.org.uk/
Reported-by: "kernelci.org bot" <bot@kernelci.org>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index fa1f4ee6d195..c541967114b4 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -719,11 +719,11 @@ static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
 
 	mutex_lock(&vop->vop_lock);
 
-	drm_crtc_vblank_off(crtc);
-
 	if (crtc->state->self_refresh_active)
 		goto out;
 
+	drm_crtc_vblank_off(crtc);
+
 	/*
 	 * Vop standby will take effect at end of current frame,
 	 * if dsp hold valid irq happen, it means standby complete.
-- 
2.39.0.314.g84b9a713c41-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
