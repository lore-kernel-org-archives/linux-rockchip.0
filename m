Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C11DC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 21:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ll871JVBirrzIQ0giifItlFn7UwAygiR3MeuGtslVQ=; b=ef0c6/CyIBb4ak
	DNXcEfUTYT17S1ZJxJ/hOixhM26D50ozgIMrcXIWfQCcO9krqUNtk4dVC6IePP/91zg9vjsKyZIF7
	DdsrFcqBIr8Cm9gsoXqKmTBYRzIwiQ0GX6gR/cgv2gPXUrkfg6U83QysBseQrBAcZ3ekgVNScra+H
	S8EWI3bdIdBCzXLDJRBpeP6NJurAk6e2Rh/1MsKaffnbwhP17LJscoatNr1JHo8v9jrLQTVH7LLOc
	K6OpBCDX6jOAtX9RkDhVdTUTTb+dSjLj1/h7YBqiv5wzZL+vNKMAT7syqMfDSbXf5CsqYDIPmuOhC
	u+tMT1QRU8TxcEeVdRlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJiud-00H1Ml-F2; Mon, 14 Feb 2022 21:29:35 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJinX-00GyH6-RN
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 21:22:17 +0000
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 5CD4C40339
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 21:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644873734;
 bh=Vx5pgZq+wTDk2cXNM++1rpL4of1cb6TeLTw59n/JqH4=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=FaExs8D2RMO/AZ6wS70Od6sYZfheENPjW1GDLs6MI3do/k+aZFV8v6ZytJgl8B/Ed
 chuqldOtPQUWIgqpkxRkZhijuD4Rku/Hj/a67st4vjNWJUWQF3OXnBeci3C643E4QJ
 vaHCO1atX37zM8w6SVA4KJuE25C4O98hnP+Ahf6zt1G0+aqGRAKSU5FsGj+I78pFY7
 kTntg1zuhjR0n7fHbd6ipM/iih9LJabWcShV/EA72dcCqed0YSHIvQprnWmhc3JAqk
 ej9wRSDssGmgTQgT0fueosQAWnZNaIB0j5b5XNhhTRRORHUxQvSa6+oTY1KlydBUum
 7ufCyg0Mw0dvA==
Received: by mail-ej1-f70.google.com with SMTP id
 mp5-20020a1709071b0500b0069f2ba47b20so6317079ejc.19
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 13:22:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vx5pgZq+wTDk2cXNM++1rpL4of1cb6TeLTw59n/JqH4=;
 b=illDcv7HTtw5u2wY/Tvj26qKg6h5cFRwNaRMlP4pVDHTjkMi51phyDHGuxIWdB8eRj
 p6dJSdts8M6TfwHXuFwB90uhFBkAKGr6FK988y4MSHOICSWu9PheIf101u7K5tLVgkQv
 TGmyGtCjfy01+d6ZLq1nUpkmV9UxsdrYCYa0DFXLrKDilz2W/SL5O7Sg6uRJvnK0zPA4
 fnXURbhy2IU9yP3vHc2QWXyzOAzJEelFxBhEX4IwcdHZXjsyaYbvDpypAsMiA8HiKv5Z
 KW6ijHhew16PQfyYDZRbo5Xo4BNaFCWkp+Tlfe5CpGzozxPUlg7wguszLqu3zwqcgCX0
 jzfw==
X-Gm-Message-State: AOAM5331Tl20nkCti4naFUuADoA1FHw96AS1im6jGhAyK6ilLmvNTcYT
 sacZb+aoxUGdOeZvNnC15B1j+Iy2HCZp6PCBDLRKg9Gvu3flAww8NFjtmmcLL7rk2aFCXURL8Yd
 fTXECEJNZ+OYssFvySIlR0WsR6uDxI1OhMaUkW0865SkjxrbrBw==
X-Received: by 2002:a17:907:d17:: with SMTP id
 gn23mr511679ejc.719.1644873723781; 
 Mon, 14 Feb 2022 13:22:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzn9EFz2R0CbHcclhbUA8j9QL+yRr4fQpPA+X8j3jV9fWd1mKh939ozog2RabglBFb1m4mDQw==
X-Received: by 2002:a17:907:d17:: with SMTP id
 gn23mr511652ejc.719.1644873723619; 
 Mon, 14 Feb 2022 13:22:03 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 13:22:02 -0800 (PST)
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
Subject: [PATCH v2 03/15] dt-bindings: pwm: intel,
 lgm: Include generic pwm schema
Date: Mon, 14 Feb 2022 22:21:42 +0100
Message-Id: <20220214212154.8853-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_132216_095143_A18650DD 
X-CRM114-Status: GOOD (  11.26  )
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
 Documentation/devicetree/bindings/pwm/intel,lgm-pwm.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/intel,lgm-pwm.yaml b/Documentation/devicetree/bindings/pwm/intel,lgm-pwm.yaml
index 11a606536169..59d7c4d864c1 100644
--- a/Documentation/devicetree/bindings/pwm/intel,lgm-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/intel,lgm-pwm.yaml
@@ -9,6 +9,9 @@ title: LGM SoC PWM fan controller
 maintainers:
   - Rahul Tanwar <rtanwar@maxlinear.com>
 
+allOf:
+  - $ref: pwm.yaml#
+
 properties:
   compatible:
     const: intel,lgm-pwm
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
