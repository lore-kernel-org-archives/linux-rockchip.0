Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A68B5C43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jun 2022 11:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NCB/Vip8vDgt7cC+XDOt/bz8nK/S7FU5rJlwT2Av8lk=; b=ONomXWmIXt/WLi
	sSHrQgRnjpkyzP99bnkc3zaq/+1FZK/90fgiB6xA/JrxBfxA3cpi5ytno0m5EsXKtzxfCdE5pELjR
	U0y06BcObsc28pNtn9RkvU2msb0wj7nWQthDRfqhYtIxv+qu5oG4rSk8KZS7yCxTBcNh4+7hGoVn6
	0Is8eRwmJ7GbjbEUTUwQcMsWWwjAtOU54tJtBksYI6ZHae2ykKsiwLQV8BtmO2KhYKQTZX6U0UKTl
	73FhLkEw3FbV2TBf6LwoW3Tny9m7w7yoUYuqcOw4p9UU0v5NlOzxtvtL5QJdTMo/w3vFRu7kWq39D
	4fSnnb1FFyv527myfAEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzGlF-001Vyt-Qa; Thu, 09 Jun 2022 11:55:37 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzGWp-001PNn-0Z
	for linux-rockchip@lists.infradead.org; Thu, 09 Jun 2022 11:40:44 +0000
Received: by mail-ed1-x533.google.com with SMTP id v19so30807175edd.4
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Jun 2022 04:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CXB5XzjU8LfwcLqwKO65LrYsijml7F+eyLiUznyo7HA=;
        b=YONyQm9OPL92w7ANCTIJJeD1A564n8Z/1Smd0v6dgfKJPFGxRDLYjiKDADO1PxCCna
         Q4QXUi70jYQGsAZVvcNsK/D990hxIjJTZ8s6+dyNOcdNzHo3WGnLNzWNnGD3sV7CLsn1
         H0JwnnGDPe7IHgx5pFvD1FYPasSi5GejvhOO4h55GGPELkO2Z5RP3v4ruhz8hqz9B5wN
         6cJV4FsVIZ/d+8AI3rjlyZ8a+3zhvdY/nsxFUlb7ZpBxgOglq2lwyzXD4YXRYgs8tS2h
         e/hDos3tX7KACP92eA1TVjDZLmV0+71XpJt/kMXQtKVOn2IbLJ5v36K7AJ1dmqczYdbl
         TrcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CXB5XzjU8LfwcLqwKO65LrYsijml7F+eyLiUznyo7HA=;
        b=ILjS48nI98uJYzm7dbbpxjznPNpxgUwRkdCMKNvNCF+AnHwT3T4lN2R3kr9v0nQORK
         PiYAl8QbqW/c3TPIjjXTKlkX5/B6uZifRTwBF/R3KU9nUWctkrFVNomXji4DFcRDgYhO
         h2cfvyuqs7x6837a78zI6XH8ijAsbbVEIOq7yl8NdaXjQLWHUGNoFlVzBXWykw9RA3ya
         F2booSWCKpyHhxiS+gxoQkiugixyZN2wDDJOxR3X37SuoHGBZ9EVAfsLAkx/Ots+pzwm
         ZLOf+Gf0ANJxiuKQTVeT0wCtWqtPVWzfYSQlToi2mHFJdHjOo7dNKLfzHj/Q1udwSt2R
         eodg==
X-Gm-Message-State: AOAM5323PGk4Cl5AU1qpdttV2U0ePIx/e7iXAKr11kmdtRjQ4JJN0PIi
	iDbNkjXFCJyyr3t+ioCEqTfR4w==
X-Google-Smtp-Source: ABdhPJxUclF4ULlGFjz01jV+wOJBGG61wx/rlp8x0HAu8Yv6J08fW8jDciyDz5F/25kGVs9vASxfMw==
X-Received: by 2002:a05:6402:1f8c:b0:42d:c3a9:5beb with SMTP id c12-20020a0564021f8c00b0042dc3a95bebmr44617549edc.160.1654774838347;
        Thu, 09 Jun 2022 04:40:38 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id 10-20020a170906058a00b007101f6f0720sm7760844ejn.120.2022.06.09.04.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 04:40:37 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	arm@kernel.org,
	soc@kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 34/48] ARM: dts: rockchip: rk3288-tinker: correct gpio-keys properties
Date: Thu,  9 Jun 2022 13:40:21 +0200
Message-Id: <20220609114026.380682-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
References: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_044043_175684_95A8E134 
X-CRM114-Status: GOOD (  10.55  )
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

gpio-keys children do not use unit addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/rk3288-tinker.dtsi | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 9c1e38c54eae..09618bb7d872 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -26,14 +26,12 @@ ext_gmac: external-gmac-clock {
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		autorepeat;
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwrbtn>;
 
-		button@0 {
+		button {
 			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_POWER>;
 			label = "GPIO Key Power";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
