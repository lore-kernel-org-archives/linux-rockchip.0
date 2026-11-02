Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4AE606A337
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 17:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rvNpVHyH;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Kdsw3yKH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=/cGq7tvfa/2nAySPSXdngr5e5JgFDI+a4nbTCqMcCB0=; b=rvNpVHyHLr0s/uBrPyYGInepMK
	mR0JZDvbK44IEu750HFethfffQ9+No61sGT4caymrqTEa4eEVapPG4pRV2kt9bQE1JPYEB9d697hr
	hd/CmElpp+tBXRrCPdXPSdxDpGHStqE2BO5MItzIIQxke7nHSMtBfZl6FlHjgHHITiwFJptCxndhX
	0WX1D2zIYaxf7pSHY//CqzqvZdjK0LK0hF0QUSSUAWoVtFLMAsH1lJEMoLKc6Dcsc7FEoC1hKbFJA
	TOh3L1youHspaH+kNGRqQuJqfFuFIiGlM8pCHxyXCbd3zSku9dK0TYOJYjvYpkhoj/12b9Y2TmBwm
	ssTaTUFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNw0n-0000000HUTc-3NKM;
	Mon, 02 Nov 2026 17:40:01 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNw0k-0000000HUSL-3R65
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 17:40:00 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-53ec2cc397aso2275388b6e.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 09:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793641198; x=1794245998; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=9J4z2p23Rp3rNkD4XaoXW1ZLMCK5QuoS2JU2MXoD8Mo=;
        b=Kdsw3yKHw2PxyAGPU5Iq54fNUjHt3t0KZe/+22FzfknieNfbdEBxRfBZCC8cIz1PDi
         o1ClTiTIALSdPllVF+FVHIDTkiDdM6X9Ffef1THo+3dAbDBB34WP4aF4uCsQ9ECxbI8E
         4tmmjkgTegm19FtFpnF2lwCjehVtctRVsXshbJAhBxpVRfz2xUTaEIb9DEyLMBQmebCt
         ENazQqoRm5VNis595yGielpKbORIgLDtez6RA9GYOPNDvNWWemoEDzuTtSw9dNtKwq4r
         37qV2Qz0lgUeWTf93Hn912O0u+GvwyMkdBkGtGw0TuadXqudXVgVSXsUr/yAfh5j8/by
         HJEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793641198; x=1794245998;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9J4z2p23Rp3rNkD4XaoXW1ZLMCK5QuoS2JU2MXoD8Mo=;
        b=DrxEzllHH+vK9Ow6WxZvEMfzUoEnFc0kCHWRaTaMRFavw5MJn4ajFdu709ethR6b3H
         rtqNouehkv1gJ4jLWRamNyts/RKgmEPimuF3kSdqbISENQ1b6SFQOdl6+lp/QLuAEDBH
         IXrZleQqrYALCn4UeMNkaUzgAP5PkWKqvbALf4RdAqvOkvUUVYvtISYMRHEk+jO746Kf
         FFFtKRZNj0BW8qLjUQx/op3GfHsqU5cPaZC+2ARJ4zn7+vf2VieSmx0enURurMmUNpBe
         3p0IDF1rtm/iZyhvsmzdHxRK3lkYvi5s2q+on54veclj2BrCbzO6DwvLXj26BiCxXaeL
         e+Og==
X-Gm-Message-State: AFq9FYKz+muC0w0g5K56s5kibEIp59Xu+wZFW+rDVAytKGUHqqXITHw7
	lr4fAg7Vcw/+pY/uvPzCPYZzOaEh82soRRVN8+IQSvAbKN5iIg5zI0iL/anmA/qB
