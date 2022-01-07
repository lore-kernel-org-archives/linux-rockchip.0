Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0139CC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jan 2022 23:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6WEx68QeFtPGKxXHxOuesE5xCW8XfBdh5qOXe9US1w=; b=2ISUlIUkLt24px
	Sa3a8EVbS6KjOocpbqj0LOqAshnLHWUl/YN1h5vob3UzsqHyGcWvUDPVkyqHZwUqvT+SzgFIK5zMT
	9+BsFohHhcCQXTq9uupnijUFmCUB+fvTckB1TkiVxJMPw7RX8y+HOZwBrGAP5ZLnj8auhuQV4AZxq
	u4+qhfX9772UeUgczMFxOJBwMBvAsZp+WvDJouipIdFxMOfsWkiLB50kpgzRdGyDWhud55iOa5pwo
	171l+OEl504qa2B8apwd06Kd31Fy30WhtW7TujEL1kOHT9je69e3nLRb85tRNdfFAig1wxd8jQhvX
	a1+1Z3Z1H5A/TcGQwJhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5z4J-005ZOO-JM; Fri, 07 Jan 2022 23:54:47 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5z3C-005YnJ-HM
 for linux-rockchip@lists.infradead.org; Fri, 07 Jan 2022 23:53:40 +0000
Received: by mail-pj1-x1030.google.com with SMTP id iy13so6482076pjb.5
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jan 2022 15:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uqA2vTRTwCd5lb+1bpw59I8A4YOj+PxA4CFZWdTkSiE=;
 b=KjQjjOwC8d4WeVLXIzAl5ZiDLmf1td57rlGuw1GCTyOix4NbWz87jaIU3GPeaHkhs2
 +aKtbG6eMTbXncBI8DqE362s9f/7hyyLlEFnDyCIssQVbVjfuNX3Ig4LPvwuuJx9CHy3
 4H3ahd/fdtvy4tK0RwPpQ0oebhP89pSmGlBC0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uqA2vTRTwCd5lb+1bpw59I8A4YOj+PxA4CFZWdTkSiE=;
 b=uFM0Ixn3qAPNQXy6eJ17tC57fAaz5x7/Du+zuLASLp5HWWYUr6m9U2JpbpMA9Zr7Xk
 QN1DPAXwtaA7HYl9qvhmMOKsjLrzf17DtmVAmhG/A5qA9feqTMvJncj1bPRt+1BOjiZp
 5YYb5ne2HJFIEbsCDVD7FhWTONjks32+3TMxR0XO9cQQgdTVmbTfRYRgXk4mHi7gEJLO
 CTspV5betBGAxXOpp90F92nq/fNkhEVGrwXtoxCEMrRmTqJzBkihosGcf4YqN9n6sVac
 3RELDJUYeIaT3O0OdtfN/h6UMHXYar1gIhGl57Q0vTzGEWlaZfGGMnrhW26bNlBn2A5j
 /lUg==
X-Gm-Message-State: AOAM531StaS+ip4/9PrK6Pmd68nsi+ybbK1aX4jpfkpf8z9b1zcvNo6f
 V2CJw24IzK64sOv9OS4/s7GhxQ==
X-Google-Smtp-Source: ABdhPJwIGLUJ4870oxOMvvNEBPUvoGuIBVIO34djfW+MF+nHRtQ6skGcluLNSZvfeaLmcwPvyDn+Tw==
X-Received: by 2002:a17:90a:df04:: with SMTP id
 gp4mr2131418pjb.148.1641599617740; 
 Fri, 07 Jan 2022 15:53:37 -0800 (PST)
Received: from localhost ([2620:15c:202:201:db:1c60:693f:c24e])
 by smtp.gmail.com with UTF8SMTPSA id h19sm57446pfh.30.2022.01.07.15.53.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 07 Jan 2022 15:53:37 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
 Derek Basehore <dbasehore@chromium.org>, linux-kernel@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH 04/10] dt-bindings: devfreq: rk3399_dmc: Add more disable-freq
 properties
Date: Fri,  7 Jan 2022 15:53:14 -0800
Message-Id: <20220107155215.4.I382d4de737198ea52deb118c9bdc4d93d76e009e@changeid>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
In-Reply-To: <20220107235320.965497-1-briannorris@chromium.org>
References: <20220107235320.965497-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_155338_632014_53937217 
X-CRM114-Status: GOOD (  11.88  )
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

 .../bindings/devfreq/rk3399_dmc.yaml          | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
index 2c871c57fd97..357d07c5a3df 100644
--- a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
+++ b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
@@ -271,6 +271,43 @@ properties:
       When the DRAM type is LPDDR4, this parameter defines the PHY side ODT
       strength. Default value is 60.
 
+  rockchip,pd_idle_dis_freq:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Defines the power-down idle disable frequency in Hz. When the DDR
+      frequency is greater than pd_idle_dis_freq, power-down idle is disabled.
+      See also rockchip,pd_idle.
+
+  rockchip,sr_idle_dis_freq:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Defines the self-refresh idle disable frequency in Hz. When the DDR
+      frequency is greater than sr_idle_dis_freq, self-refresh idle is
+      disabled. See also rockchip,sr_idle.
+
+  rockchip,sr_mc_gate_idle_dis_freq:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Defines the self-refresh and memory-controller clock gating disable
+      frequency in Hz. When the DDR frequency is greater than
+      sr_mc_gate_idle_dis_freq, the clock will not be gated when idle. See also
+      rockchip,sr_mc_gate_idle.
+
+  rockchip,srpd_lite_idle_dis_freq:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Defines the self-refresh power down idle disable frequency in Hz. When
+      the DDR frequency is greater than srpd_lite_idle_dis_freq, memory will
+      not be placed into self-refresh power down mode when idle. See also
+      rockchip,srpd_lite_idle.
+
+  rockchip,standby_idle_dis_freq:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Defines the standby idle disable frequency in Hz. When the DDR frequency
+      is greater than standby_idle_dis_freq, standby idle is disabled. See also
+      rockchip,standby_idle.
+
 additionalProperties: false
 
 examples:
@@ -294,4 +331,9 @@ examples:
       rockchip,ddr3_odt_dis_freq = <333000000>;
       rockchip,lpddr3_odt_dis_freq = <333000000>;
       rockchip,lpddr4_odt_dis_freq = <333000000>;
+      rockchip,pd_idle_dis_freq = <1000000000>;
+      rockchip,sr_idle_dis_freq = <1000000000>;
+      rockchip,sr_mc_gate_idle_dis_freq = <1000000000>;
+      rockchip,srpd_lite_idle_dis_freq = <0>;
+      rockchip,standby_idle_dis_freq = <928000000>;
     };
-- 
2.34.1.575.g55b058a8bb-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
