Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A07DC001DE
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jul 2023 06:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZvJ+MqERmaQCENPlX+fAeBCzQuMV97AV1E+rONiUXQw=; b=d6k1UnLGKyPciM
	dEEf4CrMI0XAb+ze8RZpwr//+Q7GUTcBebU/wNUpkl0fpvJ6qKcYhju3xRRSsRurOLuUw94H2FRvW
	GZksg/C48BJE8h8qUT5YDGqrOjes9a0VqMKrg0gSErKgp46rBIoTe6pr8IsN+w7ndSxOFCtjdXazH
	ys6GYO32IOTC1EA6SKf28XHJMgOrfaDUn5k51wEEp0D7EBMu4uKgHaD0wsIdk5xxfH67ZC+2maYwE
	Uf5nn+w2BT4xp/cW9zOv/5POPtx2JIDxQ69HUAVG3ZGFdhIZNEiiqaoFgmSO4uF7rejOwgiUWWi6Q
	SKTbgUCZL6voH/p/xOLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHf2J-003l9w-2t;
	Fri, 07 Jul 2023 06:33:47 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHf2G-003l7E-1q
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Jul 2023 06:33:45 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-51d9a925e9aso2048868a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Jul 2023 23:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688711618; x=1691303618;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e1W0PEIp2Z9O+/54QqCCTT57o1K3eq1ISnoT3iEkIG4=;
        b=Ji+vp0Rf7GnjgL/ryIs4zj5psew4pNxA0cs8GFKCCt4E8wh0ztH3y1BPKo8A6Kr5CR
         Ssh+LsCi0ePSmFr6nLgrN73CA2MGcMaJIrfjpg/jM7aBYCC7QstmFfJTkw+D0od4S9CL
         fK43PEE9RS+gtkkroUsHTHuZrB4sb2u/XCw+wBuIGWfkCD0UmOg1nuWcTcVNjB4Y9lBJ
         XtIxHr9Fe2nvRTn/d7F6dMPhkKhvs3PfzluZg24d0Fqx/c5HsGGJBo/U2On4yiyKU7x2
         jekKm74a17Mc0FGyAaRQgC6mRyV6NJcMAVHpqNP/NinRZ88jHW6ZblkBXu+EnDP5KDX+
         smmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688711618; x=1691303618;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e1W0PEIp2Z9O+/54QqCCTT57o1K3eq1ISnoT3iEkIG4=;
        b=jABEePeh/tUFmZ6gaPm0Zo1G83IQqy8m7on7a3bAH4GbuLc1SKI7lcLKeKt4QHHpjD
         +bQWgEvEGiQZY+bK8gu8W3BpoNFYrn0tlwri0/hnv8neJn/I4tUULnlza7XRnER+kRKT
         Qh8nGzDtlsDbNYrrzA5EiZXr/46Gmf/4cEnq0V3Kfx5tStF5+ty9YEefs0MewPbulstI
         W8qs12wrTIJ4IHka4tzhh/Kzi7nENapCRa3mbpW4DBNyDSVRATNN8yU9JP2UeuQAPhsm
         1fQcBbaLNt1hXcuibiRuJhIXCRf7nXs3CTY8UBStRxDscvuI8lsX3Xd54rDn4TD8ifXI
         HOfQ==
X-Gm-Message-State: ABy/qLacpVrrzlqk5f6PqtHWAcudcTLX5Kwd6iMCsLTruE4+OygC/xSh
	lVIvbM2PgsDNWcX78xdA7mXs/A==
X-Google-Smtp-Source: APBJJlF+EQzCxlpuXGk2rbnxNVji72DYX39eyT/xKUrWXgFmOCWnAUyM7SHtccK5tqS/eFhQSlzXhw==
X-Received: by 2002:a17:907:75f6:b0:94f:449e:75db with SMTP id jz22-20020a17090775f600b0094f449e75dbmr3160188ejc.52.1688711618411;
        Thu, 06 Jul 2023 23:33:38 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id s24-20020a170906169800b0096f7500502csm1724803ejd.199.2023.07.06.23.33.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jul 2023 23:33:38 -0700 (PDT)
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
Subject: [RFT PATCH v2 1/3] arm64: dts: rockchip: correct wifi interrupt flag in eaidk-610
Date: Fri,  7 Jul 2023 08:33:33 +0200
Message-Id: <20230707063335.13317-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_233344_613331_FDF1A42F 
X-CRM114-Status: GOOD (  13.19  )
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
  ACTIVE_HIGH  => IRQ_TYPE_LEVEL_HIGH

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Correct subject and commit msg (active low -> high)
---
 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
index d1f343345f67..6464ef4d113d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
@@ -773,7 +773,7 @@ brcmf: wifi@1 {
 		compatible = "brcm,bcm4329-fmac";
 		reg = <1>;
 		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "host-wake";
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_host_wake_l>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
