Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53170C6FA86
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 16:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+tQ9kucM4hUOM2frfQBUeigLAHVyGozFyeTMwdFADAM=; b=cQ3DSHcdgT/ZVj
	Twu1Doi2D6KKRmPd8LBeB9scvlsVcd+Lr97ZwGpBbemxMC02AZX893nfFFJjXnMah0Opfk581MEEk
	0NoPODHM4tK0TLPZkCAOIiSB2rFgYY/T3KnNAyT+yoYi5vy3WXUdHb0g2F3y1kwW4Jr5BfMAAtbYg
	d2wNRISgz325XeFrT+1VDOvOWuGsVpy+qo+pb69TIZjDcp1XezIaaedp8PLRq+N0asa3EqEzW5qsC
	7TVMQQs7hFl4z2MRUjSPWevSgz6FL6naRW9bugC9f7LMLx9qI6mClI1dmcnru4HEl24fnyXag2pI4
	XiRGOe0tZD28eIt+gcKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxX9-007ZbL-Tb; Wed, 07 Sep 2022 16:04:11 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxVn-007Yp5-Gl
	for linux-rockchip@lists.infradead.org; Wed, 07 Sep 2022 16:02:49 +0000
Received: by mail-pj1-x102a.google.com with SMTP id s14-20020a17090a6e4e00b0020057c70943so9560200pjm.1
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Sep 2022 09:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=/8rl6gokx88Kuf6qcH/eMq1owuxgLHmqVncOwj3PuLg=;
        b=YSOnNkg3Uj6/xVTKMm8VlwSDo9BWyHe8bNAOm8UjOhfy5K22RhPCT+IK93C7tR8b4C
         gGipp/JY0hmtmU+jO/UmviIc0F/nl0oF/19dNDIQ0H+Y4hBETh8b04UScMhwRveQPMWr
         OHuZdryZpsJL9qUkQ3+zBmQY/mp8FZW1rziFWf8MhMH2SobpRgrJS5QSdCeLE8Bgyeza
         upmjp8YRDsxE87+0SUEWBTY66E9cBOhUM5Pr/S0qK14IAMI6A0m0WZVW1OcyzaRxcvia
         6chlFvUiV1+HEAi2aOi3soVZiIpjJ9fMwCEoRPC78Rihmf84/VRlzGy1RLZyvy0UzQRN
         MIrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=/8rl6gokx88Kuf6qcH/eMq1owuxgLHmqVncOwj3PuLg=;
        b=VPtmrfwLk2RUWS4RRvEo7sWvuS6n5iFmRvRVYr2wJtVcNQbpjIroWzGFmO7IEcno8E
         FfecpCkGNR5ds/XBxiJs8/xZ2S7VWMghoxyHGGB2ockehrxAwlayS90Uxl+WVKHviNA4
         ImC2/ayzCY2UvmjB5p/NCzR7+QPPMwTM/xijBTYesHTToFJhHofgy3agVuzrcCH04Y4A
         CPsAQq52j2qhHTbipoPf35p4c6aHabnlZvh/YUldCf3nzSTlfs1TF3F0+zNx+SxXfqaW
         dzHb+2dzstZ78CufDVetilVTGGg4V8bTLIXqzJH+LNmcHZm8bqilE67TXbzRsQ35f/Je
         Z3vA==
X-Gm-Message-State: ACgBeo3EO/nxMMUpaXMri7E2joZe0ItyeAw6P4CpZgmntaJdTclIYdyN
	OMRs1/IMFOKoqCuvogsBLJZTdQ==
X-Google-Smtp-Source: AA6agR7O4dt+QfLaTyngTlSpQ1y5IWYzNnAmowN62Ei2fgaeYMZ6E5sAlfhPbzYtvB41SjqhvkB7+w==
X-Received: by 2002:a17:903:516:b0:176:6c04:f15e with SMTP id jn22-20020a170903051600b001766c04f15emr4387178plb.93.1662566563854;
        Wed, 07 Sep 2022 09:02:43 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.184])
        by smtp.gmail.com with ESMTPSA id x13-20020a17090a1f8d00b001f510175984sm14919719pja.41.2022.09.07.09.02.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:02:43 -0700 (PDT)
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
Subject: [PATCH v4 04/13] dt-bindings: clock: rockchip: Document RV1126 CRU
Date: Wed,  7 Sep 2022 21:31:58 +0530
Message-Id: <20220907160207.3845791-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220907160207.3845791-1-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_090247_601421_035241C0 
X-CRM114-Status: GOOD (  14.41  )
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
