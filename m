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
	by smtp.lore.kernel.org (Postfix) with ESMTP id D59CEC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 12:42:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9F45361051
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 12:42:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9F45361051
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3H0OqXHRJr3Caxztjem8uM+j1IqTAg1skFI2YZTPo0=; b=ttbe+QRaX26+ae
	AFgAQyR/1LfjyI309L+tCl8giWKzaxDQhyPBWrdmo1/+yL881UXrUkIIJTMmZlBntGZAYBQfA72BT
	O+eeFE3Qqw77gQDHBHQlrGTZ0Txf1xls1J10qN6KXM3iOGYB6VjWM94QWz+duC+PZXhLe0JuaQ/jH
	n2TE85L7AqmAno1XMtHcMO6E2NHyYe9l6JQ5PKZFrbS8N5jJltJps9qqIWR7oar5jHXKWzo6h7wUF
	05nVXfZ0/ATRsiegtzPc2RUogIfuxH6o+U1+qDuBmdPfw0OKvpCviUGiiPN5iRIkJY4Y0YfYGrT2q
	YZAEC85981f2EYswZ4ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGKu3-005XhF-GN; Wed, 18 Aug 2021 12:42:43 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGKsv-005XAv-8S; Wed, 18 Aug 2021 12:41:37 +0000
Received: by mail-wm1-x329.google.com with SMTP id w24so1530224wmi.5;
 Wed, 18 Aug 2021 05:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BdAGUCyYQ4noYy9BmzZUbXym0YMYKVh78nm2c4sCaNo=;
 b=QYgwx9dlaH3RyUx/fnHN4Y6omSMw5U3O0ah91g35q7jVcI4dHVdFaNlCAdci13bVeR
 suo33HFIYdKFnq4fJ4fe46eLIB0DEHfW0gQnunFK9UotHj+5C6KGF12/5QBzbiS3jZ2y
 SVCHPCM+ztoxWXAZEzGNQgqBpc58ZaKALwgm6IBzLYv6HDimXgIBNTwo//C71fOLZlAn
 nK2XD5wDJEFm7z1KFGODM6Cm2Dwk4eb8pq5hH05OTNlMSqKAH0lLMvYmJx+uU6orLu7x
 wUTLsYC51JHA00/WP57cFAUcyotGJsTNCjdZy2QSY24l4JotdNC4vwjc6WdVuXGB/aiw
 aNfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BdAGUCyYQ4noYy9BmzZUbXym0YMYKVh78nm2c4sCaNo=;
 b=HcUWHe6mzbzkO6tRb5O8PYNknvmozm2EUVjmKzjmkEjQKnm6JZsBfJ49WZsfTHmSgH
 G7W7fINJXsOFt0HVIcILtvfgLujExEA315bfHHh8tR4tSyo4dgLTlNgPJB2giUcM08ZR
 tyxwxC1f1nePKCWARWr7i8TGYTL2mVacfd12tLmtmJTdD70D63MwVSi8dqjDXG8NfuNR
 KuEUtcyu7aTTLgXuArDSwqJUzPq1Vx6aKtF+zxcwLLyuIDi1J8Hv+FXdMTLvWsb6x8Hu
 s7veyBgsu4OTR6rDfuuAoEGw2eB6K6VUowkhB5ROmjtjbUj3DSORrGZYf6YTSL6NOfqq
 lUqA==
X-Gm-Message-State: AOAM5310wV9JFZgJ2SsgI0wFEskr8dL7WWHMSCd/mpuU7RCY1/MjRB1H
 Y8LwUR0oAMQX1t+Tz0qiZQQ=
X-Google-Smtp-Source: ABdhPJyZRhqaYkeCZQae/8p1e2NVcwuFX4TMTiDaEpXsViXU87cjD/bV2wjYHtpTMOTxNDHl4WsObQ==
X-Received: by 2002:a05:600c:4ba4:: with SMTP id
 e36mr8524581wmp.82.1629290491753; 
 Wed, 18 Aug 2021 05:41:31 -0700 (PDT)
Received: from localhost.localdomain (arl-84-90-178-246.netvisao.pt.
 [84.90.178.246])
 by smtp.gmail.com with ESMTPSA id a11sm5720454wrq.6.2021.08.18.05.41.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 05:41:31 -0700 (PDT)
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
Subject: [PATCH 5/5] drm: omap: remove obsolete selection of OMAP2_DSS in
 config DRM_OMAP
Date: Wed, 18 Aug 2021 14:41:14 +0200
Message-Id: <20210818124114.28545-6-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210818124114.28545-1-lukas.bulwahn@gmail.com>
References: <20210818124114.28545-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_054133_350219_B585AE7E 
X-CRM114-Status: GOOD (  11.43  )
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

Commit 55b68fb856b5 ("drm/omap: squash omapdrm sub-modules into one")
removes the config OMAP2_DSS in ./drivers/gpu/drm/omapdrm/dss/Kconfig,
while moving the other configs into./drivers/gpu/drm/omapdrm/Kconfig, but
misses to remove an obsolete selection of OMAP2_DSS in config DRM_OMAP.

Hence, ./scripts/checkkconfigsymbols.py warns:

OMAP2_DSS
Referencing files: drivers/gpu/drm/omapdrm/Kconfig

Remove this reference in an obsolete selection.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
 drivers/gpu/drm/omapdrm/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/omapdrm/Kconfig b/drivers/gpu/drm/omapdrm/Kconfig
index e7281da5bc6a..d6e4df291d6f 100644
--- a/drivers/gpu/drm/omapdrm/Kconfig
+++ b/drivers/gpu/drm/omapdrm/Kconfig
@@ -3,7 +3,6 @@ config DRM_OMAP
 	tristate "OMAP DRM"
 	depends on DRM
 	depends on ARCH_OMAP2PLUS || ARCH_MULTIPLATFORM
-	select OMAP2_DSS
 	select DRM_KMS_HELPER
 	select VIDEOMODE_HELPERS
 	select HDMI
-- 
2.26.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
