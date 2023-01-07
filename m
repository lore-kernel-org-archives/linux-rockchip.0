Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C2E0C54EBD
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Jan 2023 01:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ol88YbJ4V4zcPDWmEVqgl2xhvWVnOFT6PFJHre349vQ=; b=yDIU3/evf++nzx
	BTC4M4DSJM3n2EFp63O6jerjA5k1YntrLuQTMghX+MYZmJC0+aC/DpxbHdDr8zAJnKjsDfy2RbtCl
	YDSAtXgtgIPM/PP9MGZIiob5P5n9hOqe+uiJhSCvhOs09znn17RBaG1C+3L1FK0iYoB2EYXXiWql6
	liZadwpl2ZyRxIEqVeIgG6fDpExYvlgJdbEuV2vRRi2TS3oFVm2U+6ek3YhBvLWC3LexbdvOuTLVc
	SOF4deZTs7aQV/yIn6oU7sm2KTB9gp2v5tH0obmJMrRMvLrMHWGU3UD6aQ0SVIXqzma/u47vW1R7k
	plO+l1Q1Tao/RGURurcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDxwG-00GHCA-GB; Sat, 07 Jan 2023 01:24:00 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDxwC-00GH9e-QM
	for linux-rockchip@lists.infradead.org; Sat, 07 Jan 2023 01:23:58 +0000
Received: by mail-pl1-x632.google.com with SMTP id n4so3537203plp.1
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Jan 2023 17:23:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mePU1ZAhSqo8qTV2sJWgAIGRWTZTuG5GYl0yO3MCKB4=;
        b=ORZnF9sbfKyWHytaUFPFsZGI7BSTg4M86QZcVlCqdAZbjZp7JQXb4WEWzUjS8C30u4
         VaGo9gRMDcaYwofVZlwp5RmXD0B/i9+aoHyJfYZ6zNok7RDhn8WtyBqNfAhy3WexA6FE
         oUbbMZcyraLMbrTbAf9ex4fX4I6dAu8TWyEYA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mePU1ZAhSqo8qTV2sJWgAIGRWTZTuG5GYl0yO3MCKB4=;
        b=QEHrXX/AdcnGz9kiT4uxxcT1QYXwtcyLTL1tVQTA62achqRayyxiQ73xKEoc1MtIPI
         RU3lhDjWBmT2+vIs5h9bhM87gzzpLBHCA82h6Q9SbIz0YyTbC2oGvqNt6o/no2XSxxRQ
         t64zub6bcCIB23EuHKLbqINjXx5NM/c/YHCNBcVkXoPvyGF6rpN35FmVT4bekN2YEbRB
         r45xCWwS8/QvTsztRMgc37BxuY5tiTVszhVg0OyBUWqUYlUSwQPcpxkxixKFsBCWgzay
         a1etEu+SSk8r5A80+3xfqFuHraSgOEEq9o0d+iq1rGzPwokSjql2DLvSQY8B9ymxji7V
         Pvsw==
X-Gm-Message-State: AFqh2kq5uXIWsU+n8M/mNvjh40XkP688BQHA5/jsV2S14Cr3PFmmBIlh
	iWgRG9VpalEPWYFZSahVaUD5Ow==
X-Google-Smtp-Source: AMrXdXvVILC1sku5q0Ao6IUCbaJtDoD3exxH985nTWiQEplQABh9TP8ue13rxf2FJyS7lDBveGM2MQ==
X-Received: by 2002:a05:6a20:4f88:b0:ac:5a0c:32ad with SMTP id gh8-20020a056a204f8800b000ac5a0c32admr55348750pzb.53.1673054634879;
        Fri, 06 Jan 2023 17:23:54 -0800 (PST)
Received: from localhost ([2620:15c:9d:2:bc4e:2cc9:68b3:15dc])
        by smtp.gmail.com with UTF8SMTPSA id q3-20020a17090311c300b0018c990ce7fesm1492103plh.239.2023.01.06.17.23.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 17:23:54 -0800 (PST)
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
	stable@vger.kernel.org
Subject: [PATCH v2 1/2] drm/atomic: Allow vblank-enabled + self-refresh "disable"
Date: Fri,  6 Jan 2023 17:23:22 -0800
Message-Id: <20230106172310.v2.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230106_172356_871908_D811C8F6 
X-CRM114-Status: GOOD (  13.04  )
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
