Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A9AEC79F8C
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Sep 2026 18:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+6hUBiAE3WouFycJ/3qE7QkQSLM+BWRjH+uNo5p6Qkk=; b=3rpoE2j0J+12Qz
	gQRNDNJzJ1x/wi0pOTE8htye7UR/wdBjXUbYr49945LesY1m7FvMRy5EruO1U07DLs3otJj2PX5eD
	D5IIA/FH8/6eE21WWfc/AGR2SOriJcK4pC/IEUKxM78rnAgk6mRgjdqPzD7In9zn5jULB47bUMzbZ
	U4PI8LtEQtB4mFUT0k9EMUeTizJ2W8/SPvST26biAj5xThpg1GIN9JEI/5rsclp6v1XH05aj4Csle
	HlJmH/6Bycopi1ePzQTtBshrNEVqBqBue72Fir0cmFIjzIQ5+Qja/7gYobA5Il0is52pDeOYZO8ZM
	a54mnfnaIoBNlOgyLBpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3HQV-00000005IAK-1P4L;
	Sun, 06 Sep 2026 18:17:11 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3HQS-00000005I7Q-0Wvo
	for linux-rockchip@lists.infradead.org;
	Sun, 06 Sep 2026 18:17:09 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-499de29beb7so348865e9.1
        for <linux-rockchip@lists.infradead.org>; Sun, 06 Sep 2026 11:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788718625; x=1789323425; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=R/mSQMe/ffg+AP+VO4769NtESa1TU8r20BVXKonSb5k=;
        b=ZBdER1wr/KHzdRTH00VTRhtp6RVwFLJdmbiZuF8HpYo/ZK5z+xNIMsuw6eTNn7HRxs
         OVCjNm6CdEG2AzD3S+Svv6aX3KIt/GA1mcbEehWrahxURG3jSv0tgcDRW81D2p5/zTSK
         9nt7oMqDxHS2Trb2g2WhvazWMcTaCBI6greehL+WuWIUU/YXdXsoWP0+0VRKHxBzDjRI
         QnXmFYm7jjT2JDbmSrPP31tiKfJFp4dnYxq63/WyqFMioqnjhD9O3bP3dTJszJOXUD1Q
         xsunJzracWHu/odlCszju9j9YG5GgYEKRSrd8EQydC28r3cPJAUAfDuYlXKBPtyIPZl1
         nXbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788718625; x=1789323425;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=R/mSQMe/ffg+AP+VO4769NtESa1TU8r20BVXKonSb5k=;
        b=XMQ9818z+aTlXgbvp0rett1ORAjWc0ZzJocGiqEbBTIRIW0qdgvrZATrMM7U+GyKm7
         OaHm3vTpSoHkYyTvB8M0MdvuZW7HfBx9qjsqy049fpi63vtLickd8LMSzFzZBmY2mmA+
         5lP3XFo1w3oLODc3Bf/7eurqWLknZZ8E08cfukGDwIvbDEkMPgtiBrrXUFzbf0Q2FrHz
         9JLOVTBN/AO0qb6ubvAQNNMttxdwlpn4N5zjILJtPUpbN9pF5qj8S4HAtmcte4+7mCf6
         7ZLesmlYSkydXexRkk/FKsFUIkbzQ3D7YlGuL8WVIsCaaoOafJQlRBP4Yu5hyLI0gwqP
         khgg==
X-Forwarded-Encrypted: i=1; AKwUvByOoe0oKRlVxKHeQn1XlsD6KL6AoKAjZWLQxqmXC0hVSA9lnx3lg/7E1aOohKxngb7RwdflocwKDZ3pK/hLMg==@lists.infradead.org
X-Gm-Message-State: AFuF++mEJvP9tv30/bEMvXeidGyPSwzMCqYy3B6DC3gQy4tSYv33CgGC
	jlLjTubt5SSeSpcm1ATqtCHYr7sxf4wb+v8f3wZyzZXAWy3CKPD+Qsom
