Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F64DC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 21:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vpdCc1QnT1MTi5vcIWq8UOZQVnHCOkdmHPwTs7QLd0=; b=hVx6Ve88b+fVTi
	pspCDNQlww0Zn8tzSJ6pPHkVkFgo3xmHWQE71FEk/jyJAl2DL+aa/fpvjLdgerEfx8osqLl9hx/bp
	Q0feYG6dKJyA84W/YA5LwDoxXcUJN3Uk5Vuf2y0MjWgEf6GEhOJOfBeyizhecIDzR6c56YfQIqE+g
	Fi8CT6Lwe5M/3yoRgqhO84ChmkaPX4QXuQvcqemebPsIwQcyIHFnWMJUVrtPDJhcsuCLmduar9RDP
	NSQvk4MkXLPxCgMYH5a4ALOGrfZ5at+2hYpddEtXDKegqkNunWinzjpemfnlgJS3G+1ITZNIFOBcm
	eRnx1JzzZEUXX4xUiZHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJizA-00H374-AV; Mon, 14 Feb 2022 21:34:16 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJing-00GyNc-6h
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 21:22:25 +0000
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B810D40341
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644873742;
 bh=2GfdITO+DKwVQsf6qkFkxVmUjntYlwpPLBCNaZvP8rs=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=upB8+WrriVHwnzLRChIF4DzPoNr41bEmORslQtUWyVEjXV0vInNt84090JUxfpCoV
 pv+C9n4ZJ1iKEUeD0jSDvJYFJ5wb9zvBk/O8vGTMxd+vfg8GZM1vSzN9zsc3s2XM5z
 omPpW1PbDvjttcCZQbptti6NLRWlpXT1ru47NuO8VtIUx1aEV4ZuQIF2EVVNd4YO2y
 F7FczBmmZENbohs3alzD6/7XN239stXwBY+hDlUR+Q/PCh8+e3kC98xiC9OOuZmn75
 bliWFKWHQXKkELkgCUVRcb8Fgp90D4AllU7/d/LJxeSHz7KHkRgHW9H2cHB6fSRVIr
 tkFpV4Dw3Brpg==
Received: by mail-ej1-f70.google.com with SMTP id
 k16-20020a17090632d000b006ae1cdb0f07so6384532ejk.16
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 13:22:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2GfdITO+DKwVQsf6qkFkxVmUjntYlwpPLBCNaZvP8rs=;
 b=5fV26AZdQYPBrNoCY3La936Or06LtM6aVB1FZ2A+G94Q/sDJaa2W2BqLDxGF3+9W3s
 fIY5K7WABkOZCr0YIqwqb+sWAtTLKdE/dMeuey/kimZs+SGKLbv/o7+cvAb4ElKrli2R
 5OFudM1r65xKaIznrCuMQ5P5kuD85Wc/f7eLpl9H+eD9O1VpZNmJjS57lhWFmixCg/lZ
 0VPJAnm4mR3clwijoMiYCZrhuWX6jTbNIiscWPoUxwY7S0lhFFbwfy5HJOpBvkdW/ayK
 meNKe028DWRipx/LvGXmGDBxgfviJIuw/tPvRT5dMZD39EIVsfUowh0sIHkSTFijW/4l
 rQNA==
X-Gm-Message-State: AOAM532wg+sMJlLA4B5pbjF3XTjr2zKDItkG0UoSI2OJdSK8qAA40yFv
 vdw1Mi/YKwI611fWxyAgMmQr8j8FDGEIQmGBOLandBD28W7LvJKCYFsUZAmroCmoeEzL2rUtTbj
 gkA2CcxvwVpyNLvl2g15YlwQxzrd4mUFByEcKl/nD/VaddwckGQ==
X-Received: by 2002:a05:6402:518e:: with SMTP id
 q14mr795784edd.155.1644873742483; 
 Mon, 14 Feb 2022 13:22:22 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxF3h26z/5uxDbEq+54Opag5L4k/zFtMBfvScttTAdV5Yv9njK8Ir/cF1x90gGCn8KuufGFTA==
X-Received: by 2002:a05:6402:518e:: with SMTP id
 q14mr795759edd.155.1644873742300; 
 Mon, 14 Feb 2022 13:22:22 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 13:22:21 -0800 (PST)
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
Subject: [PATCH v2 13/15] dt-bindings: pwm: tiecap: Do not require pwm-cells
 twice
Date: Mon, 14 Feb 2022 22:21:52 +0100
Message-Id: <20220214212154.8853-14-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_132224_414406_F3AA1CA2 
X-CRM114-Status: GOOD (  11.62  )
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
 Documentation/devicetree/bindings/pwm/pwm-tiecap.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-tiecap.yaml b/Documentation/devicetree/bindings/pwm/pwm-tiecap.yaml
index ed35b6cc48d5..3840ae709bc6 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-tiecap.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-tiecap.yaml
@@ -47,7 +47,6 @@ properties:
 required:
   - compatible
   - reg
-  - "#pwm-cells"
   - clocks
   - clock-names
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
