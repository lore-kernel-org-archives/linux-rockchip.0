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
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11ECC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 11:23:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 92B8D610E6
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 11:23:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 92B8D610E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/wp+xKrj/WdmQ5kTEMxHRSTgvIanp8Bl2Ds3KAVYtA=; b=OzDiqBUTVh/mB0
	+z9880Wrd5rVvdU16cASQcGUCR0a8g4fALFNRRJBCH9I+V91ECG6AQdOcfY0SUV70+otrc5KoiwJa
	WrNcw9qLCWRWulHyOrpqEUZEoxa9u8yxhphJ69PPaFejwhdB3+7FfpGnQIZELah9zUygsM/9SYH5V
	vtN2r/vqVnMR7XMzZVfi/bCV7ypla8Yr9Hf2+zj7pIvPXr7dz79AzubBH39lirmg0iqYtsy8Len/a
	N8d3E71ptE0dz3m0NJ0+QBgzlwFs4OSOtzhC9EWvKzoOz8gKiF4soVZg1RyT1zoEQ3p36gHJtLUhU
	HPlfENwhfwDmpi7SyIhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGg93-0089od-DD; Thu, 19 Aug 2021 11:23:37 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGg8Y-0089b7-55; Thu, 19 Aug 2021 11:23:07 +0000
Received: by mail-wr1-x42d.google.com with SMTP id r7so8646250wrs.0;
 Thu, 19 Aug 2021 04:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7PolFHl4BCa4E4HG380dOZoCiWwe/gYoL591bvSVGBo=;
 b=MUGcj75NEruHQKoBHz6y3OzpZz+BnR4yeHn9iw9hVQF+5QKA22Ax4jGzhSCjKWQZmU
 JCqJWdm0fJ1TpTcsxzq8ODuzKQfBnu4bjP5VmU3wQ0+eY3+s8Kmhl1Fnh/ybmxE9WZv6
 yRvy5pqgh+gByvZQAlcEpBSmos89dHhWFWuShAAk+8V5QBLUuMfBwhqFVYsRa4V5bKoG
 eW1bqhoTLvLFhqlUQqaevytmmneBtdL22N380k2YWHP2/zgPp4TefhOOYuSaYS7AM33H
 4FZ6Q+8xREiYgbE1O6W2ClldA55GyAq+ar2DZDLfmNjrbPFdjPhQiCln5P96FwMxLyKm
 Q7FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7PolFHl4BCa4E4HG380dOZoCiWwe/gYoL591bvSVGBo=;
 b=ddrbxw1kj02KjvcaAfaVOstHHyN6IOMXPid104VvOotXbcR4wQxXuE2JqkwUVlp2+p
 SlXHw3gWmpJum7MtVcQBXA+Eua8YJyzSe81ErG6X5RsDhHidt7N5VRcgcUW8E0MmgBGg
 IvfSCH8xuRYsZaU+UUE74sIDz46riWttp386Pcdg+dK7t9NkcSxfx7J6T+MPFdJzZULk
 DrdkZ8rx7ZueBMhGV70ZdPnBxcvx05l1nm4ob+5ieIZn7+qa1QKrWl/EFv63sbXSzgjj
 ZY7Vc3GYDNDrhZ6vu3VDay5CQvQpjL7BS1SoN3/eYlIH6Nmhg3V9X5+2HGH/FekL+Rdf
 E9rQ==
X-Gm-Message-State: AOAM533Jq/WWdMBO6sCNxc6X21e9LLdSDyxwDuC02I0tsETerYPXDQ64
 t0U8Mq7cFDMKm0hOaa4KfbU=
X-Google-Smtp-Source: ABdhPJz8CDAX5l4BP2wfFbZ6AML0Lin/n32NRpAJOPfTlU/1JgLGC2q8ibTlyRKz9oat+Y1Iv8DnGQ==
X-Received: by 2002:adf:f288:: with SMTP id k8mr3162716wro.350.1629372184426; 
 Thu, 19 Aug 2021 04:23:04 -0700 (PDT)
Received: from localhost.localdomain (arl-84-90-178-246.netvisao.pt.
 [84.90.178.246])
 by smtp.gmail.com with ESMTPSA id r1sm2700388wrt.24.2021.08.19.04.23.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Aug 2021 04:23:04 -0700 (PDT)
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
Subject: [PATCH v2 2/5] drm: amdgpu: remove obsolete reference to config CHASH
Date: Thu, 19 Aug 2021 13:22:50 +0200
Message-Id: <20210819112253.16484-3-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210819112253.16484-1-lukas.bulwahn@gmail.com>
References: <20210819112253.16484-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210819_042306_218901_EC0633BF 
X-CRM114-Status: GOOD (  12.74  )
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
