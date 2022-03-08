Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45C16C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 19:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++6oTV+aqRX/ysKF7t8MbK6ZXF2CuLJJgziQJe1T0Eo=; b=lsjzKCQx4nSSf8
	obHumMfwpDJ+ql16FIO6RaL9bRze5Ep+YkaK3cwfGfWTVmb21NsI0nr7yR774jO+dJlSp9lQ7Tlzn
	bCq6XSlxFIDbHEA+0s7g4BKCm3JnKza/xxJcS+6Oq28ji5xioOb1kvRDSyM/MGClrAvi4XJnIJfdF
	QQ2YvoN6XFbtlK7yHIyvvSBE3ddBnW+bB9mdjYT5BIkSA91Muh1VyWChOR6Fyh6FZTidgocKbgjGe
	L1XRSqrsBZZmVq4nJCu2HAD7w4j5j/DpUNuti+S+kCMyV1QIv1P1RcoTPNaG1Ee+dBWzrerdhW836
	2Lijc9PbybIXNdSoVvWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRfF9-005tiC-Vu; Tue, 08 Mar 2022 19:11:36 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRfD0-005sFn-K0
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 19:09:24 +0000
Received: by mail-pf1-x436.google.com with SMTP id e15so171261pfv.11
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 11:09:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xCLmej3ASMhCzoCjalBeE7MlVyXBTYUNm6WHWDyRzJ4=;
 b=XDxUtkkfguKIpXdJtQdm6/VFWj2zLR4nvCC+0mQOD1nG8UWWuJtvxLFJSelx48So8/
 66H2OCtsTdV6g29lwJmEt5CJMSshQHOS1qfTmOKQD3b3ZYUko5of7V74eu/cJVQgASvs
 rmxjzOezqwaAQM7J+RErQlYt4E0WjG1SXP94E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xCLmej3ASMhCzoCjalBeE7MlVyXBTYUNm6WHWDyRzJ4=;
 b=5OMd65tqxRdUBDIdLaz7dYOzvztl9lkmvDKmeQFzHhy6N1Hs2sIWijYzq/9h7TY9/6
 tltLZtRDT0Z0NGY+xqfVv6/Rcyrav1c9aTNjxzcN2A4qPxhr/lYPPRuVJ4PgYHdzq1kU
 MuwREVvllabBU2OPtg4F9BHNaNln1JuN2YJ9vkwnGCwuP6Dzr/cPhMCzpgewjn4rgAtb
 nHqJTY8Hm+YsYHnlKW7PIBFpftdcvcK3u+ytL1OnNpVzD2zb18bTjd1ijQz6guB+WGCA
 4cdIzdDNZqxfEa8qcMtAvdyMUouCv9IVRpVgMKnsEf4de1v86FwNmDM0eYvokZSmO4q5
 JdCw==
X-Gm-Message-State: AOAM532HdNRz885ZvosctkSjEpOQ/NZ4yknysRLRLhNV6oBuG9hYEEOF
 v97fGHcFlO85YkLvS1RQ7MVTbg==
X-Google-Smtp-Source: ABdhPJxUPpHD0D1g6CmnuNEbS2Y2kpd0VWcLBfHdpnesyIyVAd6VCoGpyggUrB52V0mZ5oxLHPWk3w==
X-Received: by 2002:a62:bd05:0:b0:4f7:aec:dd7e with SMTP id
 a5-20020a62bd05000000b004f70aecdd7emr9923561pff.9.1646766561672; 
 Tue, 08 Mar 2022 11:09:21 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b3e3:a188:cbfc:3a0e])
 by smtp.gmail.com with UTF8SMTPSA id
 l2-20020a637c42000000b003644cfa0dd1sm15180460pgn.79.2022.03.08.11.09.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Mar 2022 11:09:21 -0800 (PST)
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
Subject: [PATCH v4 05/15] dt-bindings: devfreq: rk3399_dmc: Add more
 disable-freq properties
Date: Tue,  8 Mar 2022 11:08:51 -0800
Message-Id: <20220308110825.v4.5.I382d4de737198ea52deb118c9bdc4d93d76e009e@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308190901.3144566-1-briannorris@chromium.org>
References: <20220308190901.3144566-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_110922_700719_38906408 
X-CRM114-Status: GOOD (  12.89  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---

(no changes since v3)

Changes in v3:
 * Add Reviewed-by

Changes in v2:
 * hyphens, not underscores
 * *-hz units, and drop the types definition

 .../rockchip,rk3399-dmc.yaml                  | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
index 5228a32b5962..fb4920397d08 100644
--- a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
@@ -313,6 +313,38 @@ properties:
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
@@ -344,4 +376,9 @@ examples:
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
