Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91EB9C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 10:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QvyYw5V23hdoITv5J+fWrlKBH4tygU8TYZZzsZ4A2W8=; b=YQrXTO39a2LX7W
	14eUgADuK9sIIYdCSfnBHvJj7H7f5m9f6Dfe+57bYg59VTzZ0njhU+MHb1d50CfCkpJn32qkyRfnh
	mPqD2GMQahYYwmRbx5d/COPoWmOt3FluQnsaF8EgxBk75qtwDrBO43MMNWzvI9AyW8wU60xW4ZEgf
	GMXy0+IGwQczZQ+Mey0Ndo6lVqgz5nQ60n0Hxv7KS1MaCkMmkRcJc7HrVXQ7ZQyD4vciurxwDHSOk
	1pgzlYW8CS4HFF1DO03qgm6C8WEydU/QKX/MJgQeryrRc6bnZ/Okc/1A67CAWtH9iH6AfkPBvCzH/
	mG+tYuKtbSE1YCvQrTog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHk9j-00HEXx-DR; Wed, 09 Feb 2022 10:24:59 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHjzs-00HARE-5Y
 for linux-rockchip@lists.infradead.org; Wed, 09 Feb 2022 10:14:52 +0000
Received: by mail-wr1-x436.google.com with SMTP id d27so3128417wrc.6
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Feb 2022 02:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wEmAB87KMbVXGW4TeiDbnHla5i/2RYZ8JKZYPOxYxM4=;
 b=A22Hjm1O16aNiblpsnqP4S74IQqpmkmrJ2/Tvku63VUaNefjjlWnqXrg9q3CYaUZ2B
 VsZnXSOHEGku6MOWDYzMiFOvefV3LNjND7BIA+KohE8+UlX8KJpFRIjE8HyuPgBKwXSP
 vMVzvlxB3226dkyPjTVBoLcnbr2NochaepR4nz6rcEtnl0cl5mrnVlv6CLFtWz1hXxxL
 RAPhXkF3jsIiS5DQCeXgSGsmwCHreDWDlnd3z1kLYhATYALgp6wvNBTygZcuObUvivgL
 QK3d/e8ApLYN/OFKA3+MOfpPe+zcy17e/dcPRMBNsSqIdKfwfcNB9du1HC8BoMm1gsqp
 e3LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wEmAB87KMbVXGW4TeiDbnHla5i/2RYZ8JKZYPOxYxM4=;
 b=L7hhCLUa0Cx8MTgR6y2EsAflGHJQWDCe9GjwfxOmc3ZyiLpg8EBFArAAimDfenPR9y
 8cwgM7weMYYLu8O8Xzxh4ig6UufIdWZ/97t5oKaZj1YZjrNpQLRsOXiNPB70vplmiYmf
 xBTFFwNRqjVNQs3cN43YcDyuYrSfWdUiD7gitzffYdFJRBKniz+eKtMSL+7ltkImlHmY
 cNhkNiDBKKXp6+9NzWxFu8D+GX/ax+SD/K1ZCe55txBRnq8OLzjKl0mFx2At0ST6KENQ
 /HrH9AlCCUO48EnzRYk6qHkTu86fiBtJ9UTc8Pjyy2+Z5t6mZb86bjz10Vh2p2S7bQ7C
 pJew==
X-Gm-Message-State: AOAM532aFpomCx1fHrga2LYV5x+wZ+6mDsK8Y7uc/GNofP2UOMcL78nI
 /jTSDGBknIknemrh+QuXzOkaF9wYkjrRJA==
X-Google-Smtp-Source: ABdhPJwGwENAzy1WqFgY/9tZR9RFHwO/d1Okh9TcSAYmWbkzZUEC5+LR0BXgK8mp/VxUuaMZlnhBqg==
X-Received: by 2002:adf:f64e:: with SMTP id x14mr1411705wrp.698.1644401685588; 
 Wed, 09 Feb 2022 02:14:45 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id f20sm5881067wmg.2.2022.02.09.02.14.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 02:14:45 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	krzysztof.kozlowski@canonical.com,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] ARM: dts: rk3288: fix a typo on crypto-controller
Date: Wed,  9 Feb 2022 10:14:39 +0000
Message-Id: <20220209101439.1657557-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_021448_291984_BE9716E6 
X-CRM114-Status: GOOD (  10.51  )
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

crypto-controller had a typo, fix it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index aaaa61875701..a0d29de3acf7 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -971,7 +971,7 @@ i2s: i2s@ff890000 {
 		status = "disabled";
 	};
 
-	crypto: cypto-controller@ff8a0000 {
+	crypto: crypto-controller@ff8a0000 {
 		compatible = "rockchip,rk3288-crypto";
 		reg = <0x0 0xff8a0000 0x0 0x4000>;
 		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
