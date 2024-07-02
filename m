Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E058C30653
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jul 2024 01:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EyP2f0AYkb+rr3GuLt+ISfHIjKPgE4CQZsFtgkAbhsE=; b=N1+aQ/DkiC7saW
	FIhS3BETM8iLznLE79wLEgDVJFTVqJlQq+5sWMRu8JJ9SMaEi116igtsgMY8O8CoT1qNEZsQHrk3/
	rt8MWAAeD4qDreMstx+qL9ncZ8SzvcPy8fRlr6553hrdbLYDwJ3kdfOGUZIPsyfrZHeWNbf+8bHzd
	uMdSkq33XaxQWdRzJW0hmKebZ8E4AXn877t0tkI0BNn3alOSH3GBokI2ohbxbzK7Tf2GA5FNL/O8k
	zLS17MgLUa5UonZN2SY9qFoELHE0y8ujIfuMNQUEgG62Fgms3uHYqA7giBpCZMUesm6JYlEtZdxDK
	bbY802ykoQIjtA5h21Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sORxA-00000005Ebj-3Wd0;
	Tue, 02 Jul 2024 01:05:04 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sORwy-00000005EX4-0HZF;
	Tue, 02 Jul 2024 01:04:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1719882287;
	bh=5z7atQ1VjiYvr2o9gWZIqlkvHfprQlCHTqWMYytQ00Y=;
	h=From:Date:Subject:To:Cc:From;
	b=Y7balNkRr12dGs53p8cujgzf8a47EFsbUeTXjjdWPBY7trHiJ2tdYeKKS44bBXmNt
	 CrEAd825ApjlVEufjeg8bJeTe5K9Ax8Zn4H8LAjPOPQbr3lXjZf4peHGJzdt/tIGPU
	 uQqXNdB80pLMHFk7rCs67NVjm97/kYifhZYwfAShvguDiCZron2f88CCzapobKTT58
	 ZRFj1s0POiyHvpUKGB9sxN62gUdUDHdrpmOHvovRuKqB2qFdwZcz9+HASuGSN37uAF
	 XWgIS9AQ27aCbldlDNk7oWAzCKOZ34Wc1oiCbguVTGIqVJlVswFHauvHsYcEFqaJLD
	 Xn3U1Y7AYGSVw==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B399937820DE;
	Tue,  2 Jul 2024 01:04:46 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 02 Jul 2024 04:04:24 +0300
Subject: [PATCH] drm/rockchip: Unregister platform drivers in reverse order
MIME-Version: 1.0
Message-Id: <20240702-rk-drm-fix-unreg-v1-1-5bd325ed42b4@collabora.com>
X-B4-Tracking: v=1; b=H4sIABdSg2YC/x2MQQqAMAzAviI9W6hTlPkV8SCu0yJO6VAE2d8dH
 kNIXoiswhH64gXlW6IcIUNVFjCvU1gYxWUGQ6ahjgzqhk539PLgFZQXtL72xlrbTkSQs1M5y38
 5jCl9N7zm72IAAAA=
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Sean Paul <seanpaul@chromium.org>, Jeffy Chen <jeffy.chen@rock-chips.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, Mark Yao <markyao0591@gmail.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_180452_294731_E19456D1 
X-CRM114-Status: UNSURE (   9.87  )
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

Move rockchip_drm_platform_driver unregistration after its sub-drivers,
which ensures all drivers are unregistered in the reverse order used
when they were registered.

Fixes: 8820b68bd378 ("drm/rockchip: Refactor the component match logic.")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 44d769d9234d..ca7b07503fbe 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -528,10 +528,9 @@ static int __init rockchip_drm_init(void)
 
 static void __exit rockchip_drm_fini(void)
 {
-	platform_driver_unregister(&rockchip_drm_platform_driver);
-
 	platform_unregister_drivers(rockchip_sub_drivers,
 				    num_rockchip_sub_drivers);
+	platform_driver_unregister(&rockchip_drm_platform_driver);
 }
 
 module_init(rockchip_drm_init);

---
base-commit: 1eb586a9782cde8e5091b9de74603e0a8386b09e
change-id: 20240702-rk-drm-fix-unreg-9f3f29996a00


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
