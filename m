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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67A40C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 11:24:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3AB53610D2
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 11:24:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3AB53610D2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aX674k6DUO04vzmzQcOvCELC7OovrDW823gEps7Z+iM=; b=4tA69gBidc7Wt3
	m/DUErREdJvuk7XzNNEarZImI2a5+XDBKug2fHftgqshw4Jtxy+OsGy17jgYEwdKgMNNufXxuHgHK
	5+TJPy5SK2DHJitsF95ldPdJ6Z2ATDPjjnzEP1OVIpP/W3bplvC4haECQj6QmiSJZUu+jOfvfM65a
	BF6xzh0ml1c4Zozr8UHIy27TjrkQOevmH0JL9OoGD0f6X+CyXMcwV7WgSne/xFweCICUgNUSF1KS0
	lT53nyg5B4jEMWHJWWgE0/ZYL6nLS6AXRtwLDoZa8+No+Mv9rqjAVDg0QN+eAFAaCcStGjDBoHwCw
	mkiUh9wa7zq9aP6YD3nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGg9Y-008A0u-5b; Thu, 19 Aug 2021 11:24:08 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGg8W-0089aE-Ja; Thu, 19 Aug 2021 11:23:09 +0000
Received: by mail-wr1-x433.google.com with SMTP id f5so8494379wrm.13;
 Thu, 19 Aug 2021 04:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LKHb4NbS7zSt/cAMTh5zeYF+NOqO7vbF0bCJdamG5w8=;
 b=KKnuQyLT6+OXQcrUZMcuh/d2Z/DDvB2NOinD/1yOhMmePARneRz5HZ7qh61IDX+Dt3
 Wux+6MqEidb4b6rKjvxxEbtUC31jY2ZsreYmn/eQIUJTj5CcsLLcqeqdl3rIs9kwg5fQ
 HRLhfMUPIr9ch3qJLKpKRNA9rc58A7sFAjGCHmk/RVwbMMMfMicxBj1dJiAqGBc7AX6T
 +5l//g4V36EtBxfD9O0g23WGfnlXDdctyCB6uZXypVyVhgc/SV7lGh/TsevHy4bTtp1x
 oQumukcCKjv5WtPSQQLdPv01dVto9EPNKHrF3tG0yS8nsl+OWhHG3dZAUN6YtmlJ5Ulx
 eITg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LKHb4NbS7zSt/cAMTh5zeYF+NOqO7vbF0bCJdamG5w8=;
 b=fMcpu4Ah7b5Z0Rm+NAKrHXmQlGFz99TFoQkXMr4gjO4zs3efDHyMHhF2cwUgq1Nqaj
 oNFPk2Rbbu5MCTAayB7xN+7DUzip+1HJRBIESzQU1kaRhjMRCMvDg4EmtXHJYnV8fGJP
 bK9qGKfuLu5bRLDj/k9mE6l8XeA258MKaQbdIXFid3qzr6x5hJa3remolerFBm1dSOPH
 24IEeoBoBp8gJw8ezfFShaW0kASAxbD6aa4WKNk7OWtzrfgqQzjgYFl66kS6ufDO5TuL
 38hdOBBoP/LoDHsR+r+RXof7E7mzMpyECtEtZX4hxAmYFz64oRNT4RDjEkPWRW3MnPIN
 nnJg==
X-Gm-Message-State: AOAM531mFbiNALPP9eTkKA5C3tyrh31Y07t7PU/TcjQXOVQPSaQM88CW
 9cDvlpPcHx02/lpmW8Ld8kU=
X-Google-Smtp-Source: ABdhPJzkEyt7R9ZPNwx92CRL6vBJwvvSAga6l5i/e3XkzCnbhssNxRAaHA3MPWa51vX+D8nmfiUw+A==
X-Received: by 2002:a5d:4d4b:: with SMTP id a11mr3124177wru.411.1629372182988; 
 Thu, 19 Aug 2021 04:23:02 -0700 (PDT)
Received: from localhost.localdomain (arl-84-90-178-246.netvisao.pt.
 [84.90.178.246])
 by smtp.gmail.com with ESMTPSA id r1sm2700388wrt.24.2021.08.19.04.23.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Aug 2021 04:23:02 -0700 (PDT)
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
Subject: [PATCH v2 1/5] drm: rockchip: remove reference to non-existing config
 DRM_RGB
Date: Thu, 19 Aug 2021 13:22:49 +0200
Message-Id: <20210819112253.16484-2-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210819112253.16484-1-lukas.bulwahn@gmail.com>
References: <20210819112253.16484-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210819_042304_682204_4866D822 
X-CRM114-Status: GOOD (  12.08  )
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

commit 1f0f01515172 ("drm/rockchip: Add support for Rockchip Soc RGB
output interface") accidently adds to select the non-existing config
DRM_RGB in ./drivers/gpu/drm/rockchip/Kconfig.

Luckily, ./scripts/checkkconfigsymbols.py warns on non-existing configs:

DRM_RGB
Referencing files: drivers/gpu/drm/rockchip/Kconfig

So, remove the reference to the non-existing config DRM_RGB.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
 drivers/gpu/drm/rockchip/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 558f1b58bd69..9f1ecefc3933 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -9,7 +9,6 @@ config DRM_ROCKCHIP
 	select DRM_ANALOGIX_DP if ROCKCHIP_ANALOGIX_DP
 	select DRM_DW_HDMI if ROCKCHIP_DW_HDMI
 	select DRM_DW_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
-	select DRM_RGB if ROCKCHIP_RGB
 	select GENERIC_PHY if ROCKCHIP_DW_MIPI_DSI
 	select GENERIC_PHY_MIPI_DPHY if ROCKCHIP_DW_MIPI_DSI
 	select SND_SOC_HDMI_CODEC if ROCKCHIP_CDN_DP && SND_SOC
-- 
2.26.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
