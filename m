Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED13C1048925
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Feb 2026 01:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dr83JONfB0+LOZ92lWYKmWNNGF6PDJ+lQnSImVcbXDI=; b=0EXE1H7Rc/u9iy
	99Xh3iMlbTiTKcATMJgHiBaKxKHnye38pfOOK38UEv1UIrVSF1+HpeH4TdSpTWyVRQa9obx1yZ4dY
	OMZ42g2QRNyg4qAIUcuM6NTWn3Y6UXmdk/6UyxpEfClTIAWaLdDFZTjD1FO2PcFGk6+BPkrFYUcaL
	YBUC2/bnJ2ceh/n8j/HjqOBUEAeHuF+G5lxgYlRonazEHM/2mylNRQKo+Y1ASM2NFiNA4i/+YH9Mu
	FQRje/bFSpX2TVwkRiGVR0n9RdhcP7b6VKgakvBa0aviqicJqZKA63WlrIW9N7Vwio28YW28s+qX8
	M0TIzAk8mvkm2nzVM4xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw9Ch-00000009OUt-20xH;
	Sat, 28 Feb 2026 01:33:11 +0000
Received: from mail-vk1-xa30.google.com ([2607:f8b0:4864:20::a30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw9Ce-00000009OTu-05jp
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Feb 2026 01:33:09 +0000
Received: by mail-vk1-xa30.google.com with SMTP id 71dfb90a1353d-5637886c92aso1391803e0c.0
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Feb 2026 17:33:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772242386; x=1772847186; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ypXMFVhzt8vhHA0jPR3q8crLwJ28xwCmkdh+GFTjYb0=;
        b=ZI3MIlIiQfCNgv93iou30TYCshej//yYkDu1YIRTAFOKFp8mMIFdWTgIBdkoMEewHv
         Cbyb5/9meKy8Fay7qI16dqWvSbaQStu9YoLJ8dZBWmwbVOs2MLO0jW9ef14Ya2AXWSms
         bT1Ly/MkJbrZM68HGL/NBeVTocMJ1co5vX4fQbTQz2UU8rTW1RZU+cdtD/snUw7cxOIH
         k2+V7jytXnH3SMgDzPWef0T6mBbuBiR3aLFlU/Uprhp6iViYT1nO8zO5GvAJ+NG+V2Cb
         49HXwNXfR+ZMoS8fI3GYPzDK/ckhatxSNVwpu/gw+U7GNg2f/YxmVZD4kxQJRdIgdpE3
         MHCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772242386; x=1772847186;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ypXMFVhzt8vhHA0jPR3q8crLwJ28xwCmkdh+GFTjYb0=;
        b=LjCYZFG0RzFO0+xu7WwMrGhcl+5OZqlvMh9PQgSKhDNUhgFhkyJzMqVO2Cttymuwwk
         exnQLgN1BOAaWYGixSjtXGd/u7tZ7+MbNdj2B/ve29EaPWsIb1u16t/O3n0s/ky0w8Z+
         UPn4rmmI8kAQJq83mBwuJwsEu+TC6m3L843mTUA9YXspuJIwAYAIjapT+hWVWVswMv/E
         WAImODHnYRrtMptWDqz0+0sQYu6GM3CucgxjyfYsHsAD/JFHNTTywNHk507ZzNnkj3n7
         a+2y9rLCik69dREbyvDU8plmIpPzVIrEhNDmxUJLJnd4uA2P/QZPJGa9fMxZP/VrLyQy
         d3CA==
X-Forwarded-Encrypted: i=1; AJvYcCXmu1xURyNVjxZ9J8Ia8CgBPKyM+nrQv87jjGLW6WelbxajNVx9FVfvT3s03znDAuBgn3zZPUbkfoH/zPoKvg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyKO9/9r3E4cHPt3T+b7SEjywD2qeAMC1ryt43st4S9zFm+hEQt
	J510dv+SUf3Ca3YP9Im8L3tNobVfK6nZPyv5gucKDukK87hqie6H/Mjx
X-Gm-Gg: ATEYQzxp+G6vyyImrKf3y0UVUoLJP/1byJJ+XaE52uNoTfdOaLCzrJKCH3GoM+qBJ10
	sqCT5lLQNUNJav2zBJ0YGBYtroAOsQM1kqCRDPM+Aa32/yx8ovjAbUkbijulS8ecB9MMoG0KR2f
	qywyMBNTO+D2910apF2FAPlnA5uyDHA6YLoXvXdrHtY1/vQ3dGVTJ6EZA8RcRbe9oHsRczxkrwN
	zMygT7G1M+73O20XpwMsdtZnuHKpIiMiMZm6Jg9H9zXK44KXRIWmgulrppYG3SEFKNSqNif7qzj
	G9lS2NB1/99e107Q5KuT9RbUKdfDhZDMLJ0h6VmTuGist9S/RBSusbCqyukV1535/kHHM7M6cU7
	OUlBqVuGAhnhpDSXzJ+YoqqgfuKekPyxLrXP3OWaefZNJ5xaPTKeMxadPQGOPWfZFwT5lRnVVNu
	oSJ++y8rgETw+VeCt6Mjnwwc1RdeUkCXTORdthBAA3iucI8Ie8lirl3BKj/yis54Nk1hp5
X-Received: by 2002:a05:6122:e145:b0:563:702b:e2a7 with SMTP id 71dfb90a1353d-56aa0ab1c3bmr2230694e0c.19.1772242386359;
        Fri, 27 Feb 2026 17:33:06 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:1b3:a802:8875:2e2b:437e:ccf6:b644])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91b8c7a8sm8950597e0c.4.2026.02.27.17.33.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 17:33:05 -0800 (PST)
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
Subject: [PATCH 1/2] ARM: dts: rockchip: rk3036: Move PHY reset to ethernet-phy node
Date: Fri, 27 Feb 2026 22:32:56 -0300
Message-Id: <20260228013257.256973-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_173308_076219_7E67D3B6 
X-CRM114-Status: GOOD (  11.43  )
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