X-Gm-Gg: AYBFou0H5XHIiyS4G6nvwvKLcqRb807+rqneSWvY8k3CfO+skH+FAU2sBVj70c007a8
	bLeImjEeSa5Ig+oZOLhqFjfYwkxVKJc/EoSWEtL/+J5egu3AvvnXkxSdLDKO26fgWhL7h54UzBG
	adkNrIPxsuD2LJii4hfs0t3Em6pPrrifbmqbtQ6xPgSrs66anAZs/VrVtKhJ5UNuyp+ndPKt5tS
	9HNjFzSHXQjGdTvjjwAsmJq15H7wWjAQ2FcPK2UyV8Z9a71i8kyQo3U8q1yVuMe7ZKOMU7SmzRL
	CkM+U9GxfFZjHjFu1Gw5YcyKuZAFxPjfXAxLo9szgc1t0k3zEoadz+PXxaW+vMsBel578MgFsWL
	Yv2M7UNAuW5CzkbMtE3vaLHfOnrbaxu/NfrTj1UI7vDcwJ4cVZ3DMlQX6X+vT2EJhYshDQm/GYa
	YuKepmOB2AWwnlGkvAws0GqBURwKOqzqOoW9FbZI7TqNwvgJd85tRvpRd3bQZWu6WYdqrS7V7HJ
	Lo4DEe0chZKZMNlbHR9Gv1jX9JctK0hx16Nl1S89dEnzUM3b4B1bYBk7OROKi/uzBgBhQBjGBtt
	XDmaUG/71+8nASina/yGrvg0PSH5Vfk=
X-Received: by 2002:a05:6808:14d4:b0:53a:6769:c35b with SMTP id 5614622812f47-5640dc1e923mr7201227b6e.12.1793641197636;
        Mon, 02 Nov 2026 09:39:57 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-5640fd95dc0sm9237058b6e.6.2026.11.02.09.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 09:39:57 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	diederik@cknow-tech.com,
	arseney300@gmail.com,
	michael.riesch@collabora.com,
	shawn.lin@rock-chips.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add cpu-idle-states for RK356x
Date: Mon,  2 Nov 2026 11:39:44 -0600
Message-ID: <20261102173944.312295-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_093958_865967_82122F91 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Add cpu-idle-states for the rk356x-base to affect all rk3566 and
rk3568 devices. With the fix implemented by upstream Arm Trusted
Firmware [1] this now works on both mainline A-TF and the vendor
provided binary A-TF.

Tests on my devices show this parameter provides idle power saving
of around 5-10%.

[1] https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/55024

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index 1a4562df20ee..7e23f6983448 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -56,6 +56,7 @@ cpu0: cpu@0 {
 			reg = <0x0 0x0>;
 			clocks = <&scmi_clk SCMI_CLK_CPU>;
 			#cooling-cells = <2>;
+			cpu-idle-states = <&CPU_SLEEP>;
 			enable-method = "psci";
 			i-cache-size = <0x8000>;
 			i-cache-line-size = <64>;
@@ -72,6 +73,7 @@ cpu1: cpu@100 {
 			reg = <0x0 0x100>;
 			clocks = <&scmi_clk SCMI_CLK_CPU>;
 			#cooling-cells = <2>;
+			cpu-idle-states = <&CPU_SLEEP>;
 			enable-method = "psci";
 			i-cache-size = <0x8000>;
 			i-cache-line-size = <64>;
@@ -88,6 +90,7 @@ cpu2: cpu@200 {
 			reg = <0x0 0x200>;
 			clocks = <&scmi_clk SCMI_CLK_CPU>;
 			#cooling-cells = <2>;
+			cpu-idle-states = <&CPU_SLEEP>;
 			enable-method = "psci";
 			i-cache-size = <0x8000>;
 			i-cache-line-size = <64>;
@@ -104,6 +107,7 @@ cpu3: cpu@300 {
 			reg = <0x0 0x300>;
 			clocks = <&scmi_clk SCMI_CLK_CPU>;
 			#cooling-cells = <2>;
+			cpu-idle-states = <&CPU_SLEEP>;
 			enable-method = "psci";
 			i-cache-size = <0x8000>;
 			i-cache-line-size = <64>;
@@ -113,6 +117,18 @@ cpu3: cpu@300 {
 			d-cache-sets = <128>;
 			next-level-cache = <&l3_cache>;
 		};
+
+		idle-states {
+			entry-method = "psci";
+			CPU_SLEEP: cpu-sleep {
+				compatible = "arm,idle-state";
+				arm,psci-suspend-param = <0x0010000>;
+				entry-latency-us = <100>;
+				exit-latency-us = <120>;
+				local-timer-stop;
+				min-residency-us = <1000>;
+			};
+		};
 	};
 
 	/*
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
