Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9678ACA9EC5
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2026 03:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xiov7EjSafmr4/OyXnjv/UhUy+II/rqo62fdQ42pcNI=; b=aDYioJuoQzo5Hd
	qXw7W3xhB8kKmGBISBT1q9EfTwdB2K+ABHAY0GV9Hz6RI9qHHxXfIVmc62RFo6gJEvL5aH5dVx6lN
	56F17PPuGagymzkuTZI4T6keWBKqF9NNp1tieN8/8mgD4xuHNDfkgVHXuhQJ0xWwaa0r435Z26PLx
	4EwxKgeBLnGfFIhu/rHJyeU9eT72rx5VIWWV5crW2b7SHwIVWbKB2NnsAM1ypDl4QJQEK+JxuemhA
	MhvY7qmMOXEkYyoau/i36q1+2z5lGdtIgvWIoS4NKosFdEgGW1E8FJ9YAHe8lGUpuib00LVl2cj1R
	+nYKKw8VEBtm0ROnsXNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG6tU-00000009cXP-42rY;
	Mon, 12 Oct 2026 03:40:08 +0000
Received: from mail-pg1-x562.google.com ([2607:f8b0:4864:20::562])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG6tS-00000009cWc-2DSl
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Oct 2026 03:40:08 +0000
Received: by mail-pg1-x562.google.com with SMTP id 41be03b00d2f7-cc7d154ec4fso463678a12.0
        for <linux-rockchip@lists.infradead.org>; Sun, 11 Oct 2026 20:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1791776405; x=1792381205; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=BQmudqxHZgmYHMAF8++0CQtKWTMZopP9Oa5fgsHurz8=;
        b=EafzSVweDrHApAaVUgFuc3w3zF/I+qY+4Mfk9GS0cgLg783az9ltEvckKmon85qjpg
         DTE3o6vAlNBvwHdKi1du4BmTCfXB9JESMp9RyHavPtzGJnSQgA3Fn2i8iYyxOloCWrgU
         lREWf3TBsDVYzimm2WAEV47T+FhHVvH9dqJ1rbKJZJSAQgb82+k4+Ky7fW4Tw/miqxrI
         wsI+VX/qxdA1HtaMV0AcpSg8wHha15Egoz5049OzKPYT+hxv/qfJRJExtnVKJ/7HjAs4
         YesEcq20TqvWMVRwcSUs6HD8rp/aP5kYjZrBEB1SNgK+cVEp97iELVCpSPhIpuiO/IOQ
         pFSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791776405; x=1792381205;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BQmudqxHZgmYHMAF8++0CQtKWTMZopP9Oa5fgsHurz8=;
        b=07JBImxBYE4KD6vXYQtG1H2zuvk4BbWEQFUaDMEu3rmGdKqNWwRAPcem8cRkyf3x0J
         KBugIFvwrDvCdHACQwJfiP15wf7mAX0FH3Smkz/591et9FwVcjrd8T5BsVreWO6YgDAs
         FQMi9uRciV2Ugf4nC4c3gnlZXVH+oW/inrh78W6Vya/Pqz0pLP6U9gj/YOi98YcQnzNm
         P3mc6OsPd1P9m7rvFZVbT2xf8hCUenw+mAzVgBVrFHmEjwXNovfxrdW5/QvQXGPrlc/s
         SuzwmC8ytc8WIk6URuSrxtjU+tvOoeCdUcQwVT2E/x9AJqvM/MNQfl30VPztZmOwqQDG
         SLFw==
X-Forwarded-Encrypted: i=1; AKwUvBznDOf2neUg0OP9IZpF8y4dvLebBbc4/kpG27hy58QyBphN1f0XKBwgrnmaWfqqM+vb+RxTk3TRR16yx0+6mw==@lists.infradead.org
X-Gm-Message-State: AFq9FYInEJCm1nB6x6XeeAeOrUfiYUUeeQTKGEZ+hiYzOt6D2iGPd0lC
	Vqp0lj4n4fYHxRXvGrmU0/9RQqOZptkV8m+TmEwYU/aXlwg9ucb/GlqBN3+8fLoJsiVcmpSc+Xx
	qZ55VoixSbymPgqrfL3wTCMJQWUQUcKNnEShX
