Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2531C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 11:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TK7L9ObGL81M0xfUMpuGpk/twHeNc0mTbaFfeu6pxxo=; b=IfhzciL0pxDzgd
	gixANG/BtMEcpOD/JTRk3G5qJdXdSYrgy1wV0joc/wFQ7SG2F2zRHBzrFDgWV1gXysczfIBfPwEkp
	Z3JZOaF3xJ49iZJHEkrmTHcEufEzCgYXKVuwaQymEJjJqt4kpLm/HPV1wuDHsmZ0n8ny2kKcpjU9g
	u33tsC7QH9okxmFhSFtMvNeVeH4pqIgRetrCkqjdIk0m/oQ04hk5+D4DCxqCaWf4srl3UfPepkeNc
	YZdnQVaSMAVTQCGXvPcgzMi8pp9X6RHNIhslxjzxIjA7Daks2QNzoIagE8YM4FfIK7txGYjNmxD4e
	2jVFKtvm+5A44IkS6vJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxomB-0057OP-2p; Thu, 16 Dec 2021 11:18:19 +0000
Received: from mail-io1-xd2e.google.com ([2607:f8b0:4864:20::d2e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxohb-0054y6-54; Thu, 16 Dec 2021 11:13:36 +0000
Received: by mail-io1-xd2e.google.com with SMTP id x6so34407650iol.13;
 Thu, 16 Dec 2021 03:13:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/ngy9rc2lnHFALnsut5yFmaAU5ic1KlzWDnYFN5A5oo=;
 b=Dne/SpwcvjpRKm5srJeQ9Ar04r7jqdyMJ2ZZiIKRABnZOfi+3qHSXgwn4U8lY3PBJm
 rOsGdzjeaWcJamkIFtSx163EgpBWtJXhFktPFJ1gMkwyLZd375N3WUtX5XU6B2oTC8vm
 1f0mE5+OHgCATmoATBClF6xJeaUsrQVnSy8AeduBIzS0Q27jIaK/1IStA0HHgxrU3frn
 zBqojD0G5cXfISEISthE2vxn7kpc7nJSheLaVNA1FhzzJ9AxSWf5iXLp78rRBAmWWVyi
 CStbtXPejxNat95kOl936dDpyKoo3fjqakYuZa8jlNDWHNETWzY1ym8pmMJarwu5SPlY
 TwMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/ngy9rc2lnHFALnsut5yFmaAU5ic1KlzWDnYFN5A5oo=;
 b=yHaUc7/DwMt+ODDOv/Ji+POApgeuJGQKexk744S0uPuL7JadStZXZoVPI+aXLRhSdc
 G0C2xt5udW4IDh2drYHC8uud7fC8712PhDfaYVo+j/kV1hojcAKSXWLvaGXg82Z3TxJF
 2MwBWdFaKLGilwbQqlkSJ+uef3Z9+06Zx+6vPwGJ4eQSQw6+YY2tPFlsSWPIkVZD01Hb
 gy1pVxTvIAK4z4iUGY1ZH7JS/Xx9V+5ysO20JtOITOthOBhdZyGconVIT8OEnpXdZazZ
 9oEXMKdKgIa1xepJ/iyk/qUOLNwpNB0Hb7n/x5s2sBalorl/2nJ5MLKeYWmfO4ow/hD6
 PZOg==
X-Gm-Message-State: AOAM532SJAvoZPYkY5JjTVwAesGDn3Ut+vfukJLNTTkDwlUWA1xxN4Lw
 z1WYdPPOeK3dm5KwDdvsK6o=
X-Google-Smtp-Source: ABdhPJxp63NTtIzWmw3lwPxLVW9gaysSC0gL0ZZVedy//NMXJfPGRMsPn0mRZLr44Ui/BF0Bw/yQVA==
X-Received: by 2002:a5d:9f44:: with SMTP id u4mr8904307iot.163.1639653214508; 
 Thu, 16 Dec 2021 03:13:34 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:fe22:1652:55f7:5197])
 by smtp.gmail.com with ESMTPSA id h1sm3090946iow.31.2021.12.16.03.13.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 03:13:33 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: abel.vesa@nxp.com, aford@beaconembedded.com,
 benjamin.gaignard@collabora.com, hverkuil-cisco@xs4all.nl,
 Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH V2 08/10] dt-bindings: media: nxp,
 imx8mq-vpu: Add support for G1 and G2 on imx8mm
Date: Thu, 16 Dec 2021 05:12:53 -0600
Message-Id: <20211216111256.2362683-9-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211216111256.2362683-1-aford173@gmail.com>
References: <20211216111256.2362683-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_031335_270984_D3118B12 
X-CRM114-Status: GOOD (  10.07  )
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

The i.MX8M mini appears to have a similar G1 and G2 decoder but the
post-procesing isn't present, so different compatible flags are requred.
Since all the other parameters are the same with imx8mq, just add
the new compatible flags to nxp,imx8mq-vpu.yaml.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
index c1e157251de7..b1f24c48c73b 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
@@ -5,7 +5,7 @@
 $id: "http://devicetree.org/schemas/media/nxp,imx8mq-vpu.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: Hantro G1/G2 VPU codecs implemented on i.MX8MQ SoCs
+title: Hantro G1/G2 VPU codecs implemented on i.MX8MQ/i.MX8MM SoCs
 
 maintainers:
   - Philipp Zabel <p.zabel@pengutronix.de>
@@ -20,6 +20,8 @@ properties:
         deprecated: true
       - const: nxp,imx8mq-vpu-g1
       - const: nxp,imx8mq-vpu-g2
+      - const: nxp,imx8mm-vpu-g1
+      - const: nxp,imx8mm-vpu-g2
 
   reg:
     maxItems: 1
@@ -66,3 +68,27 @@ examples:
                 clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
                 power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G2>;
         };
+  - |
+        #include <dt-bindings/clock/imx8mm-clock.h>
+        #include <dt-bindings/power/imx8mm-power.h>
+        #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+        vpu_g1: video-codec@38300000 {
+                compatible = "nxp,imx8mm-vpu-g1";
+                reg = <0x38300000 0x10000>;
+                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+                clocks = <&clk IMX8MM_CLK_VPU_G1_ROOT>;
+                power-domains = <&vpu_blk_ctrl IMX8MM_VPUBLK_PD_G1>;
+        };
+  - |
+        #include <dt-bindings/clock/imx8mm-clock.h>
+        #include <dt-bindings/power/imx8mm-power.h>
+        #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+        vpu_g2: video-codec@38300000 {
+                compatible = "nxp,imx8mm-vpu-g2";
+                reg = <0x38310000 0x10000>;
+                interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+                clocks = <&clk IMX8MM_CLK_VPU_G2_ROOT>;
+                power-domains = <&vpu_blk_ctrl IMX8MM_VPUBLK_PD_G2>;
+        };
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
