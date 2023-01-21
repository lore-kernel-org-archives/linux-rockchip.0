Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BE87C38141
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Jan 2023 11:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNmaDLF9mn/czd4PjjLJmwUW+l3sa8IicANJvjmrbZU=; b=1bjrmDZRwqSPaS
	LzgToAnUDbfZJIo/WGmJ2uxJyv8BPM3VL8KYu+fjFYKIwlxEoJl9pqqGO+E3sUYaPb+zVbXJReOs3
	vRk0lidZF/NqcmntA1evhW939/lB2Mylcdu2MDkkixpLfr1bGgCzaCCDABn3Q3okuvaJhr+op34OZ
	aVJ28QW4LquD4y9TlnoQc3c45nDXoEVmsSyB1bhNKWI9XyRWrV/vIplKyPmcuReC+9nqnGAFm1nbt
	CqJDhhJXo5d8bepRwPTvOZCUfOT6cDPK79FVVOVyHl7Vljymz8LinHsEl/taoKCbkzekmtIt8aqeZ
	SiAO1+53LblgQ9d0ONUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJBjx-00DjQi-Mi; Sat, 21 Jan 2023 11:08:53 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJBjn-00DjMN-1R; Sat, 21 Jan 2023 11:08:44 +0000
Received: by mail-ej1-x629.google.com with SMTP id bk15so19793282ejb.9;
        Sat, 21 Jan 2023 03:08:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bV0QlH+wN08mDafAyJd6ZKnO9vWwwQ+auoKN9/OejlI=;
        b=abuZ60NluSmgsGz2jcp2YIhZdWoLJBvP1gSIN2DCdv0eu7xt1+3/qldtsQvJ1qvQcu
         V6mvEhlCLtEk54odvZbsuvpI2qP1kBGzFfxd89oEK24E+VKwqbGSYV2L2VLXWbmp9pPW
         KxbjY1SukwcrFCBk+7A9wmcTaoPHp9t+3xFmStJegKyX8HHc1aV2PWTxxqZGYhtcZdB1
         ZGv9/xD6XbfvaRbI+miT6LQDTBYsyNqTJFUITslYim7D8pLWlnGGte7KRMxPYSaCjOIn
         YdUYR8Eu5w1mKJXymInUFUNfSQLC4JMG7EZFWqN98DPcrEieQyJbpIzjFpyE8V/VF2BZ
         rSmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bV0QlH+wN08mDafAyJd6ZKnO9vWwwQ+auoKN9/OejlI=;
        b=1MNNBF8i5nDiC+efw9ZfWNh2ldTcV0FHiMi4GYaS4uBQdprh8T7LXW7nf9g/qPgbba
         s1rCHRMP72TdGYrIux6IJmhH1zR7hPGx7is5OnPBxyYeu45nCKQAi1uJtvIBvP9DABR6
         uQKVPhUkAPk+KDZcErigXjmBeME1cZF0xK60JZ5KWV7O5NRl45oc/SSzr+h9DbqIe+gC
         DWDh8XD5HBAIZiDw86CuA9ezzzuwPradb1SGHTWXg4JvwJWtDUJZFnUTD2VZvGjaqwvv
         pLSmgS9TrxPv91jVJ8CwjWV89GmALgPrGffD7HON95IRTAj/imkasCdrglQsj1Ldfkax
         weUQ==
X-Gm-Message-State: AFqh2kqwhER/Dp3YGqm9ceJqpqeE9vkOq6RGqWZoXiT8ca3x28Ty0BmU
	EpkYFBzpA8yrWtlwQTj+SSg=
X-Google-Smtp-Source: AMrXdXvharavu5Ec3k9/t3pIEVUoQifYmrL6N6/KDWOXmGzBGu2cKkGVU+ItgcsFfkDLRZNqjwCq6g==
X-Received: by 2002:a17:906:2582:b0:877:573d:e91c with SMTP id m2-20020a170906258200b00877573de91cmr14335913ejb.63.1674299302493;
        Sat, 21 Jan 2023 03:08:22 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id r1-20020a17090609c100b0084ce5d3afe7sm19207706eje.184.2023.01.21.03.08.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Jan 2023 03:08:22 -0800 (PST)
Message-ID: <137b56f0-8e86-f705-4ba7-d5dfe3c0b477@gmail.com>
Date: Sat, 21 Jan 2023 12:08:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 2/8] dt-bindings: pinctrl: rockchip,pinctrl: mark gpio sub
 nodes of pinctrl as deprecated
To: linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org,
 philipp.tomsich@vrull.eu, john@metanate.com,
 quentin.schulz@theobroma-systems.com
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
Content-Language: en-US
In-Reply-To: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230121_030843_128593_6C538760 
X-CRM114-Status: UNSURE (   8.60  )
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

Mark gpio sub nodes of pinctrl as deprecated.
Gpio nodes are now placed in the root of the device tree.
The relation to pinctrl is now described with the
"gpio-ranges" property.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/pinctrl/rockchip,pinctrl.yaml         | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index d6539723f..45b767986 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -76,15 +76,13 @@ allOf:
 required:
   - compatible
   - rockchip,grf
-  - "#address-cells"
-  - "#size-cells"
-  - ranges

 patternProperties:
   "gpio@[0-9a-f]+$":
     type: object

     $ref: "/schemas/gpio/rockchip,gpio-bank.yaml#"
+    deprecated: true

     unevaluatedProperties: false

--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
