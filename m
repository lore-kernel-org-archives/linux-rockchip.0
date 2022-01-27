Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 445CDC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 23:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7EAnP9yACsSEVCH6ZrZTImzCRpRyOb6wZH/o47KDIDI=; b=J9o7S7i1Gulhsg
	ePSfgt1lYNnG2LqLnh0V7lhkQ3xPlkYZX4KnBPRS28IxtfHo9kKDIobx7Yq8uuix7gRFJmkJuJHDh
	yTNlvX+gl6z5kvo2Qd+o3GlvVo3xA2/wsAxPhUNa+Sg++BorABINFoeCfzPm1EnDqJQTcwfgyMxHy
	vUmxXUV8MtxwQKksRn9HopozflAF+G+MGRX50h/BUjSz0eGPswiLpGXFqivr1Rw0helHC2uqoWE0c
	tTE9uM6htAtwJBCeUjkc/h0nB5yQEZIzZ8AWaSPZAYgjwuT1xtjPHlkkiuEOn4dJ0wuaCk/IE7vRw
	Y7sCJpZPRLlfIbVhXnMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDDuR-00HHIM-2K; Thu, 27 Jan 2022 23:10:31 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDDsZ-00HGMH-Ah
 for linux-rockchip@lists.infradead.org; Thu, 27 Jan 2022 23:08:36 +0000
Received: by mail-pj1-x1033.google.com with SMTP id
 b1-20020a17090a990100b001b14bd47532so4785295pjp.0
 for <linux-rockchip@lists.infradead.org>; Thu, 27 Jan 2022 15:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PIXY+sEGqfziH4n+3nglkYpU71hUD2jbkDapelJUYx4=;
 b=VHdpreI16umQb0mYgJNYwcpXLMOYb9t5rWTJ5lF4m9dkAlOLQJbt8IUssF2/vzGhhu
 P2J4/IhQS1aBIC7OrTZ1rtXRz+BfKAgWlbPsQXOeqn/lbT032Hn/Q9FuFAS2EqI91NEL
 qkeLOxEtvhwyVPeocb+jYET3MYH1WQ8LLra/E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PIXY+sEGqfziH4n+3nglkYpU71hUD2jbkDapelJUYx4=;
 b=fZMdHn89Ph54gSzhsevtbZvDZnJM0F5xoRa/kj2pFPDpcrhhpFzSxDogzG6uURdVJ4
 K0S2KgbOMeA5Ka75CO1/YOpRDiSK3lmL5LuhrgYjYmF+k4cUuiq6AROIXjGDWtaJX0a0
 nVPHVXCn/FEqCpunag6o5P+2mPBNk3NMrvsPVj264QiTcjKnnDBUPi46NizemVWCbYGR
 cL6BLjfqBgn9uEkBSQI5Vt2djS03tplXd26KhgvaOqcpcOJzC2b3s6lajLDFzXdgypUu
 Iy0gVWGusBuy4051VUIgVMeEesTKDulIqhUqLBwIq6ZBmvXTTpNIiU5UAZmRGQwbFsny
 j6vQ==
X-Gm-Message-State: AOAM533ph38uO0aNIhhRqXdgXeOunjKG3FZSmxKKh8Phwtv1hUBu4YHM
 /UDmHsWuhTcoroR2dGf5aESLxw==
X-Google-Smtp-Source: ABdhPJyOEdExuVH8zC2uGNPOjViFehIsUDjflPA1+PxmuS5k/khzsp0p8n9ZntEMyywxRWObRePXqQ==
X-Received: by 2002:a17:90b:1983:: with SMTP id
 mv3mr6659930pjb.222.1643324914114; 
 Thu, 27 Jan 2022 15:08:34 -0800 (PST)
Received: from localhost ([2620:15c:202:201:723d:38a9:9e7f:3435])
 by smtp.gmail.com with UTF8SMTPSA id h10sm4000716pfv.31.2022.01.27.15.08.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Jan 2022 15:08:33 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 05/15] dt-bindings: devfreq: rk3399_dmc: Add more
 disable-freq properties
Date: Thu, 27 Jan 2022 15:07:16 -0800
Message-Id: <20220127150615.v2.5.I382d4de737198ea52deb118c9bdc4d93d76e009e@changeid>
X-Mailer: git-send-email 2.35.0.rc0.227.g00780c9af4-goog
In-Reply-To: <20220127230727.3369358-1-briannorris@chromium.org>
References: <20220127230727.3369358-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_150835_416968_0C0DC7BE 
X-CRM114-Status: GOOD (  12.92  )
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

DDR DVFS tuning has found that several power-saving features don't have
good tradeoffs at higher frequencies -- at higher frequencies, we'll see
glitches or other errors. Provide tuning controls so these can be
disabled at higher OPPs, and left active only at the lower ones.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v2:
 - hyphens, not underscores
 - *-hz units, and drop the types definition

 .../bindings/devfreq/rk3399_dmc.yaml          | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
index 8786b7fa9b28..afa058c52c0b 100644
--- a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
+++ b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
@@ -299,6 +299,38 @@ properties:
       self-refresh mode. The controller, pi, PHY and DRAM clock will be gated
       if bus is idle for standby_idle nanoseconds.
 
+  rockchip,pd-idle-dis-freq-hz:
+    description:
+      Defines the power-down idle disable frequency in Hz. When the DDR
+      frequency is greater than pd-idle-dis-freq, power-down idle is disabled.
+      See also rockchip,pd-idle-ns.
+
+  rockchip,sr-idle-dis-freq-hz:
+    description:
+      Defines the self-refresh idle disable frequency in Hz. When the DDR
+      frequency is greater than sr-idle-dis-freq, self-refresh idle is
+      disabled. See also rockchip,sr-idle-ns.
+
+  rockchip,sr-mc-gate-idle-dis-freq-hz:
+    description:
+      Defines the self-refresh and memory-controller clock gating disable
+      frequency in Hz. When the DDR frequency is greater than
+      sr-mc-gate-idle-dis-freq, the clock will not be gated when idle. See also
+      rockchip,sr-mc-gate-idle-ns.
+
+  rockchip,srpd-lite-idle-dis-freq-hz:
+    description:
+      Defines the self-refresh power down idle disable frequency in Hz. When
+      the DDR frequency is greater than srpd-lite-idle-dis-freq, memory will
+      not be placed into self-refresh power down mode when idle. See also
+      rockchip,srpd-lite-idle-ns.
+
+  rockchip,standby-idle-dis-freq-hz:
+    description:
+      Defines the standby idle disable frequency in Hz. When the DDR frequency
+      is greater than standby-idle-dis-freq, standby idle is disabled. See also
+      rockchip,standby-idle-ns.
+
 required:
   - compatible
   - devfreq-events
@@ -330,4 +362,9 @@ examples:
       rockchip,ddr3_odt_dis_freq = <333000000>;
       rockchip,lpddr3_odt_dis_freq = <333000000>;
       rockchip,lpddr4_odt_dis_freq = <333000000>;
+      rockchip,pd-idle-dis-freq-hz = <1000000000>;
+      rockchip,sr-idle-dis-freq-hz = <1000000000>;
+      rockchip,sr-mc-gate-idle-dis-freq-hz = <1000000000>;
+      rockchip,srpd-lite-idle-dis-freq-hz = <0>;
+      rockchip,standby-idle-dis-freq-hz = <928000000>;
     };
-- 
2.35.0.rc0.227.g00780c9af4-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
