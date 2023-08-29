Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC4AFC83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 20:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+8/cHGxLa7oKnq0BBu5++m03Y6Wd9iH6rT8njCWf6I=; b=GL2c8uXlGqVSv8
	1v7CL+66c3Dy1fqrFLWegq1VGKF6vWBsxQ1YbQA/qBLl/Xwr6TepTVMpPBjimdiHJ5woNJm+kfa/L
	b06JPgDOp1UJmM5HzzFQEP9hf3w7Df5ouzw/5Ghk7iXytyJj3UkRYJU27YYBUhizthdLBCFXfUX+H
	HAhoGZymIkTly1uFNiIKGJbYywMtUBEbt09mWWFLk7QC4XnLTLAYDN8o6jtcQ2lngUgWc96TSsv7+
	IiHLuXvU298R8mOsKgAzfklxUyFG+B0QRatxS5SLfsutOgn7MHf8Mn23cOI2o1jCqQENG+nfUcSM1
	IeGANTUMnb1JmWePFRLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5V9-00CEef-1v;
	Tue, 29 Aug 2023 20:39:51 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5V6-00CEcc-1g;
	Tue, 29 Aug 2023 20:39:49 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-99c1f6f3884so609414766b.0;
        Tue, 29 Aug 2023 13:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693341585; x=1693946385; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sorglNdzyV/pWO7YMPt4RJRiShdjAUubPesOLMeqaVk=;
        b=Qcl2W5sHW7JVQhLkiIM2KBKPP0ZXJiLBf+XX9s2PPECZJ/6aBTtg3AeTrYOLAZeZwy
         KI4u6UberpZ6XMjMf5H7XVdti+zoSQZbk3zMhni9cUSRV7WeF4buc3YFt3i34/Mtdlhc
         Pi8Y8iRw9fzO9XKZx2M4xdSQ3Yr/ZAb+H+W9HwJMLfBMeaIAC4eR5rx1EfS1xAqUta0b
         BScZhMfWPYw7elplTOyZyQWPsgDVcKK/vE2f0D9hMQLG591dveU6oKyGQhfUCfd1DNJK
         VJHA44R3HIYHo5+Ca8+BhmSdUfpniHY2sR/w0+YOM5OJWHVY8cR7MX9a8IWFGkMLkIKT
         aGNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693341585; x=1693946385;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sorglNdzyV/pWO7YMPt4RJRiShdjAUubPesOLMeqaVk=;
        b=KuMluTu80ER/hEuGNYZ6v0na46FO6PdrdhsIugJDImM0SRx6b4rzi0zb34MIuHYgH9
         +AZJV1TqYB+fMzglS517JUS16TGikprgVu8Ia6Hx4rQscHLu3NR8Fy1yAd9F1C5SNU5H
         w3yCeSjTqEKwE2Sv5dOnQfuOlXO/NGbricSJiAhXSmsSbhhK1hr/XhnBT+QCdGXutVbL
         hnAaOglBfa/U/WhQ1MGotE645HZKRzKW4IY7q0EY82u1I0D8k9VDeCHdncCwzlhyAKci
         5YyObckZb92RHiCpyRdVmMBHMmkzXGiD4t3mR+T/Txk/3uFgVH+PKI0zB4S0zKgk8WAQ
         cYHQ==
X-Gm-Message-State: AOJu0YzHCiaA86g/Zc5zNjDyY9Kefi35vxuKWA8JuYYuaWJ+nAzrlhqh
	O3Dp9kzJCGkF84yBrufndKqlvAP4yQ==
X-Google-Smtp-Source: AGHT+IH31n7PDUa4uJw+PjCrd2GZUoofcWejfASdpqTgb8iHtMdCv2N8O7FuhMI55faF2RTxe1Mbuw==
X-Received: by 2002:a17:906:cc5e:b0:9a1:c42e:5e5e with SMTP id mm30-20020a170906cc5e00b009a1c42e5e5emr96025ejb.42.1693341584582;
        Tue, 29 Aug 2023 13:39:44 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id f18-20020a170906825200b0099364d9f0e9sm6301908ejx.102.2023.08.29.13.39.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 13:39:44 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 5/5] ARM: dts: rockchip: Disable non-required timers for RK3128
Date: Tue, 29 Aug 2023 22:37:29 +0200
Message-ID: <20230829203721.281455-14-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829203721.281455-4-knaerzche@gmail.com>
References: <20230829203721.281455-4-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_133948_557621_7DD53A47 
X-CRM114-Status: GOOD (  12.84  )
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

The Rockchip timer linux driver can handle a maximum of 2 timers and will
get confused if more of them exist.
RK3128 only needs timer0, timer1 and timer5. The latter is the source
for the arm-timer and it's clock is prevented from being disabled in the
clock driver so it can get disabled in the device tree, too.

Fixes: a0201bff6259 ("ARM: dts: rockchip: add rk3128 soc dtsi")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 88a4b0d6d928..f3f0788195d2 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -252,6 +252,7 @@ timer2: timer@20044040 {
 		interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER2>;
 		clock-names = "pclk", "timer";
+		status = "disabled";
 	};
 
 	timer3: timer@20044060 {
@@ -260,6 +261,7 @@ timer3: timer@20044060 {
 		interrupts = <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER3>;
 		clock-names = "pclk", "timer";
+		status = "disabled";
 	};
 
 	timer4: timer@20044080 {
@@ -268,6 +270,7 @@ timer4: timer@20044080 {
 		interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER4>;
 		clock-names = "pclk", "timer";
+		status = "disabled";
 	};
 
 	timer5: timer@200440a0 {
@@ -276,6 +279,7 @@ timer5: timer@200440a0 {
 		interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER5>;
 		clock-names = "pclk", "timer";
+		status = "disabled";
 	};
 
 	watchdog: watchdog@2004c000 {
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
