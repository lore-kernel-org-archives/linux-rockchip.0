Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FBC3C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 21:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/sZVPGDAza/pYqnU9FS2ylcqdm9PclS2SxmDLm2d9A=; b=g1Gmwa0OzMFdgG
	IQa09Bu6PtHxJIewHQirozZeQCDtOtWqPKBmL4Bfdl3mvsePVhEWtL1NlYklvyamesryN/DgDmJBA
	bRLP/XJOzcxSJW4dSlqhTdan7X5STsj+gCqrD1ZFnWm6Dzf0Hf16iqP1ECaTaMUbciTPdNPhiVMxf
	drkOvpGIXOIvb5HHoBC6WkT5JnriydZvmZdkanbzbUw7OaiSQg1otXOGYSDTnhE7eIXKChI0uV9RP
	c/aR2T0Z6Pj4K5jRfXMbo9nH9M4KP3F+65CT2FTt/W1Wij6FMoPX7j6tKe9y5Q802uouWZ2jCSu77
	9bGbbmTSY0rziZsY9++w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJj58-00H5NQ-8C; Mon, 14 Feb 2022 21:40:26 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJino-00GyVY-O8
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 21:22:34 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 6D0C73FFE9
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 21:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644873751;
 bh=BTa+7+hPQApQrGc3LBEa/6uh1gwW5m1A+xf1VQ/CZYQ=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=gdyNO1vq8D0FG8CBJQ+a8HixbK7R6RwTcc661801XhPiCarawDt52UgSv28s6ZCXq
 r7lnHJxBTFPOTFYEcL9/K+xN1FO/KAtZbRFgtNaxf/u+MBgPhKwTrjEkVezWCY4K04
 ZNrwJs+a/+bRTKIfk44ZO2ZbrZvxp+93XkrGPaYBl5ala9OGIC9Du4Ozd+J+1ExjUd
 h0AGEaxIt+jnxB8JyMZPpQ4Ml3plzS0cJjFGMfst9v09mitU5noP8+yIlr98dw44fS
 MUbDcmfHivO1it5kAAr8H37QRcxawTRp/l8VTzWgziTGOKKko0JuzOwFAArtNOee4x
 QmFcCKBrDnDrQ==
Received: by mail-ed1-f72.google.com with SMTP id
 s7-20020a508dc7000000b0040f29ccd65aso11092058edh.1
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 13:22:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BTa+7+hPQApQrGc3LBEa/6uh1gwW5m1A+xf1VQ/CZYQ=;
 b=jgz2+7A2VQC6YDAuPPHywWfxZlji84OwFGP2adibdW1x0KITKzM/gCQn5U6lRahqEH
 YOnDfBvZNqo4bl7HFHTiscWYYdB0sDD5+GhWLFtwpqxmXA8sFro4X0NNFOmoUIvIcDWf
 8YF/a2FyF0JoeF2k85wdLpyBqQLQ+sDKREzmGPgoPbFKysjp7AiBVg4ZwQk6r65iWwjj
 n7F/KckJmxIhl7WvgNjbOQDOaO/tJvAulKBXPYonfK0GasD3Q6WU4CQKnZDWvgaJTfuW
 QeuvSham6cdxGxNH0covlPCNsGIoMuH3MPxjTo9xC+mJ1r3OMAHsLpVLfkSqFMhzFB/Y
 jxHA==
X-Gm-Message-State: AOAM533eL2OADivlATmjn9IlB98x8Hl/dHC3ZtMSB7E+hdSp63SD4OcY
 9JyxpnjaEkOdgZ/a/bWIEBkrWtByKHdB//caob6GO4E+zE23E9NvxfJmEAl+BuVBNYzH7ehCKsW
 adof2OBRhQDgMhWaSJOZ3Tr3Qq67iJDEEzM2c5q44w6sp3iVLZA==
X-Received: by 2002:a05:6402:f1b:: with SMTP id
 i27mr797217eda.275.1644873740829; 
 Mon, 14 Feb 2022 13:22:20 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxI0exot3yoiNzuz9PwDF81XbTxvVVt2KMAZVFpKvmztfJkcydX4q8g7gpBrGY0uRI8V9/sXA==
X-Received: by 2002:a05:6402:f1b:: with SMTP id
 i27mr797171eda.275.1644873740690; 
 Mon, 14 Feb 2022 13:22:20 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 13:22:20 -0800 (PST)
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
Subject: [PATCH v2 12/15] dt-bindings: pwm: samsung: Do not require pwm-cells
 twice
Date: Mon, 14 Feb 2022 22:21:51 +0100
Message-Id: <20220214212154.8853-13-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_132232_940688_C6A2C1E6 
X-CRM114-Status: GOOD (  11.69  )
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

pwm-cells property is already required by pwm.yaml schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/pwm/pwm-samsung.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
index 188679cb8b8c..fe603fb1b2cc 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
@@ -86,7 +86,6 @@ required:
   - clocks
   - clock-names
   - compatible
-  - "#pwm-cells"
   - reg
 
 additionalProperties: false
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
