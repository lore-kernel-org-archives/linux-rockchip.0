Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBD16C624D0
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 19:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XG2Lw7k77eE78iZKLuYzS/O3PPam0chc7BImNtbzbuI=; b=choloCEDx72AKC
	LFHGiiAgYpqZVKJxNOaxrMIunIYR/aeDEPRoKS7diIMPf62kCehELwlAVwmScRvPAQz4gojCZuknA
	9tF0n7lnra0NzrAXL7+T2queIR7OaZi5Q0zNUk4uqyTuWdZULeiRWw06mS8MqZH86PHEqZ5hD2s8t
	2Zk5h7MmVwPOxli8BisclP1uAbq06GzZz4s4V2dzNgm2KjQt3qFpuPAWlBX72AQoEq/1j/xSueS69
	RnmNy2EffWLNXIEwzeJunJGcD2FXnFg4XsXhSeKBB82vz7Np7sgX54hOMUUQMxYYnk9Cu4MFLD04r
	mibNnJBaYxVNLYurUJvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1UZw-0000000DGXG-0IPI;
	Tue, 01 Sep 2026 19:55:32 +0000
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1UZt-0000000DGWG-3fSq
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Sep 2026 19:55:31 +0000
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-6b0fd2ddea2so192566eaf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Sep 2026 12:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788292528; x=1788897328; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=jE7YeOTH+Slgx2JFrDNEXYntxMlmYaSvMdCwqmpupuI=;
        b=b1aIoohBJvkLvROKETE0bycfn3/Ulp8m15pUpOrYcsMtgTbq4f+PRCj7bWPHE0Y+up
         YCWN14RKJX1lyvNo0skClz4QWGU3UHDZu160ZTYm0lMAYpAHNKvxXKS8TIZQq36ZYlip
         R5H+pkjQWzIxuHoiR4AB6hA+8seRISnbisB0KVGgb2HmeVMHfJahDE0C3tDiisZjOE6n
         rafBYc0YqnzcbHi7pLHN3VPEvEYc3LKEsO3A3RTP42Wf19o5L2pK+6lsmTogD/yTXhSG
         1xO790WP8oa7IxvK7mtd0M5g15SRgtpxOACYQzZRnxm28jUfYiae7LbaP5TXoxCDFuJU
         v1UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788292528; x=1788897328;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jE7YeOTH+Slgx2JFrDNEXYntxMlmYaSvMdCwqmpupuI=;
        b=nZx/KS0TyoDooQYbm2TE5wROxga+scCGkEA9AGVl/sKyGBWwQtT9QfvZQ6guXh+4v2
         ScowxGJ2dPqAU4mnYmZwOF0gQN1sZmGGoeOcE6Zfbtz8aXtCEjaOZ8M1ltLA+206x11C
         bzZnlJsEPTpEeamxnlKi1kXomuYOXycWlvkBg9xnUDfA5+LYhHkhnC89fsOtgqu51gy/
         bMS/WPtHg9kdlV5QyOm4t7K7xsQKxnfH+wV52tirkI3HWGUejEs8fotpNj1NEwgR/VI0
         lanb4zD//dQzzLDGoLPyWKVu/8CkCkI5cc3norSzQt6mD252F4BqvVR44nrSRytdoOaF
         NX5Q==
X-Forwarded-Encrypted: i=1; AHgh+Ro1k5DY0vwsmz/5AOBov0xxd/Q524z9rEDWnAsf0RIrGYOx7kExzazsb9sYssoTkLX+ic8dBU6c/xOSOIItZA==@lists.infradead.org
X-Gm-Message-State: AFuF++kCNQ/ySuQlqZ/GV73YjrgYsGSAPLA+3S0l8ncDZDHJkJVyUTOm
	2IDb0fTB+pvYTXUdSPZog4YKDS+G4rQ9Uj4clWXnS+86934whdjV44L8
X-Gm-Gg: AR+sD12Ek5JMi3RNvcmnFklD/v3R5ya8S9hAAztVIzS1LIsreOPRULYz/CmTiAU4rmv
	wQ6BKTop7HNHVOO0uSaNLzPJVnTJITPhIlzgS5iaX4gmlxHkOlr/OBXqTwCNV+ZdHEe59dvH2ht
	BAcXX6fEmk8N4//mdpI+7pmx3+vZOXLDpR0swMuIaKN7U/0DzTSJ5NgA2RqZ7WAXTNx32cCJMmE
	gH4oEY9KMw4j90who2sFDMasQFjIcdY57yLrOVoB+O0L9gl6evGoNUn7Vq/kBm27gpTFY5oEa3P
	5VRxdM6qaTtDI2sJ1BIWFyR4Uh/lvEadzZJhxXdyQUwHE2UY81RGs8pcjdJi7+ZXTHB6+xLEnDt
	+Z3av5vSTPkG00z+0u722Y3SyiS2LGkL3bgUoASw6B4AtO5jN7QEHEGdbFu/kHX+ZfopLlMvKHQ
	0SvzdcEXVd/6vSxIzgyWSg3nSEEDw4LmGOYM36U1vu/gaFwLwvyeBEy4NxiFYWS0iyny+/OgyJS
	sVHrkFrZ8ewoP/jNFLSxarXMjqqmKfVy2X7WsTHL80Akak=
X-Received: by 2002:a05:6820:823:b0:6aa:cce3:ab61 with SMTP id 006d021491bc7-6b372d20e4fmr8604105eaf.9.1788292528131;
        Tue, 01 Sep 2026 12:55:28 -0700 (PDT)
Received: from memorizer.localdomain (47-163-111-11.bng01.bytw.tx.frontiernet.net. [47.163.111.11])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6b40f81f374sm868636eaf.14.2026.09.01.12.55.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 12:55:27 -0700 (PDT)
From: Yudi Yang <2000jedi@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Damon Ding <damon.ding@rock-chips.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yudi Yang <2000jedi@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH] drm/rockchip: analogix_dp: bound endpoint name formatting
Date: Tue,  1 Sep 2026 14:55:11 -0500
Message-ID: <20260901195511.2761251-1-2000jedi@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_125529_950309_D0B004B7 
X-CRM114-Status: GOOD (  11.02  )
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

rockchip_dp_drm_encoder_enable() uses sprintf() to format a device tree
path into a 32-byte stack buffer. Device tree paths are not limited to
this size, so a sufficiently long path can overflow the buffer.

Use snprintf() with the destination size to truncate the generated name
and keep the writes within bounds.

Fixes: 729f8eefdcad ("drm/rockchip: analogix_dp: Add support for RK3588")
Cc: stable@vger.kernel.org
Signed-off-by: Yudi Yang <2000jedi@gmail.com>
---
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 587e60232ec7..efd5a98e80bd 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -241,10 +241,11 @@ static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder,
 				of_graph_get_remote_port(endpoint.local_node);
 
 			of_property_read_u32(remote_port, "reg", &port_id);
-			sprintf(name, "%s vp%d", remote_port_parent->full_name, port_id);
+			snprintf(name, sizeof(name), "%s vp%d",
+				 remote_port_parent->full_name, port_id);
 		} else {
-			sprintf(name, "%s %s",
-				remote_port_parent->full_name, endpoint.id ? "vopl" : "vopb");
+			snprintf(name, sizeof(name), "%s %s",
+				 remote_port_parent->full_name, endpoint.id ? "vopl" : "vopb");
 		}
 
 		DRM_DEV_DEBUG(dp->dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
