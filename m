Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 841DBC004D4
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Jan 2023 11:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zDQUXVeHnCqUNepLulLcOlHjQpFy2h8AsiZs1WYUe8M=; b=JxI9xSTxAfVFcA
	85cwI77pd79pxntnKHhobDXxq3cN8BrXoVvzv13n9yddYSyYLv7BYf83tCVX4p9nyh27o9Ga7hiy/
	ivsLxUl4hQkBUskZsyCneiK83M4CxWqmCe6QFJSLdF+JZEMz3mmKo+X2mvNZ0k5naPHL4nun0OMtb
	+SWMVvrU/hnYMWhuzFmp9Lm2ptZ7TZXcG7InvXNigkIm4ta/knyFicsDRMns0tWarqTVe4Xr/s78X
	fxn84b0MX76nKu5+U/6Ce0FBdsJwqum/NvhlOLD+nlftU4ePIFHE983dofd+RM7c9LDaE8rCaMnzY
	IKvCofXHQivFz7Kfztdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJBhX-00Dj9u-Ke; Sat, 21 Jan 2023 11:06:23 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJBhL-00Dj8S-Ja; Sat, 21 Jan 2023 11:06:12 +0000
Received: by mail-ed1-x535.google.com with SMTP id v10so9464266edi.8;
        Sat, 21 Jan 2023 03:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IvNu880SAopwZN/Uilrm2/QZdBFEkhvyjIQe2m9+fR4=;
        b=e41Zml06w7B1Xy0dM/gOBKmeCbDwoz2YD9cIVcSegHug6a8ffVdGIEQPFK1XgHGQUs
         P3KSUQU488BghvPWu9Usvn5xxaGIl2F1RSVYgh30//CUmuWEGiLrU/yMRGdtrlb20aKB
         R77lyRIm/lJrJVvG4YUqc/7VJgLZP66u4pt7D+qmKWZAvQA2X1iZDu0yEXkGbjuEfvEY
         ubghBvhKGw6yhLorEnI9o+WctKYwiePinIQ7hE3G3VkJIJP68uEiGpoYreivzVo0O6pr
         LY80NzQBrOFm6QSQqQzXlh6dVOTem5jH3KrmDaG49LXaHk5rxQUGnyjI07AdE3/jztID
         hSIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IvNu880SAopwZN/Uilrm2/QZdBFEkhvyjIQe2m9+fR4=;
        b=0qrBQq7Zjh+v7nfVQ9Sf6/EipE/fJjqT2aRVsuMzwkyjHMhxcB9w8kN6uLuH70JWUe
         W+HPmzwd2V5qwQCDbA11gMnn5/w2JqWnYqU+W4sobf3KmkXxyHHFYjgbObca+2ICybFl
         DklbbnleCcr900vbU8dam6NWUts1LIZou01UgQ4Ky93s5leHEGnCFgpkLKYUGa188sWy
         rnH72WttvQgrw+64VZtbrUqrODC82wsPJMk2C/8flo4GLH38EsU7rCJjBQYl8sFv70s6
         UcaUMaji3uFwvbyWj/czeq+9BtPm/C6c+PdZSVtHZAYE0KSI8PY6tFpSClaPpKKtxH5X
         8pIQ==
X-Gm-Message-State: AFqh2kpv5D4S16NYtz1pxVW8ar4gzWmXAHanwj6MMKIxNQNhEVG3t+yj
	hn7odxCliIFY/7hH+wcCGr8=
X-Google-Smtp-Source: AMrXdXua+DR3rkmgNcViz9hiLP0+kXC9d63lfRVOVCce6mKXWnxfQ03XstrdP0euQfN61nXWfge3og==
X-Received: by 2002:a50:fa94:0:b0:493:597e:2193 with SMTP id w20-20020a50fa94000000b00493597e2193mr19117800edr.37.1674299166834;
        Sat, 21 Jan 2023 03:06:06 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id hp24-20020a1709073e1800b008720c458bd4sm7666851ejc.3.2023.01.21.03.06.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Jan 2023 03:06:06 -0800 (PST)
Message-ID: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
Date: Sat, 21 Jan 2023 12:06:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 1/8] dt-bindings: gpio: rockchip,gpio-bank: add compatible
 string per SoC
To: linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org,
 philipp.tomsich@vrull.eu, john@metanate.com,
 quentin.schulz@theobroma-systems.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230121_030611_715259_3E27C962 
X-CRM114-Status: UNSURE (   8.37  )
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
---
 .../bindings/gpio/rockchip,gpio-bank.yaml     | 26 ++++++++++++++++---
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
index affd823c8..a604c3638 100644
--- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
+++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
@@ -11,9 +11,27 @@ maintainers:

 properties:
   compatible:
-    enum:
-      - rockchip,gpio-bank
-      - rockchip,rk3188-gpio-bank0
+    oneOf:
+      - const: rockchip,gpio-bank
+      - const: rockchip,rk3188-gpio-bank0
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
@@ -75,7 +93,7 @@ examples:
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
