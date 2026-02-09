Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7582E81BDE
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Feb 2026 16:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TfUKFBwKE35F9ruqu1Id/Wu/yQ7kpZy0C21kalhHAcg=; b=iOXB+eSGXokdku
	lo3kBrVqHbL50J4sgetCRVqqvqO13TcWyoFx7WDofpH86HPGqC9vxMRUpAdEkgFGq0oOMWTeObUke
	/4iECYoA2CXCkF6nWegKk5z9zY/KKFC/1xt+7WDXh1ntLkYequJ+sYCTOY+YUw597TI78MwZnfHwX
	yUHqr9BfsMV2plFt2mBt5j+bGo3VFy4GggsZ4tf5tJfWN2c9jjWANNFD8OmWwqNaBSu8jE3xHDTVX
	Euh4ZbqLz+uwt3Q4/iu7bUBIGMoHm/vaGf6vUgXoYL8N8Ue/47z0Xhx/2OBQftYO8/jT38mYy6zuv
	nrmFPNu5aMF3z2NzI7xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpTwW-0000000FfTn-2Jsb;
	Mon, 09 Feb 2026 16:16:56 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpTwT-0000000FfSt-3yQv
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Feb 2026 16:16:55 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-2aaf59c4f7cso5011645ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Feb 2026 08:16:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770653812; x=1771258612; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2aw0A1Q7+XXVhB8aaJQe16/jz0kJyMiPsKTBLCCHa3s=;
        b=Krbw0Gd9Sqa6ux8JiUI6/OvPrq5E0tOOv/uyCPysayyM4YKwPv2pHYKDDPoGDToHr6
         jmzpIrP0zPO5vyOVysqa+zsEzMO5Lv4A6driAQFIL3WfRRt6lVom/pptiICwHsfBbaMB
         FttcdWO5R1d6+1+9axquaqVd93MW0PO6R1XnJIqzgKG5T8iMGRwZo1Gfazz8eBv8r7M/
         0rCI+uXpp2If4jKKXYx94nrEdKoX6+7wD388BxhomeTpuIUhbxYgaRwbnHyxNLHNZ0ST
         vTH/70cZpfgp7ViSjfG8Pc1swdIoA3RZxYGOjCzmBLR+7uiUpUh/sB+Jsy36+Poy7bCV
         2vXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770653812; x=1771258612;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2aw0A1Q7+XXVhB8aaJQe16/jz0kJyMiPsKTBLCCHa3s=;
        b=h2FuTxPBTZTnxM6ZnIR24/KP7+y6zgpuXtDBrmMW2KCQSQ+zgcXKQ+3TZzx2m1fzKP
         Uy13yeNA9WwyATOR3D9efnPso/NZ7BWTAA+zk0e6vcYKnqsWfBbSv0lfoDgwn3kVrYxZ
         ipKg/kOMvvcGAFh927TMW8c7ZFq2GzXLawyE4RrMx8CbAoae7OKLrglfVhH4x1zgAl9Q
         mfAM//EnTEcLrvTHQIHnyx2+MBzKngP1nIL7rBAUDjpad3n8WJ6yAw3t1lC7uoUt/0MM
         iVRc0Ltiq9/tLNOfDXe1XZqqvwAoAFsl1lXDum9WRaJ10o2+dFa7aTg1nP4KJ9y6TbXA
         IjtA==
X-Forwarded-Encrypted: i=1; AJvYcCWJ81+pBMj1E5elfQ9DREj7fBDED6S8fTzF7kxsOFr6hELO9kBd9nSPxDc5x4/6F2jhrAC7fT7ZVbuhbUEUPg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwuAQ5uXpfAolCSxv3suiIVv7o+kN1d6Nogba5lgLfKfd35hSKJ
	3QIbPf3jZABCXn/3BMHyezAAHJGyPWpP4Kp6kv842aQ5FwedlMYMrtak
