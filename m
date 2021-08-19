Return-Path: <SRS0=Qwjt=NK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07103C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 11:24:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C3EDF61130
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 11:24:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C3EDF61130
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3H0OqXHRJr3Caxztjem8uM+j1IqTAg1skFI2YZTPo0=; b=18Pi/fbZh7Ye4Y
	2Imrx1F/g1ISI6JtaI2wGNw0zW4pv0kO6nN6txn0s/ST4Wc6qUFqUkU+mt7bKuUBkHtHYEEyvNE/G
	0T0vHu+AF+wNQ0Xvzs0N1zl1wn8BAnil0ZhdpuyCV9gYtYJWhg41nI3vnXf6bZtpVr+mRUm7CbWwY
	F53bjKikvdSEVJbXSh1V2tGVaJYP53MxTZhGdL6dlnEwO5HhqcRF7eOSQ+fo2YFpb2wThSRP52n6n
	xWkgOC96CNqOADQfCExLpqzKqs+ZKFvElniUAJIbRiWxlzz1uemuMG4QEWnQCekbQSUxLaXZE08Kp
	aByyhKNVGsscbc37lZvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGgA6-008AKd-Db; Thu, 19 Aug 2021 11:24:42 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGg8d-0089ev-K7; Thu, 19 Aug 2021 11:23:16 +0000
Received: by mail-wr1-x436.google.com with SMTP id r7so8646551wrs.0;
 Thu, 19 Aug 2021 04:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BdAGUCyYQ4noYy9BmzZUbXym0YMYKVh78nm2c4sCaNo=;
 b=dh0h2hzZb2yroUpq/SL+knwkJ21CNnxU/3mS7j6DNE7Y2XImBRQOxf0N0hBLYWNCzT
 ffd8uBCBYXnuFu61ChDmzfYshuGB2BFxSbB0Y4M+JE/21wxCUsxQtSS9jBkeoj9xjwUy
 VXSZxmMRTuoqIUSOkDLjT/NqApdoMI5s7YXUgkR0HinZS5eRWOD1Dhva+0hy2miSuRf3
 gSjc62iWfD1MZMHgyw8T7V09Pd8V0M0QBAbog2hiDoxlTY0MqReCsnGHQT8YCo9UvHGc
 0Ej6DOcy0aewKCnzR085IyLr3xXNKkoKaWertz6jsUDOKnfcN+369p911UROvaIuIvyH
 5yyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BdAGUCyYQ4noYy9BmzZUbXym0YMYKVh78nm2c4sCaNo=;
 b=tKpyR8siUNDeUPyB9QPb9WZJKb7v4bVs+9zicp9+IqGaB5ze6O9D5ydEX2/HAtVW8K
 BA1zPaFeaPN6CPCVAGkJvtlW00GsjJRgmvKMHP5D84qkXwxAAt02/IeWC5pJjf9Dva2l
 +5LGlqcOapIk4mWfM3MwiZ84lAs9ZtaH/eI0/C9H7Ps4hzC1/DkyC6xvETM7JyJs0ZH5
 qP0YPtCmYbNzjN3evy0MfzaTkDMNJnDAjQnFSaq+Yv0hQjAL1RP8wf3hFx6AgYIsD8ZZ
 4m6gNLmW2GPDBDG6Y7+4RADfdgsckuJ06bTT/RTYtKXSVDoSQ8D1oj11jshRL2n8qZPx
 p97Q==
X-Gm-Message-State: AOAM532Dt1kcSEpGtiNVIE1V5iRemK/nyjfGAU8bMhn7ifmnb0Fwfjaw
 dHiJl5hChVPb2QBZqPjvk4A=
X-Google-Smtp-Source: ABdhPJz+nHXkVSWGA9lE/VQL6I22gEojvvk17S+GegjyVvKGMS14tNYNEWxpb3EtYyN5IiPOsZL4Kw==
X-Received: by 2002:adf:e889:: with SMTP id d9mr3103968wrm.223.1629372189558; 
 Thu, 19 Aug 2021 04:23:09 -0700 (PDT)
Received: from localhost.localdomain (arl-84-90-178-246.netvisao.pt.
 [84.90.178.246])
 by smtp.gmail.com with ESMTPSA id r1sm2700388wrt.24.2021.08.19.04.23.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Aug 2021 04:23:09 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Emma Anholt <emma@anholt.net>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH v2 5/5] drm: omap: remove obsolete selection of OMAP2_DSS in
 config DRM_OMAP
Date: Thu, 19 Aug 2021 13:22:53 +0200
Message-Id: <20210819112253.16484-6-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210819112253.16484-1-lukas.bulwahn@gmail.com>
References: <20210819112253.16484-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210819_042311_743142_8FFCC705 
X-CRM114-Status: GOOD (  11.74  )
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
