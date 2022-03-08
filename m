Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7B95C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 00:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QsfcgU5braX8FbzrAL1ELVgu11S6JQp+tBoB2IugwO4=; b=YmK97ar2+1+C7T
	mNnyR1JgtzgMsnwn8j8iPJogpDQZs8I4VJ6/SU170IOHekB4M5eHaXLuBZObJZKgHgsbB8zo9arkc
	DjrqBBcgAjZUwSdsMJhe24Zaiz0RLEQsifnTq5Mv5GD7KZAaNzgpI4sn3BD1qGA6MEePtQU7bqWkW
	E7A0yYkaL1l7FXFqWAUzkP2lxgsaPFhLBJg6n0Be13RbRc6dBQkU1HHU1hpbIXSTXitP8Vs7SXV8u
	aiv+OMn3bmGB1HmbduIACZWCzzNuS85j5IiGw4d3oMCgcJYHK9bLQtnnYKPKlKY+3u5nTaEDZ2xJd
	1+sBvQm8oTY3Oxm5NLzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRNS7-0023FE-Jd; Tue, 08 Mar 2022 00:11:47 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRNQe-0022I5-7K
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 00:10:17 +0000
Received: by mail-pl1-x62a.google.com with SMTP id s18so2283138plp.1
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Mar 2022 16:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4MidqK8UFH0OO5PuGunb8WphemubCtQBPIxhc/BLNC4=;
 b=Y7MZ3dBBFqBsHVJw4LhSele0cERRtvLPdhqjvm/dbYuKac/ttY1X7dhkkWQ/tfVGl0
 tr7jWz/2apfy1mdwUM7wRiCrcE5/lHX/RNl0+Y4iWCR7Y7j0/7W/RELbflk4b1yVvoVZ
 zjgTnxNRlNWVX3HyNdCEkxpAZRGe4F+pSxuHM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4MidqK8UFH0OO5PuGunb8WphemubCtQBPIxhc/BLNC4=;
 b=Vam7mY35cpmKCWDpG5Fb4ctJmT6OGtjmXEt4N/onDwqrX6nFKm6tPGVhVoWsSW2FiH
 a+MmtHiTXjj+ZaisoXPbjDeUKROQuwMdisRvMmTVgKnQx22jk57/q/aJOm84kQ4C//Il
 /uF8F+ElZ13L699x6U95vpxeWExk8VQOX/5QIZHmnWD40dIB8i8lg8IwQWCeXCZvM8LR
 vGyE+uF6NE5/qigYVVmJyclvoTRBM0pUikIKn/HbHFrls/HmHkcX5GGEhS5CzPgRKxVT
 1vTZFN1UBE/4/5BtXsyGzDBCWzcD4Rfg0V6PcYu2EBAsC8ZTzr63YMKLomhT668Zpo4d
 z8XA==
X-Gm-Message-State: AOAM533sQZZGhbUROnQiJHhKiUb1E+/J2tQZ8L/Zx/rdqf7EFkK+Anu9
 +JidTpiTYCmsEOiZZB8tkTHs7w==
X-Google-Smtp-Source: ABdhPJxEvIqD1klp8jx5ozBpuURKAe+1fn2tbuJrsH1G/PMoec47nH+zhYizJ5ADadhdFnqLvm92UA==
X-Received: by 2002:a17:90a:bf86:b0:1bd:6057:b77c with SMTP id
 d6-20020a17090abf8600b001bd6057b77cmr1688428pjs.72.1646698215650; 
 Mon, 07 Mar 2022 16:10:15 -0800 (PST)
Received: from localhost ([2620:15c:202:201:e551:44dc:2842:57f1])
 by smtp.gmail.com with UTF8SMTPSA id
 h6-20020a636c06000000b00363a2533b17sm12943047pgc.8.2022.03.07.16.10.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Mar 2022 16:10:15 -0800 (PST)
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
Subject: [PATCH v3 05/15] dt-bindings: devfreq: rk3399_dmc: Add more
 disable-freq properties
Date: Mon,  7 Mar 2022 16:09:35 -0800
Message-Id: <20220307160918.v3.5.I382d4de737198ea52deb118c9bdc4d93d76e009e@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308000945.706701-1-briannorris@chromium.org>
References: <20220308000945.706701-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_161016_297473_B58CE25C 
X-CRM114-Status: GOOD (  13.00  )
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
Reviewed-by: Rob Herring <robh@kernel.org>
---

Changes in v3:
 * Add Reviewed-by

Changes in v2:
 * hyphens, not underscores
 * *-hz units, and drop the types definition

 .../bindings/devfreq/rk3399_dmc.yaml          | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
index 6a33a7b44741..60ed5023f54f 100644
--- a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
+++ b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
@@ -300,6 +300,38 @@ properties:
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
@@ -331,4 +363,9 @@ examples:
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
2.35.1.616.g0bdcbb4464-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