X-Gm-Gg: AZuq6aJ/OHuGB7ez9sbE+qltpO/xG+xPIcu/PbrWO7Z3tNW+uamRGC4+N0UeZv48o9M
	ImPaeUzFiWkDjjWRYF+uXo7t9QFS/QgKBc5DlDwnGqSc21o6B4Nwe3xkE2oLogudhCUvWjhf/x3
	xcmDH1C0x//N2VfrVDiMllOdVRK01/uN2dilt4C3/MygQpqd2xLCFS8skJw/pJkZ/ecppKKbA71
	plgm5KVS0uVEgvmD6f9NKgRsezWFjiWOt7hT1KXHvsMhrOD+e0Ab7wE+fSiHMkQk9Qs69tVNJgH
	9Ublg0X/733tUqtd8XyYz6ZhyBlPGOklDiG2xD3KL98nExeZwLuQG3IDD1O4lHAb3Fs8FgGYSfs
	liexCwBj6WBW4CVOxY0BGiK7bhUB3naBKYp5L4WliflaQioYdCbLdvZFTcBbiJQ5SYitZedOi5o
	3v9n2VJA2bDd2/iPhL99696YCIr43b57w58Hue2+Ufhux0AMo5jAmH5aafSA==
X-Received: by 2002:a17:902:fc86:b0:2a0:e532:242e with SMTP id d9443c01a7336-2a951607ae3mr114928935ad.11.1770653812464;
        Mon, 09 Feb 2026 08:16:52 -0800 (PST)
Received: from localhost.localdomain (1-165-93-187.dynamic-ip.hinet.net. [1.165.93.187])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aa3ec42e2asm110116805ad.53.2026.02.09.08.16.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 08:16:52 -0800 (PST)
From: Hsieh Hung-En <hungen3108@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Hsieh Hung-En <hungen3108@gmail.com>
Subject: [PATCH] drm/rockchip: vop2: Use drm_err_ratelimited() for wait timeouts
Date: Tue, 10 Feb 2026 00:16:21 +0800
Message-Id: <20260209161621.6136-1-hungen3108@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_081653_988429_95F7DB1F 
X-CRM114-Status: UNSURE (   8.79  )
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

Replace deprecated DRM_DEV_ERROR() with drm_err_ratelimited() in the VOP2
register wait timeout paths to align with current DRM logging helpers and
avoid flooding the kernel log when timeouts repeat.

Signed-off-by: Hsieh Hung-En <hungen3108@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index f3950e8476a7..02a788a4dfdd 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -2106,8 +2106,8 @@ static void rk3568_vop2_wait_for_port_mux_done(struct vop2 *vop2)
 	ret = readx_poll_timeout_atomic(rk3568_vop2_read_port_mux, vop2, port_mux_sel,
 					port_mux_sel == vop2->old_port_sel, 10, 50 * 1000);
 	if (ret)
-		DRM_DEV_ERROR(vop2->dev, "wait port_mux done timeout: 0x%x--0x%x\n",
-			      port_mux_sel, vop2->old_port_sel);
+		drm_err_ratelimited(vop2->drm, "wait port_mux done timeout: 0x%x--0x%x\n",
+				    port_mux_sel, vop2->old_port_sel);
 }
 
 static u32 rk3568_vop2_read_layer_cfg(struct vop2 *vop2)
@@ -2126,8 +2126,8 @@ static void rk3568_vop2_wait_for_layer_cfg_done(struct vop2 *vop2, u32 cfg)
 	ret = readx_poll_timeout_atomic(rk3568_vop2_read_layer_cfg, vop2, atv_layer_cfg,
 					atv_layer_cfg == cfg, 10, 50 * 1000);
 	if (ret)
-		DRM_DEV_ERROR(vop2->dev, "wait layer cfg done timeout: 0x%x--0x%x\n",
-			      atv_layer_cfg, cfg);
+		drm_err_ratelimited(vop2->drm, "wait layer cfg done timeout: 0x%x--0x%x\n",
+				    atv_layer_cfg, cfg);
 }
 
 static void rk3568_vop2_setup_layer_mixer(struct vop2_video_port *vp)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
