Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8770CC3ABA3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 May 2025 16:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=REqqloD7SYze3oWgF5Zyfi6TTEDEiWfU+JticgNcLTQ=; b=uqbFycVF6KR6ME
	LWsmhguGCmwQbafz6S2u4O4Riu44X+trewhhdvQ2KS4PAWUjCJFnMyBMMe+kY7AvIFLS3N4ZPwWQ2
	aGCoMhb27LtuvYV3KGiTzwWhnuozV5CzdZ6rDzOLcj14NMS90hYhYFhf6PcSZw3JNtXio14/lxutB
	B2V6N1dnKSg1Wk94NnRu/J8qb7cAx931OvgVQBE8RoNB3pcVE2i9BB7mBWDTgiWzb2QZK4Ob7dWBr
	WbOboRxdQ9mtp/9diBQh1nhTO1cjEKFU106hXo+PpDQUpeeh7OcwOSvFjrJZq/fHK4e9XI1SIsPoV
	h2b37fug8SsJ7aBzG/iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAWOW-0000000G95Y-1c3E;
	Thu, 01 May 2025 16:04:16 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAWMb-0000000G8ky-0HAb
	for linux-rockchip@lists.infradead.org;
	Thu, 01 May 2025 16:02:18 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-43ceeb85ab2so1332855e9.0
        for <linux-rockchip@lists.infradead.org>; Thu, 01 May 2025 09:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746115335; x=1746720135; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d7SpZDu8jv4dHbSla5ZPIdsMVsPrAFAZvTLD9tcwZgo=;
        b=WNcdCCTmj512iCOAsiNiwbs3387+wBVgqOPWR8oUc5dLoCrurwO2ogCCNIYmYyPbU/
         ZFPadFt9c5rPpT7Mp3P/dhAeWFuXfCBfkuCSpqLbWND1OTxJgnrLl1AGlTUYZvgZWtgm
         ntsXP4yxmCniqWncYHChsfxIWqOk/jftYBPgJQXywZyddagex9xYeJI5qNnYb6bonip5
         eBL5k6n1R1DAiwhjWjrNmCigKxj+kmh6VEsxETiL87tfReeytqoRJK0SKN4hn30C2nkV
         Fsts6rQ0GK836hBtIIjWKK+jICjDsAFaWSdpAjwfG/C1HmlFDNsUJSnS/S8Qwj0qdqRC
         9ngg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746115335; x=1746720135;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d7SpZDu8jv4dHbSla5ZPIdsMVsPrAFAZvTLD9tcwZgo=;
        b=uCWjiZXPQ+/+xob0MohAtfSTQ2/2U/9Fb/ZAurrAR22xh3nGonNmFw6mMK2P+z159q
         vkW3O2mu3xif4w41lySyxwPcf7qeBrlWlIXnEd38VQIT2hVFgEKMQeSOhpu8D61An6nQ
         nOJL7msNe/4qXYy59d+4Kowmb4SbYcuVoumtV9uS/vPXaccC+JWSGQH01t92izLJlTeF
         qVkP2xkOvJA2W6JJqUqUOXYDf3Qk6KcYHXpVWrBqfMr2xYWUscol2waTU9ijt+O5WFgA
         Zkwzr3BR9uG4Yd30sj1Jc/GfCfJ6FoQP12HieFeaD00bPWUkGb95Kmlf6nTnpmhZMqYN
         lBXw==
X-Forwarded-Encrypted: i=1; AJvYcCVs41eOEpY/EgTwuJmqHt09JktAl/aJaqrgh8WonXGUMk3BSrfQb9HeI1pcrUpxNhmrUsxHyBmWIX0S75s6uA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwRnJqEGynIxVIiPrbny4ytiAdzxGApqSt5W4jxn9u8nWkxRDPB
	ilSpg1XqqCIIzJAfZ3QlOBcw2nxSes8Vlb07r0e6XnXi/EWWB5iS5mxr2/ADbNs=
