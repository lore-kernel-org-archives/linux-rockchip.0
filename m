Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12F44C3DA7A
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jan 2023 01:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qB6zjbipOo7cejJmnIxkUk8TX9iDChud3VeQr/CywSk=; b=Pa9OnLuFlwjkFn
	tZPkiFyFyZJ0cSp3HfCJtRVHp7spq5JvykNBwRQi+e0B1C1k3pk7fFa3Ny7EEmiVk7dh5datpxllY
	ZXonAhZJortoA5tcjyqnBY/Ncw6mjPG8F7uNyGJzqeMqdEjeHzIQOO07zETvkW7Z2tYnBlaTImczZ
	wUFOWs548moEK5gi8WUnQA261LF8jcDKjUQCar9HwXHI8zgSrNhZdd6uGdLIr/UpkXB4zws0dZ5nw
	loJlMJgmfyjPFX6xzdMzrd3+8MIcV0rdIJkqNTuaLXe2RRXn2Jh1VVXqW3U351Jm0WzksAtcvTw5Y
	lp+xfUDvERKL5OEhI/FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDbih-00GvPz-Sf; Fri, 06 Jan 2023 01:40:32 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDbie-00GvOD-LH
	for linux-rockchip@lists.infradead.org; Fri, 06 Jan 2023 01:40:30 +0000
Received: by mail-pj1-x1029.google.com with SMTP id o1-20020a17090a678100b00219cf69e5f0so3810402pjj.2
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Jan 2023 17:40:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Vd1mAgVVTT449fHfx2SSArigVZjhQAUUxQLxBkWmUZY=;
        b=DPHGui8QRmvaHU3DjCknrlpCldx/5v2OWyAyXICYBob9XLXk8DRWNug04ad+L+D6QF
         yQtKJe2REavJ/0MCusreMlT5MSx/4G0eq24SxO0ufeBTun+1XdP7BTN6KqtS2fV34YPD
         cvqScEg2/NatNc3sAr34tTgsDmpFnKUJ2dcqQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vd1mAgVVTT449fHfx2SSArigVZjhQAUUxQLxBkWmUZY=;
        b=LXR++UutjRi+Gy74Hh0VGm20B4hQRG0DBbC+D1j83tRzzohq49J6Al09vRj6zGA1WU
         DBdwrh+0lANUyyRvulJGBBWEPR7HzbFUV+H8MvmB8AQQMirNmQgD1brnSMsBHJWR08uW
         EPBJYKH4oE/bXyhJHzK6MN1h3bGQ7VQC3xbK+hotEKIlJoc7PImDafYTsXezrphi+1fK
         W4I6y890LZQFEuIgMas5C4DU7+kFKdPQDvNzERDA8tJq9tGUAImmj2sP/KHnEv0mNBea
         rNUFINx0F1CkQeav/FxTClL752R60YYPj7sbVKWAzb9Y4MT2snN3dMxkDR9gnd4ne2Is
         63EA==
X-Gm-Message-State: AFqh2koMBDJ23+QvVpT4dNW/4VVmyoXdOGLa0fh5YJWKf4BCmHVcqAIt
	hdGrSJaXCdtTkmQrvpKVu/DG1g==
X-Google-Smtp-Source: AMrXdXuA+H0C6hhXoQgKWSW+0hWutAD/Rw5+F2uGIQXQ1RV5rw8QgVaH85iAhFDqCwDsueI7WxmVcw==
X-Received: by 2002:a05:6a20:429f:b0:ad:bd55:6dcf with SMTP id o31-20020a056a20429f00b000adbd556dcfmr79280084pzj.28.1672969227205;
        Thu, 05 Jan 2023 17:40:27 -0800 (PST)
Received: from localhost ([2620:15c:9d:2:5567:fb20:aa4f:352])
        by smtp.gmail.com with UTF8SMTPSA id i1-20020a6551c1000000b00478f87eaa44sm22461638pgq.35.2023.01.05.17.40.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 17:40:26 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Sean Paul <seanpaul@chromium.org>
Cc: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Michel=20D=C3=A4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Brian Norris <briannorris@chromium.org>,
	stable@vger.kernel.org
Subject: [PATCH 1/2] drm/atomic: Allow vblank-enabled + self-refresh "disable"
Date: Thu,  5 Jan 2023 17:40:17 -0800
Message-Id: <20230105174001.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230105_174029_012243_3974163D 
X-CRM114-Status: GOOD (  11.27  )
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
vblank enabled here.

Add a new exception, such that we allow CRTCs to be "disabled" (with
self-refresh active) with vblank interrupts still enabled.

Cc: <stable@vger.kernel.org> # dependency for subsequent patch
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 drivers/gpu/drm/drm_atomic_helper.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index d579fd8f7cb8..7b5eddadebd5 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -1207,6 +1207,12 @@ disable_outputs(struct drm_device *dev, struct drm_atomic_state *old_state)
 
 		if (!drm_dev_has_vblank(dev))
 			continue;
+		/*
+		 * Self-refresh is not a true "disable"; let vblank remain
+		 * enabled.
+		 */
+		if (new_crtc_state->self_refresh_active)
+			continue;
 
 		ret = drm_crtc_vblank_get(crtc);
 		WARN_ONCE(ret != -EINVAL, "driver forgot to call drm_crtc_vblank_off()\n");
-- 
2.39.0.314.g84b9a713c41-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