According to rockchip,emac.yaml, 'phy-reset-duration' and 'phy-reset-gpios'
are not valid properties.

Use the valid 'reset-gpios' and 'reset-assert-us' properties under
the etherne-phy node.

This fixes the following dt-schema warning:

Unevaluated properties are not allowed ('phy-reset-duration',
'phy-reset-gpios' were unexpected)

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3036-evb.dts   | 4 ++--
 arch/arm/boot/dts/rockchip/rk3036-kylin.dts | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3036-evb.dts b/arch/arm/boot/dts/rockchip/rk3036-evb.dts
index becdc0b664bf..c8100dc4c7ce 100644
--- a/arch/arm/boot/dts/rockchip/rk3036-evb.dts
+++ b/arch/arm/boot/dts/rockchip/rk3036-evb.dts
@@ -16,8 +16,6 @@ memory@60000000 {
 
 &emac {
 	phy = <&phy0>;
-	phy-reset-duration = <10>; /* millisecond */
-	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
 	pinctrl-names = "default";
 	pinctrl-0 = <&emac_xfer>, <&emac_mdio>;
 	status = "okay";
@@ -28,6 +26,8 @@ mdio {
 
 		phy0: ethernet-phy@0 {
 			reg = <0>;
+			reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10000>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
index ae2f84a4e922..bc6e6468fcc4 100644
--- a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
@@ -102,8 +102,6 @@ &acodec {
 
 &emac {
 	phy = <&phy0>;
-	phy-reset-duration = <10>; /* millisecond */
-	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
 	pinctrl-names = "default";
 	pinctrl-0 = <&emac_xfer>, <&emac_mdio>;
 	status = "okay";
@@ -114,6 +112,8 @@ mdio {
 
 		phy0: ethernet-phy@0 {
 			reg = <0>;
+			reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10000>;
 		};
 	};
 };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
