Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FD22C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 11:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EqerD8wcjLs4XT6pYHELBt8Um/6+hiw/mHcGUkEy2JY=; b=Aq8TxqavhkXOb4
	Xko2hgndYpXg3DMPMIl+5A07eRytC1lEUjXYjfcv98LPmQJwYluSxFjg49SlMD8/CPvZfKThjhsLi
	eL8uAy8Ba21p8ZHMydl5Pr2SO3Zc10mV3h8BN4WB/8+0HGID33fUBkLGgivJHjPEDg5fW3gFDQCFJ
	prbrxl0pN8AKAhl5ebtjhwpQ9SgaNSC79kB/bCBHVOZoxTmSx8eUxdSH8JitSUYcLQRO+61qxA6Of
	tFTf+ngYdjKZ2r9Z2ymdC0GS9tMcnpApNNHplZLyo1MdJmS+y4qF2XOCP626LuWtwqp5kgXo351Xn
	JTBm7RPENVa/nEoRlUuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbeXB-00000004oy5-0Tgt;
	Wed, 07 Aug 2024 11:08:49 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbeX7-00000004ovc-2bSB;
	Wed, 07 Aug 2024 11:08:46 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723028896; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=nwDcFS+XVFi0a4twvEviFIqeAstYMHzekutR5w2dKOp6Grj39TpvK9mnyMDq4j1af4Bg2jF0jiY92cOUPTQugVSCb48EDFs7ccEsxnu5BO8i9ypcPk5VQhh51V8/ReWN+1dYoNgPvcaC/ryP6JdwyPg7DRl17dfmDOqKi5xuGnI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723028896; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=EkC4WSUbPnQOQmSPBmNPJYFUfUrufucZSvrElYLGaGU=; 
	b=lxDMw9dX9fvHF5QkwCf8CRFskdOG926owJw38dspYKOWdDXJUO5suvCjyd/RgZEyxCaQKSfKnuM2ULzmsriqQqsuvP0nE9QKNyf6bXCmSShaQCTttu65ae9Tr76wRXR2UwY3gI4JMt4R/57YaPt0SrdrTOwDgVgqpBdAnNZ1WNQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723028896;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=EkC4WSUbPnQOQmSPBmNPJYFUfUrufucZSvrElYLGaGU=;
	b=RHiWTX6B3JQkP6UmNE1AzOwuKuyZV9R7Ap1fziuSBIjogX0IMAgRbujv2nbF5L8W
	91SF76ffsGndBaeXnpX5IzAOSD0IM+ACs03mArUk6P9Ib1kUNxcX/yjSQKw05rQv1+/
	Rgbz6F9LKcZo3ttt2CwNPwlLChap4hhyi71lBv1o=
Received: by mx.zohomail.com with SMTPS id 1723028895968785.0625405019965;
	Wed, 7 Aug 2024 04:08:15 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Wed, 07 Aug 2024 14:07:26 +0300
Subject: [PATCH v3 4/5] drm/rockchip: Explicitly include bits header
MIME-Version: 1.0
Message-Id: <20240807-b4-rk3588-bridge-upstream-v3-4-60d6bab0dc7c@collabora.com>
References: <20240807-b4-rk3588-bridge-upstream-v3-0-60d6bab0dc7c@collabora.com>
In-Reply-To: <20240807-b4-rk3588-bridge-upstream-v3-0-60d6bab0dc7c@collabora.com>
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
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_040845_748303_BBF6EC98 
X-CRM114-Status: GOOD (  10.50  )
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
