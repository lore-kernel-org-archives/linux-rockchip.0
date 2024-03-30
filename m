Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 299A8CD1288
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 20:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DhG7D36FugYJzm5zRJo1IYXY+uynpW+x7W9C9WDH5o8=; b=a0G+JT8p0l8Ti7
	vFXA7mXBVZO5gHXPpGM3JT+Gu8DpwqWuGqtU7RRKLXcnBxoTnrlKO4Q3bKnFWFDa+4/0AladcQqFe
	VdT5bFjDvzcschGBNvFbuGDt/J6COyVnvUgwk9LhaNT26GmNteDBAUOgfjkCag7R3w5iA5r2bUOfZ
	fwlHr+B8v/YOXm5Ymzptgj6Wt/JDiyOHrbqZkOTl6ystUpHBTrw/DMtE155seWWPACzcwY82YGVUn
	OW1vm1iJpgYUp+ZrAkwAifDZ5jk8nyrIGUNZYFSRxv9mxJZMyHV5DY1l4Dg13l+Lw7ikZifHTekmK
	QhdOZuVrBIWbxymlQCLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqfJ6-000000048fb-0rDw;
	Sat, 30 Mar 2024 20:28:04 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqfJ3-000000048dA-0q4W
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Mar 2024 20:28:02 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-415584360c0so4096735e9.1
        for <linux-rockchip@lists.infradead.org>; Sat, 30 Mar 2024 13:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711830478; x=1712435278; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VEUaT6J6FXID1oZan7ok4XZwZWXYAqZIH0eNgAaKUuw=;
        b=PGm+c9OPsGtClcC7MUXE5lBi6s6fSbFwN1E5GONY2FQbzKW4Ysj1oKZAbgrzgKajgn
         hdfqSNvR6vH2Isu9wp6EGRDbK1cdTwFju7BjK40Wa4JQJnmX2zDpW1qH0ieDIK2sFEMM
         vOc+QFDwCHlc2AFfrEIoYMhAU0V3RxyBsUzzLhkOPBNS85LSbteq5xLzTl9J+U/07xci
         qHZUMSfGeeJ5OQR+2rrs0tg4SPsdSF43/sC1CFYxzDrUnXEt2dPkiw93dOxtwORgudhu
         VGpYxKNG8QKZ0AmnaETbHBomF0vSyvGL9Kle2kiXOFacJh9AD6mXRG+dO0AxzmRqp7tg
         9P1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711830478; x=1712435278;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VEUaT6J6FXID1oZan7ok4XZwZWXYAqZIH0eNgAaKUuw=;
        b=Tj8qTzz01mVIIkz6dzUIeK/z2biUXHTXW7WO2vQLU/x7/oUz94RqyPstv6/wjJv5mb
         KG52pmVwT1mUFmxBwtlMX6JCjfxTQuqeMaGrOSDDH/weeoZWGRzlE/f8WvH+XYvznFTu
         nsNHHWR3Y2w5cvq9+vTJTSKoUbiNL39rgvSCcr2jOzWG9A8gj16CZMEDMK6S1hXXf4ZS
         au8OCC8AcBz8GwUpeVxuxW1+N0InXF1ghuiVhDXCvlkJdQ8dFxv1wuWAULzMPh2oaeX1
         S2smhavXw+1qb041mfaZmsY/H9od/uaJ3G7wlLxz9OW3IKFnr/1pOsuEHtTTziJCQKoI
         vqcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtaJ53ekdbG58HbgjeR6jZzrRezOVp+9Y3up1GWwZtTZ2LVGqgwnhSZOMbVNy2pOMCejpIq7uiPaRuOSLwApZBb9H4ucYIJduYVMRdmg464pgF
X-Gm-Message-State: AOJu0YwSoTq25/oYhcUITazEeBu6QieXXdeovaz3vDrifistKqXF9VSe
	l5f/p6Gg9pvvwua/Yzt1FFeXL4nHSTa51LY+Wjc6ZNCIwUkg7s9waEgtav2NO+k=
X-Google-Smtp-Source: AGHT+IH9u1jbXm1D+cbxbpcnjqvR/sECjqitbMaUx4EQPajbJbh1hh8/lA8Akm+UYN+n59Vpp7Aj/w==
X-Received: by 2002:a05:600c:35ce:b0:414:64de:160a with SMTP id r14-20020a05600c35ce00b0041464de160amr3982003wmq.12.1711830478425;
        Sat, 30 Mar 2024 13:27:58 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id iv16-20020a05600c549000b004146a1bf590sm12601295wmb.32.2024.03.30.13.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Mar 2024 13:27:57 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] drm/rockchip: cdn-dp: drop driver owner assignment
Date: Sat, 30 Mar 2024 21:27:54 +0100
Message-Id: <20240330202754.83907-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240330_132801_279000_B6B96B7B 
X-CRM114-Status: GOOD (  10.30  )
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

Core in platform_driver_register() already sets the .owner, so driver
does not need to.  Whatever is set here will be anyway overwritten by
main driver calling platform_driver_register().

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index a855c45ae7f3..419542c66b53 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -1259,7 +1259,6 @@ struct platform_driver cdn_dp_driver = {
 	.shutdown = cdn_dp_shutdown,
 	.driver = {
 		   .name = "cdn-dp",
-		   .owner = THIS_MODULE,
 		   .of_match_table = cdn_dp_dt_ids,
 		   .pm = &cdn_dp_pm_ops,
 	},
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
