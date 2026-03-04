Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE815EF9003
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 16:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sxDn1PVc0gEb5S+7z74ZP6+pH2tDK8FzOBQUFxAmZ10=; b=Bk6svMNrYvoFdJ
	DFavWRT0FDofOPBGLJSIb6ezMd5CjKJCZQ7SiBsj1BmhBki2DvOvK0EscUTOXCEj/ncYss52dyb3D
	NtSTbhfxNioMhaBjc+HaGlcWr8Tbxz1po9K6OJH04MJENhVTdgSZnLWuCRjlIZusB9icsOCmR1DqT
	ku8/vdo/wrVRmBgukQnfx/i3F92DjR+DLIKfdAIbNwP7TjHOBheEA6jss4Z5KOk65t6z1U/pZqxQr
	8g+OEw7JhWcbkbVLbrIk+Be46QyJ7b4TmTfFjiuCZQIOlUyYCnZQmlPNUyAV/KR3btGXjV+SXa8h1
	S4jgIzflhJ5Zddi7miBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxpLV-000000006Jz-3pjy;
	Wed, 04 Mar 2026 16:45:13 +0000
Received: from mail-vk1-xa32.google.com ([2607:f8b0:4864:20::a32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxpLS-000000006J5-2Xji
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Mar 2026 16:45:12 +0000
Received: by mail-vk1-xa32.google.com with SMTP id 71dfb90a1353d-56a987683baso7032216e0c.2
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 08:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772642709; x=1773247509; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vSqwphXV0lntnfqs2BswODSP2JF/VYqeGhd0vIuj4qw=;
        b=E1BBjCzUNyMfOHqZ+inChVfIfeL77+xsaQDVU/6ULTm4M4wHS4hXvYLZYmMr1FKSL+
         Trw29xzmZ7IZj20tQjI5fZrKw0SE5xlwNAh4bQI8oE/JqRlgapgS5xySygZSqqoJ6SqO
         zJ3kV8BxLlhkTL8Nzv6q6/c/W0cQ0221HOWDzwKBi8ipJhb+2/BPxG339SPRq1Fe7cYc
         hmLey9f7d+i+Sd7sUVdR9SQ3qI0o5Tz3x+Pvt3MRPoSTjWiYK5FYEebnKWNhNseOw9f9
         yDzvB2iLpMkQ5blUTT/cNTZ7lr54wyNWLOZahgcMRJKv3z5eRL+v7AGdp9PVt0KfqYsx
         sCew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772642709; x=1773247509;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vSqwphXV0lntnfqs2BswODSP2JF/VYqeGhd0vIuj4qw=;
        b=ubOP0X/o77GGZgJj5mgXMTSe40kYgPPnmrzw3PDATOZy3cMko4HpvqqYnsnYceW5D3
         9iIYMNm2+8KmngC3QniS2tknfYgxBLKvozW0zvCxzuwKEHPRYPxe7sAfVn+dNoFuZN4Z
         G08NYkJWIedEN8DdiJEcV5lLNh5sCM6QHsInJy6r83ALuWJ3VsbEbIQe7ZcNiHWEWzlF
         F9Zaihpu7lb8QXXX/o4H7MjJM7JCCJIUbGNoNAeh2KNKkAa5veHko0C61CVsVULqIjoF
         UWcP5/a6pCjWzd7Yj2y3KTtohulqcYj8+MeLbJEr2oHD8n2voEjv0M/R957eSdLpVYU3
         Sd6g==
X-Forwarded-Encrypted: i=1; AJvYcCUw1RXNHDDLjqgmE4rLyFS0/YpmC/ab2aLCgyeRoDF+urnLo6JkmGjfB+ArR2lR1jch1ZmUWER2Ev5Bm+c1zQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywww7k2l5cz3idQQodKBoiUOcyPw2DvUiuBje/iWBhbNKZehNnS
	/tJERiuAKywYsGkOJdG2bnNGUFdqTNRLf+Jfj/7AKnqDNcPOgsc/BGqv
X-Gm-Gg: ATEYQzydeCzZ4W2p/1Uk8ApDMa3NJJ3PuVdpn1+Nx9Lg6R1MpK1zMWh9nacLuXZnAyf
	MxLeoqvIYeVt4DsGNAGuDjoFjbhQo6PBct8qxCPVdH4+GtUsOlA3adZDMCOkWjc38oQyz0QQR67
	EOHuYDlq6vC4vOmxwTPGpEC2OowQEgIiJc6R4H3dZbEcTHAbkmDqGKN+bIXxexuElTC0NiXIcJb
	cogVW3tFee2XacgygxTpaK/7LLU7tblYcOkoRJYNVAP6swJhbcK5GBJtnZqhPIXZcqj9F+0JN1o
	e11xENlFJe9L1Yyr+pDeQgZubo/s4UkY7eXkHFRZJW4cIFbl00wg1GLxYu58ojRV2SH5BIHGaGt
	ZuRorWSLSaCLajbLbDl6MdsFC9fhFo7bUv0jVCOMXCzEiTSc0T49E+C2gDwy7nBoDAywrmo9qdr
	8E83+UAZZR+zP6ABgOG0p3IrpEHQFsj7ohsIDjx3TctNTao/+68DJo8T1f5oosiKCv1mX07XIgX
	DfM+AQ=
X-Received: by 2002:a05:6102:c8c:b0:5fe:f14:e701 with SMTP id ada2fe7eead31-5ffaaf11d15mr1217828137.24.1772642708940;
        Wed, 04 Mar 2026 08:45:08 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:1b3:a802:8875:aef4:cbcc:b059:892f])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1e845aabsm20613914137.7.2026.03.04.08.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 08:45:08 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] ARM: dts: rockchip: Fix the trackpad supply on rk3288-veyron-jerry
Date: Wed,  4 Mar 2026 13:44:48 -0300
Message-Id: <20260304164448.1024410-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_084510_650247_30AFE630 
X-CRM114-Status: GOOD (  11.86  )
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

According to hid-over-i2c.yaml, the correct name for the 3.3V supply
is 'vdd-supply'.

Fix it accordingly.

This fixes the following dt-schema warning:

'vcc-supply' does not match any of the regexes: '^pinctrl-[0-9]+$'

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts b/arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts
index 6894763979f0..0bf03b1ff2ab 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts
@@ -488,7 +488,7 @@ trackpad@2c {
 		interrupts = <RK_PA3 IRQ_TYPE_EDGE_FALLING>;
 		reg = <0x2c>;
 		hid-descr-addr = <0x0020>;
-		vcc-supply = <&vcc33_io>;
+		vdd-supply = <&vcc33_io>;
 		wakeup-source;
 	};
 };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
