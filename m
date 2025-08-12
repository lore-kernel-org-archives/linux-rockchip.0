Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D31BCA0EC4
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Aug 2025 06:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m5oYavjQKQm0hEab1WvokpcwjlneVVmeczHjDKdlUfI=; b=JDgyh3aIp8Ral3
	R795BL93Y3SQvWWoLN/4O9JOADtPQ/e0iUBoDd1nMsRsSDD1UpyWxzRAL6w9guqHtzN7Dwy5FUM4R
	BmvV7ji8vUVKqeSbviA8M0rz1sWkLnAT7w6rEFiG2GBX86m/m6KNnn6RmasRAIAPx4EFw526wguSB
	90wkLx9t+hVBsd24nCz0RKV3EO7KOEYaSVsR/k4jXscWHqYIFihVK4+18/kbz7GOsNy1UK4Iu6u1H
	pWiqve/0RjSB55Qg4dVLXUsMJ7PfHgjrtM4GE6AWBmUrv76Eer0eGiHk1A0Onrv/sl6h9ZX6FJWjC
	+C3IK0oBjsFLEReBtMeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulixW-0000000A4oP-135s;
	Tue, 12 Aug 2025 06:58:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uliuv-0000000A4cu-24xG
	for linux-rockchip@bombadil.infradead.org;
	Tue, 12 Aug 2025 06:55:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=gQpilYnt4FgOjs5+1tewTfyxrC4VggVjH4vFHfgXSYI=; b=oQJN3OIUEm1TQvEbje04jqlzlD
	pR6NB2fdl2t/XVi/uXQt+KQ0gq9oiMSTYqsg4P/Cvmk4Rs+L1DT6n17IwRpy/0R5dNCSrelS6stQN
	jBjRKDTYHf2lBkyVA014X41qQKj1+RyNEolCC6Qbui8zuyhmhfCRLVAzzZ/S6GVdqecnzVFMeqcL+
	WfuwqlfOgK7suztDq4UNr76lWXfy6OeuG/NeAkCjz562rXmDAUkePCjUA5+mNQtrFJo8bHzjZWDZK
	mH1HuY06et5Gl80XVm3nc1Rb9lILyUQpz4++6POiP6d9NL/M3ogUf2OaXWWeWRwKZRPmnRp9p6ZQB
	0mAT0xLQ==;
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uliur-0000000Fieq-1HiG
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Aug 2025 06:55:28 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-242ff06b130so3306295ad.0
        for <linux-rockchip@lists.infradead.org>; Mon, 11 Aug 2025 23:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=heitbaum.com; s=google; t=1754981722; x=1755586522; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gQpilYnt4FgOjs5+1tewTfyxrC4VggVjH4vFHfgXSYI=;
        b=dnjc2umO7jgv0nLo/9obmfjmWg0n7YaH5GY7Q8jbaC3+kSm8lDhg3u4O4otT/0O+JP
         Qnkezbqg98iEHN/CXsAuytbMEAhDiUGwth8gpBSQY4momkLrUym2UQwXlYK31KLNFUxD
         KflXZx7lP3SOu9pAnRXOdckx9MmJa74LUBpUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754981722; x=1755586522;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gQpilYnt4FgOjs5+1tewTfyxrC4VggVjH4vFHfgXSYI=;
        b=ns0ksczb223/hyWTVt5uE4s7NFqpRiJDrFomuDbHrb+n0/d/wHzKPaVorDNeCThGPl
         2GhLeA1r/MjVIJG9AUQ6jgT6T4/qyzAA5A/KOkVJH2+jbcoW5JBb5wrPmd9ZANMHjvrr
         dwistZ8FC37+ev0DKE5knA0a6lrdX+n9OyPhsqcZsR3GBMvP0MZKfWC8Cb/wI6i0hcQT
         asCVMuKbQe1ZYw836YkxQs5f2XpYB9YeC2XydVJzTZv/OGZPiYVGDcFCfDC7sGY+6A+4
         yL2J+oixrDY+PDXzKrQxSOA1lyrOrG9/ZDtqcgz21fSEP6uQZuci5/Uj3Xj0kxw+mg5Z
         lvtg==
X-Forwarded-Encrypted: i=1; AJvYcCV7WKQhM741UzLP67X6KRzzAtCv64vWFwAxU5xjLBxdb8JVOxInZuG48P1NTTx79+WQ5f3ZuHKue3tmRpnjdA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxz4/FQtgSGvgToCQgjfWj+xtXmxjkaKv7MIt784bGyzzLIDnRv
	hWZTWTjyIC/Oq1jb9pLUVdYruvPPYFWKk4yALOy+TcQpRurlmRmIOd6bCStUcZBHCUs=
X-Gm-Gg: ASbGncuWYwLN65UmJegHiucXud6dEPGav7oEVSX0ga1wsAbe7bMYD+0eV9OXj6x7/jd
	p7tf4N1K8fh2xIH7LzpaIp3Jqjq50uO01Kb004jkZhhJ/PN9dAL8LLm5BqlWOyueQ5mJxGp8yd3
	Cl7Arqc5bX/EpudiwIF/xJfcRIKqVzy+yAevjxTqm5rdMEbOAQOAp+DE9er8NxCChTC5o58SMbH
	l8yEA3g/Utp3WrLXE53zAwy2SwGPIDzhVhmopXp7DWxIWj55MrNPIPnwpPJOsEKRq4qpP2shJNA
	cO1SzAPNXho0DWpF8i9kLP7wKFG7qdcpOKUnYxbDWsStVXR6IYDLVMIhb/OK4afMJNeS4C4klOe
	v04GxomEwEshQFWz/IpeX211noO9NHvvsNSrAE2rWznPioKwZudBf9D0=
X-Google-Smtp-Source: AGHT+IGZE5ejnVJXLy+u8D+y8H3N4C4rUcjtSocvHp94fOPiHgfZuivNo0dcelQy8UmjKn8/qCY+Yg==
X-Received: by 2002:a17:903:124b:b0:240:11cd:8502 with SMTP id d9443c01a7336-242c203d160mr209522875ad.13.1754981722075;
        Mon, 11 Aug 2025 23:55:22 -0700 (PDT)
Received: from 8eba3d7b3083 (122-199-11-121.ip4.superloop.au. [122.199.11.121])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24300f8ca2asm7538825ad.141.2025.08.11.23.55.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 23:55:21 -0700 (PDT)
Date: Tue, 12 Aug 2025 06:55:15 +0000
From: Rudi Heitbaum <rudi@heitbaum.com>
To: Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: rudi@heitbaum.com
Subject: [PATCH] drm/rockchip: cdn-dp: select bridge for cdp-dp
Message-ID: <aJrlUzV1u4i65NRe@8eba3d7b3083>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_075525_693187_C24DF8A1 
X-CRM114-Status: UNSURE (   8.79  )
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

Select drm bridge connector when building cdp-dp.
This was missed in previous commit causing build failure.

Fixes: Commit afbbca25d06e ("drm/rockchip: cdn-dp: Convert to drm bridge")
Signed-off-by: Rudi Heitbaum <rudi@heitbaum.com>
---
 drivers/gpu/drm/rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index ab525668939a..faf50d872be3 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -53,6 +53,7 @@ config ROCKCHIP_CDN_DP
 	bool "Rockchip cdn DP"
 	depends on EXTCON=y || (EXTCON=m && DRM_ROCKCHIP=m)
 	select DRM_DISPLAY_HELPER
+	select DRM_BRIDGE_CONNECTOR
 	select DRM_DISPLAY_DP_HELPER
 	help
 	  This selects support for Rockchip SoC specific extensions
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
