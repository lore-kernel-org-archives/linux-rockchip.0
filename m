Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E373CC19F32
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 08:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7SPz0J0Vwyr7ci4D/xjK04RlqwBJBrJtNm13y6MiZU4=; b=fAYYysijpjB52r
	t9L/arU8YB8cjKIrnDxmIjk4pjgKB2JIpkrutjzdozbn3/kOpkxAkyQ6MwwjLZgZcOiF0t1YpRhun
	LGZtt6hBUeo67XkUtcmdWkiQhvPq/RYbIv6XNnKUkbIVktPB7cXEmhTQr9YWDKQzWTRJZLHb/ATvG
	yCeCQkhVkntZcQpUDmv/f8m+sjvfuz8/qNRzE96nYJZPGZ3rGY14ITC2JtrsUvlQYG486Z60BIMTc
	NALIguOqllchUIoRIPh30V3b4sjB0aw1BATPmekrowlSdp+5WxcId1S+OjpM4OadrFVQEa1qnfzMa
	hF0U+mX38frRxb+7DaIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqStI-0000000DWvZ-1EH3;
	Fri, 07 Mar 2025 08:17:08 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqSqR-0000000DWOm-1iSh
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Mar 2025 08:14:13 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-38f54938d1bso42271f8f.2
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Mar 2025 00:14:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741335250; x=1741940050; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dC1LPCsdF2Z42Jp+jxNOAqnbNIqpSsoAUsorj5VopVg=;
        b=DOZCfcuIozlHkaBEilWjygmCxGynMYc5ZbPmDOGjRNWfMa+F992FtbhJJKN7UUbo8M
         ai6dM3QD4rdOf8YJlr49JJl12FDbwTKQYMTFIngvWK3E4boL8bLHB6hGx0ibT4bm8hFy
         hHK/R/K0j1hmp0iA5s/YaW9vQUXWhhZD5/n6SVdOAMo9mV4iFifQt4YpK3PEuS9FxM82
         +lXyIFn07zQK1qB/+mtVYtidVkqhoJEmloYjwcEQvSCfNQl7w/uInAS7p8owezdA0kzV
         G2L8LOBWLy8Z+l7IKhFGi5HmGqkx8j4PmyCT45wuhcUEc5B/laA066/5lC8rOAHVvAtJ
         wURA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741335250; x=1741940050;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dC1LPCsdF2Z42Jp+jxNOAqnbNIqpSsoAUsorj5VopVg=;
        b=ea2vA6MiblPGQlABYG67hfEN5BVA1FDx146H5934D1zky3GEA/SVrdyMWSlwJus9Np
         5GES2rSBAMUm+v5+nmuYE1YiJNC9HWliqkXZuUTtWw/bop5e6MEPBlgEsLRfdS/3ooxb
         Z+8YK73ZW+D3RNCLkzBt8IwQy1QMspfT7LBPypI71LZWrrFwAsKlXBzW8UKHwj9AX5Ph
         gyn0TXPn8CiX6ivikfE5y309N1dJl7QV7IgQDYtn84iw00B7/QZqQ0Fc1W/aFn5BS2Xt
         Wolq5XQHffUPPuFInrGTWtR2ITaiDEb+KamjhPooBTlpVwK7VjJhzYXcoZsI0imzON3v
         8J1w==
X-Forwarded-Encrypted: i=1; AJvYcCU9UKrRyMum72hRAmBm1PLApc/sJ4SKSL+iNdMkYYjbSVNaIbit/3MMeBjClefo8n3YbHkbAx/o684LJwq+0g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzq/M66JvXraZZHy5KwOTwdZGetDtcDhLr7bOaE6l175MDVSjCs
	GbWdehVNP6xDRxVXhJnaUfVx92kS7j8mBOCdo6OyGVs6do1ulpe8NQBljqqx3bvdPwU5OWQn4Ny
	JS8c=
X-Gm-Gg: ASbGncteLpm2WeOpV5rUHgRsAudjOsyFKfn0AS6Z+IcxJ8x8cYM7yLqXbpCD+BsxvMU
	L/BgAUu/8p3K8yT1NmXsb6hjEOHnfl3OtKRwUV+BbFcdfDWb44pn80+4CsdxG0Z/hdkQRqs9K/+
	Uc4tYfDKoPjZrfAPPGD4EuWC95rPuePxVMeWFQNtog6K+68LZ7i+mLXc54Sq3uugR38pu/2uZIU
	fEP74CTHVZ1EXxusR+VhnVknHQxfrQzwx5et9ZgR4WSQTMOaACfetEPOnfO5vNkqaAKNFvzOTQt
	aPjICCDcbvqcvV71nruABJr94gccxzGgMT4pngpUu4w1JhpOy3JMpVTQ88o=
X-Google-Smtp-Source: AGHT+IHUpH+Xyh16N+1wZEqp2m7qpL812EuSHBMLvRKqepcXSU9SdbYHDp2gAq5aCXZu0H8xpH08Dg==
X-Received: by 2002:a5d:6c62:0:b0:38d:be5e:b2a7 with SMTP id ffacd0b85a97d-391353f0678mr390435f8f.10.1741335249622;
        Fri, 07 Mar 2025 00:14:09 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912c01cb82sm4691799f8f.51.2025.03.07.00.14.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Mar 2025 00:14:09 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Daniel Golle <daniel@makrotopia.org>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: rng: rockchip,rk3588-rng.: Drop unnecessary status from example
Date: Fri,  7 Mar 2025 09:14:06 +0100
Message-ID: <20250307081406.35242-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_001411_459625_48F81757 
X-CRM114-Status: UNSURE (   9.45  )
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

Device nodes are enabled by default, so no need for 'status = "okay"' in
the DTS example.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml b/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml
index 757967212f55..ca71b400bcae 100644
--- a/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml
+++ b/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml
@@ -53,7 +53,6 @@ examples:
         interrupts = <GIC_SPI 400 IRQ_TYPE_LEVEL_HIGH 0>;
         clocks = <&scmi_clk SCMI_HCLK_SECURE_NS>;
         resets = <&scmi_reset SCMI_SRST_H_TRNG_NS>;
-        status = "okay";
       };
     };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
