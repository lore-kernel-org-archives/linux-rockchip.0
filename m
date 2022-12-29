Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EA42C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Dec 2022 09:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UmayiX+MzbR7Fye+yA5uW/IIU4aXXOPWDpasNsgBb/A=; b=DxrZvVl5hQS7R7
	dsYPWxznWtU9952H5YqYNZvS/k+Ya++rMRK88NX9DfqICX0J0ksL2HH99h/9WyEgMAjJSu0fFN9i/
	u9SL5Iy5tHRPieTjgtP6XFDnxiNCAbZq/z/u+jo1O5Z3dVRpmNtrv6NtGDJbPTuz3s9qz6aL2yq+O
	pndt4WJCvamy6CmnaZHAMh41wchMvfQn0kkIQopCkBKf8HoYS9HKimhHKUYL/6pBGB/oP3rlFK/Kt
	43TFSgv7/L4Fs2Y0Klel0xnUUSmHEA0SxEDnWFuViMoUEIZObToZuiDDOS+bt1Uq8b4xI2Vl2YTMp
	kInRXhrnoqG93fc0+bkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pApU3-00EKp7-E2; Thu, 29 Dec 2022 09:45:55 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pApTU-00EKef-W9; Thu, 29 Dec 2022 09:45:22 +0000
Received: by mail-ed1-x52e.google.com with SMTP id s5so26007618edc.12;
        Thu, 29 Dec 2022 01:45:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0cpfrQrCcKnzaVIJpPos2V3z+c3X6E+K3Dy1Hme0IGc=;
        b=bgTGDGl+BrixW/GRVJOepBvDeQGJgJl0spl3smoeAQhKAOtEVSZ8auWuMTaYprBQf9
         EW3OSYdPofHkUlis0qABqDvHYwQYvLsIh7qmLemIV7DnLNphROwbjIuz3qJXjyynfu2/
         41uxQ3FMbS5076Ic3DKuwdl3B15ZVDsjPkJndHOTB6UAvDtu0Qb5I6rX426rYKQ/6sLX
         P0Yph0fU0NGRLlJWZZ2aMvfUCDmcl9H9skEGjiZ+AvtkdT+A7hDyzgha9RC0JeF78pWl
         YkgUW+ctTUEy8HSL+YVqRx7jyPGGfDxbWQaHhzOYIgftUtJWkSVIuKgAxlL1iFRir6P+
         Zcpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0cpfrQrCcKnzaVIJpPos2V3z+c3X6E+K3Dy1Hme0IGc=;
        b=Lps5ZCBELKdgHvOtXjUf+eVRBuTQjhVTNByldhIBw0n++P/PCh+UpZB+eOYTU1K4ct
         MuFIkpOvfMEemkCqKK7OFeH1vz0NNaYU77ITG+mL5O/jC0PHlzcAOATlL+QUZhZiSH0R
         ri3oPGRxyqFD758U2vIvE8FkeliX7pGG7YTK4JxcC3vmBZ1UHmPelYnL/ylnlIqeQwKh
         kVJS6ehqrDxmUJtJHn6MnQNAtb+Nn/Cyp89Qfy4N/r2X9OCvo4tEKd6CuAyOrZVeJnUL
         9aQgElN3ZD7q2SNgTgZf59hDa2U0L+nAmkR7r/SBjjodBwz6j0PSy78XmFEWzs3R/60c
         xdBw==
X-Gm-Message-State: AFqh2kooUHnf0kdUKvYP/09h9OhFTPuUwVvmnYaHYqbGPDAn9lD4SHga
	XmNcb1sTVbroiEsdWp58ad/1ALbr6KQ=
X-Google-Smtp-Source: AMrXdXvDNY0hTnxgzXYxlRZ5nuTWqtRuO9Vf+bIy6BtI6hHCS2hyZFrD7MqhMYOw0ACyN7ts1vIeYQ==
X-Received: by 2002:a05:6402:f04:b0:46d:ca42:2e59 with SMTP id i4-20020a0564020f0400b0046dca422e59mr26446335eda.11.1672307118304;
        Thu, 29 Dec 2022 01:45:18 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id f9-20020a056402004900b0046c7c3755a7sm8091016edu.17.2022.12.29.01.45.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 01:45:18 -0800 (PST)
Message-ID: <5759c6e1-9c89-4cb2-dd57-83a8db09f547@gmail.com>
Date: Thu, 29 Dec 2022 10:45:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 2/2] dt-bindings: soc: rockchip: grf: add
 rockchip,rk3288-dp-phy.yaml
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org
References: <aa6fe473-71f2-edba-f009-994a3dbc9802@gmail.com>
Content-Language: en-US
In-Reply-To: <aa6fe473-71f2-edba-f009-994a3dbc9802@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_014521_125971_AB377C94 
X-CRM114-Status: UNSURE (   7.69  )
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

Add new converted rockchip,rk3288-dp-phy.yaml to grf.yaml file.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Apply after:
  dt-bindings: soc: rockchip: grf: add rockchip,lvds.yaml

Changed V2:
  Use the compatible as filename.
  Drop blank lines.
---
 .../devicetree/bindings/soc/rockchip/grf.yaml | 21 +++----------------
 1 file changed, 3 insertions(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 7ac9aa5fa..8dc141410 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -82,9 +82,7 @@ allOf:
       properties:
         lvds:
           type: object
-
           $ref: /schemas/display/rockchip/rockchip,lvds.yaml#
-
           unevaluatedProperties: false

   - if:
@@ -96,8 +94,9 @@ allOf:
     then:
       properties:
         edp-phy:
-          description:
-            Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt
+          type: object
+          $ref: /schemas/phy/rockchip,rk3288-dp-phy.yaml#
+          unevaluatedProperties: false

   - if:
       properties:
@@ -112,9 +111,7 @@ allOf:
       properties:
         usbphy:
           type: object
-
           $ref: /schemas/phy/rockchip-usb-phy.yaml#
-
           unevaluatedProperties: false

   - if:
@@ -127,16 +124,12 @@ allOf:
       properties:
         gpio:
           type: object
-
           $ref: /schemas/gpio/rockchip,rk3328-grf-gpio.yaml#
-
           unevaluatedProperties: false

         power-controller:
           type: object
-
           $ref: /schemas/power/rockchip,power-controller.yaml#
-
           unevaluatedProperties: false

   - if:
@@ -149,9 +142,7 @@ allOf:
       properties:
         mipi-dphy-rx0:
           type: object
-
           $ref: /schemas/phy/rockchip-mipi-dphy-rx0.yaml#
-
           unevaluatedProperties: false

         pcie-phy:
@@ -177,9 +168,7 @@ allOf:
       properties:
         reboot-mode:
           type: object
-
           $ref: /schemas/power/reset/syscon-reboot-mode.yaml#
-
           unevaluatedProperties: false

   - if:
@@ -203,9 +192,7 @@ allOf:
       patternProperties:
         "usb2phy@[0-9a-f]+$":
           type: object
-
           $ref: /schemas/phy/phy-rockchip-inno-usb2.yaml#
-
           unevaluatedProperties: false

   - if:
@@ -231,9 +218,7 @@ allOf:
       properties:
         io-domains:
           type: object
-
           $ref: /schemas/power/rockchip-io-domain.yaml#
-
           unevaluatedProperties: false

 examples:
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
