Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEBAC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 13:41:05 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E6EAF6139A
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 13:41:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E6EAF6139A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZZ1c2uFV81wUaTleHn+7s+Uez7HDYnkXBc0GHJ1WZHI=; b=gh3sVdwRZTBZYBfV1TyBQbIuXU
	UvAVr+n4i1i/bQvwnR9VtCFcjn6gDBaaUeQb6qf4ab1k2/cVs7JVmXiNVZgmvQgq1Siulj0zH5QdB
	+C0raY+g96Tu2oAlyOAmbCPuX7gMcHp3Pays/oajav0J46SArY2GKrbMfgW02p5j7beGwWUXvzkcr
	VZB/G+WK9eOuKPPsmvEFxNZV2SetJ/zKWb6JKakaPE2U3ec0zUkZ8hUpTYOV97PIYza3nTt/ytF/7
	yBXhIwudPyQAHJ7U/F753lDPvPJXqaqfvCraKqOYi/Sif731GMSW9PK94//pG0Ys1s66L5SgcTByj
	BlZDicag==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leHlq-001JzW-Mk; Wed, 05 May 2021 13:40:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leHla-001JxA-BI; Wed, 05 May 2021 13:40:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=PdmQEr+jM7/Ixg4wXjBUQfBuoGiLAB+KdKUuiW4PeIk=; b=1No6B2drs4HIXDwgPg6xtugIsz
 gncYvjTp5PTs4fvHA8BDYFSzFiswY6WVF9HMmqnNFi9HJxQYMfxbsbjS5wGJpqsDLqSE07HybKtTR
 0/sfXaA0E3AxrYXsIh8sxsVrcCgN0AaDyWZ909AXSc+kyAydYyyI4Wwccm1kJmOPibPdQWpCxnTii
 I/kZrqAOPxr8R+XKxWbOAPr50eAUy89orO4ylsJOW4ARry5kddG7oRu2b6xYOvyd9IKAjcc60Gwqp
 K00vPRtveTvv8tiTnpqxnDIF2TaNDp8wkhyU+fEslh194rNSo79E1ojIlg+pu3GvMx2+Q/51CMChq
 o36dNuyw==;
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leHlX-004mkL-KK; Wed, 05 May 2021 13:40:41 +0000
Received: by mail-ej1-x62c.google.com with SMTP id r9so2932778ejj.3;
 Wed, 05 May 2021 06:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PdmQEr+jM7/Ixg4wXjBUQfBuoGiLAB+KdKUuiW4PeIk=;
 b=mnLZdkFgT98zViCZlPp7l5kc+wB8qDy24EqbcLSXm/bCcZlxIP80m9BBcWNCVg/TFp
 Yd6rUYpRcjghWPVcDSmETyPOLulYdoHZOC15hrMzNu7qQixTSPCSPHzkWQx1NiB1E4KT
 SV/CYk3Y5UvKMLkhc4BxMhNh6oRK7dlFsRNmCEFz/sQBClgCq4Lo+jwAm0jhR3rIKBjQ
 W/hVMf2SyLNud/oWV7k7VBkNLgwjt00/dacddg5S2lwqv3tB2jYEfSRaVJdnsGtJMGIk
 DqadC0laLPkwlkHygdcY2EOur9Qf+5mPBnDuVYVnPJuq6PSQywMF3RAkt9I7+uScQtJq
 KDnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=PdmQEr+jM7/Ixg4wXjBUQfBuoGiLAB+KdKUuiW4PeIk=;
 b=NEY3cBLRJ/0QM9GJJBXVjIe/NyBFhjAjnfpUlpFRkRqv2gnu36OJU4m99E7zIB+3Kz
 rpGRCVCtVfbTLEJgzbODrLE4F99wWUDG6sgnn2bNzXR8gd86YkdQ5ZZsCp4iCUoh0wF5
 SeJsYpbuDlNnjmgeS0yQ2rgP+0aTrN6OLKw8V4yiW+XovnZjOoT3IGi8JkTdhBApg7En
 qxBBSlPJ1NzaR2IHcGynrKmI6SYT9PbgpUqRoAQP5epTg4uMRMwxDDwjQQ7dL/7e5IOp
 381exK4A/ksDyrccG7JyG8olBdVEzQcfaW50NSdG6Z+LZ6dmDn0Trix+wzFzR+v4gYki
 eNwA==
