Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD579C3271F
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jul 2024 09:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yop0D798PN17/vpbpozj4td0l9rm1uVy1FBAXWMu1Zo=; b=a0SLf6wiC5ivxE
	7a0PO4HVhp3Kr0oz/wFpqJkVSYPZrB6okOnxP6XmTgH6FJLuDlRLXeUgzSUqSzzyiInLvav9aaIEu
	nXeTw3yPM00QiT6/NCSm7WvLlvoaNSe4vBncnsivXUeE3ApooMaGqrO7uw8z/MWlki7YGjQWpEcGB
	Bgngs7pIx/abOtkoDljqFw/I4PHzqOeMWoAoehaU2JIiFkubMFjJr4CrgCUn0Bsbj+lzfldMx584b
	T5RcdjGY4GbtUE3t621oW3aYX3kFuIIaqo1QN9mPzyMuRSIcxEQ0rsKsaGMR5M+2k3Kia9Hf9kR18
	2clwQU4XRqtOFWNbiStQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPfeD-0000000FXbC-0OIZ;
	Fri, 05 Jul 2024 09:54:33 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPfbt-0000000FW48-0XD2
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jul 2024 09:52:12 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4265921b0f6so1455595e9.2
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Jul 2024 02:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720173127; x=1720777927; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=seWL/Q2TgrdgNLDovxUhy7BtlcsTJg8tyEapQN8crDg=;
        b=okczkbbUMEvVesa8OLrxpZ5BajTs0tIstIgNqfXSb3/3AzgOfVtorK+sV/RTH6iDxI
         0iFBFS6dS3WAJiJiqr036pOsU95j32AKFNRtF4AZXOxRVInE1j+m53sKvwK7z1Ff7Fne
         lrj1LZ19ES/bvDMdecCBBwFIDmDhbHLcKtgkODXhS05voeLz7V72XI/8ZeUIrax6MjC0
         C2x1wP1kMZAjQwcWyhI8lg1cdNQmbBqkdKM5PLtBoxAWmWvGzQaHO14hVx7KSnXKIvo6
         Lf8LJtf0dDlQmeoEWCDy70QIVBYmCs6A4uOSLb/IuLV/xtzYPE/egQrWNDOBlXyP29wI
         aY1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720173127; x=1720777927;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=seWL/Q2TgrdgNLDovxUhy7BtlcsTJg8tyEapQN8crDg=;
        b=qU33hQyujfzluvIjjBcZZ5lhuQdEgl95zMENMGbULVwu+CIUcdxp6n7S6ZWnlpuFGc
         PFN4jwtE8C3Hpk5NU3YjM6VDdMduEGXHxcvKEqqF1rYbooS9nzl7XZG+5teZM8xtLbEN
         aI0fa5WxyfVN6Scj+/uHWZNxNHD50683olte0z0QKl1KCZQfKRj1PcH2FDrlR0VY7YPa
         rLfbzzjQHIdapkPJN+aLd2n8NCMUmXbISUCrotHE/UgHWLkhxOt3L4s/+aOmRnY69Mw+
         LiMCZdMiGFPigjhYIzKTN7UkvLNjNHvHBGKUd2CkdaADqsw9wLplkFIaRNhnxorzC6WO
         js+A==
X-Forwarded-Encrypted: i=1; AJvYcCXJeoAq2u8ZakfCnVOiGs5RjyFF9/6RUqmf2CBartJ8wZhq67b8H5D7IY4jutxF+OYZTt2JPpZCVOTE7FNbrDSLmx04WSGryYmp7tx0ULoYiJnf
X-Gm-Message-State: AOJu0YwJt4Va4QZVl42XggxmTbh9FaoAjdxCgJyYxIMtvECX9/dCwfR2
	7rro8GRdztFTaF7yeBmP8a8LvzVeQsgrBIv1ge2Ijb/BFUNV8mwA4aIpymEK2Jw=
X-Google-Smtp-Source: AGHT+IGEBHhLfiMr4qIm0/R1srxej0F/0qrIH1OjbeGblDEv/7r/CMhXzzm2X9XH36l/SG/1xVNGXg==
X-Received: by 2002:a05:600c:2046:b0:425:680b:a6a8 with SMTP id 5b1f17b1804b1-4264a3e35c5mr31734715e9.15.1720173127310;
        Fri, 05 Jul 2024 02:52:07 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a1d1650sm55528995e9.2.2024.07.05.02.52.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 02:52:06 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 05 Jul 2024 11:51:26 +0200
