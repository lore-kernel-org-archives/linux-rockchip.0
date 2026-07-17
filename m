Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11B15C44515
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 07:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=onIHgbwQijud7zCuSZ3S+hoKW5Ol22NSWkqSa0pSD0k=; b=3H+6CSMIqVVz6v
	llqFl7dhmqqkknXNyC/ScP4HxKfkCfgyzlSRgCtHqAIov5jJ+rRZlEsxx2lcGLX0jTvWWq4CKiAHY
	R0zO0FtuPW9nMlqtPG/cmT+ATgJ0EXymaPDNfNT4F+9haXG/hLtYfk/lxTEGoqYwuauqK5RF305cJ
	1/h2Gdf74QsgjTdFubA9cYWwfvG6zVOkEV4gdJRr4D3jC4lmU3SDAvB4je6uQ3bgvjHlEsfLZu5K3
	RoeIVqoGkqJyKIBFwvZLF0QgLItE6UXOYcdgCIw2WLRk0liBWTyoP0Owdxc2e3UeFxy6Jli56jJj8
	uZN+tDZzCKZWdtzk97vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkdU5-00000001X5W-2GGd;
	Fri, 17 Jul 2026 07:59:49 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkdTw-00000001X04-2xMH
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Jul 2026 07:59:43 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-493ce08a75bso30613625e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Jul 2026 00:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ahdrone.com; s=google; t=1784275179; x=1784879979; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yyWkM6zopcr2MMl5SvPrurm7WiNsCcjkD9OPElmEF7w=;
        b=isHvt9KE3xSvwxTjkB0wHl3hGeWTYRyEVy1gUNVkBrUEY1u46HPjIKwkHMPG3DyXv+
         ZL1R3KRPdBg+PkJZh/cK3+ReoUhfz8DE/Aec2Fwc4qTiHzJsKj9mBzBOg0dHG3LC/A4x
         5KJaE+ddXQl37OYnu11HRl3FqsOoymIXqjwWERSB1dFTgkfh8xZvSKm9+S2XndXVLkOR
         XRoeTVwr7i6SrwwdWbZdEof3axjlxrzr5lSR/pmOJt39IENOCwWljRnQLCRoIV884PrN
         0oXOWFo3+4qATB7QhXXIJTlByRwXYanSsZXaDrraKBCfDjqc1b0booTZNIwT539wzE3L
         oEKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784275179; x=1784879979;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=yyWkM6zopcr2MMl5SvPrurm7WiNsCcjkD9OPElmEF7w=;
        b=bFLGXKXfu8q5kulGsqdYFMqP8ompnY4iyR7vb9Zw2RS+y6jpNXgV6IdhMa3QzOpIS6
         P6qXokaiEKAYDAvJuR41k0HAVV41MWGFgk2GtO3b+U8xt3UDdHvKrlbYgpLm1MteQMTY
         nA/h4EdY+/qHIPZDxeRReN1fIGPVzfoOvWkuYG5LKrnaTWtzAei9dXc3JwCoX+TaKHrt
         cV68ywTGQoau9du1yhnEv4l6+B51oXOLiprGdd16/UcLDEpZU6wBLPqyjHweMq1kA4Hd
         7dNo2HAnKJAgOgSivc5y9eXD3/NMe0NnXni44V+hbgq5ThgXbpIJozDRgv3XbX15WpDk
         Plog==
X-Forwarded-Encrypted: i=1; AHgh+RqdtIJ6qZv8lvuB6krosjLdPSdHi38wTeru3Si+RipEqz/I5GjtYURVHSCqYU1kyrf/5hPkirmw7PNpoVo5CA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzn5Kg3TisOfQBM0uuIpHZfLl22FJkH9VhFtGPlnltuyoJHTzh6
	Px7VBfIkMECYMeAvTL+MKROFy2Y6i12aALvgfFoLsa68GD1ZvCQfiS6/1MGPFCeBAA==
