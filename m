Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 950EBC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 21:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wc8hIkhQszRQLuW1pnAzSY+3YIas9A2DyH21CJjZUcM=; b=hkUtPVsd+BexUI
	/k/iOtK3F/BeBADpjfKlGBEXjOlPWZGHpk4FOZD1OcpdIRcOf2I0lCyVVDsIWqlZ1yiqJwWC3vpiv
	+0s2P4e+2r7xi6Vkr8KwKQ5GQ4+v5SpF2f3oqCf+18DYnplfwX+ryPbxRea5QdJhI2RqOghsNyRE4
	ZEI5B2Bu+ltVeUYgKB++a8cc3Sgd3iEaius1hlYADmehI9voeSBVbRwbkzrAlfCxGDrI1HIv0v7ir
	TFupNZdSWIWaXSn7hYhwfxXUeCsnxFbs3ehdRwdyMKe6pcP8lncXIA9/x4QJmUEGCg5f+g1Kojlld
	0zpwYf9/rmqC1gL/NRIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJiwM-00H1z3-Gw; Mon, 14 Feb 2022 21:31:22 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJinc-00GyKU-AP
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 21:22:22 +0000
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 0848E407D9
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 21:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644873739;
 bh=1xNmK//HjGNaIQp8eaYbachy53dRAmEobraHrPxOQCQ=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=WsxWHEkpX8IzgjudW/5FG7xSn7UpSJ5ck+/Uh8rR0UnYHgMQsV74VRTvlK6nHm9JQ
 arV1MRA9xBJstjFRmj/1DmMOjV2VzGiUM23UUIKERMN1ctSu47hao1KkCdPpTFjHpk
 UNkXd4cwbqPE/6/GjJkJMM2t0t79MjYKGPGJG/YF4Q3Y+Y4Pa3noTv4wU/xLUkGuoi
 fRQ2K5W6yhkKVYSGCbKQ+SW3D+OsVCRptmxasv7kvIZHxNfH2Lvv1N5TrZLggAJJ/C
 /UftdWqLM7bLuoCpCLhsFgKyNlFT9NQD3LvCoMKiyZdoZkzHhdqgq1tQYSmVKNisM5
 PE7zQO6UfWZxw==
Received: by mail-ej1-f72.google.com with SMTP id
 r18-20020a17090609d200b006a6e943d09eso6389129eje.20
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 13:22:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1xNmK//HjGNaIQp8eaYbachy53dRAmEobraHrPxOQCQ=;
 b=YBGY/9RvcixpCJGthLxHjvGdqTbb1Ga1oNgK9HaJwMK1qbiolctEtqWbj9VjmgSz6+
 +XfYQ8+NZVLEo71y06mBwdJgVYHEtwIHC+xYa0jLc0dvHkiTtm2+UcUiDYLKUBAYta4s
 t/kGDc2whAxj34x7af+fznB2hi4/1rJXSybhZZKciKNHNbBhRNXegU6jQgtf22YRbjnL
 FlEtLt1KBtDTPT6XH75l+2Hd//K4DprbtON4Vtgei2xyQGd+lfrEj0eU8Ncf8r6X/2mt
 L4KZ2DpvZaobQks9jlm/ZiuPyNfoFLNCshJhT9NGBu5n81IoMeWvgICLr3eob0908cQI
 LDVQ==
X-Gm-Message-State: AOAM531PaFZ1eXuefNMWfKBl9Jtr7WmgvTH2mTN84+CbuI3c/KrK7zjt
 qHodkHWVQeaP7krUt/qQMrGNNYcY2WNmAhZjW31HO49HY8pvTLXEM1Jn7DsmUixOmi6ZYnT1xog
 FxeeA/HytefcBX9nafrfRDkUqEgdWGtFv+yVGVmPOfIRsw/755A==
X-Received: by 2002:a05:6402:2203:: with SMTP id
 cq3mr756176edb.185.1644873727723; 
 Mon, 14 Feb 2022 13:22:07 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy49BfL0PgnMrV38zW/ZrNuMHV/5GZGb+TKlaJ5NvG8aoL2ex2m6POK5VS+J5aobKGKcLFIQQ==
X-Received: by 2002:a05:6402:2203:: with SMTP id
 cq3mr756128edb.185.1644873727584; 
 Mon, 14 Feb 2022 13:22:07 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 13:22:07 -0800 (PST)
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
Subject: [PATCH v2 05/15] dt-bindings: pwm: mxs: Include generic pwm schema
Date: Mon, 14 Feb 2022 22:21:44 +0100
Message-Id: <20220214212154.8853-6-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_132220_531315_14EBE62A 
X-CRM114-Status: GOOD (  12.39  )
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
 Documentation/devicetree/bindings/pwm/mxs-pwm.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml b/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
index 8740e076061e..a34cbc13f691 100644
--- a/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
@@ -10,6 +10,9 @@ maintainers:
   - Shawn Guo <shawnguo@kernel.org>
   - Anson Huang <anson.huang@nxp.com>
 
+allOf:
+  - $ref: pwm.yaml#
+
 properties:
   compatible:
     enum:
@@ -28,7 +31,6 @@ properties:
 required:
   - compatible
   - reg
-  - "#pwm-cells"
   - fsl,pwm-number
 
 additionalProperties: false
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
