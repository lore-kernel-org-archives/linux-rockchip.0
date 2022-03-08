Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C65FC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mdclg4T+XpluuVYaGDQuMD7CLJaaUnoWmVSBnKYlj4s=; b=kK3btebzOAVdN+
	XePmIszbjA6oqGbZuGDRAleWd7dIaf6e8wcxn+MCykzH5rQFOPAG4Fqu+L18ckphSBi6kKSJgZ5+A
	cYTBzuU4Q7tt7d34IdWU1TH+jVRmDIrW1jaNewDD8xJ90j6lMwe/fpu7ncWIRP4TwlAwHCqoJBl3o
	q5CYfW64wXj7aWkGTmw46sus2RuGy+VHOPVP7n4cZkMNbwOGjy7bwRqTRBXRd5ufnzFOZqwH7lWPU
	5IV1ZCw+We0+6onF8nEPBZyKfDwoUaMQJU3iKkYIXqXXVqaCwMenha5wuBGUMdsSaTZ+ns7JK5A9F
	UHoRVEtHnrTkXqLLdLbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRfEQ-005tBY-Io; Tue, 08 Mar 2022 19:10:50 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRfCx-005sEJ-CP
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 19:09:21 +0000
Received: by mail-pg1-x529.google.com with SMTP id o26so17274465pgb.8
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 11:09:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aQBXnYV77u8nGKn/MzXkBt16/3DAVGbxcTfsybprNzY=;
 b=mCBxWxx6dpCtH8y2eYwy4bA86huPX44nffjFiMfYcPzNPGzEFjY5/isggSYFRHymfA
 SuD4SuNPjNsJ0gkJYzcGgdErOmEBtQK42eAtTXzl0CzUbbb3DU6mP7Wjcl3SNwJ+5LLY
 wSdrD/ZIqmJZP1nklPmE9Wmp+ikm+Mt4f1pKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aQBXnYV77u8nGKn/MzXkBt16/3DAVGbxcTfsybprNzY=;
 b=xejG2wNkhd5bMHzqX6OXMqrB5GVXLvZGNzpCOxRmONcauJILVjSdZukTdXpSzWDu5A
 PB4ccuZExlHym+lc4HYk3wfmLIGBh4tKyNTZ3Fpyum6SSeyuxFLR2pzbS4udfeZsqICB
 qEHtjnwaOGOQAIz7wu/8Xg08S8uXQMVbsqs+5HZYGENYZ4PFFd4dXwWvKVnmjXwwFmLy
 9FjLlp62IEfW4ZoX9hR3L5ZQyvDSP7yxyWxfqAbC7m2wVxqhdpAta/l5i/v5NV50M5JK
 EBJvM9YROg9u8rlCPRHUfaLcM+XxsbxhXkx5d70ACmZizlzXXLECYnBFo3g3IN0d4aV3
 bxZQ==
X-Gm-Message-State: AOAM531y3O5AmYqtyerVHwecB1p3Td/5o/EeLcZmIBwUr1KPso7j17/v
 RhwPvE0zVnjnJnx2E1KmCrseJg==
X-Google-Smtp-Source: ABdhPJy2G8NKjzBfMuq+zr/kLWgKLJwymWEQdXwGWRkQT7dOHPkeLllLbPtznYqzy9tlAdivDeqCgA==
X-Received: by 2002:a05:6a00:1490:b0:4f6:f2bd:1dd3 with SMTP id
 v16-20020a056a00149000b004f6f2bd1dd3mr13949465pfu.58.1646766558818; 
 Tue, 08 Mar 2022 11:09:18 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b3e3:a188:cbfc:3a0e])
 by smtp.gmail.com with UTF8SMTPSA id
 p186-20020a62d0c3000000b004f6fa49c4b9sm9110384pfg.218.2022.03.08.11.09.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Mar 2022 11:09:18 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org, Brian Norris <briannorris@chromium.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH v4 04/15] dt-bindings: devfreq: rk3399_dmc: Specify idle
 params in nanoseconds
Date: Tue,  8 Mar 2022 11:08:50 -0800
Message-Id: <20220308110825.v4.4.I01c6a2b2db578136686b42d463af985cfdff2fd9@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308190901.3144566-1-briannorris@chromium.org>
References: <20220308190901.3144566-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_110919_494355_8660191F 
X-CRM114-Status: GOOD (  13.47  )
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

It's inefficient to use the same number of cycles for all OPPs, since
lower frequencies make for longer idle times. Let's specify the idle
time instead, so software can pick the optimal number of cycles on its
own.

