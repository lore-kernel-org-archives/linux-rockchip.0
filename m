Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6A78CD11C2
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Apr 2024 10:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1V3FahcivRwEu+kIN+ZCicdkcVWITo+uYlf73ToZ5Y=; b=N6r00M73wHiRRz
	OUAOA1duiIEeohFssL0chSQkDq8FETOSNDi1pRQVKQY7gTvfWyZeonk9DkQwSuD3jkBpKHsVRkrhj
	JFhrPdLOG6tsBhma5yuxPp7qaB5zZT5TO7Qd4CbTLaribLFCi6o7OADkO5q8yVjyv1qPLlZnFu5ua
	uHOhDUyyAXowE+Qz77ObyNJ9AJszvwNu86Rh249hU2+0fLHI/BsPnMwskNHFxd+csXmj2Bz/bAKwc
	NgLxeSGBpyfpBHwUM4yngsgwuz288bFUy4eQLGM/At3haf7BNHCGf9oZ2fMft3Rmc8OGT3a4MQYIv
	k1/cMTeU9KSLE1s/tnqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtPok-0000000CLVQ-3bWR;
	Sun, 07 Apr 2024 10:32:07 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtPof-0000000CL8Z-2g4K
	for linux-rockchip@lists.infradead.org;
	Sun, 07 Apr 2024 10:32:03 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-41650ee55faso3399085e9.1
        for <linux-rockchip@lists.infradead.org>; Sun, 07 Apr 2024 03:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712485740; x=1713090540; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=taxHWKaZxjJsfBMATKjyb5DNf/BYQaehkgsorzItAt4=;
        b=kL3Aoe1100LUfhjAfd9Im7y4s6KgnsFEO50CgBjUmSS1QO7Q8aCYS69Bp7cmAWhDUo
         z3Urh8S4PEAzxrXLxFSANkloxBEZ+oKkUp6IKdM4r0D8kDh7sZv8+wZHby2Ez1khPIpf
         VItjfhhF2BjPZEEjeyJmMc3LiuNCJa65fCFXC0rjBut/V7zGX7MYAHGn0ZXJitX/1q5j
         VD55iS9o0MgMsxmOp/5zfJgC0vvfM0+6Twv38tY29Hg2jM5OVV+IU+cZnhoAUAT0JH+F
         8nHtuEVHRVAFpfmxowPLQfhQFrrWyxTBzRSI27Of264vfJD4+kiyEP0GxwGQilu4C+84
         4iog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712485740; x=1713090540;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=taxHWKaZxjJsfBMATKjyb5DNf/BYQaehkgsorzItAt4=;
        b=ZhVO6xsz1NoJxC7OwCLMoY8RrpOQvAjETwSg9PLegmUEQ3PCz4L4/81nynBsafVJMR
         2iynqoqUX9TSr5nCsvka57QuJ4cFLOLcWtk6M2Zewvq5W8PI3d+NZvZG3HEtwlcNhRgZ
         90/aiGZ7GkTMKBn1xfnL1++6VE5twTIrv0oEMaW7zMzv5ME4iYPhGpZEFxIVjpp9tyRB
         rPKq8zhxrHF9we+ieZtvFYvwlKIAzOabTEqTs20MtTp393tdPEloOeKu5A20rs/6+ILf
         XPEfhDDTW4aFCvDekd0TSIDoNF9mXxecZMVAWopei2cEduZMn/HpyLr1jDPSyDGcKJX5
         UOiA==
X-Forwarded-Encrypted: i=1; AJvYcCUJDrshiwm8nBi863Uw6lGUMIl8qAuQ1fq2uq2Crgk+LoXhi3esDeLb53cKos1qU1+xwVQCN9GSyRGj8m4hZzF7LlYTwjXdu9lgB9E/rAZoNnw1
X-Gm-Message-State: AOJu0YxLayEvEBcjxbSjXD/DJMKzxAwYqditg2Zu14mh1kacFw1wdlCv
	B11/mGdVAvz/TRaAgyJ727YTjiN3zs60YoCb8ufySaUL4TxyFyP9lLAU/DW84cE=
X-Google-Smtp-Source: AGHT+IE62JsWsWYbi5WeTviefWU7yFrxeoYcfdIRR5xOpUJ3VUr3HoKK/FWNUdVFckfiAQMv2PaGAw==
X-Received: by 2002:a05:600c:5021:b0:416:5508:256e with SMTP id n33-20020a05600c502100b004165508256emr990278wmr.22.1712485739876;
        Sun, 07 Apr 2024 03:28:59 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id m37-20020a05600c3b2500b00416665d3e09sm675487wms.9.2024.04.07.03.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 03:28:59 -0700 (PDT)
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
Subject: [PATCH 2/4] arm64: dts: rockchip: drop redundant bus-scan-delay-ms in Pinebook
Date: Sun,  7 Apr 2024 12:28:52 +0200
Message-Id: <20240407102854.38672-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240407102854.38672-1-krzysztof.kozlowski@linaro.org>
References: <20240407102854.38672-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_033201_841537_BB7029F0 
X-CRM114-Status: UNSURE (   9.77  )
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

There is no "bus-scan-delay-ms" property in the PCI bindings or Linux
driver, so assume this was copied from downstream.  This fixes
dtbs_check warning:

  rk3399-pinebook-pro.dtb: pcie@f8000000: Unevaluated properties are not allowed ('bus-scan-delay-ms' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 054c6a4d1a45..294eb2de263d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -779,7 +779,6 @@ &pcie_phy {
 };
 
 &pcie0 {
-	bus-scan-delay-ms = <1000>;
 	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
 	num-lanes = <4>;
 	pinctrl-names = "default";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
