Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C367C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 00:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZ09+wDaTNTIb5I1nmc5+ZX0MvrRKJx/VSGrl/E12+s=; b=uhUrL0AmPQgYxS
	RyHXmghLOZ/9WQlQfKMeacSj3JhCNjdf8t3ai41e1iYfSaTfSv7/Pluec0V8s8IbbP20wqAFzUj5T
	WWmZQ+duoqo6Tg9qku2AcQ4SiIlplKJvXaWO2qON025D+A9LdRPnDO/qFjyxsNoj55g5uk35PBEb2
	bU15lhhJNqQ+bvsvbvfFQpwmPWyMcp5fbHAh+Sl2ooNoHKihK0mRrsxgfnHbQa0GnIm+lsU3bZFJD
	Q8g9H53zEa19w1JiR+aq6MSYix4ESuoaPXFJy8/8FMDD/ledi8waNbyiRv7LO2pNYAYitoNY7ocnL
	XXQsqSMuS5Fl50jRRBUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRNRK-0022ga-IK; Tue, 08 Mar 2022 00:10:58 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRNQZ-0022FR-NK
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 00:10:13 +0000
Received: by mail-pl1-x62a.google.com with SMTP id n15so5530865plh.2
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Mar 2022 16:10:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RSPb7Rmvn1OssvKJPI0IziSzIIo2sB3qARwOV39ea0I=;
 b=WuLu8YOSGE1ta2mDFwulhG3aPQDCgYWhDUrgBB10XJ4QJTkxjbycGlgaSBdUmT4+mU
 jzJTCavo8aPeFfGU2zwHDchA9/MpyV2HKKu5iLHXaDMvPxe+bZasZt6nQnnXNUm/ao/0
 iWFBSjEbIwHr4af/8l/B/tEaZL51BXr7x9Bi0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RSPb7Rmvn1OssvKJPI0IziSzIIo2sB3qARwOV39ea0I=;
 b=HOoF1/s0DkVXADkHWITH4Jo8Flp4WJ+OuHXJx+lgNopuBLAdOrLJvbbyFU8irbBqr1
 UOx7ZywrJS6f3uvfKuMs482wpgXksFJwCQLSNFSKmcjkNFmmHzM8Xj0GnaRVVKgP/zs9
 Dsa7/OuF2CJeF7UxY4WEzGoiOJrBsC7lMpBgRLRqYcHJlKdDAWGE/ZMOm8EEN17+DiOx
 kuMyJL+PakAU5/d/IwzVFjuh7xj5mmPW1UTNI4mQ3twwdfILciDfqhwr+0tob7P1cRO5
 UXt9iIRUGXgsmo7jJqp9D7v6+b0MaQHMxHmjmH6MyewKCQd+m6NzUkJoshTQNAlHjC4d
 VGBg==
X-Gm-Message-State: AOAM533wx0OaLuWsW0fGjsvLx7bAJZv9xg2tl7qVGTe1lgQVRBnnMfSD
 rBrFeMwi4jRigFaJyb7qcUM3QA==
X-Google-Smtp-Source: ABdhPJzfXSzb3//ze5F9Dx48P8uYnbv1sjyCOMJmVwH9LznqPfrGy5MvA4GswqU1czunetHj/ks95A==
X-Received: by 2002:a17:90b:3503:b0:1bf:27c6:3b33 with SMTP id
 ls3-20020a17090b350300b001bf27c63b33mr1647788pjb.225.1646698210815; 
 Mon, 07 Mar 2022 16:10:10 -0800 (PST)
Received: from localhost ([2620:15c:202:201:e551:44dc:2842:57f1])
 by smtp.gmail.com with UTF8SMTPSA id
 o22-20020a056a0015d600b004f71095ed8dsm3816180pfu.78.2022.03.07.16.10.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Mar 2022 16:10:10 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: Lin Huang <hl@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Derek Basehore <dbasehore@chromium.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Brian Norris <briannorris@chromium.org>, Rob Herring <robh@kernel.org>
Subject: [PATCH v3 03/15] dt-bindings: devfreq: rk3399_dmc: Fix Hz units
Date: Mon,  7 Mar 2022 16:09:33 -0800
Message-Id: <20220307160918.v3.3.I9341269171c114d0e04e41d48037fd32816e2d8c@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308000945.706701-1-briannorris@chromium.org>
References: <20220308000945.706701-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_161011_808423_8580049D 
X-CRM114-Status: GOOD (  13.56  )
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
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
---

Changes in v3:
 * Add Reviewed-by, Acked-by

 .../bindings/devfreq/rk3399_dmc.yaml          | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
index 4ca43b76ed51..2904ae4115f3 100644
--- a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
+++ b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
@@ -117,11 +117,11 @@ properties:
 
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
@@ -161,11 +161,11 @@ properties:
 
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
@@ -205,11 +205,11 @@ properties:
 
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
@@ -288,7 +288,7 @@ examples:
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
2.35.1.616.g0bdcbb4464-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
