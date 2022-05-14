Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE1BBC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 May 2022 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzI4Cz7O4qo1y4b9lJ1e/3vbcbjMmkuBB10rxgWP/nc=; b=EutYuPw5gp9UR+
	UWJ9a9kPb9fmjcemaaRYSV4OB4WXK+PMpuoXCYeHM7p4ZSCJkY5BVoOUg5EAVT+xWdtpsh6pBmAol
	aLTTvN4V36Tfb4/r/FytSedMVHPPEzB+HaF2LOh0mRr56grFcQEX49DZ0ulyiwFblX8HX6Tct/HqE
	kRTOdXSY91GhGgmBrS8oPsdZoBXZcwJOBp1vE0tB0YPDHyRCr5SV82DNhyLwLgtyoGzxsNq1QRM78
	y0GZhlVUMfjd3SM/oeDtfL+RybpT6GF1prd6IqY05sBhH8SM0F1gTECXQC7b8PayUwOd/TiT6zajf
	XHDZ1fYFK8jcqCySYxGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nprxU-001VY5-1Y; Sat, 14 May 2022 13:37:24 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nprxA-001VNX-4m; Sat, 14 May 2022 13:37:05 +0000
Received: by mail-ed1-x52a.google.com with SMTP id k27so13025689edk.4;
 Sat, 14 May 2022 06:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=toXlyjRqxPOMu7FU0IW8LcSR73wz0FAFwkKHEk9OfQg=;
 b=mF0fvJmaxcPEJXwm3QYVF49GBdsbPWOj4de02PwDIcByndRXk4h4m06jv73pa0pSme
 2N2z/KsA3+HjyKj/TcHeWYFR54jRG+Hi7JuCuU5QLpIZlXTFIMttfIl9PQ9uZUhKYmaV
 tVIA5a3GN0/FUA1Vj+m+mcARIuiNLdN+633pa1cT7gXQ+XYCnGwbVy1IB5yO7eaC3cvI
 8pn4LKgtnupFAwjzNlYsh2u9B9A4rcjy8FuDyhfE7YjGW7xxhv0eBGyNx/oa7ACQ+HBE
 yDB3dTIOmazon6wB7+se0uhHtLlSzBumYL8BMnYndo89GFwO/jsmGx+Jq/Wh8fOTIpAc
 gdVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=toXlyjRqxPOMu7FU0IW8LcSR73wz0FAFwkKHEk9OfQg=;
 b=LPYVN3U2+I5JmjQRXxMSO44Yj0BJB8p8YwZIWI1HSdOTBZBq/64lTVQ1KVZU1Z+cvu
 dpF925k4ZhN3jJm8an01vJL81mOEypmhrZ+uHHLCkQxiFwmWehgRlRsZMQEV5Y2uYogM
 P8bDRe4Y8YQn+MJKC5BJZSVcWXvxCBRISIrEl3TyLez3UFAwx1h81B/pkVoMzgP3Yqna
 KQQFs/dz5Twn63kxJsQg8QGef/1IcT7lVVM+nGx42OoWwg2hVOTB4NH9J3p7DZtROad3
 3Stj/iUg6IK4S2ugvVDdcykNJtf0U7gSG6afrVe06EN81bHqWFQNxvYHhaYfgHQ2JNej
 LAtw==
X-Gm-Message-State: AOAM531STE1YfTj7BkmFS3WFv//ELgBPArrwOPJBxoPqgWzaEyFrIkr+
 KLQBwz/qUoA3Y+9FJV44FHg=
X-Google-Smtp-Source: ABdhPJwWj2/+V8JJuLG/en/GhFUmBSvLuOfOdP0FDOK6FKh3Z6r87dGQpB9uw240uYeEwToco2nhzA==
X-Received: by 2002:a50:fe1a:0:b0:425:e276:5adf with SMTP id
 f26-20020a50fe1a000000b00425e2765adfmr3840879edt.284.1652535422140; 
 Sat, 14 May 2022 06:37:02 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 ci18-20020a170907267200b006f3ef214e49sm1736739ejc.175.2022.05.14.06.37.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 May 2022 06:37:01 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/3] arm64: dts: rockchip: Add Hantro encoder node to rk356x
Date: Sat, 14 May 2022 15:36:04 +0200
Message-Id: <20220514133604.174905-4-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220514133604.174905-1-frattaroli.nicolas@gmail.com>
References: <20220514133604.174905-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220514_063704_215077_2CA4F054 
X-CRM114-Status: GOOD (  12.22  )
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

The RK3566 and RK3568 come with a dedicated Hantro instance solely for
encoding. This patch adds a node for this to the device tree, along with
a node for its MMU.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 1042e68602de..9b4bed7a8a44 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -569,6 +569,26 @@ gpu: gpu@fde60000 {
 		status = "disabled";
 	};
 
+	vepu: video-codec@fdee0000 {
+		compatible = "rockchip,rk3568-vepu";
+		reg = <0x0 0xfdee0000 0x0 0x800>;
+		interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vepu_mmu>;
+		power-domains = <&power RK3568_PD_RGA>;
+	};
+
+	vepu_mmu: iommu@fdee0800 {
+		compatible = "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdee0800 0x0 0x40>;
+		interrupts = <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power RK3568_PD_RGA>;
+		#iommu-cells = <0>;
+	};
+
 	sdmmc2: mmc@fe000000 {
 		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe000000 0x0 0x4000>;
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
