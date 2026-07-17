Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3187C44512
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 01:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2eSVL4YFJMRc05s1atxnhPoxzLuv/aGiBzaY55VG7zY=; b=t33YvjG8Ey21fS
	vyDieNYcJNN0v/u5+wDcmDFUxQajNoQoROL1k+uJgcQjKwYf0UWa+mBPzHAT+8BnPWob3VdeSI8X+
	sk0pJXBOhK3iDKu/F5/CnvVNdwE+h8Y14supKLOG1eck9LGhcdP+Pt13tTbIbihq91SddrwYBDmt+
	fWdMZQXttRye4E+ny6Mf4b4antrrU9j7sHH9btZep4X8FYftSFCOVTG1H2SEb8BnRLCG5GJVAgpr0
	T2pwA9d74d0Iry3B4WdIPHg1QSQnHw5Kop8XI2hig/J/ShXyWP7mM2KzDikfUEegaR8lK9g5KgAxa
	RnLKyT23n/0CBgy7d1Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkX3N-00000000sLX-2o9l;
	Fri, 17 Jul 2026 01:07:49 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkX3K-00000000sKn-3qIm
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Jul 2026 01:07:48 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-80cebd41372so69678767b3.3
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 18:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784250465; x=1784855265; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=E+jMtOYXd86aOtbSew6YfEy4o+UUtHTJcq8MN5yVYKM=;
        b=rTX1ikPWME3qnijojiZfIcRJ1etjf997gu+4TZGQ+HWitReqHJ49fW9JsS5LXLXRoT
         RisTFWvJu8T/fACKho0XyyOA4sCGoSevV44Kowg3tmD9Hr7vA7fSxYAronQGs9vKjUWz
         IlkQgCx6nwyxlHupeJ+qUIkxwqPK2ItsGaz7Z+t3IUpYXT+iN0jiW+ksJX05O+A4edwh
         c1kdRfTsQe8klYMJAO3g62iOgnULOabTFvgoF/YdySKtxpfn4rh1aQg8vNJ6u3q++s9o
         m4nixgsTcHHSn7nPVdJFteI5uCp9tFbNiV2BYpPbV21QP62rTKiZNjJR52pw0zndqjUL
         lMUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784250465; x=1784855265;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=E+jMtOYXd86aOtbSew6YfEy4o+UUtHTJcq8MN5yVYKM=;
        b=sqH4Q6oZatW/9ZVcBfPnwc0AmSj72dNAR5Nk1iIA3bMIl9MTuJ2In6JSzu1A68L2tm
         OWjqaWkJ4qVfhybU3JryQtur+mFfzJRD2qExzDZgK862BJ4mzP8w1SR6r5W33157x6ef
         klUm3V3jpZmHmgWzJOU2Vx2cy+hm5uGB5y9bqqLo15CA864YDwQyHz2AGJXV6yJQSDrj
         gNJ9X2v7FCP7ng9fyQzUudwFp/+WPsAKn2m8PGznH+7fqLLc2Se/8bF1viuC43zWdVRM
         e32hzzWB5jMeRb+TBBTEVPOYz1iU9mzlDeOY6OMmUsFbyCpyU1dXLHTBFpra3YTOuIxg
         3Qfg==
X-Forwarded-Encrypted: i=1; AHgh+Rp5sZ5lcFDedrtW9xeN3cJkT4Gx2ULPVLjQmjOk+7DUKhKjjW6O4tbpZU9oQOgOESt2DvblH3cGEDXjTWAknQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+3ofN1K6xspvS0AYEs2DWWIDR8WhU9Lje6QMssdFA5/Ija+k3
	w8GkxBIy8aecCouVltaV/GlgfW05r5VWWvQEdn9A5MBTshp/o2DNeXwB
