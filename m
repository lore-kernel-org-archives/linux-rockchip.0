Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97B94C00140
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 17:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oG095898aMxobGjwapIhoCWIaQPLqIpvtDz4QHFruF0=; b=nzammNLeAZoErO
	OaF8bp0ChGOfVtdcDO+WpMTNff9A2YUoKoGxTZvTTnm+2YFnIdXW7uXIO1ACyV0N6ohlVRPIJn++9
	VMpSnZvxWvYgmGCKpDY7vUgmOG3QjXALknsanwsfzXRnoyux9CJoLQi07UoB4+IbdYqVjeSNQAxl2
	HCVo9Vz2fqpRpy+zKsq+8aCpXqySMiDEvNUd8gC/jxrSzaXzoGR6tLzq6Hbdo18cVTL2EtgZ9tidH
	ebrkcRUB96VNZgOgzKAGPFiL1hhvytaGRLU0A2xVEzmaD0gP9m7b5sdFEcXA67a6BilC+TwUqMoi/
	cVSlni2XwJikt4grqcUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID8G-00EhBd-TT; Sun, 31 Jul 2022 17:53:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID3B-00EeLc-0v
	for linux-rockchip@bombadil.infradead.org; Sun, 31 Jul 2022 17:48:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=vofowt60zIc/lnFVlyI4BeBG85w8rxNk/k1iZ0Ct+8A=; b=Pm7KYD6OLurWX5/d6PKKLCSpAp
	tvs1x0XSZ4WPHxRT2irBNDvYYlj2I6+j1yA1Wem0XFO9DAqM7T7qHumde9udxzN/xrFQ82a9Q6ZPC
	aDMfDPAcQ3m+Ogr0zz1+UI69YhHbmtNzjyWlODspolihYjBwJ8y2CO3D7XXemX58kvVn0wnZed0uE
	Uj0WUsx0Yyc7I3uzdeJ68Sc6zdI7CV1cemkBD40weqxLh7BlBlNomFYkN2oZyWwpqKIZt+KsptgMh
	eMYOXmNDWM+FtdYKjhcJFET0u6haq/lYzi1NaOW9YRYk3K01JJh7re4GDbO4FEquAS91gRSm6ywoo
	eDF584Sw==;
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID35-002DcT-53
	for linux-rockchip@lists.infradead.org; Sun, 31 Jul 2022 17:48:22 +0000
Received: by mail-pl1-x632.google.com with SMTP id m2so1801754pls.4
        for <linux-rockchip@lists.infradead.org>; Sun, 31 Jul 2022 10:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=vofowt60zIc/lnFVlyI4BeBG85w8rxNk/k1iZ0Ct+8A=;
        b=ar8l0q9L46UWX+F9Te/v4KS9Qv+yBtO9qlnaSB7xA56F6wxLpdimuSzgf+Yd4agg6u
         wLLhi/OI2E4eoB5bZez0owlgCLZ1PYl9A+/JQ3Pm7MCrcR1yhCB5N6fqcBaizCykahkV
         yeyvccrWse5G1tIIESVKF1uGfIvQ1d+RxcSfGb4D1nhkHuQ5f5UJ2EmESIr+Zznefr6w
         3YKRUD7t1iN8DJa8de3JLj/gZH45AB2pC1fH3gVLQ+ksBgMdfCMbW+6fOqdt4jeC6gOu
         j2Af2OauFURpdlr8/MiTxSRKgQZ1GA1EGbr++tp+hCVdmH1+zdAVBTGnxiL2NgGyVber
         Ykww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=vofowt60zIc/lnFVlyI4BeBG85w8rxNk/k1iZ0Ct+8A=;
        b=3FyieRezl4RqrnmY6oM2Mux3mZEiKhFmt7buvR0u6k0CLQuBZeHWNL9XwlYGr8R4wE
         qvtmigbNFTD8d5S8yqE0eqRdHbce2RjmcUnktFnbq6TAW7+7M95Q8Gsi1L5jKMBnnN+6
         Qa+71tK619QG9Tb7dwDKxwVpo0ub4ubrxLZsSCvG5IfptVe0W/q8XnRzenGWAjhx2E4Y
         r4FV8B6DDjRE1I0Zzxx02T3ERLf3ciJo36dyazRXabVDDkaX7UI5AQN3iASxoJBMZwpy
         Qc5F3ddD6peG8g0xRZ0vinti3SUmETTwGoPx9neeuV2GY28NAq+j+KFbRbmUcFK7NsjT
         hOpQ==
X-Gm-Message-State: ACgBeo0WWVY4xk/8JCqh/9zLuB9i/+pz+ZA2m8eJze13/WoU3KltpbhU
	wdKktaJNWFEF9Slpcbg7RX6WYg==
X-Google-Smtp-Source: AA6agR4d276bFmsiyju9FRb8KWzEgmWCJbVK/qluicSptnCXw2Eq+I1YDnJA5AFgCC5tAqrvE7lLDQ==
X-Received: by 2002:a17:90a:6b45:b0:1e3:3cfa:3104 with SMTP id x5-20020a17090a6b4500b001e33cfa3104mr15915990pjl.113.1659289693383;
        Sun, 31 Jul 2022 10:48:13 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.48.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:48:13 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	linux-clk@vger.kernel.org,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 09/20] dt-bindings: clock: rockchip: Document RV1126 CRU
Date: Sun, 31 Jul 2022 23:17:15 +0530
Message-Id: <20220731174726.72631-10-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_184819_742644_144B7D27 
X-CRM114-Status: GOOD (  14.13  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Document dt-bindings for Rockchip RV1126 clock controller.

Cc: linux-clk@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- fixed title
- remove '|' in description
- add one example

 .../bindings/clock/rockchip,rv1126-cru.yaml   | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
new file mode 100644
index 000000000000..0998f8b922bd
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rv1126-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RV1126 Clock and Reset Unit
+
+maintainers:
+  - Jagan Teki <jagan@edgeble.ai>
+  - Finley Xiao <finley.xiao@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description:
+  The RV1126 clock controller generates the clock and also implements a
+  reset controller for SoC peripherals.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rv1126-cru
+      - rockchip,rv1126-pmucru
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: xin24m
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the syscon managing the "general register files" (GRF),
+      if missing pll rates are not changeable, due to the missing pll
+      lock status.
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+  - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    cru: clock-controller@ff490000 {
+      compatible = "rockchip,rv1126-cru";
+      reg = <0xff490000 0x1000>;
+      rockchip,grf = <&grf>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