Subject: [PATCH RESEND 07/22] dt-bindings: thermal: nvidia,tegra186-bpmp:
 reference thermal-sensor schema
MIME-Version: 1.0
Message-Id: <20240705-dt-bindings-thermal-allof-v1-7-554061b52fbc@linaro.org>
References: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
In-Reply-To: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Guillaume La Roque <glaroque@baylibre.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Fabio Estevam <festevam@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev, 
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1603;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=QKjpJh+Itd3QaOkFhOLn7jTwV0XWHXFDHrlmhcmh3kM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmh8Ip9PUZEfgMxVf6cSppK9LOukpo7xLt3jr9o
 0uJcdEHB2uJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZofCKQAKCRDBN2bmhouD
 17ZZD/0dj5xTDsI1TIHYF81W/HLCC0nRBZviY4aQRcLsyu6u/uuIX6jib6zgtxSjNr6DD1k89ba
 y5fjcNy0XfccFGidn3nXgla0xzI+iofLrLoxC2bjqGACGVSl3sfDsRA+LRzYVqYjZF+0OjbWYxc
 5CFeecVoG1yBWECmPEkY4SqWF9o/D4NDv7aTswahqdI9UyORubSaQKv19w9vQCMC2Azsz6NrvVt
 AhBF8qOftvBPfZOfVmN5DvaDOf/F99AZO0riIAy1kyjZSwPhGVUbaK7Hu2Fdb0o9655LBk+6xBG
 HB6SFE6mUr9XNOJBF9ecjtGFfpxCfmRCkDZHAsrPmC3kdBIoAzfjJp66TGMHZEHRGkIrKh0ozlr
 rS30R2I3LnhdCW8y7p09E05Uq94KzWqSk/YEMqI2+kRtOrIRg9MK+ALz6QBqAXMTDxUdDkM5+2+
 dufjES/s+t/XmRRRZ8VRkWdTcqaEOAogEyQlpQFxpJbDqIJDhB9qPQMUd5PqE838x2nLyoQhuZv
 88MqU3LWOhe7EX/kJQlk/M6R6LxXzYKrlVhrdWbGR03O7id0TCtKS++bIBnW5ulObUeItScaSHN
 tChW6JyKWl8OKJtBzhmNgJr0PneaeKC9QlKE4aLJLll2qwIEtsxdwNo2RqI7xo5tvWH8S+2z5Ia
 JNCfZa3rc9u/i4Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240705_025209_395287_30504036 
X-CRM114-Status: UNSURE (   9.85  )
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

Device is a thermal sensor and it requires '#thermal-sensor-cells', so
reference the thermal-sensor.yaml to simplify it and bring the
common definition of '#thermal-sensor-cells' property.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/thermal/nvidia,tegra186-bpmp-thermal.yaml       | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/nvidia,tegra186-bpmp-thermal.yaml b/Documentation/devicetree/bindings/thermal/nvidia,tegra186-bpmp-thermal.yaml
index c91fd07e4061..978b9e6ab8a3 100644
--- a/Documentation/devicetree/bindings/thermal/nvidia,tegra186-bpmp-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/nvidia,tegra186-bpmp-thermal.yaml
@@ -20,11 +20,7 @@ description: |
   node. See ../firmware/nvidia,tegra186-bpmp.yaml for details of the
   BPMP binding.
 
-  This node represents a thermal sensor. See
-
-    Documentation/devicetree/bindings/thermal/thermal-sensor.yaml
-
-  for details of the core thermal binding.
+$ref: thermal-sensor.yaml#
 
 properties:
   compatible:
@@ -33,10 +29,6 @@ properties:
       - nvidia,tegra194-bpmp-thermal
 
   '#thermal-sensor-cells':
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description: Number of cells needed in the phandle specifier to
-      identify a given sensor. Must be 1 and the single cell specifies
-      the sensor index.
     const: 1
 
-additionalProperties: false
+unevaluatedProperties: false

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
