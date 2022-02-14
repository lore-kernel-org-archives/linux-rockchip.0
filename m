Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CF68C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 08:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LMDCoqff+HgSOoq9u2Iqc0Kjre9k09eN3kjvYwusaA4=; b=GkFC/FCJTezQk/
	tNykOuH3ioV5tE2DkY9mvPKNZ0Gd1MDRPj3nBkomEaZEq1Q3nK+lEToN/MZNdkAe8lvOL5peON8iR
	pm6WspRLO0MS+UP/Ok4XdVdpG3PcnrDDxJHwxY4mJc/y9qbrgFw4xGnLoCsHHWSfk8XTercFl5t9C
	hGUcmYgr/++kutLXWoj+P7FzT+RW+mE+9FTUoo5IbDLl+O1+fE9Mtl266dlq3vKVR3V8rEyXypBHW
	uU9Ll+ef3vMOULocvr+K5pf5z5qACJWIn/kfDTkX129/zR2DBVuGmE38mCmGk3IKzmQbOVqEUVUH4
	dT3bpCw3qiO/0TFB6BFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJWdX-00DsfA-10; Mon, 14 Feb 2022 08:23:07 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJWXa-00DpOS-Kq
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 08:17:08 +0000
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 73DEB407E0
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644826614;
 bh=DkqOnedmg2q9ShhWATftW6XUUTgR2TrUisQLyEAw/GA=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=cxIZq0u3HmjdsAiPqVRsO/aDVPuLRl/+LeiUDRmn48lGJyS+LWSPc1huKPtqHCsyD
 1RL9MYmvIE0GLazWTFFcOql4+46B7CEsMpkO3Ljl/jFsVHrPlu6+CksYRuL8Ce0TTM
 e/2PcFDUzBfGIsxvmXHB+1GUC7Una9VABbFebmRgyvYieNViPFjtbhqlFzyljzdHeC
 ON89LnDH4jRPPlj4c1Iv/txDVSah/xCgfve2yarGDHQojJdk8kdTyCjlX1oA4k2A3r
 QJlsQx+G5/DP2itscrpxIl+g+EhPjPbY23SV0uLwgXLDLsi7i6UxYRTXE4R7fSJh+V
 JJZ+KOiH6Sm+g==
Received: by mail-ed1-f70.google.com with SMTP id
 w18-20020a056402269200b00410b0a48d56so1976720edd.17
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 00:16:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DkqOnedmg2q9ShhWATftW6XUUTgR2TrUisQLyEAw/GA=;
 b=L7G/gKC/SPe6oLX2dnTyYi0bsipzeSywwk4KpqFnr+0XkOV1MN1fWJrFbsec8sVfDE
 1Wka6ED7CBrfpK5i7hiszp2zJzOtgo9d+lTYAvOVuaThJ9ge+/K2hyq7AuC4yPDRGBx1
 Hz4MV9Fa6MUx45ZF98TtLQc33O03CXivHH+INyTZ1fZVonjtjTg0k+gUA3/zPNMChmEM
 kNdqV700CnhfU04yT5FkPHT5A3VdXkbf8fNd/SFXKJFEGVSnbF2P7Y6Hy7qeB69YRkLR
 6tTXYV9oTUJhvSNqkAdXD/X5GZSREnV0vPHnOSgO0/brqXU13XCqh2wr6KHQhytgFDZi
 vxVw==
X-Gm-Message-State: AOAM533MAIG6gAn/Sjac8qnvzX73OyN/PSrfkVLjEgVtFDkCdBRy1FdD
 9p7Ka/BeiFIlocsIqUSbRbO5Q0s4DVbmabg3NQ2mzn+4WlgyQuj/hu5ASQ5N3+IJKxA0SlU//ra
 UDF/JMHgaQhNdKBCrntJ0TsvqayGCdFplOJ2XjX3wFAeL4jxUKQ==
X-Received: by 2002:a17:907:86a0:: with SMTP id
 qa32mr1461130ejc.23.1644826614013; 
 Mon, 14 Feb 2022 00:16:54 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxDJTIba5Olc1DBbdAqq71XRQ9UAPJIT4SQ1cNLOsvgwe2lpelu0Q6nUssQgmN6E/2sLjNFyg==
X-Received: by 2002:a17:907:86a0:: with SMTP id
 qa32mr1461109ejc.23.1644826613791; 
 Mon, 14 Feb 2022 00:16:53 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 00:16:53 -0800 (PST)
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
Subject: [PATCH 09/15] dt-bindings: pwm: toshiba,
 visconti: include generic pwm schema
Date: Mon, 14 Feb 2022 09:15:59 +0100
Message-Id: <20220214081605.161394-9-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_001658_910415_9060465E 
X-CRM114-Status: GOOD (  12.68  )
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
 .../devicetree/bindings/pwm/toshiba,pwm-visconti.yaml         | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/toshiba,pwm-visconti.yaml b/Documentation/devicetree/bindings/pwm/toshiba,pwm-visconti.yaml
index d350f5edfb67..46622661e5fb 100644
--- a/Documentation/devicetree/bindings/pwm/toshiba,pwm-visconti.yaml
+++ b/Documentation/devicetree/bindings/pwm/toshiba,pwm-visconti.yaml
@@ -9,6 +9,9 @@ title: Toshiba Visconti PWM Controller
 maintainers:
   - Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
 
+allOf:
+  - $ref: pwm.yaml#
+
 properties:
   compatible:
     items:
@@ -23,7 +26,6 @@ properties:
 required:
   - compatible
   - reg
-  - '#pwm-cells'
 
 additionalProperties: false
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
