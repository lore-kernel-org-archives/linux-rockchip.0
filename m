Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C55DFC636D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 21:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1XsswjV5LNr5QmaPYmQ8vHc6ApLqNvc+yGgX5CVxV+k=; b=bVf/LEklrGcFKE
	QhoTxFJKjRbYXOneHMwsf4tmjPRwITpsAmXlrwJeFRETnfwM7E57r9DAeSAoPXueuaap2oaNOtzKT
	D5hOs+afzhhp7vryMghDqPpsedECmBigDIMCDkuzdO/3zl4rdi0a0SmHUH3veD7xQlpQdYIVma5tA
	NG/WD+L6t1yz3+PUqloziEVrvxCHfce4lbvuC73iFUP30axas975ofERSVAGAOQ1Ae77rN9htBjrq
	zZ4R/bLuIcs9T/YGZpvgUFk2/vRBBskbbbEkeGfT0MsDTSsYMSY6OMe1zhVRzEsEx2Cbymu+gZY50
	6KTjtiMmVE5x9K5snrlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOzl-007Ogo-0l; Wed, 15 Feb 2023 21:07:17 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOtx-007LRW-1t; Wed, 15 Feb 2023 21:01:19 +0000
Received: by mail-ej1-x62d.google.com with SMTP id qb15so229260ejc.1;
        Wed, 15 Feb 2023 13:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VUp+NjHQlk7QRhkHY/eVWdSJwlizf3fbd3NyJl4mf5Y=;
        b=kSU8hnfkTXFQSgIXcWAp6Q5sP/zmCOW0IILiw57c5yp6fHJZy2+0DVRf9mfN3kh+0N
         7HfK1SkmG0M79Rbl1w0r2f38Sl8x2b4Am5NnHPunHqoQ41TDOanhTMWkwOoj5yxEngmr
         tPMPed3dwEdXiUCYs8LKt7tBZ/aQlDhrXAlruI0gkGRZnxq3ulxoKUTRlQXprTEd2FD9
         LXtlW2UbCbUTP4gn/0egYl7Pfo5NBxxA63ibgwPj1plCYtL7iZ+BmxjzYhrvETrt8OMo
         5oquFOz0+iBhnbfwZ+j2Amlo+2UxnbEoyCTBSSrIdYkYCdBVR4T08/2JLznuHxlauu0E
         R+BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VUp+NjHQlk7QRhkHY/eVWdSJwlizf3fbd3NyJl4mf5Y=;
        b=UL0wYhdWbBzXx8wkij6nbGkPmmP1xzC4qwc3AgHFEl10p1mMgaOGgKxfty1k4M8ngc
         EAeFyxQu3RVTRzBSBRUBnbR0imjnHc6ksuDGYFckrnKZE85/G1ULEEVSE7giVJWItwbi
         x4GpyS9Zq4aAoGwFz2sZxALTxR0kLV0IxtxY7dm2sZyIXMXGeTFlgyQBwGzLmi3g6V5F
         cQxfZeJfvz19SiDAApML4yvm/08lONs+Rjl3kiAM3PovAdUnr5eNsoRaLsObF8XthrOR
         /Ugq+K9vxwE+4D2Hjg/5OpgOtPYgHmF2DSfA8y+cDSK4Zt2H31Wq7tyddQPpb0m0teIo
         I7bg==
X-Gm-Message-State: AO0yUKVdFRSs7XzXeSOMZ2QbjlTK91yf+68U5f2MXsPy2hfjeKU1HWb9
	AV5l7eZak161ANo1e4p8KGc=
X-Google-Smtp-Source: AK7set/1Z/v5Xz2z0uQdJVECDukHZj+cm0Gwg9IPjkNsreqh1L+qUYJBz1+XjYyyVp4LKYlb0kp8BA==
X-Received: by 2002:a17:906:a409:b0:887:981:5f7c with SMTP id l9-20020a170906a40900b0088709815f7cmr3725847ejz.11.1676494869798;
        Wed, 15 Feb 2023 13:01:09 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ov38-20020a170906fc2600b008af574e95d7sm8202046ejb.27.2023.02.15.13.01.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 13:01:09 -0800 (PST)
Message-ID: <038585bd-7226-b28b-93a5-e1676a57298e@gmail.com>
Date: Wed, 15 Feb 2023 22:01:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v3] dt-bindings: gpio: rockchip,gpio-bank: add compatible
 string per SoC
To: brgl@bgdev.pl
Cc: linus.walleij@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
Content-Language: en-US
In-Reply-To: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_130117_177140_64BF8A50 
X-CRM114-Status: UNSURE (   9.73  )
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

Currently all Rockchip gpio nodes have the same compatible.
Compatible strings should be SoC related.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---

Changed V3:
  Keep enum
---
 .../bindings/gpio/rockchip,gpio-bank.yaml     | 27 ++++++++++++++++---
 1 file changed, 23 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
index affd823c8..2e9a5179c 100644
--- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
+++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
@@ -11,9 +11,28 @@ maintainers:

 properties:
   compatible:
-    enum:
-      - rockchip,gpio-bank
-      - rockchip,rk3188-gpio-bank0
+    oneOf:
+      - enum:
+          - rockchip,gpio-bank
+          - rockchip,rk3188-gpio-bank0
+      - items:
+          - enum:
+              - rockchip,px30-gpio-bank
+              - rockchip,rk3036-gpio-bank
+              - rockchip,rk3066a-gpio-bank
+              - rockchip,rk3128-gpio-bank
+              - rockchip,rk3188-gpio-bank
+              - rockchip,rk3228-gpio-bank
+              - rockchip,rk3288-gpio-bank
+              - rockchip,rk3328-gpio-bank
+              - rockchip,rk3308-gpio-bank
+              - rockchip,rk3368-gpio-bank
+              - rockchip,rk3399-gpio-bank
+              - rockchip,rk3568-gpio-bank
+              - rockchip,rk3588-gpio-bank
+              - rockchip,rv1108-gpio-bank
+              - rockchip,rv1126-gpio-bank
+          - const: rockchip,gpio-bank

   reg:
     maxItems: 1
@@ -75,7 +94,7 @@ examples:
       };

       gpio1: gpio@2003c000 {
-        compatible = "rockchip,gpio-bank";
+        compatible = "rockchip,rk3188-gpio-bank", "rockchip,gpio-bank";
         reg = <0x2003c000 0x100>;
         interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
         clocks = <&clk_gates8 10>;
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
