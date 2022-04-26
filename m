Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19C9FC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 01:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=730GLxwS6/RNIu/BQ+hMpJaL4xApN+Zvs+ZfY5leDA8=; b=kMsmLeJ7RGHBaa
	/2eitkIUvZsHAaRBnPNs2KhpxvlDG95xY86b6FaepJnUXLrOE9m0aZNDc0ra/98CqlTHsXX4NY//u
	c5ClVa+D3496xWu96fYoXSXKOi1jqFRV7OO8hvVXiGBcQ4IaTYuHMcHs4YP85G5DIuTKEGebMQcNP
	ug4z0U0HLzwAkc6FdgftqECiwB2j4syK9uHXeDT3hedTclsZMm3Ori3xyzVvCTvO1IanMa8joRoMv
	8wdpdvubOCJXa6FAytIqjky4OpM+GI3b5I+1QwTuZuGY001AyAOBrfA8KyrGyoYUHXsUDYVjJm6b/
	lU4qU7qO0IItv34O4ltQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njAHA-00C71x-60; Tue, 26 Apr 2022 01:46:00 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njAH6-00C717-Od
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 01:45:58 +0000
Received: by mail-pg1-x536.google.com with SMTP id g3so14187052pgg.3
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 18:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fs39rG0hSjZgIyHtZoCrNmwLvEpFlExf0UyCmWSPVJU=;
 b=EJ6EB8ibaSZ7fpoRT+N+rrv7FqwPDOGoqJWhG7TlJm2BZJfXXBSW+5+xKU/fNtZAcY
 D0dr7hKl7tUDVHhHdA4Hfub20Gq76UFcTova6j8bYKkmHOrgYLwXle7gcsP34ma9uhfo
 EpzKbBD7GU+1tF63uKQl3J+8PjBqDb3uDJW6I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fs39rG0hSjZgIyHtZoCrNmwLvEpFlExf0UyCmWSPVJU=;
 b=ryV7jeor04d7fAiHMPTvmWzzQ47WZoKH9Ightfwtf+GFX3YJQK/zHivPS65wImT6u/
 RhbdwKXhV/G3RgX/p33k237d309Q9SbvvPfAuie3/VyaNy2wdrV9QELvWW5aaVzg+acI
 vHMIGDf/LMkAm2RT2KzBC8+/i6if2LCDy1kRgunxnMHgu+3BYxaAL5oL6Nk7Eg2SPIiP
 8rc0xej3gw7mPF6DyXCHOIVV27Q8AKKkBkYCXVn13yd7pw4RENcmQCrWbr5NxsjJ6zi6
 WU2v7oyo6cbK+gmhB9XTMzncjyJTGxGmciUClyEh9A5vxgprexH+tEP1qGSYyDIb4y/X
 hygQ==
X-Gm-Message-State: AOAM530f2iuxM13h9PqKFWPdXp+CsvCwdtrMXkMd/TAnQp0VDyzyvqug
 /nt79NzLrJ3s8A8KBxmsdhOpsw==
X-Google-Smtp-Source: ABdhPJwdR5XizZKoGXDfQ7ukYvyvVepyzL47uugvCgpFGVfG+bCqh1tu06W/3af5zp4pxeMahoOX/Q==
X-Received: by 2002:a63:c1b:0:b0:39d:93f7:4b7b with SMTP id
 b27-20020a630c1b000000b0039d93f74b7bmr17628068pgl.595.1650937554798; 
 Mon, 25 Apr 2022 18:45:54 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:84c6:2d6d:c16:1a1b])
 by smtp.gmail.com with UTF8SMTPSA id
 n20-20020a634d54000000b0039d18bf7864sm10908937pgl.20.2022.04.25.18.45.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Apr 2022 18:45:54 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Arnd Bergmann <arnd@arndb.de>
Cc: Robin Murphy <robin.murphy@arm.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v3 1/3] soc: rockchip: Clean up Kconfig whitespace
Date: Mon, 25 Apr 2022 18:45:42 -0700
Message-Id: <20220426014545.628100-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.36.0.rc2.479.g8af0fa9b8e-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_184556_859065_05211B1C 
X-CRM114-Status: GOOD (  12.20  )
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

There are spaces instead of tabs, and other inconsistent indentation.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

(no changes since v2)

Changes in v2:
 * New patch

 drivers/soc/rockchip/Kconfig | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/soc/rockchip/Kconfig b/drivers/soc/rockchip/Kconfig
index 156ac0e0c8fe..aff2f7e95237 100644
--- a/drivers/soc/rockchip/Kconfig
+++ b/drivers/soc/rockchip/Kconfig
@@ -23,23 +23,23 @@ config ROCKCHIP_IODOMAIN
 	  voltage supplied by the regulators.
 
 config ROCKCHIP_PM_DOMAINS
-        bool "Rockchip generic power domain"
-        depends on PM
-        select PM_GENERIC_DOMAINS
-        help
-          Say y here to enable power domain support.
-          In order to meet high performance and low power requirements, a power
-          management unit is designed or saving power when RK3288 in low power
-          mode. The RK3288 PMU is dedicated for managing the power of the whole chip.
+	bool "Rockchip generic power domain"
+	depends on PM
+	select PM_GENERIC_DOMAINS
+	help
+	  Say y here to enable power domain support.
+	  In order to meet high performance and low power requirements, a power
+	  management unit is designed or saving power when RK3288 in low power
+	  mode. The RK3288 PMU is dedicated for managing the power of the whole chip.
 
-          If unsure, say N.
+	  If unsure, say N.
 
 config ROCKCHIP_DTPM
 	tristate "Rockchip DTPM hierarchy"
 	depends on DTPM && m
 	help
-	 Describe the hierarchy for the Dynamic Thermal Power
-	 Management tree on this platform. That will create all the
-	 power capping capable devices.
+	  Describe the hierarchy for the Dynamic Thermal Power Management tree
+	  on this platform. That will create all the power capping capable
+	  devices.
 
 endif
-- 
2.36.0.rc2.479.g8af0fa9b8e-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
