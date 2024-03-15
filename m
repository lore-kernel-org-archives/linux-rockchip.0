Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FEF3C54E58
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 14:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+IZQq7XEE7fvahDVcHA5qth4VPIe2l8kZVgtx5addtQ=; b=3IIRA1WVqYdi0Y
	62A9rfBLEtCYMrm8T+vUjNNu4Wd+pi9oAd1uk/PiRtA027CBzkg/wBCQWRD+xqwzcVuxCYBcRNvQO
	n6wvzdVuCEQSmYEb15fSSFGpykFFw+O/YTC7BQHxWsqR0xj5j5OyxrpLXqJdtWYtT3tW7Wp0JNRVq
	Is254U8IT1WFk/zjg0mtrC3ekYkCGiXUwm5tvTZOLp8lEU3z+0TwD2XOjN2aF+/MK+VZzR5/bi7Tu
	ZTbznTuQhrzAV62S1HxXP0TndEmkg5ekH+wV/YCsBow5ZCzO9sb2N/+ZQx8lcERHqtRyHdFDpsAAH
	YmtCtRP0XnLATqzMK+Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl8Sv-00000000STY-3Zfu;
	Fri, 15 Mar 2024 14:23:21 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl8Sm-00000000SMq-04MC;
	Fri, 15 Mar 2024 14:23:13 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-512e4f4e463so2454320e87.1;
        Fri, 15 Mar 2024 07:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710512587; x=1711117387; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YOftRtcb4G9B1HnShbJVcHJJXn8N/BLdxMg1OAlJdnI=;
        b=BkffDn5WXCun9956At/0KwfHJ7pdq4ZhXXugw14qVbSh8aIPll41Yf4JC2xJ09XcmK
         dr7PAq03unHm4uuNsQLrIdg66cLQLRvoxljHhveesIXg0gm5eqE6zNzQKG9c2ZqtVbNG
         BXNJ0KMgUSfrhEUmFbr7Itiojrue0f1TbfUvaKa7ISu0gn0Qh+wZc5alM1u0Wpu+jO2f
         EblfeIla81Ufysi8gd8d7BISe2boPFreH4Vl1Xm/cgspF+bWruFOD6vRTIIE2Ozbvp6I
         dmmbqDohfbrngJaponVUAkCrTAcC8Mg6y6ndrtyqF+01j6wwogudy9ApPpOgkQeSg8Eq
         EyBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710512587; x=1711117387;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YOftRtcb4G9B1HnShbJVcHJJXn8N/BLdxMg1OAlJdnI=;
        b=eQmsR/IZJ6UmHgnFK9KOd2u1ysutr/rpTqORyQLyYD16MW38Krkm0Azu5v9GOd3kZ6
         /ZKFgiemrHcRYqaCGErfNf/pSxEFohUf/hTHbgcU4DCTHFo6ip/DWxUfrGAt6bQ8J2d9
         OHU7o//EweYgv56Li9+S7H+qi3eGHfinMPbqsPSfAD6nlo7dSZnY9KM47JS2+K9eEJGR
         qrRdeBP3iaQdGPajY2mXEJTOSKz8Ks2UVYbjr8W6i5xB3lvpYh8Ta4XBR2WNQRT4oGnQ
         X4FoJ2ugZMHT0PaOGuo65unyGGpjLsXmUXqjvWY78/4v/TsP9x+68wmwlnHUASQUcZCS
         6b9w==
X-Forwarded-Encrypted: i=1; AJvYcCVyM4Z0zyJK1GSEnkSnVaV4tj0U9YlGPtJXzp5oyEMKUmgW+tNx5ggNIpy1QiBP84iE10F0JAcd8JEIbipjaJDD9wNQI4xxniR8fnB4giQVU5mCCQYEHJ36I8ikYTK3cPCQo/yHVDwmuZboix9iKmFCtN4GQnaHc5g=
X-Gm-Message-State: AOJu0YwNnfvS8tDTrtvtJqi+VezKx+XkgnfiHhv8linUNtjMHQGR3sG1
	R7gd+W0JAj0YS4hBIDJ8gF9T9h0wikVSyiiNQ4fpv5c+eBAcrJgZ
X-Google-Smtp-Source: AGHT+IFGVMxOzgk17OqUkrG+fP9ObvRfMExiaIt8PESwwL6szH+X6sT9ls7vTaI9WHiCaNkyjmQZ+g==
X-Received: by 2002:a05:6512:32a6:b0:513:cfa6:3ea3 with SMTP id q6-20020a05651232a600b00513cfa63ea3mr3934077lfe.6.1710512586745;
        Fri, 15 Mar 2024 07:23:06 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id r18-20020ac25f92000000b00513c82518fasm649651lfe.223.2024.03.15.07.23.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 07:23:06 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH 1/3] dt-bindings: arm: rockchip: add Forlinx FET3588-C
Date: Fri, 15 Mar 2024 19:18:05 +0500
Message-ID: <2c7a99673ab4840bc7052eb600363d5163c5cfae.1710506373.git.dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1710506373.git.dmt.yashin@gmail.com>
References: <cover.1710506373.git.dmt.yashin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_072312_101370_2FB0B4C6 
X-CRM114-Status: UNSURE (   8.40  )
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

FET3588-C is an System on Module made by Forlinx based on Rockchip RK3588.
This SoM used by OK3588-C Board.

FET3588-C features:
- Rockchip RK3588
- LPDDR4 4/8 GB
- eMMC 32/64 GB

Add devicetree binding for Forlinx FET3588-C SoM.

Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5cf5cbef2cf5..d87f4955f509 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -211,6 +211,13 @@ properties:
           - const: firefly,rk3568-roc-pc
           - const: rockchip,rk3568
 
+      - description: Forlinx FET3588-C SoM
+        items:
+          - enum:
+              - forlinx,ok3588-c
+          - const: forlinx,fet3588-c
+          - const: rockchip,rk3588
+
       - description: FriendlyElec NanoPi R2 series boards
         items:
           - enum:
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