X-Gm-Gg: AfdE7ck6makGKWDgkmrpquzxy+Y9TbO2yYr3jeI8Tr2GU22KdGczVGNzbz/E4sXj77R
	NCDVUYWHlI+W+nj9G3MZbWNIXzOo4koVyh2rC/tssdrobJ1gco0L/TNZErtrrwFI8NqwPQOiLnt
	At+N0ukKZFbb26IR39BOHbqR/3wj9JlMqjryRIBF9CWAQXsdVP4gKXa4g/mt33aXhEiYkdYotu9
	mhi1eR/7QJ5euof7Li44QE7lfCDnGC6UWm1JcqEkWUVQGWM6ZbTXhCeNHg7c3apasDa53rtY+R0
	Y1GL/2wZiwSyKGjjg+beOTlh/EXw1yKukjJIOGtIP3H8BrUkVWGwyh9HzcZhmAyU494ae6p0ObQ
	6kAqEW/oir6YrVfaWu8TG4BqyxgHV2BVk2KGUqtx+UKlp2z4OsLMpMPUJyV/679bd2bAZZfXSMf
	c7xXUVVicllwj+W938fnIuFA5raQ==
X-Received: by 2002:a05:600c:705:b0:495:3b8a:bf11 with SMTP id 5b1f17b1804b1-4954a515217mr10032355e9.26.1784275179062;
        Fri, 17 Jul 2026 00:59:39 -0700 (PDT)
Received: from rikus ([2a01:e0a:edb:6330:cc2f:bd70:58a:fcfb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49549a3e2a9sm31709045e9.4.2026.07.17.00.59.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2026 00:59:38 -0700 (PDT)
From: Hugo VALTIER <hugo@ahdrone.com>
To: Linus Walleij <linusw@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Hugo VALTIER <hugo@ahdrone.com>,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 2/3] pinctrl: rockchip: extract iomux_recalced_routes_init()
Date: Fri, 17 Jul 2026 09:59:15 +0200
Message-ID: <20260717075918.1869879-3-hugo@ahdrone.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260717075918.1869879-1-hugo@ahdrone.com>
References: <20260717075918.1869879-1-hugo@ahdrone.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_005940_775423_65495CC2 
X-CRM114-Status: GOOD (  12.76  )
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

Extract the per-bank recalced_mask and route_mask computation out of
rockchip_pinctrl_get_soc_data() into a separate function and call it
from rockchip_pinctrl_probe().
This allows SoC-specific init code to swap the mux tables before
the masks are computed.

No functional change intended.

Signed-off-by: Hugo VALTIER <hugo@ahdrone.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 849e72f1832c..549834501e7f 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -4370,7 +4370,18 @@ static struct rockchip_pin_ctrl *rockchip_pinctrl_get_soc_data(
 
 			bank_pins += 8;
 		}
+	}
+
+	return ctrl;
+}
+
+static void iomux_recalced_routes_init(struct rockchip_pinctrl *info)
+{
+	struct rockchip_pin_ctrl *ctrl = info->ctrl;
+	struct rockchip_pin_bank *bank = ctrl->pin_banks;
+	int i, j;
 
+	for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
 		/* calculate the per-bank recalced_mask */
 		for (j = 0; j < ctrl->niomux_recalced; j++) {
 			int pin = 0;
@@ -4391,8 +4402,6 @@ static struct rockchip_pin_ctrl *rockchip_pinctrl_get_soc_data(
 			}
 		}
 	}
-
-	return ctrl;
 }
 
 #define RK3288_GRF_GPIO6C_IOMUX		0x64
@@ -4505,6 +4514,8 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 	/* try to find the optional reference to the ioc1 syscon */
 	info->regmap_ioc1 = syscon_regmap_lookup_by_phandle_optional(np, "rockchip,ioc1");
 
+	iomux_recalced_routes_init(info);
+
 	ret = rockchip_pinctrl_register(pdev, info);
 	if (ret)
 		return ret;
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
