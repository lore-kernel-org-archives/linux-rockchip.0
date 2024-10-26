Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D117D10BF6
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 10:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XyBHFSFHpj7BK7oWY3VbmhXm51BE/eABXcCHQqHRVho=; b=1BSih+qKDVjsAE
	X15nP76V6FVG9+H5j/WCQJob49ajWKqkVoQWTy9t0U9EX9k+vCqUN+dr/M9eDCtbB95wyB22mJYWH
	jfnbin8c/j8E7BpoLfWTzxj3F32wTe1mCFd2UHCNUEOBBpyiXKxonZC2uGzZ9uii68CDo9zsHYvce
	B1lDn8vq0DTETaG98U+SueYvAcsQ08prkFpiNGF3UeV9f+b8rJ8lNDmP4psNn9rNOTc+dsRglQFmc
	sRcLpWuDUgPDqXzVk7vDUYu68196j9heBunOOd2A0/v1BfZNLDxYohpWsUD0A+LWeIOYOgpbScJFG
	E5YPcYcAnvnnyq/attBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4deJ-00000006L4k-1N0R;
	Sat, 26 Oct 2024 10:03:59 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4deD-00000006Kzn-2M7Y
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 10:03:54 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-7180cc146d8so1597580a34.0
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 03:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729937032; x=1730541832; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XxDi/QQjfo4QmzhNBMwFulK0XyHFgDDIUe9Jkm1vGBk=;
        b=E3oFJIE5NhkRF6lOg8Z3KS4OdAvNmRcbfUmnF5ohZASHo5jpBxMwSjKnJZxzGaTneo
         KCgsgjp+s1Kaoi204lqUAiuNgccnV3o7pZp8vfR//QjwY6K0lTVCEzV5sPAhfN5NRqYc
         B21u6T2IyhtzZIESLVMlcjmf0oqMBZd8p2TgDUGnd73TyHjpp+Zv+Qg+B3hbiZBY1vhy
         0t2quIaccOUL6Hg9JHIRArMOnaIVVZ/6AXS/HmHUr/5OAul1281V75yshv/9OQeag0O+
         Avdo5H13FUYdx8T1V4+sBQOqmTQEAO5K0hqrAK91xJG6AYrXZm1TW93BP1gL7fKJkPeT
         iMng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729937032; x=1730541832;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XxDi/QQjfo4QmzhNBMwFulK0XyHFgDDIUe9Jkm1vGBk=;
        b=fZ2mZY32j0P2wWf5+vM6vzLtfCXjrpAWVSyxKyvWNDZYN4pw6xm4kTZqA+6wocHwhJ
         KgYf4nltdyPzPLUUHmGKInUcVpyIjUieD1+ha904gD7159k9wDSX0Ub3UWwAoRZdlOt/
         lSWzhjYYpuBz7mlu/Ckhlcn5LMIq5b49E12SoCTXElAt84QNuDw2MXXRFYCYU05VpsHo
         kwSCNANX1uerOnRvI48WltIQ/PwV9N4SKV94/AVIq/0WxUnuvue39jqfmdP3nagbcF7L
         oKAwWz1V2zzOayDuM5z1q/alzfnsYhDdYIzFCBWGOuYXZAezU7EWj+2N81jsSzqx8jPV
         LPBw==
X-Forwarded-Encrypted: i=1; AJvYcCW46tTW62GXq/P8bzvJU4adVDijY03msrupJtFLqSnYLCBgLpc60/7VT/zDCTVyPe5zAWhpb4WnEGLaYyEkrw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz49S69fK7oNNLH/MoCStuVVGtdq26Wl3BqKFUGxygIbPPDWWXy
	vWAwCE23kyFqqiMfJaPv67iv8ENU+TlWLe+PYlE5nbNNfWF6DIWi
X-Google-Smtp-Source: AGHT+IHMHtP8zo1ybgS8KSdERD5CS4rZOYYyBJl6klTIEWzRz+kjDvM+1vqkvFQUcZIJ91shRyQtHA==
X-Received: by 2002:a05:6830:4991:b0:715:3f20:bd47 with SMTP id 46e09a7af769-71867f1637dmr2025325a34.6.1729937032424;
        Sat, 26 Oct 2024 03:03:52 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:cefb:5eea:7da6:3c6d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7186165841asm632243a34.48.2024.10.26.03.03.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 03:03:51 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Ondrej Jirman <megi@xff.cz>,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 12/15] arm64: dts: rockchip: add SFC support for opi5max
Date: Sat, 26 Oct 2024 04:48:28 -0500
Message-ID: <20241026100310.52679-13-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241026100310.52679-1-honyuenkwun@gmail.com>
References: <20241026100310.52679-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_030353_643468_5F89E53A 
X-CRM114-Status: UNSURE (   9.22  )
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

This commit adds support for SPI NOR flash on Orange Pi 5 Max

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../boot/dts/rockchip/rk3588-orangepi-5-max.dts    | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
index 71b2d891a2bb..0cf0e30a503a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -327,6 +327,20 @@ &sdmmc {
 	status = "okay";
 };
 
+&sfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&fspim2_pins>;
+	status = "okay";
+
+	spi_flash: flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0x0>;
+		spi-max-frequency = <100000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+	};
+};
+
 &spi2 {
 	assigned-clocks = <&cru CLK_SPI2>;
 	assigned-clock-rates = <200000000>;
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
