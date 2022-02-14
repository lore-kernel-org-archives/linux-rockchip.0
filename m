Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF7DDC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 21:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=59nwtszs3QhRcdsivgkg4Bbj0NC5dbjMPLFBm+Me3/c=; b=rJzR/0eMfDESHX
	4IKX+UL8vTYobBYBtSDcB9E5DiHbIPgxrk8+InW1/8JWaIaja97EC3vVGnZ95AVSwgLOL687N2K4q
	V69duH6jHBzmG3PtsBcE/M1PlBlWyB2GZYCvjO0xfIPq2GDOVu7ruYc6L0AIY0aqgdA0G4Kvqe2YT
	gG0mtQC2PYDQSYWOwPpqSku0SjS4FYZFujiuVM8zZF2epLsn5YIjePQMnKcljVB/DAtyngg1FcrI9
	dA86YUsIsjskCHj+iHVyfaBZ6MI8vPeprxhirHXVrOygs0dQQvEY3f9PbIAKuStcbd/GmyJ9DqIpU
	i+DPcskq7bCc7MIgs4mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJj7j-00H6QU-R6; Mon, 14 Feb 2022 21:43:07 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJinv-00GyZv-Ek
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 21:22:41 +0000
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id AAECC402E0
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 21:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644873757;
 bh=nq4ij651Faznv2JZt1q1SNPJWaeI5lkTeLdPO5VR/U4=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=cdqKG7qduCSXQBAaL1Xam/7qPGsJaKqDBdWqvHvpR3XJUJja53AsEt9hRs+cx9MoA
 ojOI4f9amoGDdwRCu+HrdfIJ9niGlA7FGthPxjY1u8eo9Huu8UwM0PoD4nG8k7sEDc
 EedtBAT2Ejwd2A3H15mQYihPHnCPen6c18TO1Zwgm9U4kT7kIttC2YweJEQEXgaQkO
 k7lL+H+XOhBaP5oCquujVddE1Ftf08p3nrLuybCvwtI0VuGqu8X0padJIOR1gyZlfT
 OYWIt7u/s0RsnRGDjTT4NBpfvDShGhEBjoOgi//YPSUDMbaa6YeHmX3BTD82ijQY/T
 /g/xtX2KAVg8g==
Received: by mail-ed1-f69.google.com with SMTP id
 m11-20020a056402430b00b00410678d119eso6625026edc.21
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 13:22:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nq4ij651Faznv2JZt1q1SNPJWaeI5lkTeLdPO5VR/U4=;
 b=24LkOoqFvzwW+n3v97ziy/jvxP2DiVS1pJjEyTpcgy3HpGdEpjBs3RRnzZYm6XpfnB
 6wCSu9dGlt0bY9CO7ctsK2zFuC03VB2F4zGuZ96vSQOR2EyrbYo3yZ/dF5IHxIq2DVOW
 UVxoKZ3NEwVdubTAGA5WISEqNFPDWz08hxCa/biWslZJYv4O7GzVI8WofOWmDQhb9xWR
 Iap014FtcujT0rAyqIGlMak/Co89mj5GZ4896k+Bc4IEGXy6STLegSowj1on/dCKbPTZ
 LocbL6WJjh6BmiNuyu+CNZJcxBmxdsNSjftHchqFX0/xXMfKLhLkqa9YWUcBKk7tJbKr
 04jA==
X-Gm-Message-State: AOAM533D1e+BSSPs0xqHRCgyyO8yEgJxiLVgEScnK7fJuFr5Lfi3/MzJ
 qXXqUMEYgC6hK3x+tgTxGdZlgNqc+a3bS0Q9CcK4WjLeqp8pqVOMd7NQQUVH+FDlAQ6WqTsUc8f
 SgcXoZAikq6xFi1mVwBQ0SrclAByWhoeSYcBYbAbNdWhGJWgDog==
X-Received: by 2002:a05:6402:298a:: with SMTP id
 eq10mr800865edb.71.1644873746918; 
 Mon, 14 Feb 2022 13:22:26 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz80Pl7KOImaUzcJEjp8kENwO8sBpFHNKeJMvOW/i73kktJXPrP1OEMsEJv+HrKWeHE8aPXYg==
X-Received: by 2002:a05:6402:298a:: with SMTP id
 eq10mr800841edb.71.1644873746761; 
 Mon, 14 Feb 2022 13:22:26 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 13:22:26 -0800 (PST)
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
Subject: [PATCH v2 15/15] dt-bindings: pwm: renesas,
 tpu: Do not require pwm-cells twice
Date: Mon, 14 Feb 2022 22:21:54 +0100
Message-Id: <20220214212154.8853-16-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_132239_700309_EE153D9C 
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
 Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml b/Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml
index 1f5c6384182e..c6b2ab56b7fe 100644
--- a/Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml
@@ -68,7 +68,6 @@ properties:
 required:
   - compatible
   - reg
-  - '#pwm-cells'
   - clocks
   - power-domains
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
