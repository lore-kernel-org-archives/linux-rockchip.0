Return-Path: <SRS0=TfDj=NJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CF92C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 12:42:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3944F61051
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 12:42:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3944F61051
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/wp+xKrj/WdmQ5kTEMxHRSTgvIanp8Bl2Ds3KAVYtA=; b=vHBkF/FgiuA2un
	jtF5jDWAyv+20/eNBXnN/sBisFi/ON601+ykS+pC2g5unU51oPcWzpIWxRkc2oG4RniGvOhd1Nrhi
	VFRJHl7BaiMqAzVixrnRj5JOydcpnG5KmAzLAR42i3TLdDfTN+EpSlQjwDw2maO7mlNXNlOIVGk22
	2EK0vn2qMmmwgBzZeA+DRH1hWUuRwcJy1o1N+/aEwkaUp1IkPjBM08h5LGpGpb97ng6JWx1NVsAMe
	97Qk2BI3efYgK6puma67cUiXu0bUk0yVNxnzjUpULGwoR1FhGOy0quSZQ3xhmKoRjGufBf15qLaR8
	ZTXKN4A078/xMrKFadJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGKtO-005XKg-FT; Wed, 18 Aug 2021 12:42:02 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGKsl-005X7R-7s; Wed, 18 Aug 2021 12:41:25 +0000
Received: by mail-wm1-x32c.google.com with SMTP id
 a201-20020a1c7fd2000000b002e6d33447f9so3488776wmd.0; 
 Wed, 18 Aug 2021 05:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7PolFHl4BCa4E4HG380dOZoCiWwe/gYoL591bvSVGBo=;
 b=c1GxZdd+2+kkeJZ4syYgj51Zg98RTZjLY/Z4IwPBEdIzTt49XtuWKeCb1bcCrVU4oN
 Izk9NWmOwP7kkaXp/2Mn53YkQfR/7fHJVcp92ZTDesjLkyO/DRCwZPWJ/yByOLYJPR1+
 zm3svX0pIC64LD+lGZ/dry6ECz8aimrYj58KwAVIIrG/NcA68jPJnvyNefOs93CZBhJV
 XRtCybrx9SAedtP7wZC98ZPPZw/S3G7fWok4s3NPfPyIVxnVtcL1R8XkAMXU6YiC+k1r
 Cng2mo0cabsYhxGtZHOCTmTKdD8C4WsukMjHHdCZOaziFfCFM3uJVRmet9G6TQB/MB6H
 FsZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7PolFHl4BCa4E4HG380dOZoCiWwe/gYoL591bvSVGBo=;
 b=IBq4JxmzG/Wx8oZzzbmDXl0mG2oSMlN7jots3eMMV7KEk7I18mqlgI1PACQb8oRiaU
 D/khP75gIIKPPwyY+wDsmL4emkuwQ5NTbx4VeK42jDlzZuaJCOWPyzpt0TQntZBAuHzT
 sJF84CT/U9q2+l0FcZDMZnx93xbEhy8cYD84LaGA/hzpaYAhdm/2WD3Loe3Vy75X/ynG
 IQRk/9Iu35d/yzaoyQXyFLqKP4/a4n1oV4LlVdsdkUykVzru0KwsLRC5QNSZ5jch7Hco
 FHReob5OZC68+9GifG9m29LMnIaTaZN7dTV1sOzGly3L22UfOcbtxf6MXK+YRfSKzp3Q
 dxbQ==
X-Gm-Message-State: AOAM531aT6+elyFcsgkmKsitRTUdBW7f4UQaq3MPduhtEcm04jd4/Own
 LoZz7USLWt8rSoBJ1U+Eg+I=
X-Google-Smtp-Source: ABdhPJyQ1VzwCaTRFpydCdrpCWhltvqmLieDWRpbd4w6l19jVmVkcZ/Q2gsXj0wLcwh21T24m+Fr8A==
X-Received: by 2002:a1c:1dc4:: with SMTP id d187mr8462745wmd.1.1629290481835; 
 Wed, 18 Aug 2021 05:41:21 -0700 (PDT)
Received: from localhost.localdomain (arl-84-90-178-246.netvisao.pt.
 [84.90.178.246])
 by smtp.gmail.com with ESMTPSA id a11sm5720454wrq.6.2021.08.18.05.41.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 05:41:21 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Emma Anholt <emma@anholt.net>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Arnd Bergmann <arnd@arndb.de>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH 2/5] drm: amdgpu: remove obsolete reference to config CHASH
Date: Wed, 18 Aug 2021 14:41:11 +0200
Message-Id: <20210818124114.28545-3-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210818124114.28545-1-lukas.bulwahn@gmail.com>
References: <20210818124114.28545-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_054123_343181_397ACFCD 
X-CRM114-Status: GOOD (  12.55  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Commit 04ed8459f334 ("drm/amdgpu: remove chash") removes the chash
architecture and its corresponding config CHASH.

There is still a reference to CHASH in the config DRM_AMDGPU in
./drivers/gpu/drm/Kconfig.

Remove this obsolete reference to config CHASH.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
 drivers/gpu/drm/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index f3bc90baca61..8fc40317f2b7 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -257,7 +257,6 @@ config DRM_AMDGPU
 	select HWMON
 	select BACKLIGHT_CLASS_DEVICE
 	select INTERVAL_TREE
-	select CHASH
 	help
 	  Choose this option if you have a recent AMD Radeon graphics card.
 
-- 
2.26.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