X-Gm-Gg: AYBFou2RKBggbvsDc0H4LVcRZEx94PwA0Zw+7BuhHFXODKKAvtTfdngBJLDrmX6M9Hi
	Oc67ce3ZK7/qhm+RbidtwKvELYr7mwwByIqNxRcEeO28wx4mXWvk+wfb1++bsdTQ5dMQtF4jAhR
	gk5CGMh6Iu23kjwlc3Pgx1kigwORsdYIBB3DNrs4Eur3t/zM/iFxcyBmKV2zUJQ6H/Q0b99mVYx
	GA9NpOmbNtu/5Ql1dV9aNgIBb1r1QaA+ukBSJEmbK77/NVZ0LpFkiM7oUCZG/ONf305Il6vCryB
	k4goDLCxROfSJw7zR49bZ26WRMGN65mgUHIeBrLmKX6U3aAZieBBnxkrfR7cEpD+eS7XphAaML2
	lwTbhFhJNerCQnFLX8p2zp5Q=
X-Received: by 2002:a17:90b:5887:b0:3a4:a383:f9cf with SMTP id 98e67ed59e1d1-3ab3a9a78f8mr7994493a91.38.1791776405106;
        Sun, 11 Oct 2026 20:40:05 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3abdd5d09d2sm1506297a91.8.2026.10.11.20.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2026 20:40:05 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Fix adc-keys wiring for Orange Pi 5 family
Date: Sun, 11 Oct 2026 22:39:29 -0500
Message-ID: <20261012033929.2317231-1-dennis@ausil.us>
X-Mailer: git-send-email 2.56.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_204006_569587_5E697B64 
X-CRM114-Status: GOOD (  14.77  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Dennis Gilmore <dennis@ausil.us>, Alexey Charkov <alchark@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

When working on u-boot for the Orange Pi 5 Pro it was called out that
the Pro does not have a recovery button and was missing the definition
for the maskrom button.

The shared rk3588s-orangepi-5.dtsi describes a "Recovery" adc-keys
button on SARADC channel 1. This is correct for the Orange Pi 5 and
5B, but the Orange Pi 5 Pro schematic shows channel 1 is pulled up
with no button ever wired to it, so the key can never be pressed.
Each board's schematic also shows SARADC channel 0 is connected to
a real, populated Maskrom button, but no board described it.

Fix this by moving the common hardware (Maskrom on channel 0) into
the shared base used by all three boards, and keeping the
board-specific hardware (Recovery on channel 1) only in the dtsi
shared by the Orange Pi 5 and 5B, which the Pro does not include:

 - rk3588s-orangepi-5.dtsi (OPi5, OPi5B, OPi5 Pro): adc-keys-0,
   button-maskrom on &saradc 0.
 - rk3588s-orangepi-5-5b.dtsi (OPi5, OPi5B only): adc-keys-1,
   button-recovery on &saradc 1.

Verified against the Orange Pi 5, 5B and 5 Pro v1.2 schematics:
the Maskrom button is wired identically on all three (button -> 22R
-> SARADC_IN0_BOOT, AW15, pulled up to VCCA_1V8_S0), while the
Recovery button only exists as a populated pull-up with no button
attached on the Pro (the board's "RESET"-silkscreened pushbutton
is wired to PMIC_RESET_L, not to the SARADC).

Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 .../boot/dts/rockchip/rk3588s-orangepi-5-5b.dtsi  | 15 +++++++++++++++
 .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi     | 12 ++++++------
 2 files changed, 21 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-5b.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-5b.dtsi
index 6e081bc06cfe..d73f671b8f5f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-5b.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-5b.dtsi
@@ -4,10 +4,25 @@
  * but not the Orange Pi 5 Pro.
  */
 
+#include <dt-bindings/input/input.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3588s-orangepi-5.dtsi"
 
 / {
+	adc-keys-1 {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-recovery {
+			label = "Recovery";
+			linux,code = <KEY_VENDOR>;
+			press-threshold-microvolt = <1800>;
+		};
+	};
+
 	aliases {
 		ethernet0 = &gmac1;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
index fd0efa8d1bfb..709efa709b7a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
@@ -14,17 +14,17 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
-	adc-keys {
+	adc-keys-0 {
 		compatible = "adc-keys";
-		io-channels = <&saradc 1>;
+		io-channels = <&saradc 0>;
 		io-channel-names = "buttons";
 		keyup-threshold-microvolt = <1800000>;
 		poll-interval = <100>;
 
-		button-recovery {
-			label = "Recovery";
-			linux,code = <KEY_VENDOR>;
-			press-threshold-microvolt = <1800>;
+		button-maskrom {
+			label = "Mask Rom";
+			linux,code = <KEY_SETUP>;
+			press-threshold-microvolt = <2000>;
 		};
 	};
 
-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
