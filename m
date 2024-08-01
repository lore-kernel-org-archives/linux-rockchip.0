Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 035E5C3DA64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 02:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=naj+wqoGPpDx0wZ3X78F2k/Ucw7mTRBTz9DyRmfGRrs=; b=qIZXmbsA3eGVMt
	jSf208AYaA4CPV8g3ttlsGElzl92yRsJNqmd/jwL25aBWnQLtkn+DkRt/BN9/AYcIh+yULYEb/KdG
	wLl5ROPNpd4z8wEj5QTFfWlG8h2UuWmLEoBQ0wYP9pBz+XcKjeTDKxuGfwEhGpe+RKeDO6xjFBW+x
	bkm8aPq3jv/ZvLMtPVrujfIwF3Svw7Zk/gnWCKwHbgsvE9DLj8WGk4h9wZ2RqHjIjZcBR/RpdOg6X
	y8pAFSGCQQrVExPjSmPm9+24zVtyv53tIabNCnVrO+5DbjR8fmHTQd1CMFzmVqIPnddad21XOQPpy
	MY41Hh4h3yb9MdT6RWWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZLXr-00000003RwW-2BP1;
	Thu, 01 Aug 2024 02:27:59 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZLWN-00000003RQl-2dz6;
	Thu, 01 Aug 2024 02:26:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722479184;
	bh=89fKMA77G8ZMlK1UoBHBthXO24qwokaCENfTUaZojDg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=5E1YKnPyd91FZWGkWqtI63/mZdcm6PsSFrCmqeZg+o4TlnGwiShTdPbiodALCY37R
	 WQDSz/+Ci20lGFBbw+FGH8dj/OjSzIeu9gPXqdk0vpMSNXNjsn46P++IIeau3WHSfL
	 0udzua9HLsXCnc/g2OWM4Lftu8gjJ+94OYFBt0oefdWBeAUJaLXvmEtY+fP0eNntTp
	 4KWmJ5Ao3ISYXmibVS/YfR21motk8VtlRWA3exrID4/zR5UhTqz84y7UshMGqLHbRM
	 rhjwD3oXGJs1S0JSvcD9zZe0BF7Axi42gaQ48M+Aq1lhior3bZIe485Ae/k89EJOSi
	 sXI/bM4/SNFmA==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 558483782207;
	Thu,  1 Aug 2024 02:26:24 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 01 Aug 2024 05:25:53 +0300
Subject: [PATCH v2 2/3] drm/rockchip: Explicitly include bits header
MIME-Version: 1.0
Message-Id: <20240801-b4-rk3588-bridge-upstream-v2-2-9fa657a4e15b@collabora.com>
References: <20240801-b4-rk3588-bridge-upstream-v2-0-9fa657a4e15b@collabora.com>
In-Reply-To: <20240801-b4-rk3588-bridge-upstream-v2-0-9fa657a4e15b@collabora.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>
X-Mailer: b4 0.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_192627_845882_6EA0A413 
X-CRM114-Status: GOOD (  11.39  )
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

Driver makes use of the BIT() macro, but relies on the bits header being
implicitly included.

Explicitly pull the header in to avoid potential build failures in some
configurations.

While at it, reorder include directives alphabetically.

Fixes: 8c8546546f25 ("drm/rockchip: move output interface related definition to rockchip_drm_drv.h")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
index bbb9e0bf6804..8d566fcd80a2 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
@@ -12,9 +12,10 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_gem.h>
 
+#include <linux/bits.h>
+#include <linux/component.h>
 #include <linux/i2c.h>
 #include <linux/module.h>
-#include <linux/component.h>
 
 #define ROCKCHIP_MAX_FB_BUFFER	3
 #define ROCKCHIP_MAX_CONNECTOR	2

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