X-Gm-Gg: ASbGncsLTjoRDGfhijSUnzQie5eq7eNfVvna29H+yPvbVl7zyRNNhvK134Y5ca2wxma
	FJug0dg64wWb6v9cmaFMX+alPdDAYwxovOinB1dpZqaGoOdGKBKIiFJnKSyz1m+gtuam90/opXI
	z0RFV2vDeVW3YsiCmSOdfyk2QqTY4Tf4fni4VPGZsyKZM9dmK1Cm0vetln6ic3z12bUJF9F3TOX
	lv1ovE//jfGYROW5aMiCa5lFPT2kEWXcV8iV5CAsSY4hsaq9r++neDZeyIJp8QKBkDrjKYtXuN5
	HKT3ReO27+CzRzz3TMJQdRKjLv9p2EU7sdj7oVWEmFkGymnuNQ==
X-Google-Smtp-Source: AGHT+IHuAg916EAmQ+Jj9V0jJg4osfYO4iVeePCZYPPcsGtTccI+ph4PfvFICbp/E49W1nNjF8EQAg==
X-Received: by 2002:a05:600c:46c5:b0:43d:745a:5a49 with SMTP id 5b1f17b1804b1-441b2dea5cbmr24622675e9.4.1746115335047;
        Thu, 01 May 2025 09:02:15 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b89cc441sm16841485e9.3.2025.05.01.09.02.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 09:02:13 -0700 (PDT)
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
Subject: [PATCH RESEND] arm64: dts: rockchip: Switch to undeprecated qcom,calibration-variant on RK3399
Date: Thu,  1 May 2025 18:02:09 +0200
Message-ID: <20250501160208.96451-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1103; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=MUVlOhiC+9LNR8vM+05XZ7Yaggp3NsZvqmvdhwJ2lSI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoE5sA6JKQyX5fhvHwlA+nyIoTrmSMgCFcHqcKA
 00vojarz1GJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaBObAAAKCRDBN2bmhouD
 15DREACNeham5NbPMRDlnqwiikOjOCE4rult541i2EqowVAZYJqvAXuYrIhs9NxWNTZGb2N44Ga
 cOCW2LOIL2YcjXO68yOiqivwMtBUR0CK7LRvuqSj3814L8T3BHICX6Ku9S5K1sULpfKKQ8Mbz5a
 p7HQSBjgfmA5AYINGFvqti5whdRjfWMIUm4XaNJ/u2VIghQUPORU1pRAmNuyy3nFSUTbAeWUrZR
 YRjBJubLkXDharXrVarrXWCFrsi8WaBoZFWoGVK+npHvcg1/Ak3QwpvYBrpMCcP0X60ZpkASZaS
 HO5PcFmisG1Foco3NE2bE8nhpFK4b5frM8BF59/aJ/d05rhGx1dHv+g5LfUcXczy+J4EUD6UUOf
 KmrlqjAgySMXjWuYpG710YX30R/L2Xvey2dw6U4DrPz848/rp6QKY9F4UKMIXvtbmO7/BsYQZu1
 s606jZLp3+z2G4Re6NbhcEOX8j5WTs/rtRdlgjhSRsVV3oO3Pr4AOI1oVnAOUTGmkt8pAncszOk
 NaeBxqAbZILRXPW+BesQL3DSd5lnPR8e/mbraOWSQB+u6dwTLA/l9rzB3itpcWwP2tKHwJ1facQ
 U6iZa/z9yK88yBHUK18AlUrx8TOrfAvtj/uFBBtbwo6r0uxi8B0LGKEuRkILM5ALwvY2wRIksRI G4dvhpbczyhT6bA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250501_090217_102564_0BE519A0 
X-CRM114-Status: GOOD (  11.21  )
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

The property qcom,ath10k-calibration-variant was deprecated in favor of
recently introduced generic qcom,calibration-variant, common to all
Qualcomm Atheros WiFi bindings.

Change will affect out of tree users, like other projects, of this DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Resending  after dependency got merged. This can be applied as is.
---
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
index 9e4b12ed62cb..be3ae473e562 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
@@ -36,6 +36,6 @@ wifi@0,0 {
 		compatible = "qcom,ath10k";
 		reg = <0x00000000 0x0 0x00000000 0x0 0x00000000>,
 		      <0x03000010 0x0 0x00000000 0x0 0x00200000>;
-		qcom,ath10k-calibration-variant = "GO_DUMO";
+		qcom,calibration-variant = "GO_DUMO";
 	};
 };
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