X-Gm-Gg: AfdE7ckZK+c878FxnRo/zdrr3QZHCy30rXkV7SaKCqrLcFyqDe3HBx20wogaiygz1Lf
	jZwOhCnFj8xFu0B9BiuNTE/rAZCogcMmx1xgGjFT3xW/EyIhL4smVobzn3Nnp+xiGKotLoj2vK+
	+bRgDVLoIVWwO9EM5az1lxe2OYbwcHzi2wI9B9qHazTTKA5IhZ5qT/Jrff8U2e6gl0PRjNS3Kzh
	fXizP+1Ljdit4+XGhFY2Xw/3fPjkWE5l0n/1n3xIWvibZQUMM9DO4+s5yOLvKKkIB2jkBjBO6mx
	jXtidBYjd9WVTNIUnd9zMwfUYVBVVDsihAb+vhMVRKz7ZwFfqqgj7osWJ4xr54D4n+AFpsBlrmj
	/5JKYpLXz+5+7QVMtVScdP+61fbqi8VYBOrmpy/w0FNfk0gbYs4V3xy+p8xQNckC+lz+sNOOgOi
	TtF2LSgQvaPIjBp8uW5IXvgmsDSOHhzPp71r/nXasCZ5ww6EI=
X-Received: by 2002:a05:690c:6b82:b0:7dc:e96a:26ed with SMTP id 00721157ae682-81ef22ef44cmr481287b3.9.1784250465041;
        Thu, 16 Jul 2026 18:07:45 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a801:a24:e2d1:829c:ccde:e84f])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-81e8f4c5d3csm159095057b3.15.2026.07.16.18.07.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2026 18:07:44 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>,
	stable@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: rockchip: Fix rk3399-roc-pc-plus analog audio
Date: Thu, 16 Jul 2026 22:07:34 -0300
Message-ID: <20260717010736.578419-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_180746_970775_5784B82C 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
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

From: Fabio Estevam <festevam@nabladev.com>

The ES8388 sound card on the rk3399-roc-pc-plus fails to probe because
i2s1 cannot claim its MCLK pin:

pinctrl: pin gpio4-0 already requested by ff880000.i2s; cannot claim for ff890000.i2s
pinctrl: error -EINVAL: pin-128 (ff890000.i2s)
pinctrl: error -EINVAL: could not request pin 128 (gpio4-0) from group i2s-8ch-mclk-pin
on device rockchip-pinctrl

GPIO4_A0 is routed as SCLK_I2S_8CH_OUT and is used by i2s1 as the
external MCLK for the ES8388 codec. The board dts already removes
GPIO4_A0 from the i2s0_8ch_bus pin group, but i2s0 still claims the
same pin through its bclk_off state.

Since the i2s driver requests both states, this blocks i2s1 pinctrl
setup and leaves the simple-audio-card deferred with a parse error.

Override i2s0_8ch_bus_bclk_off as well, matching the existing
i2s0_8ch_bus override, so GPIO4_A0 is left for i2s1/ES8388 audio.

Cc: stable@vger.kernel.org
Fixes: 6d9a7bd6a13c ("arm64: dts: rockchip: add support for Firefly ROC-RK3399-PC-PLUS")
Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
index 4f2831097624..f6d62ee51f1b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
@@ -136,6 +136,18 @@ &i2s0_8ch_bus {
 		<3 RK_PD7 1 &pcfg_pull_none>;
 };
 
+&i2s0_8ch_bus_bclk_off {
+	rockchip,pins =
+		<3 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>,
+		<3 RK_PD1 1 &pcfg_pull_none>,
+		<3 RK_PD2 1 &pcfg_pull_none>,
+		<3 RK_PD3 1 &pcfg_pull_none>,
+		<3 RK_PD4 1 &pcfg_pull_none>,
+		<3 RK_PD5 1 &pcfg_pull_none>,
+		<3 RK_PD6 1 &pcfg_pull_none>,
+		<3 RK_PD7 1 &pcfg_pull_none>;
+};
+
 &i2s1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2s_8ch_mclk_pin>, <&i2s1_2ch_bus>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
