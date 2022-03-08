Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73E25C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 19:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nuG+03PhY7lliG4it7b0llpRQUd3xe/ubKXhI+GcMZk=; b=kEih5LwvxlxZ5i
	Mixv/d894nDO6k2gnyVKw+b/uudfdeLKiLdwOhHMy4Q/T+QIrjGcw+AyP66pMNaIKJ1glvKrcnYpX
	J0ixZuw/UxBJx9hW7p7l0KOfwRN8/vXaTHOxAUrXe+2g9Cu1lPxuy8hHfWwyO1HSGkVavW+ODH+GH
	zlePoZ0ocDnOiiGDJEDnaFsdorXmbQqkBY+rhSmC8rkjQv+Jj0juh9pjsGsMbhhxXt6cJtAxEy+I0
	WoeaY3zZ0rxqSRdRj8/JdNB1IAuTcu2evfjw3OD00fAdvf5Xo7Zvpyw23BkZreWLNNYx8oJNlqgbM
	rlHKSshHrGEJ5fh3NRIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRfEP-005tB0-7I; Tue, 08 Mar 2022 19:10:49 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRfCv-005sCh-Bs
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 19:09:19 +0000
Received: by mail-pj1-x102e.google.com with SMTP id
 c16-20020a17090aa61000b001befad2bfaaso214968pjq.1
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 11:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TukPsTakLeJLLpOHxj5U6zbUOX+HpPNC5juckJdtkGc=;
 b=bG90AlQ35R976HVEt3EiNjnAAZRltYCer7lgVDl2CBxgHxRHT0U5M9YdzxVk2mmKI9
 uQHr+VZU3Zt9PDWsu7fFhhs3KzeXXsSJ5i7iH7lu/27aopmKU8nL5QrBZ6E1jcyH5fnY
 aNd4uJJJKIWzW744O3mt/ZSmLh6igdfg7V/IA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TukPsTakLeJLLpOHxj5U6zbUOX+HpPNC5juckJdtkGc=;
 b=5+Us3rwzJ7x00NXrHmAOAuGtsCBiaC2wW7rDn3PzVGsy+WyDxRqCAeun9y5aQNA4Ev
 YEZSxJG67htKo2dqK4mp1ew18Gztr16S8xPk1xXdkJnr76YrXHUo44WkqU8aT5HKbwkp
 X8P/BXnIdWY/k44Sc3Or5+f+mCAche5Qb57YnLCIAfh7BC0lKRHmTXDbUKLq3MkWpDh0
 GQYPFEepGmQUMICSTjdlIXfEInmW18PeK7AY2PQblguhcoe6UDZ6sJ2tQKMCgpfah9Si
 5dobbOiFiTANdqs/7E+LQ3CXecURFAAIHdSWYqZForbuQo0AT9HMTXmBnkpxtYxkz5cL
 kJxw==
X-Gm-Message-State: AOAM5307pDFo/cf7/EkPm20s8zS04LJq2QN4tJzU0VlxWa9mwd8coPFI
 Ez/b4mfkeNaaUaAfF6ZWzUGHKg==
X-Google-Smtp-Source: ABdhPJykCBYHNRLZLOxaBgcOcb+HYAE6UHeIN2/NgAuMxlP9SyrFIHZjXykkIWIaxv9ICBnq57ZimQ==
X-Received: by 2002:a17:902:dad2:b0:151:f895:9c31 with SMTP id
 q18-20020a170902dad200b00151f8959c31mr7535212plx.93.1646766556509; 
 Tue, 08 Mar 2022 11:09:16 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b3e3:a188:cbfc:3a0e])
 by smtp.gmail.com with UTF8SMTPSA id
 d7-20020a056a00244700b004e1300a2f7csm20703284pfj.212.2022.03.08.11.09.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Mar 2022 11:09:16 -0800 (PST)
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
Subject: [PATCH v4 03/15] dt-bindings: devfreq: rk3399_dmc: Fix Hz units
Date: Tue,  8 Mar 2022 11:08:49 -0800
Message-Id: <20220308110825.v4.3.I9341269171c114d0e04e41d48037fd32816e2d8c@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308190901.3144566-1-briannorris@chromium.org>
References: <20220308190901.3144566-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_110917_438143_FC1CBDB2 
X-CRM114-Status: GOOD (  13.45  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---

(no changes since v3)

Changes in v3:
 * Add Reviewed-by, Acked-by

 .../rockchip,rk3399-dmc.yaml                  | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
index 356bbe5db383..96efb23cfc0f 100644
--- a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
@@ -115,11 +115,11 @@ properties:
 
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
@@ -163,11 +163,11 @@ properties:
 
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
@@ -210,11 +210,11 @@ properties:
 
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
@@ -300,7 +300,7 @@ examples:
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
