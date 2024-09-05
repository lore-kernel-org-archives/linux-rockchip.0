Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68212CE7AA1
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 22:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=er9xZFml3aR5eCk5cGWHOs6R2uYNmezQPLdkxCK1JYQ=; b=BXSPj8PC+g0yxp
	JC82bQRSXSLbCkJiJBQEt/3J/FRcAOlqk8JQXDD4N/m1Vy47QihMNgw6hSlHdG+mxT3VOySpDzNNz
	KwPcTrd8AhhGss8VjBp3DpcR2FkgugsRCXi3uEv9Z914gcY3EhrchB1pXN4X47Uep769GSVbRTxrT
	lQN8croiqCBGPzERujMoelYnxRQG/dqyLgQsabHPErrW0O2pFIBoAfsKT3gDveTaRVPAzvZUHo/wJ
	heUfv5cnF9VsXZbRjo2h/pBjhEMR89jnBbVyiBx968ML1VuLqVsevF6kjohQIcLxYpDNbLzlZT/ij
	06O8JJ3YbvXNu+kJw7YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smL9N-0000000A2Tl-3Ysu;
	Thu, 05 Sep 2024 22:40:25 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smL8O-0000000A2NB-0lQ0;
	Thu, 05 Sep 2024 22:39:25 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-201d5af11a4so13299335ad.3;
        Thu, 05 Sep 2024 15:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725575963; x=1726180763; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rCDYYiCppuB7n7e+YXIEe54LH8OdKy8Qsr87xme6vNA=;
        b=SXEnxPEdpsLlMacR/L1d2J3rVIZw6vNHwXF2CMjeMd69OeA87w/xDNv9LGsJquEK8r
         PX3PbfcfGAxX8F22wr+oSl6LyXpu30eAfjSZpJYtZOU076xDIYCuMdud6lwtQLSK1HQ2
         Bnn/4JAPlcNUcjYpiB7LusP5joYpgU+6GIkAbmMNW7Oq9JvD+fAQ4bbD5/kYz2rawg3C
         rc2cRz/wXID7LSlRsCJY2OEXrg4dGCu5rrHpa96iboHQXUA6HjHWkRkqpJyOsIQLGnPN
         97EFKw5KInAKYFOzFmRyHd+Ci/rQX7Ula0HK4XmiyzsVxmJi2ngPl9uHaCH8OO9iImjO
         fFQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725575963; x=1726180763;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rCDYYiCppuB7n7e+YXIEe54LH8OdKy8Qsr87xme6vNA=;
        b=jRhPvQyIYm5Yc3aVLPGj91XT+IJUxAAuCbhkCVyDQWIyT9zCZyXA8FHHkJ3aUfTQ78
         Exv6KrexPAaQdDcARISk+IIgc9bD0rodllCO3akfzSYt1NGJmx8V/EXw4Be8kbJCDekA
         h21TA//AsDSW2hvgo9KR5IqG6ZmbwAw7Vdmo2zvz1Ksl9g1OBCtOvFO8u4cBlrZJv5fR
         dT3hJsvywyl+Fl+RKUT7nojrsAwey7ytipt+2I3BmuTGmqFGBzcJOHFLg37+cFnalRm9
         dzs9nepU//xiglXqtGB0DPviGI6Tln5OPUtIQ9qe+7jlx6UxsDQiqSCcjm8DPqxiysFM
         8wmA==
X-Forwarded-Encrypted: i=1; AJvYcCWXx/AOR17F+GsCX7unIZQIc0RGDKubgD+R+3p6WiCyCnYjDCHSkjOIcYwaBF7bdWh7FRjjw9o/PYMJhe4PpyIv@lists.infradead.org, AJvYcCXa8NWEsDqIG33Vc6hi+kk4hF97iMpUGx5UP5x/ezogGGJ8WnCWwVjGOzw9E0wg8n/0VCv9Peuq7m2xW9waYGM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+AnCe3yryod9stg5D99w51BJf/xmsbxDqmkte0p+o7Lh5GUSu
	a4SNmu0uQCbii6B0XBpbggXPujk9+308vfABIiLdgC+S4eWQBH2k3lW3GA==
X-Google-Smtp-Source: AGHT+IFdDlOtC7QKiZljAYe/nH8z6tsEcq87j6lrJJXzigssQI2/0okjfjiTxKTZxUmFaIUPQUJsvQ==
X-Received: by 2002:a17:902:f610:b0:205:eec:5755 with SMTP id d9443c01a7336-206f0526051mr8889545ad.23.1725575962683;
        Thu, 05 Sep 2024 15:39:22 -0700 (PDT)
Received: from localhost.localdomain (111-240-109-89.dynamic-ip.hinet.net. [111.240.109.89])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206aea574dbsm33185335ad.214.2024.09.05.15.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 15:39:22 -0700 (PDT)
From: Min-Hua Chen <minhuadotchen@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Min-Hua Chen <minhuadotchen@gmail.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: include rockchip_drm_drv.h
Date: Fri,  6 Sep 2024 06:38:50 +0800
Message-ID: <20240905223852.188355-1-minhuadotchen@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_153924_243037_AD54F250 
X-CRM114-Status: UNSURE (   8.61  )
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

Include rockchip_drm_drv.h to fix the follow sparse warning:

drivers/gpu/drm/rockchip/rockchip_vop2_reg.c:502:24: sparse:
warning: symbol 'vop2_platform_driver' was not declared.
Should it be static?

No functional change intended.

Signed-off-by: Min-Hua Chen <minhuadotchen@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index 18efb3fe1c00..c678d1b0fd7c 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -14,6 +14,7 @@
 #include <drm/drm_print.h>
 
 #include "rockchip_drm_vop2.h"
+#include "rockchip_drm_drv.h"
 
 static const uint32_t formats_cluster[] = {
 	DRM_FORMAT_XRGB2101010,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
