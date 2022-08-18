Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26CB7C00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 13:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zRDDI6GawWSY2OIKPnENU0q5GXH0Scgs+JkBkM98TLE=; b=NWKgPkidcYQdhf
	RNZQ4r0wq9yaMcWEequYGpyFORQ5Ya18n975uoullHmhcFz51KlWOwv3/ZeG1wPFhtRAjG9DIsM7z
	yq4H5j5tS5i0344pAAzh0leGovyPOY0XAKGEi6qB1bltcTjs5gs+c3j1ywSrnWF1m5hRpXyawPtDc
	DUf86B3fdPSV3DeLhd3UU1nTUK7iriBN1xMgS0kk2MSVxH0jGd5sQH+Ik506M0nADvPNMpgAlY60g
	Ik4mprk4yOPKDeJCNzbU32DvtdZmhIm4lKcHqjCqcsgKEKAM0n8b285tda2CDpXYRt/6gjoHOiQyd
	C1iBBrPvmG75Qa/fH24g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOfGN-0056So-2S; Thu, 18 Aug 2022 13:08:43 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOeqq-004kCn-I8
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 12:42:22 +0000
Received: by mail-pl1-x62d.google.com with SMTP id jl18so1417002plb.1
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 05:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=0HEKwiXfv3HgP3MOgpoqwQIXfPyMEIo0RbNdJLZlR7U=;
        b=DHyBt4XnA0QoDX1PDWq9dZpIYtFLlzJnC43G6cNAXklZ0dPx1e0EufSfK4IHVemUOJ
         36sKyb8uq8KupJi77+VWDRzfFXBnLzLueLWA2EvYb4shEpWGTFjgYXqMovNFkXwP6Iy2
         ys3dL8WBzNDwecU9Zxk3l+rsEe1MJ/rS453KxZebrPNGYhur18qHrMVwr2WFvPPWA5yy
         bg9LVGnxJ5qeNMDisfELsMM6t/Q+Wh+2PdnEDWE0BmriX+EcEQKR92gzR+PmuvhvP2Wx
         NOvLQhF5/5mnWHhT5h9tHqlMnu6hWraewQd68Abbs5nU72hyebmxz81Wf7OWntOQGF1m
         hJCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=0HEKwiXfv3HgP3MOgpoqwQIXfPyMEIo0RbNdJLZlR7U=;
        b=jvNheGeIyYuy3LxuwqjWyY1TN6raP8LQmn/mDdsmcJ6cd70czWwz9D7Va+bVwZ8K5D
         KihXB+Q+Ryx9sEWmx2ZHD44Qvf5zymdvbM/khCOrU4fdOXhTJ3JX6VwSMsAmidKOScSc
         f84lWLu+JLrrdbfrZFp9Mt2BkqleYG98I64hp35dk0nUbXHrghrTAh4QTAoXfk7RN2rW
         IpvAqM67Fu73kb7EiOJ/SfZv+tFaNdvlXrxZTklPtCcQ2Tnf4VoVha9yyPJ7aZwHWB7E
         wdvLViPEBHIaR3Lc4qKnydYNY2wxeH7ECojGjDvFYkqD2UXAcouf0mlauLE0r2hycySd
         mBJg==
X-Gm-Message-State: ACgBeo1vPrZtMHbYvW0ykDzbnBPAe0VdPlHZOuQz/NOXlHO29g9/PfIJ
	aTBbWKDx7lrRudNrdEWl5Ln4YA==
X-Google-Smtp-Source: AA6agR49qb1OT9tj/zc3izD+LrVoq69EouPAIABOi0hu6q4EZb+LWEVKWJk+6mxDmcQwhiDnFvDOHg==
X-Received: by 2002:a17:90a:e58a:b0:1fa:c67c:6107 with SMTP id g10-20020a17090ae58a00b001fac67c6107mr3039733pjz.50.1660826540035;
        Thu, 18 Aug 2022 05:42:20 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:42:19 -0700 (PDT)
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
Subject: [PATCH v3 10/19] dt-bindings: clock: rockchip: Document RV1126 CRU
Date: Thu, 18 Aug 2022 18:11:23 +0530
Message-Id: <20220818124132.125304-11-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_054220_654948_95904CB4 
X-CRM114-Status: GOOD (  13.82  )
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