X-Gm-Message-State: AOAM530NKLDS3sbSd9GIcx5kotoY7q/fRQ276kdZk90BFRd8lZsEF9MC
 5ufy7ZgnqMq/4k7R+R6xdMc=
X-Google-Smtp-Source: ABdhPJwclRvCpcB2FvazL9f+m/Tpgiz3NMYp08CJJ5kYVVNaeD21m76aqh5XZswlcXagt3xwh+FvTg==
X-Received: by 2002:a17:906:b251:: with SMTP id
 ce17mr26865912ejb.149.1620222038452; 
 Wed, 05 May 2021 06:40:38 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id t7sm15397264eds.26.2021.05.05.06.40.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 May 2021 06:40:38 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: gpio: convert rk3328-grf-gpio.txt to YAML
Date: Wed,  5 May 2021 15:40:25 +0200
Message-Id: <20210505134028.13431-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210505134028.13431-1-jbx6244@gmail.com>
References: <20210505134028.13431-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_064039_691605_EC604770 
X-CRM114-Status: GOOD (  20.68  )
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

Current dts files with RK3328 GRF 'gpio' nodes are manually verified.
In order to automate this process rk3328-grf-gpio.txt has to be
converted to YAML.

Rename 'grf-gpio' nodename to 'gpio'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/gpio/rockchip,rk3328-grf-gpio.txt     | 32 --------------
 .../bindings/gpio/rockchip,rk3328-grf-gpio.yaml    | 51 ++++++++++++++++++++++
 2 files changed, 51 insertions(+), 32 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.txt
 create mode 100644 Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.txt b/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.txt
deleted file mode 100644
index f9231df17..000000000
--- a/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.txt
+++ /dev/null
@@ -1,32 +0,0 @@
-Rockchip RK3328 GRF (General Register Files) GPIO controller.
-
-In Rockchip RK3328, the output only GPIO_MUTE pin, originally for codec mute
-control, can also be used for general purpose. It is manipulated by the
-GRF_SOC_CON10 register in GRF. Aside from the GPIO_MUTE pin, the HDMI pins can
-also be set in the same way.
-
-Currently this GPIO controller only supports the mute pin. If needed in the
-future, the HDMI pins support can also be added.
-
-Required properties:
-- compatible: Should contain "rockchip,rk3328-grf-gpio".
-- gpio-controller: Marks the device node as a gpio controller.
-- #gpio-cells: Should be 2. The first cell is the pin number and
-  the second cell is used to specify the gpio polarity:
-    0 = Active high,
-    1 = Active low.
-
-Example:
-
-	grf: syscon@ff100000 {
-		compatible = "rockchip,rk3328-grf", "syscon", "simple-mfd";
-
-		grf_gpio: grf-gpio {
-			compatible = "rockchip,rk3328-grf-gpio";
-			gpio-controller;
-			#gpio-cells = <2>;
-		};
-	};
-
-Note: The grf_gpio node should be declared as the child of the GRF (General
-Register File) node. The GPIO_MUTE pin is referred to as <&grf_gpio 0>.
diff --git a/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml b/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml
new file mode 100644
index 000000000..ea169f6fb
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/rockchip,rk3328-grf-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3328 General Register Files GPIO controller
+
+description:
+  The Rockchip RK3328 General Register File (GRF) outputs only the
+  GPIO_MUTE pin, originally for codec mute control, but it can also be used
+  for general purpose. It is manipulated by the GRF_SOC_CON10 register.
+  If needed in the future support for the HDMI pins can also be added.
+  The GPIO node should be declared as the child of the GRF node.
+
+  The GPIO_MUTE pin is referred to in the format
+
+  <&grf_gpio 0 GPIO_ACTIVE_LOW>
+
+  The first cell is the pin number and
+  the second cell is used to specify the GPIO polarity
+    0 = Active high
+    1 = Active low
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    const: rockchip,rk3328-grf-gpio
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+
+required:
+  - compatible
+  - gpio-controller
+  - "#gpio-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    grf_gpio: gpio {
+      compatible = "rockchip,rk3328-grf-gpio";
+      gpio-controller;
+      #gpio-cells = <2>;
+    };
+
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