NB: these bindings aren't used anywhere yet.

Signed-off-by: Brian Norris <briannorris@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---

Changes in v4:
 * Use 'default:'

Changes in v3:
 * Add Reviewed-by

Changes in v2:
 * New patch

 .../rockchip,rk3399-dmc.yaml                  | 51 +++++++++++++++++--
 1 file changed, 46 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
index 96efb23cfc0f..5228a32b5962 100644
--- a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
@@ -54,42 +54,52 @@ properties:
       being used.
 
   rockchip,pd_idle:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       Configure the PD_IDLE value. Defines the power-down idle period in which
       memories are placed into power-down mode if bus is idle for PD_IDLE DFI
       clock cycles.
+      See also rockchip,pd-idle-ns.
 
   rockchip,sr_idle:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       Configure the SR_IDLE value. Defines the self-refresh idle period in
       which memories are placed into self-refresh mode if bus is idle for
       SR_IDLE * 1024 DFI clock cycles (DFI clocks freq is half of DRAM clock).
+      See also rockchip,sr-idle-ns.
     default: 0
 
   rockchip,sr_mc_gate_idle:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       Defines the memory self-refresh and controller clock gating idle period.
       Memories are placed into self-refresh mode and memory controller clock
       arg gating started if bus is idle for sr_mc_gate_idle*1024 DFI clock
       cycles.
+      See also rockchip,sr-mc-gate-idle-ns.
 
   rockchip,srpd_lite_idle:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       Defines the self-refresh power down idle period in which memories are
       placed into self-refresh power down mode if bus is idle for
       srpd_lite_idle * 1024 DFI clock cycles. This parameter is for LPDDR4
       only.
+      See also rockchip,srpd-lite-idle-ns.
 
   rockchip,standby_idle:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       Defines the standby idle period in which memories are placed into
       self-refresh mode. The controller, pi, PHY and DRAM clock will be gated
       if bus is idle for standby_idle * DFI clock cycles.
+      See also rockchip,standby-idle-ns.
 
   rockchip,dram_dll_dis_freq:
     deprecated: true
@@ -272,6 +282,37 @@ properties:
       strength.
     default: 60
 
+  rockchip,pd-idle-ns:
+    description:
+      Configure the PD_IDLE value in nanoseconds. Defines the power-down idle
+      period in which memories are placed into power-down mode if bus is idle
+      for PD_IDLE nanoseconds.
+
+  rockchip,sr-idle-ns:
+    description:
+      Configure the SR_IDLE value in nanoseconds. Defines the self-refresh idle
+      period in which memories are placed into self-refresh mode if bus is idle
+      for SR_IDLE nanoseconds.
+    default: 0
+
+  rockchip,sr-mc-gate-idle-ns:
+    description:
+      Defines the memory self-refresh and controller clock gating idle period in nanoseconds.
+      Memories are placed into self-refresh mode and memory controller clock
+      arg gating started if bus is idle for sr_mc_gate_idle nanoseconds.
+
+  rockchip,srpd-lite-idle-ns:
+    description:
+      Defines the self-refresh power down idle period in which memories are
+      placed into self-refresh power down mode if bus is idle for
+      srpd_lite_idle nanoseonds. This parameter is for LPDDR4 only.
+
+  rockchip,standby-idle-ns:
+    description:
+      Defines the standby idle period in which memories are placed into
+      self-refresh mode. The controller, pi, PHY and DRAM clock will be gated
+      if bus is idle for standby_idle nanoseconds.
+
 required:
   - compatible
   - devfreq-events
@@ -295,11 +336,11 @@ examples:
       clock-names = "dmc_clk";
       operating-points-v2 = <&dmc_opp_table>;
       center-supply = <&ppvar_centerlogic>;
-      rockchip,pd_idle = <0x40>;
-      rockchip,sr_idle = <0x2>;
-      rockchip,sr_mc_gate_idle = <0x3>;
-      rockchip,srpd_lite_idle = <0x4>;
-      rockchip,standby_idle = <0x2000>;
+      rockchip,pd-idle-ns = <160>;
+      rockchip,sr-idle-ns = <10240>;
+      rockchip,sr-mc-gate-idle-ns = <40960>;
+      rockchip,srpd-lite-idle-ns = <61440>;
+      rockchip,standby-idle-ns = <81920>;
       rockchip,ddr3_odt_dis_freq = <333000000>;
       rockchip,lpddr3_odt_dis_freq = <333000000>;
       rockchip,lpddr4_odt_dis_freq = <333000000>;
-- 
2.35.1.616.g0bdcbb4464-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
