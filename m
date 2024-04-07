Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAC37CD128A
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Apr 2024 10:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L2PSO8OIZ8FiMqUNQNKO/baqMTxiZlwXLt9nqoe3u8c=; b=tdOjc3sQmsS7Xw
	iQOdP92pWlf4CXdtZMpHy2Gjz+Ay6uvhZM9BYz+i64tayHNWSClzxPh32W6IBn/RBfkZNiI++DzXd
	3oA64+qW29p8+yCOg0wMLT66tyue7Z6qmB+9LpGgzX4r+YCrXNIuIMO0f6N1ge896N8bq4biEN6Og
	Lw/SF/aOEKSAGrb8G76ZDLjOh+zR8xkW7xtXuN9WyGN52EM+PrGv8hsuE5WjbTl4Z94VO47c3QhiT
	U/s4ToWNacOSaH7jzXW28fJrktYjpFqkFD7xyr3sNtylZEur9FcgrELV5SyP4WI4CQKj9najj4e3x
	0HPfygPdar6+qYiazWyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtPoq-0000000CLY3-34dv;
	Sun, 07 Apr 2024 10:32:12 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtPoh-0000000CL8e-230K
	for linux-rockchip@lists.infradead.org;
	Sun, 07 Apr 2024 10:32:05 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4166d6dab3dso62735e9.0
        for <linux-rockchip@lists.infradead.org>; Sun, 07 Apr 2024 03:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712485741; x=1713090541; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KwDleUEWZ7wz0Ygnf5oQ1EseNSyfLcLEk9Kc6xn4S48=;
        b=TPxFDa7pTuRuUqYAfjBSdKG/vgNRIkGYA7I6+Ach52TPd4Y8uIqMHC62TocOqtYpB5
         45mgBmgGiGQfytMayUf2tmb9zAmie6b5HJP5tT0Dkz93NP+gMpFgms0bsQJfbH5mreJb
         or281sUy2gO07RniBVsm39DkDSmPSOBbPfuk2q1Abu8x18lY22jMmFUU4+5i1IjwG0wH
         CDIuvXup6P4PoYVEcpzJL1flx2AWx5hBXXbYst2tBn684O6nYCl+MCMHbOwQYfLJfEFH
         9wZY3LvdlbLSa1cSzkG25r9X+yTbjFtytHSehY3aMjgg+2xyALV2nG2vDRy9VPDzPAPS
         CjTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712485741; x=1713090541;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KwDleUEWZ7wz0Ygnf5oQ1EseNSyfLcLEk9Kc6xn4S48=;
        b=KCPS57WWE8mCFeqRaa5dd4OzmoVwQa1B+LHzfdIPj0g0e1uLGscVgIEn7Q+tpgwu7A
         UuvspzZTl0mIsMfBS2CwGJqWCOwEj2Qokz8Gk10RgwHZ6EOn3IPk11HgOg3r1oQdusBk
         ce0EqkI/KESQnvP2FXv7+7TtcC5r6OoiQ4f1RQKVpvCmV3+OCLF1r3W1Lg0cUmKSFeCx
         r4mL4iAFjNLv5dZ22+9UB9786FHNmeFsjnJdK+rLff0Ob+byaEUS51fEfQ4JWk1/sLzj
         REkWjfcQDkwyex0JfwgHXp4XwH7RbvvJsGYZVYboD7jeM/kTvH/YKqSEgjLT0raoWTWo
         s3fQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTc6kifJQV7kzjGCgLEz1IOt1thhavgMWDb97gWV29Vero2scqq1OJ7bD7upLfiKXQJ4d82S3fZBP5sYClTt2xGlaYTRdmKrGgB9RwkoDnkCKL
X-Gm-Message-State: AOJu0YyZmoygG33KAQdfelTd2XxrpARO+U/75WA2XsoCfXhLMjYscfxA
	bkAXMPnTewKkMK1+w09KIOczyHteDzrDlg5aZKIjRSXG+pWN+yErkqSJqbgWZ+8=
X-Google-Smtp-Source: AGHT+IFsUHJqYHtPKagNrFCK5cXUbUz4V0d8dUnN5mPnLnT4HxN/3uE4BigWEyT+5flKRdcH8N/Rpw==
X-Received: by 2002:a05:600c:4590:b0:415:54d2:155a with SMTP id r16-20020a05600c459000b0041554d2155amr4646141wmo.10.1712485741199;
        Sun, 07 Apr 2024 03:29:01 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id m37-20020a05600c3b2500b00416665d3e09sm675487wms.9.2024.04.07.03.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 03:29:00 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/4] arm64: dts: rockchip: drop redundant disable-gpios in Lubancat 1
Date: Sun,  7 Apr 2024 12:28:53 +0200
Message-Id: <20240407102854.38672-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240407102854.38672-1-krzysztof.kozlowski@linaro.org>
References: <20240407102854.38672-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_033203_560522_B3F733A4 
X-CRM114-Status: GOOD (  11.18  )
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

There is no "disable-gpios" property in the PCI bindings or Linux
driver, so assume this was copied from downstream.  This property looks
like some real hardware, just described wrongly.  Rockchip PCIe
controller (DesignWare based) does not define any other GPIO-s property,
except reset-gpios which is already there, so not sure what would be the
real property for this GPIO.

This fixes dtbs_check warning:

  rk3566-lubancat-1.dtb: pcie@fe260000: Unevaluated properties are not allowed ('disable-gpios' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
index 6ecdf5d28339..c1194d1e438d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
@@ -447,7 +447,6 @@ rgmii_phy1: phy@0 {
 
 &pcie2x1 {
 	reset-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;
-	disable-gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie>;
 	status = "okay";
 };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
