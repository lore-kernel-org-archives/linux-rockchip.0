Return-Path: <SRS0=3pYS=JO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25ABBC433B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:34:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A646A611AB
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:34:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A646A611AB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gn5tWoOJat3cD6NglcT0PdYXB7JxeyimnI/vmRsDOFA=; b=n9VkrZhsi8jg9uqG+HVFZ1Gi7v
	KouJ5taRYSMtFcBM9k7xHyZtWsKmZMJG2ZmtPQ7GIEI/ncSg1pbnrnNJO1etlwSb2zEdhAhZjF02v
	QTc2yySUJAXTrDu+hunRh/SA04O52/+CqG6CQ704sB4LyNyfw4Iob+tFhhIDiVtYibupD7ls1X3+O
	K/A4rS8anU8E2Qmk8xQtCXevAZj1Z+L8odBtwsfR3SvGdo9Gpl5Nag/oz6H6BoMTbI8IHAJ2LP14f
	+nTXZ1l/ZkGoIINvEW9xajTm3Fp3oSmVrdU1bkdrLJ2/hKAeAVDsA33Dnpk8dqiyN88TON+VNu0AU
	cz2JhcHQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXjD7-005A3Q-6Q; Sat, 17 Apr 2021 11:34:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9a-0058PC-CJ; Sat, 17 Apr 2021 11:30:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=y3wm7faQjf3OHfSZwDN9B47guWYbbRlys9qJW4VJCQI=; b=HEL9nOoqRqA68PkpfMkBqny4zu
 B8U8Ytjje3c6TGZ6BWhTKmc55WQ0O96moFx4bSwDnNpmhHm3yKNBg12Q9YBTFIj+AbTXOGlZEgpDJ
 /E5k+KV32FF0UbwonDNtrfUkddG3t6ZCWdaYR/nOeRyIQ9jk2nKhVeY+gEiwbS/4uK30ZembyFES5
 5Z4h0nglycPdiKjoTLM9XASnnpVyYrccWLoRd9JsasAf9kCb2otpZ9qIpCK0WeleocjybdOLlq+kH
 66Gzy1ctrTCcUOrSA/JYt3BL6N6XClrMBWHuRYEoz1ZXRk2Un9LfepKK4VdzEKFWhknZZcz5lUFTh
 TJ57QJwg==;
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9V-00A0EP-DU; Sat, 17 Apr 2021 11:30:21 +0000
Received: by mail-ej1-x635.google.com with SMTP id u17so45873391ejk.2;
 Sat, 17 Apr 2021 04:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=y3wm7faQjf3OHfSZwDN9B47guWYbbRlys9qJW4VJCQI=;
 b=YS3bWQV33LBDIsf0GQbDPJwfKepFfw+Dswv6TFLEy006J1DL3ISiAOFfkFoQwQdrJ2
 Htko0opDCb7zWI2nNTo6Z8Z/6uhXFtOHs8e9JTl8TMoEI7StawB2KhWTiVMD1cA0c5KB
 fnaZgJ96uPSQMTEeK9FptQkgMhxBqqBpHWWdFMwPgIlgzvGT/1AW9dIQLPNd1AUGkGeO
 NkPPBwqWo/esyfI0g40bFC7pFksQwGG0QQMom9jwQo7sejkbaaXmtvV6WESfwhEBCa/u
 ATHi4SMtCY0dw5J10/slRCWtBNIwz1tOsCIm8093TMgyBL9D+DsiCcEBswxTkjcmORxG
 FvNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=y3wm7faQjf3OHfSZwDN9B47guWYbbRlys9qJW4VJCQI=;
 b=p6nISm0BYJGo5IXrUg+rA67G+ceGmZzUWRIXWSSPK6tgTBfc++PS0WxEJAvrdqqKzm
 XjRjkA2PtO0xECWFiAqd4Y94eOz9tUZNX8HaznKxUn6fPTd8Er58CFt40aJgav2yCjLQ
 wMnASiSmLwUb7z3IOGW40yFJKiO0kN/X+kt6t+/X1Coyg4PIyJ+fWx1EqPwwoemfZlgo
 Q+YXD79EjbYo2oG0sdK1p1/frYUvgTcMCPpNJ/ehO7hdyubgTLfmcHr1v8kHsGP1y/jF
 FgQs0Z7XUkzjgXe0ntQ7rDIa8ALmbSxD508ghPaTer4FOD4Ooz+abAnR5dLrkuBn/sx+
 aSkg==
X-Gm-Message-State: AOAM532XbDDWk4U/9puX5YeKKBATT4/YOEAIIAUNmZaOu+HcGdSPVm1G
 4u+yKh0YlCf0MWM9pgv7IUw=
X-Google-Smtp-Source: ABdhPJzb3y9MXZdf7V8IoJrEab1zt8geOX/i3hCvDrAJrasP+3Sg9fE2m7sAT9v+6j8iCJXxAfNYCQ==
X-Received: by 2002:a17:906:c08f:: with SMTP id
 f15mr12843436ejz.318.1618659015690; 
 Sat, 17 Apr 2021 04:30:15 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f20sm3022875ejw.36.2021.04.17.04.30.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Apr 2021 04:30:15 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 11/15] dt-bindings: arm: rockchip: convert pmu.txt to YAML
Date: Sat, 17 Apr 2021 13:29:48 +0200
Message-Id: <20210417112952.8516-12-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210417112952.8516-1-jbx6244@gmail.com>
References: <20210417112952.8516-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_043017_473603_970C873E 
X-CRM114-Status: GOOD (  17.04  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Current dts files with 'pmu' nodes are manually verified.
In order to automate this process pmu.txt
has to be converted to yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/rockchip/pmu.txt       | 16 -------
 .../devicetree/bindings/arm/rockchip/pmu.yaml      | 49 ++++++++++++++++++++++
 2 files changed, 49 insertions(+), 16 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/rockchip/pmu.txt
 create mode 100644 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.txt b/Documentation/devicetree/bindings/arm/rockchip/pmu.txt
deleted file mode 100644
index 3ee9b428b..000000000
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-Rockchip power-management-unit:
--------------------------------
-
-The pmu is used to turn off and on different power domains of the SoCs
-This includes the power to the CPU cores.
-
-Required node properties:
-- compatible value : = "rockchip,rk3066-pmu";
-- reg : physical base address and the size of the registers window
-
-Example:
-
-	pmu@20004000 {
-		compatible = "rockchip,rk3066-pmu";
-		reg = <0x20004000 0x100>;
-	};
diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
new file mode 100644
index 000000000..0b816943d
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/rockchip/pmu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Power Management Unit (PMU)
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The PMU is used to turn on and off different power domains of the SoCs.
+  This includes the power to the CPU cores.
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - rockchip,rk3066-pmu
+
+  required:
+    - compatible
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - rockchip,rk3066-pmu
+      - const: syscon
+      - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: true
+
+examples:
+  - |
+    pmu@20004000 {
+      compatible = "rockchip,rk3066-pmu", "syscon", "simple-mfd";
+      reg = <0x20004000 0x100>;
+    };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
