Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35017C61DA4
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Feb 2023 19:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qOu6fngJlUl8C7zBF/4U68PZrupt+wELj5gajEj4KMU=; b=u3m8sU0Atx/+dy
	36rJOkneVEhasAfievdCYPC+pNKCrjIjeL5kO/XP0PhtoJ+c8m0avK2EGI0l+bVxiyXX+OIFkZ/0b
	5B/nptfj6kgGHWKDuGQJHOSULKqYaw5qIaqiRtALIYiQCAf33v3dwKoRYOu8T4Bxklq0mgArr8yiX
	s7/Iz8Wgv3Q7gwhvQY4veO/SZd6gA94m7oVLrtSf2qnPADw2E3chWpCDmaNNI8uus5RrGg/rMZ+Xa
	BUypP3Ui5rI7DnyfJEAspeVW4Q50B/8I+7HiIY8HV6LHC0eONXW59jYAYogDGdh3R4HcwfqA1SSqI
	u9Ju+ovrCkwRALhGK4Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVHUL-00080R-8L; Thu, 23 Feb 2023 19:42:45 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVHUA-0007wz-Ox; Thu, 23 Feb 2023 19:42:36 +0000
Received: by mail-ed1-x52c.google.com with SMTP id o12so46735849edb.9;
        Thu, 23 Feb 2023 11:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8BXWAwPXU4gL7NDBNH5IiDYMBbcpymX6jA+XKQ4A+7Y=;
        b=Z9qIIeH4K2XaOajUagHIDfr3qHg6UXZN8iDBhj6FFX0dIjfQCBvZnks9KcNGHHY19G
         ldGQ9mahmCf7kjx2w1OPaz4kn6RnIsQC2dYq6V3Pby6VVovYfUveaWaBMaYGGj90m54q
         xOe9VekczEw87U22eyuTextgD4lzevi8ETHyOkm3ySyTAl0OtGv4jfqzDRDtKIhOO0+S
         21Df/7kwahDs6AbQ2P3SP4JS8Ipm6YUYhZscMNwa7+WcNpkVz0xD9QxfkCrSbuJkPrDO
         dwKvak9Ck8GAKMCuwVgpk1sf63ERU9F9bxOzeBJvQs3DbJtG8mJMcd7+JDw9U/oMftjH
         j/Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8BXWAwPXU4gL7NDBNH5IiDYMBbcpymX6jA+XKQ4A+7Y=;
        b=0p712RVql9R4cM8SS6T523s7k5CkcHuW3KjgwVlwQyWOaA/AS1T9/XeNORAoz9A1HS
         aHjOcLzYc7EnyWrKk8bdUfkQrF4ANKc5y5TLdXbYMjvid4tC8Zte5ym+NhPY8Fe0MQ6E
         S59tjvb7uYo168yQnncsyJFWI87GEZkJtWFtu12Sty2+rwXs0w25dH8yt50+eRqbxgW9
         mqIk0G7mRHWdB8B5SF3YPkiD4cKZ8UYEw1SppWdjj8w4Z5aKcoA8ZEKzoiZVk4meoseU
         7i/1al0eV7opvpgr1oIeTPvOUc9iyht7vL/wy3qU2TPj8oAru8UEA71HaZNVb8Pf7uZz
         s0mg==
X-Gm-Message-State: AO0yUKXG2dMkRK8wRXETXDyS1DYyAXLqTKYjTeZxDfVosRzj9J+rl1L9
	k6Aym+PXcMBr1P19/v0r9xw=
X-Google-Smtp-Source: AK7set/x32vBkRksysZ8SuzBqjVeMXtXLVaQQBia6jjruTfaGG5eWsPI6iBac7ydZdrGPp4yl+5qcQ==
X-Received: by 2002:a17:906:9bc3:b0:8a5:3d1e:6302 with SMTP id de3-20020a1709069bc300b008a53d1e6302mr19527041ejc.56.1677181347149;
        Thu, 23 Feb 2023 11:42:27 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id bk15-20020a170906b0cf00b008f398f25beesm19079ejb.189.2023.02.23.11.42.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 11:42:26 -0800 (PST)
Message-ID: <3eeaa940-9d40-5e33-bc36-c9b0449ded9f@gmail.com>
Date: Thu, 23 Feb 2023 20:42:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v4 1/7] dt-bindings: gpio: rockchip,gpio-bank: add compatible
 string per SoC
To: linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_114234_845575_CC052075 
X-CRM114-Status: UNSURE (   8.55  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
