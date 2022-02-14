Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 562DAC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 21:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Y+zzmvr48sqcCIVSQMbjZ1OG3kMwYnJHqIiWipCRss=; b=VI2VK4gu0yPmak
	FRVX7m21p5AxdNVNuPF5mW74UO9aYtaJQsHAX8LjScUnJzGCrd6Gzd994Y2h3BWLdWKTnrUosOxty
	/DXecE+GfeYVMqUpz/k/Q08OuK3ZTVR5ndlOBza0syoeWdBgkM/DG93/lJDbcGjR2MQTQpSRVQVUF
	ZRoMcp4JZmHOZ9lMaUJ0vWNizvD2Zb/kVthaJpMUwSnkjKpWsTUPbRmJv3OFEEE5rqDsnvGaSn87j
	fEgBf25LFJ8evF3rjaTEKc78zIPVS9O5SwQ1eBZr8RotxotTYr7MJmyMfflkIGBZphaFexKRY6PA9
	/agv3KLGuPoGnTJRtkIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJisQ-00H0X0-EK; Mon, 14 Feb 2022 21:27:18 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJinU-00GyFB-Sr
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 21:22:14 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8C9C340038
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 21:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644873731;
 bh=2POCSk/6TwWTazpis9hGbBMQ4KYz1OTALCTDWqaBti4=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=knKyGqJ7tlaLE2HX706mIC0RydQqbXA4qeoYwwfT2S4mMSCjmy8GxzSujUBDg421c
 fV4YU5QpGTbQTFqF6wVZKT2efbLMd+uGEBSL0cfMDzn4APifSBw2oCd2tjqBEPaXg4
 Ha5TxWPJ4YprNQg+A4Z+ZdlaROrJpZM/PjaKclr8Wvv0ambRh29igTst1ZduEX3Oga
 wBpkjmGeVX1/puvZBQ4M8RSGKWIntnvLUcsQsm8N+U7NYPnRZpxI6rXBvFVdd5KGCi
 Z/5bAxWQUu4Si4YmrAGWFe872DX+vnmaCkacj6DFg7dWC4EHVnsDbtb09fjrtX52Dv
 s9Q8GPD03h3eQ==
Received: by mail-ed1-f72.google.com with SMTP id
 l14-20020aa7cace000000b003f7f8e1cbbdso11052985edt.20
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 13:22:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2POCSk/6TwWTazpis9hGbBMQ4KYz1OTALCTDWqaBti4=;
 b=im9wGYNjsMPzM2uwyRzJnZmChEY8XtWJq77vzTxgVGXWeXAU4ZthUG9IUx9eM5jGOI
 kI3AZBnSVEkkJusYpcbqxdheKEXcdIrdoHFcSvu6VzrklmdjRktbjU04LDIYtl7Rc7Cy
 WWvSGmJDAfhyyTa4m36tAT4A+qiixC6EYRTPwN8hNWQ90rJYH52BQaRAHbOFTiZLC8W+
 NMVXeBgelPFjuMTm1OJee/WxvJTZ6xuyHwI0OzRKBEu0AbgMexQyCxh4XD4Rmy0oHjv9
 tUFLxx/TrhsKpnE+LDVCLhmF9caEFoLpZJtV7SWsxJ0cUVFXf+eDHN+0+edueAIv9KJK
 Xbbw==
X-Gm-Message-State: AOAM533zquprPDEX5Q480ne2AWv8LgKAV6QoflkH4IC2BwVDLdB6PCJ3
 6KytJzIsaYBubBa1nbvxtjmdSLgi37PimtEAhurMKGtMq2J9aHExbnnYeHzbr0cBkW0XRNCWZNp
 D5aefN3qs2HONZZ/rGkbowqeD3oT9jTyocNkYyDaH9nWMeMUyMQ==
X-Received: by 2002:a17:907:6091:: with SMTP id
 ht17mr542205ejc.607.1644873731292; 
 Mon, 14 Feb 2022 13:22:11 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwORNXxcION04IJzU5Gu/UfUyFurARbus6zd7xUK4wKOMUXzkjvihbjj39qrz7zMUkHFrH18A==
X-Received: by 2002:a17:907:6091:: with SMTP id
 ht17mr542177ejc.607.1644873731059; 
 Mon, 14 Feb 2022 13:22:11 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 13:22:10 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 Philipp Zabel <p.zabel@pengutronix.de>, Anson Huang <anson.huang@nxp.com>,
 Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
 Rahul Tanwar <rtanwar@maxlinear.com>, Jeff LaBundy <jeff@labundy.com>,
 Yash Shah <yash.shah@sifive.com>, Sagar Kadam <sagar.kadam@sifive.com>,
 Vignesh R <vigneshr@ti.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH v2 07/15] dt-bindings: pwm: sifive: Include generic pwm schema
Date: Mon, 14 Feb 2022 22:21:46 +0100
Message-Id: <20220214212154.8853-8-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_132213_121682_62386FC2 
X-CRM114-Status: GOOD (  12.49  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Include generic pwm.yaml schema, which enforces PWM node naming and
brings pwm-cells requirement.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/pwm/pwm-sifive.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-sifive.yaml b/Documentation/devicetree/bindings/pwm/pwm-sifive.yaml
index 84e66913d042..676b2160bada 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-sifive.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-sifive.yaml
@@ -22,6 +22,9 @@ description:
 
   https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/pwm
 
+allOf:
+  - $ref: pwm.yaml#
+
 properties:
   compatible:
     items:
@@ -55,7 +58,6 @@ required:
   - compatible
   - reg
   - clocks
-  - "#pwm-cells"
   - interrupts
 
 additionalProperties: false
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
