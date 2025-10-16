Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 464EFCCD194
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Oct 2025 08:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTt42QZMTz5LZ9llyXFosfcY9U4KfYtCDwqQs6KtwD0=; b=aSxFoEwwku89EO
	29xFpu+w0dIsLMzV9sKK76kXmScn4k7clg2C/IrXcVLRtR5PoIpMcAq8JXw3c7isHmdvk1a5oxBfV
	v3p8MGy9GlM7pXnB6/UwZiez3kcikLhe5RjIWm3AFJwKs3TTyjULJ9uu954ZY45m49ZqJCCxVJOME
	qzfvR+TSRTfFerAl2fnmlIb/uMMCGnk3op2suE0jvPHDVnwSUARBMLs7AwsFKSosFzOEvTEJF2mAI
	gAI9Fa62chTGWhTIlgQ0UqgTtcR4pqkRglmrmFXBaKkcF5Yku1vvSZkJ9TuM+vCbKiV1Tyrs3p96v
	xzcM/VKg0NY44uAI33dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9JWb-00000003zbX-2uWa;
	Thu, 16 Oct 2025 08:39:53 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9JWY-00000003zXH-05HE;
	Thu, 16 Oct 2025 08:39:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=Ix
	Gc5ZdTT14v81WPC3wXsCZyyieCXulxCvLgUe5Hq3g=; b=E/GsQi+BzG53MLkk6s
	Mcv08ad341bMn17yB1n9gsZFLBeCSfwZfw4GEDkFte5MOhrd6jcYBQxFlvZQ7xbO
	5CLFakkeuQfQij9KzUkj1610gyc77m1nJxcRrIUTAmQeyH47S5ahzwi4mCH6LHee
	Ork+XLvz/V7nQ3Oij5mxP2iIw=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-0 (Coremail) with SMTP id _____wC3f_8Ur_BoSVKcAg--.8978S4;
	Thu, 16 Oct 2025 16:38:53 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: dmitry.baryshkov@oss.qualcomm.com,
	heiko@sntech.de
Cc: mripard@kernel.org,
	neil.armstrong@linaro.org,
	andrzej.hajda@intel.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	Laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	rfoss@kernel.org,
	simona@ffwll.ch,
	tzimmermann@suse.de,
	knaerzche@gmail.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v8 2/2] MAINTAINERS: Add entry for Innosilicon hdmi bridge library
Date: Thu, 16 Oct 2025 16:38:32 +0800
Message-ID: <20251016083843.76675-3-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251016083843.76675-1-andyshrk@163.com>
References: <20251016083843.76675-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wC3f_8Ur_BoSVKcAg--.8978S4
X-Coremail-Antispam: 1Uf129KBjvdXoW7GFy8uFyxCFy5Kr17WF4rXwb_yoWfGrX_GF
	18JrW8Xr4UKFWjy3ykC3Z3G3s0k3yxJF1fX3Z5twsrJas8AryDJw1vgry0gr15CF1xGa9r
	Way5XFyakr13WjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUnkWrtUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEBboXmjwquCKXAABs1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_013950_407614_A00FD69E 
X-CRM114-Status: UNSURE (   7.51  )
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

From: Andy Yan <andy.yan@rock-chips.com>

Add entry for Innosilicon hdmi bridge library

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

(no changes since v1)

 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index f9f985c7d7479..0adcfb1c264a1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12299,6 +12299,14 @@ M:	Samuel Holland <samuel@sholland.org>
 S:	Maintained
 F:	drivers/power/supply/ip5xxx_power.c
 
+INNOSILICON HDMI BRIDGE DRIVER
+M:	Andy Yan <andy.yan@rock-chips.com>
+L:	dri-devel@lists.freedesktop.org
+S:	Maintained
+T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
+F:	drivers/gpu/drm/bridge/inno-hdmi.c
+F:	include/drm/bridge/inno_hdmi.h
+
 INOTIFY
 M:	Jan Kara <jack@suse.cz>
 R:	Amir Goldstein <amir73il@gmail.com>
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
