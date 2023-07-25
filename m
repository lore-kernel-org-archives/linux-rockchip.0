Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDEC4C001DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jul 2023 14:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pn2ugtupwURsAF45APtbi37UV5BpFYGoBKOS//lr3Ps=; b=IlNT46QSm5CH2x
	wDlt1KKE/oE4Wt0fSDhiWSe/ZiGLxXNhQFEcRcZ4Q/rciNFpEISAuQDZJGtyqSNh+IEHRAK91P1F4
	hMUs23t+dt19ZyqivlwIBuoHpu98uNOshZL1AcVFMHvTus4fFcrp1U+A3NPIMWBpmf/AHLbY7QTTG
	KhF4jzwsqP8H80IC+YJDQw2cxibkXqSkmDjjNn2OJpoSlnzo04J+ACLl7DkZmUgKWiFPryCPSrGkc
	VC6i7DJmkOBeLblco1yvieXgu9coV+YE5f4SY16pSTYwfadxAT4Pr5NsOiu+lm6hV0OxvGd6de/kf
	MXLUEBjM3wTNJCACyyug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOIze-007lzA-0I;
	Tue, 25 Jul 2023 14:26:30 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOIza-007lx3-0i
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Jul 2023 14:26:27 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-993a37b79e2so890622866b.1
        for <linux-rockchip@lists.infradead.org>; Tue, 25 Jul 2023 07:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690295182; x=1690899982;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Osub4f3a9wDa+j6uwPfO6WIBtwM/4F0mt8TLvtTm5qY=;
        b=X3B0JrV0jNmpORBLacXArjgPvByb/7tiykrv12+09ez0HhOJwKMUPFDRuwBOwPi/h/
         ttnZz8rcxLN3s7Ca0i8Yh9HPKBRtHDXhEIzb4wv3HQPDmtk/7YOAzq77N47Ls2HN+GUF
         b4Dss4LE1Lw+doub84+A/I8K8gGKYkHF1wYO+4o9vxzNQpaGEqZ++ZRpryp7i5o/NOh5
         oJDfyk9Smbsldon3mgABa0wET2qiVlSQybo4aT4jZQHZEcls4gB9lWOhsdqddyRIvEYr
         hG+yuOPnnK5olOLEiUOVBCldrtS8WMh2bu3QK8XsucEzTRhH2EC4Hzwb3X4rs1R1uPo7
         ifOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690295182; x=1690899982;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Osub4f3a9wDa+j6uwPfO6WIBtwM/4F0mt8TLvtTm5qY=;
        b=LPFDMMtef5NHAGdaIWEE6pKb36hlsLIFA5SYRzZlnYEyo7wD+AFksWVO13hUGVe+r/
         /lShyqRvLw0MyKX/6jGfVQZIL1W3f2umHavPckbqw7ZOc/CJmKi+N+tOO4x9qU54YBIz
         yngy7TFbetzMv7ewYJ7Mg+48I6VZnCbzaqX3katFfomlGqJV05YI2Ec2zRQxnFyKaRA2
         ocva7IIrp8Lrk0gSQqNZIbBrG6E444rjVkCHnj+IX7j/z8QixPKx3mHy7IRWPuN+YT6J
         rUthYe9Gb85hCQNHST5mmijWy4sp2PVbu186ACaVbOIXUgIDaxfAQRAkzcNpNqgpqdp7
         iDwg==
X-Gm-Message-State: ABy/qLZhJ6de1BYttnDYOiPG8EmTLW/J7InEt0+KwR9hDcuahbiAvgCV
	PO94hOmxVPIerEB0jU8hPqBSSw==
X-Google-Smtp-Source: APBJJlHPnZVymI1w4rbdTdJSLu6BQorRPNwzUIM15aMz1q72e0NmF3FCchoH6nUCGbwW+K+2h9D6mA==
X-Received: by 2002:a17:907:a062:b0:978:8f29:8c85 with SMTP id ia2-20020a170907a06200b009788f298c85mr10816414ejc.32.1690295182551;
        Tue, 25 Jul 2023 07:26:22 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id lg26-20020a170906f89a00b00992b50fbbe9sm8242980ejb.90.2023.07.25.07.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jul 2023 07:26:22 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: rockchip: px30-engicam: switch to enable-gpios
Date: Tue, 25 Jul 2023 16:26:16 +0200
Message-Id: <20230725142616.157405-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230725142616.157405-1-krzysztof.kozlowski@linaro.org>
References: <20230725142616.157405-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_072626_256370_DD99DB4C 
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

The recommended name for enable GPIOs property in regulator-gpio is
enable-gpios.  This is also required by bindings:

  px30-engicam-px30-core-ctouch2.dtb: vcc3v3-btreg: Unevaluated properties are not allowed ('enable-gpio' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi          | 2 +-
 .../arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
index bf10a3d29fca..80db778c9684 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
@@ -26,5 +26,5 @@ &sdio_pwrseq {
 };
 
 &vcc3v3_btreg {
-	enable-gpio = <&gpio1 RK_PC3 GPIO_ACTIVE_HIGH>;
+	enable-gpios = <&gpio1 RK_PC3 GPIO_ACTIVE_HIGH>;
 };
diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
index d759478e1c84..165d09ccb942 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
@@ -39,5 +39,5 @@ &sdio_pwrseq {
 };
 
 &vcc3v3_btreg {
-	enable-gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
+	enable-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
 };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
