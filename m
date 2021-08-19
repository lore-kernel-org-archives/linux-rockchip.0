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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 077FEC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 11:24:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CA93E610D2
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 11:24:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CA93E610D2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEjNWX9/wgFG3DWqrhT3o0ImUxLGjGZul/iMcutwwxU=; b=URT9rgLZycIvTm
	pgARuU5vjyXhNc6QjPWIn3Q7B4B7bRugDRhiEpNuCc9DP0C7ZL+dalcZxb+5KShgHNL/ZWE51KMEy
	lJyPYSn6nwsiwyF7lCKeaHZVcXYn46CFYh3rj4cCSiv8BmbmCW8oOXZ8nDc19h1g8+6mNzNIB6K6i
	3i88H1bA0wziBguUUtnzL2elyfOAh1Bq6bRqzI10jlJ/AQH6AG8dDPljY7TVbzzXUzrPVSgErNm21
	lvp0FJtkt2snpw6MJbgpSrlNcwttx7+1BjbfZHGxmAk1ODk5OmXXGJqdaCU/Zb6p3n0P7BU9nuL+h
	skZD2jIuRP3xumEsOt2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGg9W-008A07-MB; Thu, 19 Aug 2021 11:24:06 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGg8Z-0089c7-Rx; Thu, 19 Aug 2021 11:23:09 +0000
Received: by mail-wr1-x42b.google.com with SMTP id f5so8494573wrm.13;
 Thu, 19 Aug 2021 04:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=REhMgVT+6ZjXEXXRs/yP5w88X232Fgpi2cGGVzDaXxE=;
 b=FCtD7ltyWf3bpyNg5ZfOHC5FxFeGOP5a3gpqgR0ke4i/yDDEUenPouhSHdH9vqfOPN
 fhMIWL0W1o2h5w6n5EDUmO5hY0UXJiiAzrZK7aX4ZZGoWvWC6w7pW1vbY8KXLWkBwqLu
 HVE886JOmbB2Nl5cZRu6CP2iH11GrlP4H0UcGUTF0SRG/Xj7rfuLNHG1Q75qdF2iElT/
 c0+0X3K8YO3lhntVsRzhLiFCw0q/kwD22JneBZYLuO3VeF2UJI5Fm2hKQp6GqgZ1uyHl
 kQ7bM/IduESIr4fb5Rka8A1YUiOZ70ediQ5Sc3HBUL4DeNygbVWLh80qQMmvXEswoDdk
 0hEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=REhMgVT+6ZjXEXXRs/yP5w88X232Fgpi2cGGVzDaXxE=;
 b=GInpDOrCeACk8cjhbQDgcHeyyOKC3juQsVPM1+LpeqgG0XTec+u04QPN0GSf5uU0ds
 FoaGdLEl0HBlWkt58xaSzSeTkJ4fl4lWzRUVgiq53HSjipCPVoTDuSEArUC2De/SfhBF
 ouV+QJ8vsu1w5j6bu5S0vi2zLEhXd7tNGXCuZLVE9oGFXQlwb45zlLigrqVWEOyCaRn7
 9xNutRsWrNw/dwl4pwTxPQgiZX5LKfjKKCQxiSXMGsyup5nL6cRb2tELuxhgbnamxyUY
 YgupPYIneglZ2dfKxiDr82yOu1mQ66BWOSfJQA6y7PkLrfJicYUG3NqIONQb1I/y0h2H
 RWYg==
X-Gm-Message-State: AOAM533ovMeLdbM5SjEBpIirDAL44xW57S1O2qCDRMShDKWrj5YS91k4
 kbeyrRAwkd20npovziLs1hU5fznfKjE=
X-Google-Smtp-Source: ABdhPJyaHdxhTqOlTcWI8sTuvcompSykYd56hFn/HeiPFc2a40cOfBUyvMjZRb5YBRBK/Z0BCwYQcg==
X-Received: by 2002:a5d:6b92:: with SMTP id n18mr3277419wrx.343.1629372186181; 
 Thu, 19 Aug 2021 04:23:06 -0700 (PDT)
Received: from localhost.localdomain (arl-84-90-178-246.netvisao.pt.
 [84.90.178.246])
 by smtp.gmail.com with ESMTPSA id r1sm2700388wrt.24.2021.08.19.04.23.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Aug 2021 04:23:05 -0700 (PDT)
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
Subject: [PATCH v2 3/5] drm: v3d: correct reference to config ARCH_BRCMSTB
Date: Thu, 19 Aug 2021 13:22:51 +0200
Message-Id: <20210819112253.16484-4-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210819112253.16484-1-lukas.bulwahn@gmail.com>
References: <20210819112253.16484-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210819_042307_949373_ABFA107B 
X-CRM114-Status: GOOD (  13.75  )
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

Commit 57692c94dcbe ("drm/v3d: Introduce a new DRM driver for Broadcom V3D
V3.x+") adds the config DRM_V3D, which depends on "ARCH_BCMSTB".

Although, a bit confusing: all Broadcom architectures in
./arch/arm/mach-bcm/Kconfig have the prefix "ARCH_BCM", except for
ARCH_BRCMSTB, i.e., the config for Broadcom BCM7XXX based boards.

So, correct the reference ARCH_BCMSTB to the intended ARCH_BRCMSTB.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
 drivers/gpu/drm/v3d/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/v3d/Kconfig b/drivers/gpu/drm/v3d/Kconfig
index 9a5c44606337..e973ec487484 100644
--- a/drivers/gpu/drm/v3d/Kconfig
+++ b/drivers/gpu/drm/v3d/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config DRM_V3D
 	tristate "Broadcom V3D 3.x and newer"
-	depends on ARCH_BCM || ARCH_BCMSTB || COMPILE_TEST
+	depends on ARCH_BCM || ARCH_BRCMSTB || COMPILE_TEST
 	depends on DRM
 	depends on COMMON_CLK
 	depends on MMU
-- 
2.26.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
