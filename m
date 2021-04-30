Return-Path: <SRS0=A12b=J3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41F89C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 00:57:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 721B4613EA
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 00:57:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 721B4613EA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YNNmmvk3rFHu4SXTvo5FQlTGwrdzLADCfEeGlcd7lL0=; b=IyJ7EF/DDARA6FkP7OzKmCzoe+
	RrKa5ykXFrvXCEtjc4gQOlClQE7MU22M907cxrs6uZBrM6Hd6jKML85jCJkVM866ZV/pLXuGFQQZn
	dMe7AwzhYWCJx4ZQdxdTqzj7Juo0uGK3Pkr7EXxnPshttAMVhLNKZLpWcH35n7v5HqtujId/GWnGr
	S68Q3x4Wn/Suvv6W+sASbSOQSsPHFIWv6D7AIBbLeMz6qEAK0wWGzsJwYhih3C7QBZFkB3bmeZ+4a
	H0WndqN0/okgVCc+5Fvo62+gop3Obc23GgS/CI8fpqI3PJV3s7ZXOyyaKhLQo5FiYVlNR629rvj19
	wk7QiFZg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcHTQ-006qSB-26; Fri, 30 Apr 2021 00:57:40 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcHTB-006qND-MC; Fri, 30 Apr 2021 00:57:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=dzBD5y9U8AaqtIhI1+LChH5t647/b03r/Yl3/RF0raM=; b=JtOo+lh0ZDVRMRM6M5NoDYDsjB
 y1DTmtGDM2ARKGPjQUzwp5aUptlxZtPVEyolB7oPEtbHvhLEkpV6Uh20AYeRj5Z/Ptg4t6EEpQAYD
 00fV0OmujlZTT7N01VZ5AWU050WiaiaYD1SI7gk/gG5ASRLhuT6csnP2DH8ZQ+QVWQ3vKVUlMSvSH
 Bc9yubx21JFh91G0n6VUumK4CCHVQ9m2ZzCn0+B8qobg0LFjrlaUfAdMDp+/Do894UmUCIS057ezJ
 hJkHgXJn7ADOUTKFF35VoAcDwOF6mL7n11PAZkivkneOFYSGR/uiBZxW72xpthYiW65COWWobB5Dk
 BDaMIMxw==;
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcHT8-0013NX-0H; Fri, 30 Apr 2021 00:57:24 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id AB885C8384;
 Fri, 30 Apr 2021 08:57:13 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2750T140649254856448S1619744230489242_; 
 Fri, 30 Apr 2021 08:57:12 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c119bfe221fbe0f0567aca69b659593d>
X-RL-SENDER: cl@rock-chips.com
X-SENDER: cl@rock-chips.com
X-LOGIN-NAME: cl@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 30
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: <cl@rock-chips.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net, jbx6244@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 cl@rock-chips.com, wim@linux-watchdog.org, linux@roeck-us.net,
 jamie@jamieiles.com, linux-watchdog@vger.kernel.org, maz@kernel.org
Subject: [RESEND PATCH v4 07/10] dt-bindings: soc: rockchip: Convert grf.txt
 to YAML
Date: Fri, 30 Apr 2021 08:57:08 +0800
Message-Id: <20210430005708.1821-1-cl@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210429081151.17558-1-cl@rock-chips.com>
References: <20210429081151.17558-1-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210429_175722_446636_0ACBA36F 
X-CRM114-Status: GOOD (  17.50  )
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

From: Liang Chen <cl@rock-chips.com>

Current dts files with 'grf' nodes are manually verified. In order to
automate this process grf.txt has to be converted to YAML.

Add new descriptions for:
"rockchip,rk3568-grf", "syscon", "simple-mfd"
"rockchip,rk3568-pmugrf", "syscon", "simple-mfd"

