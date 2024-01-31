Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC958C47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jan 2024 21:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=holg58qG2q5cHt3z7XeMzbtLWrr2kOyIcnguKbU6xdw=; b=jcOU23Z+3ZoQTL
	ehlnJRFSOVTlVoG6rwmBsWeUS4s49o9PyuqrZrKSyviXrUaL9Mfk4RDrlhELAOPXvwUNNVEk01jna
	lwr7M630tnGgxK2Gzk8WoKSi/M/jIyFFSN1ZxH86VSkx5u2ZCPSeuKIOtO/+CQ5bX2AETC9nWaRZo
	Zjd0OJ5CmWvn92a4YCIh+/c2P7LLu9rPPb43UUbOf/zUUYIkGyTcIDgmgmCLRwQKZ2AnUjFE9Oh1+
	Q7Vl7G2JbbAKxHgkmF2lHWeXKu+XBambKVr7jgY+vQxYZsaEsfoTAD95qYYeDB6Wkfo/rJINiLy4v
	F/mE1uB8ocyAjvO5Sksw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVHwf-00000005T6Z-0tQr;
	Wed, 31 Jan 2024 21:16:33 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVHwa-00000005T3K-3rpe;
	Wed, 31 Jan 2024 21:16:30 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a350bfcc621so21647666b.0;
        Wed, 31 Jan 2024 13:16:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706735786; x=1707340586; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7WAHmXqhwFGwnUoVVTvOT31zVVDiv5ormXLbiLzvJr0=;
        b=HsfoKsy/wJYm6XIRLzofpr8dy/suORCRbN7aCR24nLcO0xmn2TK1A+kD5fAs7rmpe8
         pc7cj7Sax0K+5oC+sQVdvf0Hh10esCkp8HqbJi5E6rtlCt40JjHRc+v5TbpTxgBmQXT2
         O67SXkh4DesFkh0DSlAJASn9eZligMQJUbhMZwcKx1tHimUoM8ZS6/jVOGUungkdXuWL
         kG/X0XXJ+ygcJEG3gq9xf77MKoEAppYJkuLzlHo19gojCafLDFlX7JZXN3cnxRJxhJHl
         RVNQj1gGkwWlmpN8+OH3aCWzFXIz3v88PUktfbs69HhBriiYafOOthQhGGwFsGtGk3U3
         U9rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706735786; x=1707340586;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7WAHmXqhwFGwnUoVVTvOT31zVVDiv5ormXLbiLzvJr0=;
        b=E5/azdTxLN1sshuV34oUsZ4iyBCYceMCcoxDI44TwLBFWILutsQSBjUJjCWnHOovVI
         j4U9TrAVBOVwljo6kZxY9pEQIcz0nGK68fky3bAouG1jCO9Lr+iwv8ngvJcG/yCBebn/
         UJwBKQA5aKe+cO72iLh1FVtGQXxcbKjkWT5LHmRBeOaccUGYc+4ohrqYtu+kaNcqLm9F
         n+TgVRPsNvntq2PeZfkgWATk7AL/JCVr3DURxc+Xi7yrt/YuBBX9D7tPCyXeH8+MDRuw
         vYjjKgAqzMJo6Jtgck+F9K8CBgZoxBVyC4/4jtcUHIAYeFVhW5tNrvMDQl6fGmrDdOoM
         O6Fg==
X-Gm-Message-State: AOJu0YxPEozbNCTRvBioPb8QM/ctUCQs/ezl3eSldcf/caU4dF8PZC0d
	9VOKWofNcTUykFIYApwNN/8mm4LwLm8CdF4OgoEVya0opigJCvH9
X-Google-Smtp-Source: AGHT+IG1BFq7Pp2hw0FCVuWw6rIJcYrAM9nq28Kr5azCiS9LKzq/m7hwGTr5nk2ETTNoY9f8m7yc6A==
X-Received: by 2002:a17:906:da06:b0:a35:edda:ca8b with SMTP id fi6-20020a170906da0600b00a35eddaca8bmr1992854ejb.76.1706735786182;
        Wed, 31 Jan 2024 13:16:26 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVc2fs4IrBG2YWUC5LcZZStHjB+RqDtXVILboDRP8Y2Xm1IoMKnaO2pMi/h4SQUCrAruBblHzoOgDf+Aud6ulOos3QKpvTrOPDbWDrqrs4HoncHMRv6melTKIpllEW8OtFwnN33yPaEFX9kPiIJVFaz94d8Y4gJLNprrxIiTqgEwAzZF7DeO5/IO+fEX+0/dhCvlliQGm9DqOzAUU99bBQXn8o6SMzo0Hgoqm5QeA2k8zgHOry8CgP0VBNfmF6GRhoZHfwmUaL8uBJq2XbfcWxvunXQBbU7jqJRykZJI7KloTyZpPzrwxL2fFFCF6Bhxt2IUP/Th38ZoCpdRzQ6aMCLFa2oh+q58pPry2SEjx389pdHUxDhLD1zBehNndrSw2rsYkLQxOTTyGj1urAZFRt7Si96ewe9IW1EE5T+1hm6QZu0b3o05WuKCL0qn+GsDGuC/NhYfkqoWV0flggiV7whpyZ47IjqSXr14Zgh9zg3S1LmTND+9p305Lhk7uaXtn3un3AdZ6x3agLqjRDz/BlXoxQTGjcJ4DNSh7kyURpMcQ7mZNxtPNxNIrdB1QW1nlxVxlpJ1FUsiiLxuuc=
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ty5-20020a170907c70500b00a35a8571419sm4040634ejc.135.2024.01.31.13.16.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jan 2024 13:16:25 -0800 (PST)
Message-ID: <5c45527a-e218-40a3-8e71-a5815417e5f7@gmail.com>
Date: Wed, 31 Jan 2024 22:16:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 2/6] dt-bindings: display: rockchip,dw-hdmi: add
 power-domains property
To: robh+dt@kernel.org
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, tzimmermann@suse.de,
 mripard@kernel.org, markyao0591@gmail.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <a493c65e-7cf9-455f-95d5-8c98cad35710@gmail.com>
Content-Language: en-US
In-Reply-To: <a493c65e-7cf9-455f-95d5-8c98cad35710@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_131629_061670_D8388914 
X-CRM114-Status: UNSURE (   9.02  )
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

Most Rockchip hdmi nodes are part of a power domain.
Add a power-domains property and include it to the example
with some reordering to align with the (new) documentation
about property ordering.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

Changed V2:
  keep reg-io-width together with reg
  explain reordering
---
 .../bindings/display/rockchip/rockchip,dw-hdmi.yaml      | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index 391c2a7e79de..af638b6c0d21 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -94,6 +94,9 @@ properties:
       - const: default
       - const: unwedge

+  power-domains:
+    maxItems: 1
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports

@@ -138,16 +141,18 @@ examples:
     #include <dt-bindings/clock/rk3288-cru.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/power/rk3288-power.h>

     hdmi: hdmi@ff980000 {
         compatible = "rockchip,rk3288-dw-hdmi";
         reg = <0xff980000 0x20000>;
         reg-io-width = <4>;
-        ddc-i2c-bus = <&i2c5>;
-        rockchip,grf = <&grf>;
         interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
         clocks = <&cru  PCLK_HDMI_CTRL>, <&cru SCLK_HDMI_HDCP>;
         clock-names = "iahb", "isfr";
+        ddc-i2c-bus = <&i2c5>;
+        power-domains = <&power RK3288_PD_VIO>;
+        rockchip,grf = <&grf>;

         ports {
             #address-cells = <1>;
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