X-Gm-Gg: AYBFou25lPLw9ToBgioNajtcLzfaF9r7CI0TRwUrXhvOQ5AMKwe/bVvtEXY8/y+82aG
	SreTgUpBYTJA01oDECn/hjvvq2fvH3uAxe52kNPIR4Bqt6L/tmjLswMKXe95oPKjc9TrLIlSbK+
	URcxiV6FCIJhngI3/IFe5K09qTZmciOjlL0O6yezvHQ5T42gcely8oAr1k52Fne4P6uOvo3ZFhS
	RQ1z7ozJL3rdQRGWYgOwx1Fxl5P6t3Sb8vz+501MjpZyudDy/+j/jCuNxKk6DU+0YtEHklmXXFh
	zHSVlkfKV9rFNRTtdgYg4ZnzMle+2OzmWDfmAgJO7ggP4GVqxzgXKEqAl7BgA7j8eWuIo/GqVBN
	Hbg0yA9IaQK6pNrJdgK6QQGgD1MFzy4LNuy/URK3uHRN/lpHzhMP1OsxMxPM65T3nYAcRm+qSF4
	zvl5EP6O4QLWBdK5806uqX7sQ/+wCCFeZ3wG1ZRQ7x1hYatG74fJPgjcIistvIDmMJjD02ZsSzz
	SYqsolZ+nmuvyjTuMedtPKmBmVgs73mUSAGhtTTC9qu7D0rt501f63lVq2UH/emWDMF4DlyTyBC
	qCA=
X-Received: by 2002:a05:600c:c494:b0:49b:916a:e553 with SMTP id 5b1f17b1804b1-49d010c2a57mr100932445e9.0.1788718625331;
        Sun, 06 Sep 2026 11:17:05 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B886400ACFAF9D8E9019935.dsl.pool.telekom.hu. [2001:4c4e:1b88:6400:acfa:f9d8:e901:9935])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cf75ce49esm433916725e9.1.2026.09.06.11.17.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2026 11:17:04 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: fix hym8563 interrupt pin on Orange Pi 5 Plus
Date: Sun,  6 Sep 2026 20:16:22 +0200
Message-ID: <20260906181622.11991-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_111708_176473_62FBEEF9 
X-CRM114-Status: GOOD (  18.35  )
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
Cc: Igor Paunovic <royalnet026@gmail.com>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org, linux-rockchip@lists.infradead.org, Ondrej Jirman <megi@xff.cz>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The interrupt line of the hym8563 RTC on the Orange Pi 5 Plus is routed
to GPIO0_C6, not GPIO0_B0. The vendor device tree uses RK_PC6 with a
pull-up for this pin; the mainline board file uses RK_PB0, which is not
connected to the RTC.

As a result the alarm interrupt never reaches the SoC, so the RTC alarm
cannot wake the board: rtcwake enters s2idle and the board never
returns, which looks like a hang.

This was verified on the board by enabling the alarm interrupt (AIE with
AF already set, so INT# is asserted) and sampling the EXT_PORT register
of all five GPIO banks: GPIO0_C6 is the only pad that follows AIE
(high with AIE=0, low with AIE=1, across repeated cycles), while GPIO0_B0
stays high and its interrupt counter stays at zero.

Switch the interrupt and its pinctrl entry to GPIO0_C6 and use a pull-up,
as the vendor tree does for this open-drain line.

With this change the alarm interrupt fires while the system is running
and the RTC wakes the board from s2idle ('PM: Triggering wakeup from
IRQ 52'); before it, rtcwake never returned.

Fixes: 236d225e1ee7 ("arm64: dts: rockchip: Add board device tree for rk3588-orangepi-5-plus")
Cc: stable@vger.kernel.org
Assisted-by: LLM checkpatch dtbs_check
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
Notes for reviewers (not part of the commit message):

Measured on an Orange Pi 5 Plus with the vendor-style method described above
(GPIO0 EXT_PORT sampled while toggling the alarm interrupt enable); the vendor
device tree for this board uses RK_PC6 with a pull-up. With the fix the alarm
IRQ fires at runtime and the RTC wakes the SoC from s2idle. Note that on this
board the resume itself can still stall later in the USB 2.0 host controllers
(a separate, unrelated issue being looked at); it does not affect this fix.

 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index 145986695720..572b892e4066 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -189,7 +189,7 @@ &hdptxphy1 {
 
 &hym8563 {
 	interrupt-parent = <&gpio0>;
-	interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
+	interrupts = <RK_PC6 IRQ_TYPE_LEVEL_LOW>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&hym8563_int>;
 };
@@ -298,7 +298,7 @@ hdmi1_tx_on_h: hdmi1-tx-on-h {
 
 	hym8563 {
 		hym8563_int: hym8563-int {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 

base-commit: 1fc5a74b108fc90951890ec513ac81869f5eaff1
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
