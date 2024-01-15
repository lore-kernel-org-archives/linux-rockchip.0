Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E98CC3DA79
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jan 2024 09:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DRAY75P2vk0afhApG/80t9/gP3+nnVSjGRuvkHmAU0c=; b=ckb9YIanLVEs9L
	PJQT9kFd3CikhwjLNyqhz71ACmRq0JNymNC69kXKBgifIzh0dHmFRcdiDx7EYXvhSKOLL6lHK4qid
	DuosxEjjIGzkTlsh7ECzOcc9rqvjiUyUgPkpKwqoETCnsGjk8gO1a876B3dVDqxV3/E4a1fN7lGQL
	roS7jGM2p7omgve0tecgYPeoK0ZGfdhUw/5vUv/GrgqSDLAq6LqqePHctj+CQwycut0sx7Z77pice
	Ug+ALRvVAuXWvmHwS0ZnT9RMroCYGfHXbp4vSAdVaxiLVYXhcdm28d6HTERIPafe9wJYPTAwY3013
	CpMTuEZWMr0YMnyt7iIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPJDT-008PQp-2n;
	Mon, 15 Jan 2024 09:25:11 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPJDP-008PMt-2z;
	Mon, 15 Jan 2024 09:25:10 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-336dcebcdb9so7974378f8f.1;
        Mon, 15 Jan 2024 01:25:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705310700; x=1705915500; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tVtFgKZwIFS1vEBdEVjotaw6JZpTlhG6vAn3dQd7JeU=;
        b=Hq1eHGSXbkHn9w9W1y6RvojqvOaF77PiXCdiJsHqNoGI9K23Jel7ynS17kVy8zHA03
         82CvXJtbb35E1efhgcH///8k6YeggmZan/2JhnDNzsFzjU3OpD8uHSNRpObggf791WjZ
         rLhXHLEuxz7NEKE29kDzVcr0qbWiMN3B2Vw65ycI7Ld1nRQVZFFxQR3BvgVTqjO8+Wah
         oRRlqtwUPfgl5+l7+2Nqjr1M+kA1lgNaYcc+N8K8iiv20cA+4FXOlhOZMRdVBBSkxMhD
         QiQ5H/HrhcRvsyZnUeKHZNd+pph1XFaYEk7wCaAHWC/sLg+Uf97V6liEJKIFa9tLmPtw
         xTTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705310700; x=1705915500;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tVtFgKZwIFS1vEBdEVjotaw6JZpTlhG6vAn3dQd7JeU=;
        b=tNdpLBCOVSMEwZlD1hsDjhhD+6e7Wva6qZYCDx/0r+dhi7bKB47/ahA8ZZUPkFtFkH
         EGT64jyW9geIIKFJD0EMnDCAtNINu/AYCB1HZJoNw5GMJiyeEgzY9nrthZkVmzcvWxd7
         otm07VkMN4/kiH6OeZ53WRm3wW4AM/wJnk33Tbvzizv9kmbIYTgyqVr+IEsKNAfOBepM
         85FbvvpZ2Q7kEtxdpmP3pYEFIWkndRY0RHYgMkswSCfvwVN6dtUSaPl1EGppxQrgjtMC
         Jw7EJkDATKxXhiAXHDtLkjfCKdKK13WIoe6CdZRFyqsVbafEaiVhuY3be1IViTqpxqDD
         eVew==
X-Gm-Message-State: AOJu0YykAH75UPGy70evpL7BDm5ukMFJ6uSiaqjYyYWxmZIDW94NKmaL
	nVEVZdjO0oEUOFmgzFOYTQ==
X-Google-Smtp-Source: AGHT+IFWA+Z+Q6sM5+EDxdV7QvTKq8nlsTgkfw59qSIaFAN6KRsmaa7Z2RYvssV+Zwrl5Nnwh2tI+g==
X-Received: by 2002:a5d:50d0:0:b0:337:99fb:ce2e with SMTP id f16-20020a5d50d0000000b0033799fbce2emr1306430wrt.209.1705310699743;
        Mon, 15 Jan 2024 01:24:59 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:702c:8d99:9a73:8e9d])
        by smtp.gmail.com with ESMTPSA id c18-20020a5d4cd2000000b0033740e109adsm11325864wrt.75.2024.01.15.01.24.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 01:24:59 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Alex Bee <knaerzche@gmail.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] drm/rockchip: inno_hdmi: Explicitly include drm_atomic.h
Date: Mon, 15 Jan 2024 10:24:35 +0100
Message-ID: <20240115092434.41695-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_012507_961444_4EF2E2F9 
X-CRM114-Status: UNSURE (   9.51  )
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

Commit d3e040f450ec ("drm/rockchip: inno_hdmi: Get rid of mode_set")
started using drm_atomic_get_new_connector_state and
drm_atomic_get_new_crtc_state which are defined in drm_atomic.h
Building does currently only work if CONFIG_OF and CONFIG_DRM_PANEL_BRIDGE
are enabled since this will include drm_atomic.h via drm_bridge.h (see
drm_of.h).

Explicitly include drm_atomic.h in inno_hdmi.c to fix this.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202401100949.ZVRr0pIa-lkp@intel.com/
Closes: https://lore.kernel.org/oe-kbuild-all/202401081720.UtgAZgba-lkp@intel.com/
Fixes: d3e040f450ec ("drm/rockchip: inno_hdmi: Get rid of mode_set")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 925320fef0a8..3bb8f1382612 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -15,6 +15,7 @@
 #include <linux/mutex.h>
 #include <linux/platform_device.h>
 
+#include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_of.h>
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
