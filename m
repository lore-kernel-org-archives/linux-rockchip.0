Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEBDDEDEBEF
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Mar 2026 19:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IY6iTIvuDof8LdGdoDFw4aIPOBWt3lC3WBoTi3dG4Ys=; b=b4PiGtWDjLGtZh
	jcEsTDkedLliz5mVDKOicKygThPqipSTJRtw+l/iM0hRf2W4yjEPMggdLH5vUAGu5DJCEosu6E1gv
	RVDuiyNPbX7H/7swa9vF2lXmofNIvOEnsn+HIKrBBa4h87gEu9eRu2gYIgq50XgoYFp9lRztW0lEz
	oMz8JQwssAiRGizmAYxpnvE566peQEJcTlWCKdxndRX7x6fE6wxcN4F+y7OSc5RiD0gPGRxELdRN9
	Yo67peX8MMtP4RKeK2jN5nAhcPO8Hzye6oAp7LxYflRmK8KVgppVetbf5nkeHBJp382oSxjlElJ5s
	7VG1q2nwk1UD0SFqpGWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxVaQ-0000000FoxO-37lL;
	Tue, 03 Mar 2026 19:39:18 +0000
Received: from mail-vk1-xa2f.google.com ([2607:f8b0:4864:20::a2f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxVaO-0000000FouM-16Oq
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Mar 2026 19:39:18 +0000
Received: by mail-vk1-xa2f.google.com with SMTP id 71dfb90a1353d-56a8a20e6e6so2698370e0c.0
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Mar 2026 11:39:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772566755; x=1773171555; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZSARJ2xr5zNTwzjTW4AFghqGY8Sq94Dgx3SRmBpQfjE=;
        b=e6iPwnzlruXjH2nXASfxHMM/dZmv7TLYLJbGcgcf6yT1fOBJpjBOk6S8YSJPHQ8wP3
         2bxlMxKNXhA8d2WQxKmkTB7D4BO6EHbStSTuhHKR6MmcrVXHG2jcPmd5HI5FoapzsWRl
         ojRO57gxWngmtAIiv/i5C/7bLIw2SC4MPAKX1iiFg6SbQUW9TDORCuVmaNmM5K+u3PQ7
         t8+wU+Z8aKfg79UmwHLrYXdVGABr25eigDYoAkpAE0vpL/4Du60EWrGYreebWiXfuCZd
         jyK/aDkxawhrGSZwRgb52o2kiC4X+lyuvKIW+GphYwEkAI8Yd+p9Xa5GQl0Zz5xpaiOW
         +oFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772566755; x=1773171555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZSARJ2xr5zNTwzjTW4AFghqGY8Sq94Dgx3SRmBpQfjE=;
        b=bXp+fgNAH2lB4xtjlc60AE+zTg7zghbcIc/gRVsebFjEMQT7VqtgKi0kiugCxn2zUQ
         VSGYn126NKU+jv5YvUTXWvAiUok3EE1p0XByhd9DLN5NAwbDjF3KnHrzWHVNa6zOEQ/c
         UOTzC53E1deFVD4LPIbO/nYamVAS7d+GN6EtnMH7OME8aN/Pr43an302W2l14TFHVW51
         d7m2tnU5gdcEOHDBiyr0KAzDIymUzg85zq6izeXfLi3OUvBGNkadp7Ik+T/EmgJsW80q
         FNZUL11Jvgrd3KrtZygCyS6egqk4GdSq7p2pnusetA/2fWXpJfL2Or75YnENarawLdtr
         hSkQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0WTdDUY8DrdQi38UHu92CWUYIJbtLMc1yMEdYurCGwF7aao9g7cLjc2ByYe95Y8ceCpQAT93dG9mmFnFhyQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxrIZnSAhaAzG7ncVa9dUQ91/caBRYdd2PA11UDgKbwPxRtvCkM
	ll7AJXJP7jNpVIM8tJciZYEf/OVi7OkRePAU3cECDzBE8RH5VT4KXJ7v
X-Gm-Gg: ATEYQzygjPeQOxhiS0RjR94Z3cPltQXTqhO/gTyPESsiKfx492Gxv7ARRA5R3fdUwjY
	1SaqSm/GYJc06O7ePXYXiH8Q9LUITXyD7YYzsreYdublY7lJ2slAD/ybZT6CBzCYDFIGu5uRFNi
	cU0+wCnczv6cCCH6zIlhU6M+dzWJ+HUq8mGTjOUWAsDGqxolG/U5rUiVmdqneVpB645hQ7+wT1m
	YXJ6J+9ScspDp3Zq7XePDO4JijUGQCKb1A0PmQyrQW2YsQCuSTHJujtxl4RIzjN6k+xnK8ly1Jy
	ZnpT+V2fzsTUUZfdAGtqZgbAy2r5AjUGZde2/F8Xt1DFN9iMSwRf+MJRlBabfwjTwc35DwvCIde
	AA7OZpBoDtsh/1G6TDOYBIaDe/oAomuKScdQ4zV/ZAk9mXrdlOCnZmtWScUVnBATjJjqSi3FmyS
	iADlScgA/xDGbTx/sPHXQ2c9kWRU81aZIWCbfy1NCIjxaZIottvIiOddW+FKZLzAxXwUNm
X-Received: by 2002:a05:6102:c09:b0:5f5:402b:7ee3 with SMTP id ada2fe7eead31-5ff3232ba39mr5986835137.14.1772566754755;
        Tue, 03 Mar 2026 11:39:14 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:1b3:a802:8875:499e:12bf:3287:5753])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1e7af30asm17780456137.3.2026.03.03.11.39.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 11:39:14 -0800 (PST)
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
Subject: [PATCH 3/3] ARM: dts: rockchip: Improve GMAC description n RK3288 boards
Date: Tue,  3 Mar 2026 16:38:55 -0300
Message-Id: <20260303193855.828892-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260303193855.828892-1-festevam@gmail.com>
References: <20260303193855.828892-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_113916_312106_1CB63298 
X-CRM114-Status: GOOD (  11.84  )
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

According to rockchip-dwmac.yaml, the mdio node should be 'mdio0' and
'wakeup-source' is not a valid property.

Change it accordingly.

This fixes the following dt-schema warning: 

Unevaluated properties are not allowed ('mdio0', 'wakeup-source'\
were unexpected)

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288-phycore-som.dtsi  | 2 +-
 arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-phycore-som.dtsi b/arch/arm/boot/dts/rockchip/rk3288-phycore-som.dtsi
index 12ab10c4adde..0816e388852f 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-phycore-som.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288-phycore-som.dtsi
@@ -100,7 +100,7 @@ &gmac {
 	tx_delay = <0x0>;
 	rx_delay = <0x0>;
 
-	mdio0 {
+	mdio {
 		compatible = "snps,dwmac-mdio";
 		#address-cells = <1>;
 		#size-cells = <0>;
diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts b/arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts
index 26817848c154..3da105060302 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts
@@ -98,9 +98,8 @@ &gmac {
 	snps,reset-gpio = <&gpio4 RK_PB0 0>;
 	snps,reset-active-low;
 	snps,reset-delays-us = <0 10000 30000>;
-	wakeup-source;
 
-	mdio0 {
+	mdio {
 		compatible = "snps,dwmac-mdio";
 		#address-cells = <1>;
 		#size-cells = <0>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
