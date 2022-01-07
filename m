Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DACB4C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jan 2022 23:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FYj4vgy0WAnMf2ix7dGlzg7fP54TZty1m1k9KO87/x0=; b=Q5Tw49oE7/gl9J
	bU42eyNrddPhIfihHYQV420cuBMo5MzxNepjVd3X2E6hOIIwdE6YjRPUlVyNzyjZ8gkV9BrZ8uu5S
	kgQCRI3vdmBEHYM88QQJFJ0RWVBlolA4sfMJMvY2wxTOdENhVBJx6/2To20G0WWUd7R2Wly6GRjTN
	ps21mOGTR03BRYVP5R0CUtIq74yg9TKGw0+3UK/1e8YGGIBXWkSEkgS3Z3K5gDAZCvlkjcMEK8ePE
	1waF579vb8DgtmwILhr61VfKuTuYRVxtDCerdZKD0sL1PVe144TVJ1u6/+CsnQ3MbfqrYRerX9I2m
	MefEbmq1B2ukL8vPamBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5z4I-005ZNx-Lt; Fri, 07 Jan 2022 23:54:46 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5z3A-005Ylh-GQ
 for linux-rockchip@lists.infradead.org; Fri, 07 Jan 2022 23:53:39 +0000
Received: by mail-pf1-x432.google.com with SMTP id s15so6519204pfk.6
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jan 2022 15:53:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1suEizrMvGP6y4nHTdrMBY8Z/9qqxnd7nZ3EYSd9DWU=;
 b=A+81pitwf4PEew7O1yF2AVQH4hy4VElUERoh0lH7dAt9CYBcL5IVQGqu0ocnzLyfVa
 rawQWefahy0AB4l3rc/7qRAZyb/cZwqfd34NwkWymbSSwBzlg0JFQVn87jFdU+jctCp6
 uw+4WcHpToLNhSrZp/fpUJf/SS87jmUaM3cG4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1suEizrMvGP6y4nHTdrMBY8Z/9qqxnd7nZ3EYSd9DWU=;
 b=coqiwBtz8xo107Obc78TRStSTe3zMAxKiZ0BGTJyFfMEEIhzqqI45fimX0d+YnmH2z
 vJnIYVNWsJV0zyDK+gZTKtfIa8A/v8i6v6xqzvTOhj15x9HUwSWfFs8rNzMTWOpV5kKg
 NJLUH0WAb4iiYe+jqXm6L9KoeV5aGhlSiV3E7RCplWFfHu2PKdmRm0lve7jOZJptwXrA
 +wOY3l1wKv2MKcfOUrlvMGxWFWQJ3MM9zV3ZhOREsIzFYcDLBOtqu/S29bqgb9NIoBbY
 dJnEENUOvAoRHSUo40cWDGiPE/VUSAPD62WTZ1O4GApzUtAlh2M/wQfSbHsUl4j4OYXj
 OV5g==
X-Gm-Message-State: AOAM5312SaRDTYkjw3ZN+52PnVqo4nw5sqOQM+zZEJ+7T5ini9qU18BO
 /X/XrmY71bmUYc5t3Ek+wgQ+Tg==
X-Google-Smtp-Source: ABdhPJxds0fohPEqyTNsNoc8pOn/hFT5GWdvhrX8aPm+onPVVfGwVlzNPUBPKSNLxkkrxA9o00AxHg==
X-Received: by 2002:a63:7d0a:: with SMTP id y10mr4111864pgc.533.1641599615668; 
 Fri, 07 Jan 2022 15:53:35 -0800 (PST)
Received: from localhost ([2620:15c:202:201:db:1c60:693f:c24e])
 by smtp.gmail.com with UTF8SMTPSA id h15sm59512pfq.0.2022.01.07.15.53.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 07 Jan 2022 15:53:35 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
 Derek Basehore <dbasehore@chromium.org>, linux-kernel@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH 03/10] dt-bindings: devfreq: rk3399_dmc: Fix Hz units
Date: Fri,  7 Jan 2022 15:53:13 -0800
Message-Id: <20220107155215.3.I9341269171c114d0e04e41d48037fd32816e2d8c@changeid>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
In-Reply-To: <20220107235320.965497-1-briannorris@chromium.org>
References: <20220107235320.965497-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_155336_661251_71CB9955 
X-CRM114-Status: GOOD (  13.09  )
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

The driver and all downstream device trees [1] are using Hz units, but
the document claims MHz. DRAM frequency for these systems can't possibly
exceed 2^32-1 Hz, so the choice of unit doesn't really matter than much.

Rather than add unnecessary risk in getting the units wrong, let's just
go with the unofficial convention and make the docs match reality.

A sub-1MHz frequency is extremely unlikely, so include a minimum in the
schema, to help catch anybody who might have believed this was MHz.

[1] And notably, also those trying to upstream them:
https://lore.kernel.org/lkml/20210308233858.24741-3-daniel.lezcano@linaro.org/

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 .../bindings/devfreq/rk3399_dmc.yaml          | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
index 6bb411dddb7b..2c871c57fd97 100644
--- a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
+++ b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
@@ -128,11 +128,11 @@ properties:
 
   rockchip,ddr3_odt_dis_freq:
     $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1000000  # In case anyone thought this was MHz.
     description:
       When the DRAM type is DDR3, this parameter defines the ODT disable
-      frequency in MHz (Mega Hz). When the DDR frequency is less then
-      ddr3_odt_dis_freq, the ODT on the DRAM side and controller side are both
-      disabled.
+      frequency in Hz. When the DDR frequency is less then ddr3_odt_dis_freq,
+      the ODT on the DRAM side and controller side are both disabled.
 
   rockchip,ddr3_drv:
     deprecated: true
@@ -172,11 +172,11 @@ properties:
 
   rockchip,lpddr3_odt_dis_freq:
     $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1000000  # In case anyone thought this was MHz.
     description:
       When the DRAM type is LPDDR3, this parameter defines then ODT disable
-      frequency in MHz (Mega Hz). When DDR frequency is less then
-      ddr3_odt_dis_freq, the ODT on the DRAM side and controller side are both
-      disabled.
+      frequency in Hz. When DDR frequency is less then ddr3_odt_dis_freq, the
+      ODT on the DRAM side and controller side are both disabled.
 
   rockchip,lpddr3_drv:
     deprecated: true
@@ -216,11 +216,11 @@ properties:
 
   rockchip,lpddr4_odt_dis_freq:
     $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1000000  # In case anyone thought this was MHz.
     description:
       When the DRAM type is LPDDR4, this parameter defines the ODT disable
-      frequency in MHz (Mega Hz). When the DDR frequency is less then
-      ddr3_odt_dis_freq, the ODT on the DRAM side and controller side are both
-      disabled.
+      frequency in Hz. When the DDR frequency is less then ddr3_odt_dis_freq,
+      the ODT on the DRAM side and controller side are both disabled.
 
   rockchip,lpddr4_drv:
     deprecated: true
@@ -291,7 +291,7 @@ examples:
       rockchip,sr_mc_gate_idle = <0x3>;
       rockchip,srpd_lite_idle = <0x4>;
       rockchip,standby_idle = <0x2000>;
-      rockchip,ddr3_odt_dis_freq = <333>;
-      rockchip,lpddr3_odt_dis_freq = <333>;
-      rockchip,lpddr4_odt_dis_freq = <333>;
+      rockchip,ddr3_odt_dis_freq = <333000000>;
+      rockchip,lpddr3_odt_dis_freq = <333000000>;
+      rockchip,lpddr4_odt_dis_freq = <333000000>;
     };
-- 
2.34.1.575.g55b058a8bb-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
