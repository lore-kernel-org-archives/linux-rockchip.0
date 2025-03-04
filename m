Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3B08C021B8
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 10:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qOGQGtuiqg/ihDPWwABa2FNsXpz/7LYSPrkMCDGGzLg=; b=h67ICBKFcXX5rs
	GXTVbZFpGkW01JezBbQZfjlGfPVUlqX+AT1Ya1LPaaeNogNuZCX5D2YxOcbURcPYVCBMawMV/K8PA
	pmuYrwQ9LUENPpiXfXG+m55vwZTHr55dO60NOjsXh7f53i4j1TgkkUGIai1xs4aziBTvECs46urMw
	hnoEOBZJPGyCE7nu9122b3QN+r9FjGmlDp5TwyiawyntQotMi945aETRur9VqyZxLMoaR19/r9DUO
	KVHUBm5B8DBuhw9+XT0LsyuJqa+CtpnbWy3JYMgs8Sa1iaoyBQkAOU9aeemAi/6L94kpocLJEgVBH
	KrOUB1/lmakM22aced8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpPkK-00000004EwX-1j30;
	Tue, 04 Mar 2025 10:43:32 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpPiv-00000004EQV-0d2y
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Mar 2025 10:42:07 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-43bbf0fb0d6so2042835e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Mar 2025 02:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741084923; x=1741689723; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fRLGX0BSFbSkbyHv+vppZ4+v0T0SuHCAkvGOI/AsUU4=;
        b=YqxcZl/02cx0NzcuXbnpSYvy+7FxD/Hu+DF6Ox121/a8NrbK6qS1W+/uLlG8YLRNUo
         eVJg4SAmsPkPBXmLGI9mjCt5WhPPp8Z75RA4rYuWI8v5Zs3MDfsbMoZhM2/ppVakmJxt
         0Yhg7hlYNZZk2jbyPd9VTvaXoA6aWYeJKK4Z2x+ITFUjGqzmyvhSiRtLGwKEPx2nvVYr
         L90Zl3OXZ42gvhlts+aApdavEEBzuyz8gvvoFkxpUuIlXTKpLM50sLD81h503ung6q/w
         4nVMwZcjyPwSFYHupBNgP4vd0mvF4tlcabITlFpH5Nhs/mJ+jlhfx9vWzvkJw1k/lhZh
         KPkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741084923; x=1741689723;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fRLGX0BSFbSkbyHv+vppZ4+v0T0SuHCAkvGOI/AsUU4=;
        b=ZPKt6SW2VhJJ/qyB6SAA0oEVwHS1m5mPJRUxxzT34iOuiAYLYEkl0z/KkrZM33zo2B
         Kz1QHuMoGbgH/VVNEgw/nm+ecIOnYUGE7kmgTNxybE8rgdmI2b64Vda9gvxilnZuUPOP
         jfTDyW5Q8ykV93LS2o1obLbAfs/1J5WsLcOVX1m2pDQU3Y8Q0SyVzMcpBP0UAJ2eMa+r
         8ko6vNIgnEl3G8r+ruVf9Xz5uZ+lGQU0EJubVAMgPT3O6cMiY7jp4D7m+2LYm5iO2oIU
         m9LFtUodL3bE8lBkNWmX06x2R8i9FXUImINUdB4TrF/nv3eTPsQ3RjtS5a79JK+Ro/m9
         ViuA==
X-Forwarded-Encrypted: i=1; AJvYcCXhgeX764JFkW20YZAyce0uwJ904535Q9srqNtrvMpEXSRIbWDG3Ksjk/dtcFO9QgA2h9oU3ToomA+fjVXxNQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxfBDN6oozPmQI5YRygbsgcgy5IVyNXtzEHJcyXgRKsHp8hl7mq
	TBxqnh20Q6PW9ypqk9vszByZ7/G6S0L2ri37alO3Z3Z8WuxVFGgwPExVq90TCao=
X-Gm-Gg: ASbGncvlIGZNturFfwzObb0lPqxpEaNK6ogduhiEK2EDff/H5GgNhIn0qW5QjP2nnPf
	7ha4CxpH6SjKqZx3xjc75Ve5wzQM/QwU0Vq2TKe7C+XMoFBRDfewSGWrGG2rf5EZQ3qaySjZetG
	ED6gSVMnHkKBl7LCo2WFaOAoVaj2U8+7ux6Mh5FZBpQW7ugtGDyUCiau5MxnELnb1RKXMwMTnuv
	eAwfl5xMsVivxIdeQTmhNbjPb2Cfai+mYlsSPO7EpCuBfQZ7iKi7+BFS9pYX6/qCMpKmA/tFAyY
	0DmHg2v/l4P+t1KkixUHdlR7IfyZSjWlznf66Qqh9qYMap7DrXI09/qLZBE=
X-Google-Smtp-Source: AGHT+IFu+lUWQUJTNva4ATWrG4BJPlHZWRTzwg/XUajrbEnxSw1V0tjsJYbZeKjxr47p60rztgJf0A==
X-Received: by 2002:a05:600c:1d86:b0:43b:c0fa:f9e5 with SMTP id 5b1f17b1804b1-43bcb969548mr7400795e9.4.1741084923281;
        Tue, 04 Mar 2025 02:42:03 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47b792asm17202257f8f.53.2025.03.04.02.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 02:42:02 -0800 (PST)
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
Subject: [PATCH 1/2] arm64: dts: rockchip: Add ES8388 audio codec fallback on RK3399 ROC PC PLUS
Date: Tue,  4 Mar 2025 11:41:59 +0100
Message-ID: <20250304104200.76178-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_024205_180323_A0886CD5 
X-CRM114-Status: GOOD (  12.59  )
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

Devicetree bindings for ES8388 audio codec expect the device to be
marked as compatible with ES8328.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changeset depends on bindings patch being accepted to ASoC:
https://lore.kernel.org/all/20250304103808.75236-1-krzysztof.kozlowski@linaro.org/

Please take it to the same or next merge cycle as above ASoC binding.
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
index e2e9279fa267..8e3858cf988c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
@@ -112,7 +112,7 @@ hym8563: rtc@51 {
 
 &i2c1 {
 	es8388: es8388@11 {
-		compatible = "everest,es8388";
+		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x11>;
 		clocks = <&cru SCLK_I2S_8CH_OUT>;
 		#sound-dai-cells = <0>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