Signed-off-by: Liang Chen <cl@rock-chips.com>
---
 .../devicetree/bindings/soc/rockchip/grf.txt  | 61 -------------------
 .../devicetree/bindings/soc/rockchip/grf.yaml | 60 ++++++++++++++++++
 2 files changed, 60 insertions(+), 61 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.txt
 create mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.yaml

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.txt b/Documentation/devicetree/bindings/soc/rockchip/grf.txt
deleted file mode 100644
index f96511aa3897..000000000000
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.txt
+++ /dev/null
@@ -1,61 +0,0 @@
-* Rockchip General Register Files (GRF)
-
-The general register file will be used to do static set by software, which
-is composed of many registers for system control.
-
-From RK3368 SoCs, the GRF is divided into two sections,
-- GRF, used for general non-secure system,
-- SGRF, used for general secure system,
-- PMUGRF, used for always on system
-
-On RK3328 SoCs, the GRF adds a section for USB2PHYGRF,
-
-ON RK3308 SoC, the GRF is divided into four sections:
-- GRF, used for general non-secure system,
-- SGRF, used for general secure system,
-- DETECTGRF, used for audio codec system,
-- COREGRF, used for pvtm,
-
-Required Properties:
-
-- compatible: GRF should be one of the following:
-   - "rockchip,px30-grf", "syscon": for px30
-   - "rockchip,rk3036-grf", "syscon": for rk3036
-   - "rockchip,rk3066-grf", "syscon": for rk3066
-   - "rockchip,rk3188-grf", "syscon": for rk3188
-   - "rockchip,rk3228-grf", "syscon": for rk3228
-   - "rockchip,rk3288-grf", "syscon": for rk3288
-   - "rockchip,rk3308-grf", "syscon": for rk3308
-   - "rockchip,rk3328-grf", "syscon": for rk3328
-   - "rockchip,rk3368-grf", "syscon": for rk3368
-   - "rockchip,rk3399-grf", "syscon": for rk3399
-   - "rockchip,rv1108-grf", "syscon": for rv1108
-- compatible: DETECTGRF should be one of the following:
-   - "rockchip,rk3308-detect-grf", "syscon": for rk3308
-- compatilbe: COREGRF should be one of the following:
-   - "rockchip,rk3308-core-grf", "syscon": for rk3308
-- compatible: PMUGRF should be one of the following:
-   - "rockchip,px30-pmugrf", "syscon": for px30
-   - "rockchip,rk3368-pmugrf", "syscon": for rk3368
-   - "rockchip,rk3399-pmugrf", "syscon": for rk3399
-- compatible: SGRF should be one of the following:
-   - "rockchip,rk3288-sgrf", "syscon": for rk3288
-- compatible: USB2PHYGRF should be one of the following:
-   - "rockchip,px30-usb2phy-grf", "syscon": for px30
-   - "rockchip,rk3328-usb2phy-grf", "syscon": for rk3328
-- compatible: USBGRF should be one of the following:
-   - "rockchip,rv1108-usbgrf", "syscon": for rv1108
-- reg: physical base address of the controller and length of memory mapped
-  region.
-
-Example: GRF and PMUGRF of RK3399 SoCs
-
-	pmugrf: syscon@ff320000 {
-		compatible = "rockchip,rk3399-pmugrf", "syscon";
-		reg = <0x0 0xff320000 0x0 0x1000>;
-	};
-
-	grf: syscon@ff770000 {
-		compatible = "rockchip,rk3399-grf", "syscon";
-		reg = <0x0 0xff770000 0x0 0x10000>;
-	};
diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
new file mode 100644
index 000000000000..21a67b9ae59c
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/rockchip/grf.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip General Register Files
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - rockchip,px30-grf
+          - rockchip,px30-pmugrf
+          - rockchip,px30-usb2phy-grf
+          - rockchip,rk3036-grf
+          - rockchip,rk3066-grf
+          - rockchip,rk3188-grf
+          - rockchip,rk3228-grf
+          - rockchip,rk3288-grf
+          - rockchip,rk3288-sgrf
+          - rockchip,rk3308-core-grf
+          - rockchip,rk3308-detect-grf
+          - rockchip,rk3308-grf
+          - rockchip,rk3328-grf
+          - rockchip,rk3328-usb2phy-grf
+          - rockchip,rk3368-grf
+          - rockchip,rk3368-pmugrf
+          - rockchip,rk3399-grf
+          - rockchip,rk3399-pmugrf
+          - rockchip,rk3568-grf
+          - rockchip,rk3568-pmugrf
+          - rockchip,rv1108-grf
+          - rockchip,rv1108-usbgrf
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
+additionalProperties: false
+
+examples:
+  - |
+    pmugrf: syscon@ff320000 {
+       compatible = "rockchip,rk3399-pmugrf", "syscon", "simple-mfd";
+       reg = <0xff320000 0x1000>;
+    };
+
+    grf: syscon@ff770000 {
+       compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
+       reg = <0xff770000 0x10000>;
+    };
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
