Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48441C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 17:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJ2LBvJEbOpsMwVtcprm6UYH6FHFXhVlohowSC11r5E=; b=boBACynKGunxpO
	80SWww1HngeJEXNDa0t35V5vwMFQUMXeOj0RcBbHC5X0plVGrVPGy6qSf95TZtNrJfC+E+lK/eiHc
	vt2+kDkUS2j3YKBYHkCfFk2IjNAnunFsNx4mnS8svtSMyUtwwOe4+l2rmh7+UGMTdf6/kXZ106z51
	Lm5ZBYPIX5M8KD0lcWuT8yH9QHJV9fm5kKukYgHlm9THfNdU3rbCFR/osmxREo4te4U2ipv9iNwR9
	YA17y+adLEaVSQkMGQsJyK7b8AD5dayzJkkrs9p3pbjjdaz6Q2dmzF2D72QEmbiaUkh0rTpoWFYgz
	G2RHcJ7sZUeO41TBcEGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCPRp-008vkz-Dk; Tue, 25 Jan 2022 17:17:37 +0000
Received: from mail-il1-x131.google.com ([2607:f8b0:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCPMs-008tI0-JU; Tue, 25 Jan 2022 17:12:32 +0000
Received: by mail-il1-x131.google.com with SMTP id z4so2238543ilz.4;
 Tue, 25 Jan 2022 09:12:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kTohMKJe6b+aS5nC8tVrcxj3aKt5LtNCUkDL666J3iI=;
 b=QeCaqLi/Vdl2SNgeMJQrOfBtxIr4UZDZ4m8KOqBa5Jo25eO2GPgIXXHU7lbQxpdZZ4
 TAOo6NqJpNZ3BmR+trzJyR6/kxmGKXnTmFycHCze6HpEXCRabRXx61GrM5Hmlnrt67KR
 t15NtCQKz2Z5wxZN59dOontiWBvQTb4/jwPlxBelRKaZ0XL1Kht0x2HOKvCMBy/+OsLf
 DUQlNSgI5Hu+GY1sHd2ZY3HDPJ0BfVmXJTSZZVz0t1NY76A7uiVidaVEkqJ7jxbML0S9
 MzmVZaROeMepmwMdOD//zFDxp1NS1HLDT/RjFmkA9Jbyj2+YL+wZ5WL9slRoucfKJkHU
 lObg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kTohMKJe6b+aS5nC8tVrcxj3aKt5LtNCUkDL666J3iI=;
 b=I+VaRtchSVF5YT3uZDgGARnUe5AC039Om8+/Ge8PDw/ZD4fjN2wTxl9I+1XAItBGLG
 xA5quS4x03OkGrXtef0f1VXuselrIosTZ+nButv6YE9F3GkGaubnCG5+7zYGZ59v5+Bh
 tNb/uEHHMJt1+GcxlXs6TgafE00g8ZlKSbR0cfgXjo0WfVFslqrnJuKLSXebh/ZWlgt2
 ndWPqIT0D0Pb2a8x4teuZz1ljGMN5PkI5u6TMUSQ0HQNatZbLbv5yiPZlQC6hi4RJBhL
 +zdmx1Cm9QDMBllt0t35lFwSE+VXxbXPwIVbHot3KJ+siPdKe28PMHmMtE2PUVtAVfwq
 GeOA==
X-Gm-Message-State: AOAM532ONJQg0ezhzNsPLOx0ksykr6QF7EL9GrLzqYngvdS9RBZ/scEm
 PbO2OhC4S2PS4L/jF0ueO70=
X-Google-Smtp-Source: ABdhPJwMsq6K5oOSCTxFn77d9mDIztu5yGqMpSFtPQ+fssC6hzOmTp+S1h0capLNnz4toG+uZaagdg==
X-Received: by 2002:a05:6e02:19cc:: with SMTP id
 r12mr12812738ill.246.1643130749159; 
 Tue, 25 Jan 2022 09:12:29 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:6592:b6fe:71b1:9f4c])
 by smtp.gmail.com with ESMTPSA id m14sm8090291iov.0.2022.01.25.09.12.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jan 2022 09:12:28 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: aford@beaconembedded.com, cphealy@gmail.com,
 Lucas Stach <l.stach@pengutronix.de>, Adam Ford <aford173@gmail.com>,
 Rob Herring <robh@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: [PATCH V4 03/11] dt-bindings: soc: add binding for i.MX8MQ VPU
 blk-ctrl
Date: Tue, 25 Jan 2022 11:11:20 -0600
Message-Id: <20220125171129.472775-4-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220125171129.472775-1-aford173@gmail.com>
References: <20220125171129.472775-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_091230_718663_E43F67E5 
X-CRM114-Status: GOOD (  12.38  )
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

From: Lucas Stach <l.stach@pengutronix.de>

This adds the DT binding for the i.MX8MQ VPU blk-ctrl.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml
new file mode 100644
index 000000000000..7263ebedf09f
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX8MQ VPU blk-ctrl
+
+maintainers:
+  - Lucas Stach <l.stach@pengutronix.de>
+
+description:
+  The i.MX8MQ VPU blk-ctrl is a top-level peripheral providing access to
+  the NoC and ensuring proper power sequencing of the VPU peripherals
+  located in the VPU domain of the SoC.
+
+properties:
+  compatible:
+    items:
+      - const: fsl,imx8mq-vpu-blk-ctrl
+
+  reg:
+    maxItems: 1
+
+  '#power-domain-cells':
+    const: 1
+
+  power-domains:
+    minItems: 3
+    maxItems: 3
+
+  power-domain-names:
+    items:
+      - const: bus
+      - const: g1
+      - const: g2
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: g1
+      - const: g2
+
+required:
+  - compatible
+  - reg
+  - power-domains
+  - power-domain-names
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mq-clock.h>
+    #include <dt-bindings/power/imx8mq-power.h>
+
+    vpu_blk_ctrl: blk-ctrl@38320000 {
+      compatible = "fsl,imx8mq-vpu-blk-ctrl";
+      reg = <0x38320000 0x100>;
+      power-domains = <&pgc_vpu>, <&pgc_vpu>, <&pgc_vpu>;
+      power-domain-names = "bus", "g1", "g2";
+      clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
+               <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
+      clock-names = "g1", "g2";
+      #power-domain-cells = <1>;
+    };
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
