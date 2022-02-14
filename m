Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9D5AC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 21:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQHqYwxTwH0yKk/2xvU4Gibd2dLmuPG2AKmtReWwKZE=; b=dqKx+As2WyjIiq
	IqdVC54PFYRp77eslmUUz9xxgazEiH/PFeev4Ha4Ckun9FfcrN2tbTqAvozBjJNThEFXPtPDFxmS0
	xyncdn0I6hOq1FV6tcB9PS1Py+HiS5CfNPxynWd4pSh7rU05VtkMoGE/h9sdEfSx7VWdjUNpmoJZc
	KXQoZ24/a+OaLpnIn3jvjcJpYe8CcO+IJEqsOS0GrTkvTPT/KUQwgWhawkd91N+ef0tzRqSVt7o7l
	TTt2PSUIoRsQRlffkXPaGTYS+4uEC1owphA2/W95PknOYp+RGntnnU01/PBc/jU0qoF30gcErBRBa
	UmbRJ2Kxg8eOEgsbnkZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJixn-00H2au-P0; Mon, 14 Feb 2022 21:32:51 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJinc-00GyKV-9S
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 21:22:22 +0000
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 0CA56407DA
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 21:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644873739;
 bh=L1zH491qgS41n2AXbaIQ7HS33ONC7FahLUP0TNtgPew=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=HRns2mMnw0qjs40FRUism0e+YHl5dw5tLMxjm33CEVZFnv6K/JM2elQQkRKQLZSa9
 b3ad8nWmD1xkOBcFcPQeqaweune4fzILjGHp0tZVmEAEfF/Wcoi2gEossSruX3oNec
 Mqts29zmGbzu768GNXQz/fJg+it53DkMEScP62plIEThegdLZoK0dOUNPi9JL96ARk
 icc35HbuEfnOMsB0Ks7Vh2sd/yKbmTtIVThF+j4m8tWyz/2uaxBMJ9ZEayOX1PXE+N
 dTlcum1e5ch1WghBDL/wgOpm1hlAYrM8n8q/ynwyKIp50cRkiqgFfRUQYA+NjWwyGS
 NpTnDUWhdiL0A==
Received: by mail-ej1-f70.google.com with SMTP id
 r18-20020a17090609d200b006a6e943d09eso6389131eje.20
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 13:22:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L1zH491qgS41n2AXbaIQ7HS33ONC7FahLUP0TNtgPew=;
 b=LDfY02qqh/DnlCsCP26Wp2ebY329HayAbCfdGrAKb4xetEndeqZ03r7jWIbpokkLjG
 eYhri8V2g43rcgdSK24x7ivZoIAI+evWxAA+UCQKsOmPg8hkP/l+zumJajo38M2iIt+k
 3d9kvIHlSBmzCd9rX55WUH1g/sdO95nklstr+pEtZT3IlaD6KAeqAZmoJXtns6M3gSMB
 NJvysjQicUX4MGd714KDeHDekehOJ5uJc70eQ/um0esnbuoT0j/Bx5QiCb8mevrOcvv0
 a+fYlwb4QnwB7463VtwD2fvcYQAUyWou71XHYLLe2Z6Iac01OHppvtswtZe8N2MFEhqY
 M0qA==
X-Gm-Message-State: AOAM530wjVcUJGvYC1MbR0BDN901rvuTB5Jlqc8FkCdq5CJVBnRoYdoN
 tGDoOY2CD9NZPHS/NsD/78+6rD6X7D5pVRl1dYA7YZrIi22J5HLpAu/oFdVWyLLfpjvH2oC20vM
 GTwnD+VGZyRknt6LytHaxf9Q4uVgUrbiV/Uh/hbTSQV421L46Sw==
X-Received: by 2002:aa7:dd04:: with SMTP id i4mr764671edv.313.1644873738470;
 Mon, 14 Feb 2022 13:22:18 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxYZT3hfmG99BK+ndmDIe3ewA0JwFYesWd9OClq7wO2HS/MuYgpu2ey6gvbQ4bbF24Sx8ij6w==
X-Received: by 2002:aa7:dd04:: with SMTP id i4mr764632edv.313.1644873738297;
 Mon, 14 Feb 2022 13:22:18 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 13:22:17 -0800 (PST)
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
Subject: [PATCH v2 11/15] dt-bindings: pwm: intel,
 keembay: Do not require pwm-cells twice
Date: Mon, 14 Feb 2022 22:21:50 +0100
Message-Id: <20220214212154.8853-12-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_132220_516065_D1BFC8D9 
X-CRM114-Status: GOOD (  11.73  )
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
Acked-by: Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>
---
 Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml b/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml
index ff6880a02ce6..ec9f6bab798c 100644
--- a/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml
@@ -31,7 +31,6 @@ required:
   - compatible
   - reg
   - clocks
-  - '#pwm-cells'
 
 additionalProperties: false
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
