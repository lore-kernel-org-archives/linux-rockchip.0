Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8B82ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 16:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8fWQzhFi15Bg+oADVJf/SnQFm2/A6IPlpkNlDuuD+8=; b=2lifiBpMvUQwYC
	s3+QwxotBRxU8BSMtetLXTGp8dXpDd3Y4eHK5AyJatSPf4u2X1+eM8bE4H0ylat0CpQhn0Sh4iuEl
	myeJ46CETXb2LfRw9iYCuQwyvHcx8Ca5anuJK2KAUjjULdTZlu/hMw+WVmGuYEURRzGN+nZan1fsE
	hOeO2F24Ht8UcgzwZXC6K5oAWr6j/XPOKk+hYMIPkV3GEO4po3PWOXw/yWODLr3B/eZ8zaylknPMK
	3Lw4FGquv3xJ/SNmPh5ftXhsHSTKRrLHjLZY/6oxVwRKPAftV8oBbNyNWAbTJ9YFRQZCFotJ/6K5z
	mNeIHIIqlFCXOE6o+ReA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYrvA-00Dbkm-28; Thu, 15 Sep 2022 16:41:00 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYruT-00DbSL-NW
	for linux-rockchip@lists.infradead.org; Thu, 15 Sep 2022 16:40:19 +0000
Received: by mail-pf1-x42a.google.com with SMTP id w2so8333239pfb.0
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Sep 2022 09:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=3OIPMzj4iiIUGp+iaz7aXIQIdtVpCgsrY3rjXGlHnBM=;
        b=scDo2qu/3d9zD1JFvoySII91Bt4B0ahkCEeVPBGvi6EMzDwrUTjmjb8qqF5iV6PJLt
         Q0tilwKZZaMdeEnJ5/49PRYU3l2PVqACG0W15fAnOB07lNofykFEp65DYOleHxSip6ir
         8YtNMbZoui/nLCs6o+UCQASEOM7aPsRGN6uzpehyaVmDjD7ixCOTxn10ezcqbkVn5qwn
         uHDJpRt9SgdIUvK/AetCg0wqYlgxxnwe2Tan8ZzZOw4pRJJe5fTXarf5LGfzAzxIGngK
         d+5dCzbLNG2K5gdwJMrLZmpKI9GD654+b6cWYo7qV7VewUBBfLIjgnZv27oXLrwxslnA
         xJeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=3OIPMzj4iiIUGp+iaz7aXIQIdtVpCgsrY3rjXGlHnBM=;
        b=tB3Zeex1iDmdDyTndktJ9tbB4eF+oe02r5WFkP5MbpkkTXmhp6mbbTfTxuJ0lOuX2t
         oQBFLlHGu2fLYl5JAkIP3aqqZPxJmhNUIspzuTAtJxVT55DkZ7LrVHZdcsYlXCL+Z837
         UV21FJHB7LpInnK4lBQ7wqKnLnscjBLRaq1v+Q3sC4Ci8WzaBRZJ9QjwCgGNqdR7WgRj
         bofcWCkaBzTZLLzlE9fLcvtXf/IxjvIfDEFItAbfZzkBh2B3/kHTqRlYh41SreTOZBvG
         MoYdw8O7tLAEPlZefdinM1kjNt0jnsdXsSLBE71rhAQdzHRv6i613TIe/LLIaqAX64Ut
         63SA==
X-Gm-Message-State: ACrzQf1n8tEhlCTLvXZMZRVcqnYhxt2fHHIKw1IERloMAU7qv1qbrYI5
	SjU9cN3QXBxLQffJlwtrgwNYXg==
X-Google-Smtp-Source: AMsMyM5r8FQISwAMyFiX8EKegG1Gk+rdXDrmQjySQnI8vcyS6UAFWiqS1xz5yttKhQMBY40WWHtJWA==
X-Received: by 2002:a05:6a00:a83:b0:542:7116:32a8 with SMTP id b3-20020a056a000a8300b00542711632a8mr281389pfl.79.1663260016255;
        Thu, 15 Sep 2022 09:40:16 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:f820:a732:fc7f:74df])
        by smtp.gmail.com with ESMTPSA id x21-20020aa78f15000000b00540f3ac5fb8sm12841652pfr.69.2022.09.15.09.40.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 09:40:15 -0700 (PDT)
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
Subject: [PATCH v5 3/6] dt-bindings: clock: rockchip: Document RV1126 CRU
Date: Thu, 15 Sep 2022 22:09:44 +0530
Message-Id: <20220915163947.1922183-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220915163947.1922183-1-jagan@edgeble.ai>
References: <20220915163947.1922183-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_094017_772779_1F355D34 
X-CRM114-Status: GOOD (  14.24  )
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
Changes for v5:
- none
Changes for v4:
- rebase on -next 
Changes for v3:
- none
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
