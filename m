Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E244DC001B0
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jul 2023 06:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLRsUavShXFG56nAxgLNwrRO4vMe5U3Zd/2TPkbZhQ4=; b=EPxaAEud13KmMc
	gI/duB8tGqGk7ZwfKMRRbY/Gqv9a6rI7igbvEDS8rcJbu26BTHrKiNxO/XtTWr4eEElpJDNLFJBBK
	yMVFcwBO57//rWCo7S0AxljssinmZZOcaRrZDz5BDfXg47ynKponhCdxNDbys03etOeRgzCaPQlPn
	diTvp1r9JodMAqcO8j0e0lBQnqmsVsCHZYNKUpV2viL/nhY3LTWP9R7uYBtYvJJcUe2Y/ChPtxOiX
	lmfGt+GcMHhn06kYbOf9w+JDy0tAtfz+IwQIOLV2WdjLxBidWUo1I8XS/UpC6lMfwqJG4I78lG8VR
	jd/C6unROGA4m+DytW5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGwJt-00Ew4Y-1t;
	Wed, 05 Jul 2023 06:48:57 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGwJo-00Ew2J-1n
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jul 2023 06:48:53 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-51d9890f368so7052971a12.2
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Jul 2023 23:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688539731; x=1691131731;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GB4bpNO3SAJRb4aZuiOoT5tlPntO7wrJyRlzhpgfep0=;
        b=D6HXcgpHibNmK6NkqhcOhTtIW5+ekU9iXxP97snkK3BNydz/RuVs6uGiuGiUOotYHc
         pJIMnec7dx93W7yNBm7gBJ3WuDLzdOM2JoWQ2C+Pf2fCE2T7VPbT5j8BpE5dOqkA9NF9
         oaYY7rFY0iPy7STFlXVDbPz38v8etgYx4yYI28cBb7HWdymSgzfqiXV8Lu+HZ15cRyuk
         +A2aRwh8w+E1aGoNFZaf610DUh9YoIdypgtHu7f7p+jlvISmjSsVqJhQolms0NBmP/hb
         QzCP/CYVepxNleUQvOreWm4BGHNJfQWNAOYLBgqmzgBtfokh8u7Ug0VpQUtv6xipPxY/
         lyag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688539731; x=1691131731;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GB4bpNO3SAJRb4aZuiOoT5tlPntO7wrJyRlzhpgfep0=;
        b=Y0WgHt4YsyFJo4B6uOvysviMqgBz/D7F92wy6nx2cExj3j7b+pIno/QxdYdg3DTnGj
         GqqejilvBWdiIMycqMvPFphVBHxgPU29MGIjYiEeQI3giibkWAgXLGr+w/sjxGhaVx5v
         jfjUP9sGDEr75+IRN/WiSo1+t5hPZRXFtnK6hUuS78LUlQHCxMrbWH32I48nB3FamZd7
         /LZ1JQrUZXvkUK0g1NFoCSVrIgfi4XgCrbWFo1YrL259lBx/jnnjT6QdhNNROntEG54d
         8ojEeUe5N8tmfQ+7uu76Fg9QTJfF4ZAIOw6I7xJYHXhTcL5MtY4/SlQywoxyX/252oLz
         6I6A==
X-Gm-Message-State: ABy/qLZkqPG1G4nyKlQaSA9jEsYKToseLir4j/LWpcZ9BMYrcJq4yi08
	C8GCGiuHCW/4mADawpbXigazGQ==
X-Google-Smtp-Source: APBJJlGqxp0nR/roJ4vSdQwDqZktpU71hnPcawgc4zAU5CBltXqnjOabo4Kgh5z0KdGtSqmZXiPVgg==
X-Received: by 2002:a17:906:c28f:b0:978:90cc:bf73 with SMTP id r15-20020a170906c28f00b0097890ccbf73mr10185458ejz.48.1688539730997;
        Tue, 04 Jul 2023 23:48:50 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id lj14-20020a170906f9ce00b00992bea2e9d2sm7504836ejb.62.2023.07.04.23.48.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jul 2023 23:48:50 -0700 (PDT)
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
Subject: [RFT PATCH 3/3] arm64: dts: rockchip: correct audio-codec interrupt flag in Box Demo
Date: Wed,  5 Jul 2023 08:48:23 +0200
Message-Id: <20230705064823.9210-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230705064823.9210-1-krzysztof.kozlowski@linaro.org>
References: <20230705064823.9210-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_234852_594174_9498735A 
X-CRM114-Status: GOOD (  13.60  )
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

GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
These are simple defines so they could be used in DTS but they will not
have the same meaning: GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE.

Correct the interrupt flags, assuming the author of the code wanted same
logical behavior behind the name "ACTIVE_xxx", this is:
  ACTIVE_LOW  => IRQ_TYPE_LEVEL_LOW

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
index 322f3e809f15..0c18406e4c59 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
@@ -416,7 +416,7 @@ brcmf: wifi@1 {
 		compatible = "brcm,bcm4329-fmac";
 		reg = <1>;
 		interrupt-parent = <&gpio2>;
-		interrupts = <RK_PB2 GPIO_ACTIVE_HIGH>;
+		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "host-wake";
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_host_wake_h>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
