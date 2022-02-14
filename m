Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2DD9C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 08:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Y+zzmvr48sqcCIVSQMbjZ1OG3kMwYnJHqIiWipCRss=; b=V8iplo1ucdKEmK
	NV/SgmSx3jTbSgA9fABqIgwPrZcxbiiz7oFTQzZAYhSpTM4q/ammMIHZ5Ea55+LAynO7eTBOZfF6d
	fW8eD5IxR3+s8VwnPfAXmLkw17kmP+UCAQHlNKEg9SF9rHvAevBwsw8LK8PwSRd/PgirNE/r3dY80
	10JzcWLB10E8KG24yxoS/iY7pgF2q7QYFx4saF9ORwBhZrOKdR2ZhJKrpSdZC2SuoVdtZzOQ9846e
	swOUMmpL0xH8mjVF55VcvhGBG3kLJJ3c+zK5IhNG6ilOz7wichPypF01cbkfq4uqLHw0ZEVCWQ3bC
	pKe44ObWef8dLlFnO2vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJWZd-00DqeP-02; Mon, 14 Feb 2022 08:19:05 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJWXa-00DpOO-Hm
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 08:17:01 +0000
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 2FD4240340
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644826611;
 bh=2POCSk/6TwWTazpis9hGbBMQ4KYz1OTALCTDWqaBti4=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=THPCly6d1I0eIHIlGqGyhCh58ajX6/SKc61dGtwC9h8d4eaAhkNNxH7DeIjGxUDF3
 pVMABx/NQdPvoj9ZrdrxqDhqQcrM4p1uCC7Ms9wVceei4Be1swnUkVG+tq+usGy/up
 3Ct5MojbhTzV2wyYhvUv3/Y8TqIzVE7K/iqYU8Nc9u/C6N3GO7+s3lAFIYPvLue4dy
 5DY6aek7N0LQftAXCOzwUYK0n0WAKKWx72biKoMnZAO9FjgkPomYVJ2pC5jLJPGCVO
 OYy/wKCDpoj5WmyDRUXkY6/d/lQyO/ucziwC+TjvPFpocDtr8CrxmKL6IoCcn+3tA5
 lesjQGeBRv3Xg==
Received: by mail-ej1-f72.google.com with SMTP id
 d7-20020a1709061f4700b006bbf73a7becso5466354ejk.17
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 00:16:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2POCSk/6TwWTazpis9hGbBMQ4KYz1OTALCTDWqaBti4=;
 b=VufXigdLGFEiGzaN91Djv1hUuul77b2p0bP+WN7jUOI5WDDX2TjRGF10ovwSxbLKBZ
 xRkjZ6gqvw0JQAS31ISEYYIXI4WwRBhFJ5AMwgnGouwtiylLoWqtejpc6v796aid2ULg
 CjBau+lYN1nwgVW2tYOxalQCDkDIBcdMs+VmGMeFpb7VloCaneWIm0Usy+h7a5pnohNJ
 njPznFSIOph8h85CyE4Zl4LlO8z/RodT6unjZDFRUd/S3BT141eI3XzOQzLzGHpJJunO
 iE6ezi5NvOiRj8deHRIXhgrrqoywCgC0gWGjYdf+avzsWJBy9lY4JZnLFtU/9PR1ykjJ
 6h/g==
X-Gm-Message-State: AOAM531ajYaLxgq6SC6d085RvI2n4wIzHxYdqn8b1hbrkVrcdl5IltNf
 UUH2uHYCsiGclKbKM/A2c+kKMhewcNTBC6W0fG+EI+jx3NGJ5sOtrJaexd23wKlfBS+laKjDUEj
 YuS1N5V1pj9Tzj3vAIQGddf8uOqpqfM5UCIe2hwtxmtmLG75UKA==
X-Received: by 2002:a05:6402:d0:: with SMTP id
 i16mr14154259edu.163.1644826610623; 
 Mon, 14 Feb 2022 00:16:50 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzehUJnpv0saAzMdWPLDXiuxxvQr3Bh+VUR68F9vzvxoszvsgh+RQPNbOAs8Fmy07wTsUQlpA==
X-Received: by 2002:a05:6402:d0:: with SMTP id
 i16mr14154229edu.163.1644826610426; 
 Mon, 14 Feb 2022 00:16:50 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 00:16:49 -0800 (PST)
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
Subject: [PATCH 07/15] dt-bindings: pwm: sifive: include generic pwm schema
Date: Mon, 14 Feb 2022 09:15:57 +0100
Message-Id: <20220214081605.161394-7-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_001658_856211_87ACDD1E 
X-CRM114-Status: GOOD (  12.57  )
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
