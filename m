Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73145C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 20:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whKGQAt8oCaslr6LsJzQUyYeeidejWcKEKewtBrLeO8=; b=4z4uhl3NtvG6J0
	op2ppaEsnxjbGMSDqc+Dh+rGRLo4Jvv2BHOmD+PP/G1QmCLmPzvDOWtH0d9MO2BCWEQz/bY7Sedft
	R2LwUY9PK4e5QrDBLBPH7krJu2xBD94DqatCycMucfPcxZ9CZ9i87JTMwklEJzgvNwT5ob4CNMrKh
	bbCOurYeN8Zuqa+6VKfj07Ckfm+Mqab1KQRqPj/qrmzjwRbxvtw8ZyDnN/zaTs9+Dyk1QWb6jp6am
	dp5vln+GKitCJO3kKLBA66epItQtlHXaxnXkuNBrNbfxaCYbxbvyog7Q56CMU++FSYmzWWjC71lzk
	OW1jPXFfzckNC+eQ4Agw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFM2t-007AZJ-0o; Sat, 23 Jul 2022 20:48:19 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLzH-0078TP-8Q
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:44:37 +0000
Received: by mail-pj1-x102b.google.com with SMTP id p6-20020a17090a680600b001f2267a1c84so9275805pjj.5
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nOakTaI+AQ9c8hYlbBuSi2lgANY7KlcsaDbREwlYo3U=;
        b=XB3L6vYthKqs+mQUqbeSLasKZUitsgoAYiyFnwJKrl8q29Zg9uRH2B50xD2iRA7fcC
         U5b/Fqb54ET61FV/sjZq+a5D29fp43XRg6JAiEPz/zIshAixvIvkEOv12a5DkUaczbWx
         tSNcBlAp7EjDtQvwT6oX0LvI9gmAI9OCd9RVx28jCod8sG9enImAfB8YNYw52gbpQaOt
         UWhjLCCueeXv5bmw5O44nMiMC3gsFbajtYHBLOpsqZ4Pni+AldOYx/aMNg7itdUb56qH
         e6h7ttz3Dc7lZwUwlSA3o+KJhDQ6W8K0snoT3SqqbqFaU7/FYbM2od7f0J4gwzHpsLMc
         ZtRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nOakTaI+AQ9c8hYlbBuSi2lgANY7KlcsaDbREwlYo3U=;
        b=I3YB6j2bmN2H+eOwu6sGY7TrrXVL8shgRMsVqLkeMjLdCz04O9mAZspOvEvYH9ypJw
         rDkEBs460VYjF/zIFd4xtLNY4ByDLm8IzDJ2LUCiFEk8yHiuFU76KvqeqxhhWFrCkQ6e
         /5v3TzgAZp8WhJ1vNcLgbl53uoHdzPp0t8fe+O5lnXXOgpWMOylUBORfVTAyyvoTCnd3
         xAgy9cZ4mdfMOdEIZYNWHKNBCD9nPFWpJ/d80ni+cBKIBc4GVLdYevYY62QrARylx90t
         0HeRrT9xBRB28Rhzo4cVKHfkWm0IM+GaNVw/9I4c2t0cgiY9h8QbgSHTfyPV2HhpUZvb
         i3Ew==
X-Gm-Message-State: AJIora/SsjsQmKx42h+fzGG5NZhSyP2VV+NqG48A06w08N85hPo3SX04
	iYeuG6pURV3Gm+89SQWHnTsyjQ==
X-Google-Smtp-Source: AGRyM1tgP7HPTnWd7m1Cx1NOAVi0mKgWERWLGEuR2l+Hm5D8s4w1RzjndvJwT+uJ741lsCIJiNxtXw==
X-Received: by 2002:a17:90a:c17:b0:1f0:6c72:e3b1 with SMTP id 23-20020a17090a0c1700b001f06c72e3b1mr6561224pjs.128.1658609074608;
        Sat, 23 Jul 2022 13:44:34 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.44.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:44:34 -0700 (PDT)
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
	Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 09/22] dt-bindings: clock: rockchip: Document RV1126 CRU
Date: Sun, 24 Jul 2022 02:13:22 +0530
Message-Id: <20220723204335.750095-10-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134435_338224_659856A3 
X-CRM114-Status: GOOD (  13.36  )
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
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../bindings/clock/rockchip,rv1126-cru.yaml   | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
new file mode 100644
index 000000000000..cf4f11709125
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rv1126-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ROCKCHIP RV1126 Family Clock Control Module Binding
+
+maintainers:
+  - Jagan Teki <jagan@edgeble.ai>
+  - Finley Xiao <finley.xiao@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
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
+    pmucru: clock-controller@ff480000 {
+      compatible = "rockchip,rv1126-pmucru";
+      reg = <0xff480000 0x1000>;
+      rockchip,grf = <&grf>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
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
