Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D625C10F1B
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 18:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0fFfHV+GOSmcTm0rvBDUAFZ7lvR5TEGlstRSYCcr6T4=; b=a2EyGJZq6oh/1T
	BiYWShptKE8hc7I/FNLgBjMjL1+HkZz2bRfi3GrGt4Q7HgjBIRsigILrZALlEgaOhHneFIdeJce31
	i8T2MXA3cUVXC+7lNSHx7p0kA5PTthpFY0oyQaPR8x2ZQMqxsQvbznzOuA9VCDjky6E0sgxa5/zgw
	2GOqkdEzIn0IXn/W2mo8OgKy7vTLK5VzZx2TuqpAqwjlEtsh02okLyJjdIBXcLMgefOu7Vw9ptOKZ
	KKnKU8wjqf6Pi2crvM/pM982ShnA761uca9sq667a/OtzP3Xw/NCAh0BFx5sIWvuTD4FVUCHlZVma
	coSpQogHA6oq1xiSf+dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7L6K-0006F1-O6; Mon, 19 Dec 2022 18:43:00 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7JRP-00GNtv-RW; Mon, 19 Dec 2022 16:56:41 +0000
Received: by mail-ej1-x631.google.com with SMTP id x22so22968351ejs.11;
        Mon, 19 Dec 2022 08:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MW9IUi38LGJbWOititTnXuZuxcZ+qs+mMT17ZPnQkKo=;
        b=OeS+09a5otGiv+Kpp8lLf+vmlBCzLGRQR7qaXnlrCYGE2jyYt7zZ96biw1Dqc+/HT0
         A/HvI2rQK1PhpdXfAu8BkfTe8SpXixvvkcogsKLFjRipBr3Z/72DkU+uGlsb2940rucX
         sJo4GcqGJ8KVxFlsN4DisdJDmDEFTWGBogewBBWvwny/hCGMSXzuO1jLOAFn7f81cByM
         2Akq7VTkHMbjuCNNk7/JNHnR0SHjuLGoWFp+5JjOmjPV9MED3JTPNEVgrfs/UmaxukWZ
         NqtQXG8SUkdFIAnSufSaC16d3VGbJLX5xiQTfvDLeJ0Pre0Zko9oKo/6wUsaRHJ52u5f
         n6wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MW9IUi38LGJbWOititTnXuZuxcZ+qs+mMT17ZPnQkKo=;
        b=a0YgJT2YYGwL1ZA8TW9KBiNMF5+kaU8o3udH9hhzn7okWNMZGXxp/PxwxdnCXR2OaV
         2zFFQMpEZ+gF+pRz5vTxRjfz+ej+TmQGRecWrqLWcUBLjntCpvXnEbpsXTB+h/ZGUvGx
         rJTSm/w1hE5FpCbQwPv9LDU75yrZM0grUc0wCW/FF6XBseuLJTA8cXXlioAD3zkFoNik
         nCoF5Cd3Vp0hqloYjBLrZZd703KeDJ/CXjoSKgVPbmi9aj7+RXDOE0kn0kLhHiNL2km3
         xV6ZAhcobE7W5i1ai96TpDNnQLJRmbfot5FHylMecAnoDHBLZKLyKEcRKdnm6rUiSlcb
         FJyQ==
X-Gm-Message-State: ANoB5pmzYdLJw9FZbVA7LR+8yTa+rVVlTR/2W7PkCpnHFb1Oo0eqHO86
	Y5HEbEEOg7bcRDdJQ/NHboI=
X-Google-Smtp-Source: AA0mqf41B2/H4EPNsKQaq9hNNH4wwwkWyo/RIZIY1kQU+RhK6rFFtS4wChCTmLuHjDyyznqvRl+W0Q==
X-Received: by 2002:a17:907:11c8:b0:7c0:beee:2f06 with SMTP id va8-20020a17090711c800b007c0beee2f06mr34217874ejb.52.1671468997317;
        Mon, 19 Dec 2022 08:56:37 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id rs13-20020a170907036d00b0077a1dd3e7b7sm4623533ejb.102.2022.12.19.08.56.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 08:56:36 -0800 (PST)
Message-ID: <0b9bb507-1819-4bfa-593f-8b7e92c2ce3d@gmail.com>
Date: Mon, 19 Dec 2022 17:56:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v4 2/5] dt-bindings: soc: rockchip: grf: add
 rockchip,lvds.yaml
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com, daniel@ffwll.ch,
 vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <7f38e245-4fc0-1754-e75c-10c1e31bbd4d@gmail.com>
Content-Language: en-US
In-Reply-To: <7f38e245-4fc0-1754-e75c-10c1e31bbd4d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_085640_229626_1A7F384F 
X-CRM114-Status: UNSURE (   7.99  )
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

Add new converted rockchip,lvds.yaml to grf.yaml file.
Prepare for more SoCs with lvds output.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/soc/rockchip/grf.yaml          | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 2ed8cca79..d74295e98 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -75,13 +75,17 @@ allOf:
       properties:
         compatible:
           contains:
-            const: rockchip,px30-grf
+            enum:
+              - rockchip,px30-grf

     then:
       properties:
         lvds:
-          description:
-            Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
+          type: object
+
+          $ref: "/schemas/display/rockchip/rockchip,lvds.yaml#"
+
+          unevaluatedProperties: false

   - if:
       properties:
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
