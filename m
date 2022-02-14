Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39A3DC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 21:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqqATP4kZcdrEI3qbdfV6Z2cfZ8R0HoAxNd81bZ41tU=; b=kTI4MMrthuWFEV
	OvyWTC8LotigLHMY45VJS8QXQWLNZwfJVWfTQ1xphpDsxkqas/w+Zs65ZY7eR23MxDe9MYLdctw7V
	Y9YnecFchncMhl965gzk4eRFRhgooDN1MiH6FB+ZzQcC+bbPOZahbWc6UTDNsf9JRzybXMR8JsCy5
	fZlAo2fpUk239FY5sIOfKMjbbuzyqukPlsV9Q/hn2ZTOXKuT8NrpUyrI32qZc6cjlNQyd1kSuR42p
	obIwyUlWIklwPB62rlCrdPeTVQGBMVl8Qdhy8rdtj/PMTj5k8f0dn+Gncx569wTwqbHzEpiD+ysKr
	Zfb9c0mXcquP77fIMrow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJiwK-00H1yD-CW; Mon, 14 Feb 2022 21:31:20 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJina-00GyJA-9t
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 21:22:19 +0000
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0C3304033D
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 21:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644873737;
 bh=05sXSD4PIb8v0ICor9Lwlzw82mhcHvJZHXpVeLkjK/k=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=KIZguBqxb9x83Z3Be7OKHUjFc5tnXGEIUIlhV6S/1cM/tKpuOcc+5Tf9xIicmqRUp
 tMmkeP/0NA4ruEB/HXZ6HGEnCGYmGAIumZlRh3hnE9uCA66/oNVz/QMgsOxDSuEA/6
 P6uocFUj8eaemxDvtU605p1LrVBTJ5ZeBOIUekdEdI2OAAn8Zhf6mBx//PiWSi9+Zx
 /5SgukeMw1/VxgMmWN7cy0IPSiz4F2CxL1sMkDGC89dIoXBPr5tJKdlLuc7ot3s7UB
 OFpFsSnL0TMGKW8ne+u0VWWhhGV38sFrp4VFujieE/R4goHEwhbnzTauoPSdtOb5Vv
 qnP5Zj8M/jqYg==
Received: by mail-lj1-f200.google.com with SMTP id
 bn10-20020a05651c178a00b00244baa268b6so1823999ljb.15
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 13:22:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=05sXSD4PIb8v0ICor9Lwlzw82mhcHvJZHXpVeLkjK/k=;
 b=EyhndYkeJea7uuU7x5nVUhwbTE2GwQoEXof2BmjcwkrPmp3SZGzphL1UliIxmM0dWS
 QkJTPKoZpYqa3a2JbvkpMnBoJ0txcXQvQ/TmtO4csvL1Gl8RXDQyXoPPff4sJ4ukI6it
 58QpTpVEtCtJ0X/Q5UUpmeJOR0HRY4fY6Tldjaulhf0aUKt+OTFrwsbBWSfR5zv221aK
 gy7GENBBw2bJ22WbfmqbRgHEGekg22o3rsjJ1zYFGN+N+ww7XwYl5y/+epSdMPtUfIf5
 jCM7vtnK0t9BbiLi5dVVIx7lexZGEV4e1AZMrGYTeBc8vjAxCFrh4BqgKZlgcXTue4ro
 /+YQ==
X-Gm-Message-State: AOAM531oqZdf45mOZ2mJFcmN9zQsImsTn8EJXdKGc/Rnf0Pf9fvk/maX
 4kw/RSmDy7iysAm4hF3DewZQqrWRBsx/yu9M5/xpkhKuOcZJvY14JWXdv74g7qL+MTYjg+5iLV0
 Hx4WL9yYtD/Kj6VwyY/0YBnWl7Nv4PfmH9ohhjeLBMNHrbeRWMg==
X-Received: by 2002:a17:906:dc94:: with SMTP id
 cs20mr569404ejc.197.1644873725550; 
 Mon, 14 Feb 2022 13:22:05 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxypzu9p7HsT4S7Ad50YuGuHC9KWwPHqmyrycOPMKzhRcEXciPDMggnLpRKMW5EEgnh0II1dQ==
X-Received: by 2002:a17:906:dc94:: with SMTP id
 cs20mr569374ejc.197.1644873725370; 
 Mon, 14 Feb 2022 13:22:05 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 13:22:04 -0800 (PST)
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
Subject: [PATCH v2 04/15] dt-bindings: pwm: iqs620a: Include generic pwm schema
Date: Mon, 14 Feb 2022 22:21:43 +0100
Message-Id: <20220214212154.8853-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_132218_517200_E10FF857 
X-CRM114-Status: GOOD (  12.01  )
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
 Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml b/Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml
index 1d7c27be50da..0a46af240d83 100644
--- a/Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml
@@ -15,6 +15,9 @@ description: |
   Documentation/devicetree/bindings/mfd/iqs62x.yaml for further details as
   well as an example.
 
+allOf:
+  - $ref: pwm.yaml#
+
 properties:
   compatible:
     enum:
@@ -25,7 +28,6 @@ properties:
 
 required:
   - compatible
-  - "#pwm-cells"
 
 additionalProperties: false
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
