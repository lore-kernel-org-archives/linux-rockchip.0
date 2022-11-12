Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23D23C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 14:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IEq1GpW+4dE/ikiI2eKOFXegY2Yvy2b+w0NVXufEOX4=; b=g5BG6lS4TRHkk1
	i4g0suxyCh3PIinb332PBUAFIguV6qMuJrEupl2Z+i/lqPYrQxU0KWF3ZfIHnoeKnaY5EYDkMGunf
	AO+t/EAUFt2F0Wfeyfhmt6o+3bYZVygC1ITwN3jC6/aibFKImq4jaKectgMz6cuQ6KlAkXaUwxola
	VpC0eU3GiXy5ILepC9J8APetdLrzvNR0fTNzOXVzTXaHrtAjuuN3fzd3rpupl8bikuLhzUmG6UrnH
	VDiwEiffZOsDic8FYBfmpVZUnWYHPJVc1JgycmDKdTdjssEbPwnmc6A9RmitHKUGOM5Q69GXasXxv
	Vj33cGGss5oWOJPRUFbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otrae-0065SL-Ne; Sat, 12 Nov 2022 14:34:36 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otraW-0065Pd-NT; Sat, 12 Nov 2022 14:34:30 +0000
Received: by mail-ej1-x62f.google.com with SMTP id f5so18546835ejc.5;
        Sat, 12 Nov 2022 06:34:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dRLnk3UcVriiraB+P5IRs9+XnPrK8g6dmPwsFT/Y3Ks=;
        b=bhZvmvnslbl/lwJ2P6jBtaEx2ErffCScS4yoFae0boGMv+6GW0tREqgTSAR9jCCv69
         PPBU76PRH259Y4iuEZNzWWzh4QTGCzDSnBVlGCMOV4q/vLv/Xccsju/pH/+KnLfVpq7P
         XhPqq0nOANmUI8u2iFPYayoMrAZbO91svXrM4lbHMCQJ0cZu3kFDfdytYWqE9lqDYgyt
         zLLKKfN/GQrw5U8NF2EbIwapvsE5vLZ3WTk0jRjI/lI4Cvydfe8gTw9cuR2WDOMlGRJj
         LgbdA5icaG1DB6kFTnFpXTxUZg3Ab7a1K6RAuUfpyCvref12O7xQLPJrrT62F73B7BVI
         Ec8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dRLnk3UcVriiraB+P5IRs9+XnPrK8g6dmPwsFT/Y3Ks=;
        b=nnXggG9TQyEAgQhINQ2AVDfZ15k3JkoEczTRTvRsI5EByaX3Hpcconl4rtHC7WQjVq
         SCTvjEmjioKHR3CkZDfbj+kwcbGlLy8ktOZjI/HXiEE4kLXQn7zRKsg9UpVkYu2fZ8vc
         iGEBzl0BpOQURHWejneIiPCcvMF8Guti82Oll/1YCjcDDxpa31wJ9WvdbvI+XJHR1CmZ
         92nZGrgnNtwYmADywEhGi8rNOuoL61PgIdYgKiNJudC2M9N6tVfp5u1K2t5NnJW1vzUy
         7Nh9o9LpdA1UnYXfJjHXDv6KahrPoIIIcJ6dM45YunyDDPbcJ/41spwChwNJ591KhK/5
         ie7Q==
X-Gm-Message-State: ANoB5pnjdtAIbFoFYKP8BtutCyweJlbjytl0pR9aiddHLrl/9VEeuHW6
	asSEaeUWLrh1tV1e1In9xLoAq68e+QtF7YnW
X-Google-Smtp-Source: AA0mqf4UL331vN0Ad1gthWmrUlybazG3j+qr8mxS3qEjiQwei7Nr1qi7QFoz2dy7D9IMj+Z0X6mVGA==
X-Received: by 2002:a17:906:4dd6:b0:7ad:a030:487e with SMTP id f22-20020a1709064dd600b007ada030487emr5414091ejw.508.1668263666038;
        Sat, 12 Nov 2022 06:34:26 -0800 (PST)
Received: from localhost.localdomain (83.31.120.236.ipv4.supernova.orange.pl. [83.31.120.236])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709063d2900b0077a11b79b9bsm1974668ejf.133.2022.11.12.06.34.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Nov 2022 06:34:25 -0800 (PST)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: =?UTF-8?q?Jo=C3=A3o=20H=20=2E=20Spies?= <jhlspies@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/5] dt-bindings: arm: rockchip: Add more RK3326 devices
Date: Sat, 12 Nov 2022 15:34:08 +0100
Message-Id: <20221112143411.517906-3-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221112143411.517906-1-maccraft123mc@gmail.com>
References: <20221112143411.517906-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_063429_710342_1D137081 
X-CRM114-Status: UNSURE (   8.34  )
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

Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../devicetree/bindings/arm/rockchip.yaml         | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c6c69a4e3777..d2748826cf39 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -30,6 +30,11 @@ properties:
           - const: amarula,vyasa-rk3288
           - const: rockchip,rk3288
 
+      - description: Anbernic RG351M
+        items:
+          - const: anbernic,rg351m
+          - const: rockchip,rk3326
+
       - description: Anbernic RG353P
         items:
           - const: anbernic,rg353p
@@ -468,6 +473,16 @@ properties:
           - const: hardkernel,rk3326-odroid-go2
           - const: rockchip,rk3326
 
+      - description: Hardkernel Odroid Go Advance Black Edition
+        items:
+          - const: hardkernel,rk3326-odroid-go2-v11
+          - const: rockchip,rk3326
+
+      - description: Hardkernel Odroid Go Super
+        items:
+          - const: hardkernel,rk3326-odroid-go3
+          - const: rockchip,rk3326
+
       - description: Hugsun X99 TV Box
         items:
           - const: hugsun,x99
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
