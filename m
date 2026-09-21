Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D7DFC982E6
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 06:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2a1bI8NMIZCKaKvD5Dj1O/gwZmdFbyZs6GkUz9AsrVw=; b=DPqh2Rg6s41yEg
	84mcRB8M13nAa5FN1IRItyP7NZklydg3YQojkCnCtKPIjH7lDfvM6+knNonGv1qxDjMGJ0NgaCfJr
	QckjN3JjH0Q3+7UCw1cilk/KDCdeTAEZh7fpM9dhmP7LMsP5RmmNerq2j0pZ36JRFgJWe+tf/uzT3
	0ZxEa7bw5XN6wiPswIsqJlw7gw1qb/c8p/RFOyRs/yERh8PaksHXRdWEu8bdsQ4Y8L1SWC1h1HHCt
	1ADVxN4gFO2W1opSsMrgNM9HNDOWbBx4NBxf2bDWXAXV8vuHFGEGVkDvh0Zq+CCcf6FCErSl7yCmc
	h7U9DgjE/jWQKEXxeTww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Xbw-000000011op-2g1Q;
	Mon, 21 Sep 2026 06:34:44 +0000
Received: from mail-pj2-x10.google.com ([2607:f8b0:4864:39::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Xbr-000000011lZ-3RU7
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 06:34:41 +0000
Received: by mail-pj2-x10.google.com with SMTP id d9443c01a7336-2dd58e1e2c7so23016985ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 23:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789972479; x=1790577279; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hA0mD8O/O9CZCZ5PXDRC9+J532+fBSjDskdhk9fr/Ec=;
        b=kCRId2dGKWP73jSgJMh0jvJlDLH41khwQ1mXz2De4y/TRa6pilHSTiWap5/JS2Q8XL
         k1Z2xmjM9HJmHtlm345GiFHwNcuZZAkzomFAgejq4ngBoRYJVU+6mNrtSxBpHWIdd95F
         3Vtj7kmyriC/Nnb0B8jtblVzjRkuxTtxMmGItKi/Ph9/0wNFj5so78f2Whb+YejY9tYt
         gHX0u5JHfT5mbUD1bIxudxlI7Z7adcU53e1J8OqxFpGk/aXyHiYDbiG/2i9JXta3Ha5Y
         DZZl5mPOkcLHb5qjs0A9NF2jOtpA1InEIAWMDasEUEeRyikpu6ePo2yxXKVBIdOGGt9E
         KC+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789972479; x=1790577279;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=hA0mD8O/O9CZCZ5PXDRC9+J532+fBSjDskdhk9fr/Ec=;
        b=b/qCQd9of1kNz9VD1rYYtHf8vq0PI33Njg57P7jHFek4YAm1A2rGKmkZeJseVI0npR
         e+hRBTSif9B82acnh/EID8uxWnJxSNQp0RAQUGUgm/YwmRANRCd1Phaw6HBEDEZb3upC
         W9gjcjpwYJ9uvSgxf89eBuZHXbxm1r342cQSJyfH/FzUc3Itptokscsc2YiGJA7HUM26
         DMOLJ+UHhhaad2DfyX38IGn4HQktV/AaU5w7BX/fZf8pUGn0w5rgovyPOZvkwe+m5aoG
         xK4M+VaJQB97QATJLX3m4z6EbU19FvlG96kfuyCsUX1QkaNmWq8jmANBJrZwy9gqdknR
         9o9g==
X-Gm-Message-State: AFuF++mxnJy/tNVGnsp4NaUsP6v9YyN/D7JIq25tjRHigpxApe1wsmEl
	7d/j1F+ficVtmxIO0idDZeakFpG0apOzuXkWHSC3c4QQ/qdOl2gtPmpp
X-Gm-Gg: AYBFou1sCnWx69YKfS58Yk3dWiWfNGhrZ4GAEHmSCK2BBvGm8xOZkqAiNw0Jb4duawt
	W8pNWwS3rCbAZ4riDxlOVBHNNZCwF6Yf6Z08nqfcf+2Jf7YI0Q74wjOPIMjAOnJXvIh6QkePpyH
	1dZ9zyPVu2moD/V/OYNVQXjWlZSJ2yAMtSLFAgN6oPpG6i7YwWXW9QW8w9OlEhx8tGiWlZDV9Bm
	VHGpPbCN4Fjh9iUleb2kCiJlmDKhPFxlF6YqSiJu+0zWYf3F14vY/l/iVQh13zqFNHAMVVm/ouw
	gb9qD+vpcp0zu4HtF6ZwFSzwuBJKW6BkCPRpBJ/E97iDuZ5GyhbUojXoOCUemA6jA1uBuJg32PA
	NDEo5gd/JV0XwtxrI5sGwEznVI72N1Ql+rAI0ROEP3WCfJjSMkklYKuv/EUt25Bhb1idTYnfmQ3
	kQk1JSdZIZDMfRIhkh1mO7vpqeIni72WHnYC23KIPVyWUVAOmgU7xfX9LZbdtTaZfauG+yt5JSn
	eQxHClTXvM=
X-Received: by 2002:a17:902:c944:b0:2db:39dc:48af with SMTP id d9443c01a7336-2ddb1b7a12fmr143529905ad.17.1789972478709;
        Sun, 20 Sep 2026 23:34:38 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ddc179dbd5sm28173565ad.39.2026.09.20.23.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 23:34:38 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/3] arm64: dts: rockchip: fix analog headphone output on rk3399-firefly
Date: Mon, 21 Sep 2026 14:34:28 +0800
Message-ID: <20260921063431.103-2-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20260921063431.103-1-yaozhonguwl@gmail.com>
References: <20260921063431.103-1-yaozhonguwl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_233440_798811_037E26A1 
X-CRM114-Status: GOOD (  16.23  )
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

The analog headphone jack on this board has never produced any sound
with a mainline kernel.

GPIO4_C5 has to be high for audio to reach the jack. The board file
muxes the pin to GPIO through the rt5640_hpcon pinctrl group and
references that group from the codec node, but nothing ever requests or
drives the line:

  pin 149 (gpio4-21): 1-001c (GPIO UNCLAIMED) function rt5640 \
    group rt5640-hpcon

It therefore stays an input and reads low. The vendor tree drives it
from a hp-con-gpio property that was dropped during review of the
original board submission because it is not part of the RT5640 binding,
but the pinmux half was kept, leaving the description incomplete.

Describe it the way rk3399-roc-pc-plus.dts already describes the
equivalent signal, as a simple-audio-amplifier auxiliary component, so
that DAPM asserts the GPIO while the headphone path is active. That
board's DTS carries the same caveat in a comment: the binding is used
because it expresses a DAPM-controlled output enable, not because the
hardware is necessarily an amplifier.

Measured on a Firefly-RK3399 by toggling only this line while a 1 kHz
tone kept playing, with the playback PCM in state: RUNNING throughout:

  high -> audible, low -> silent, high -> audible

With this change the line is claimed and follows the audio path:

  pin 149 (gpio4-21): headphones-amp gpio4:149
  idle:    gpio-21 (|enable) out lo
  playing: gpio-21 (|enable) out hi

Fixes: 171582e00db1 ("arm64: dts: rockchip: add support for firefly-rk3399 board")
Assisted-by: LLM
Signed-off-by: Yaozhong Li <yaozhonguwl@gmail.com>
---
 .../arm64/boot/dts/rockchip/rk3399-firefly.dts | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 0568dfa..2fdfdd3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -96,6 +96,15 @@ key-power {
 		};
 	};
 
+	/* GPIO that enables the headphone output path */
+	headphones_amp: headphones-amp {
+		compatible = "simple-audio-amplifier";
+		pinctrl-names = "default";
+		pinctrl-0 = <&rt5640_hpcon>;
+		enable-gpios = <&gpio4 RK_PC5 GPIO_ACTIVE_HIGH>;
+		sound-name-prefix = "Headphone Amp";
+	};
+
 	ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
@@ -132,8 +141,11 @@ rt5640-sound {
 		simple-audio-card,routing =
 			"Mic Jack", "MICBIAS1",
 			"IN1P", "Mic Jack",
-			"Headphone Jack", "HPOL",
-			"Headphone Jack", "HPOR";
+			"Headphone Amp INL", "HPOL",
+			"Headphone Amp INR", "HPOR",
+			"Headphone Jack", "Headphone Amp OUTL",
+			"Headphone Jack", "Headphone Amp OUTR";
+		simple-audio-card,aux-devs = <&headphones_amp>;
 
 		simple-audio-card,cpu {
 			sound-dai = <&i2s1>;
@@ -547,8 +559,6 @@ rt5640: rt5640@1c {
 		clock-names = "mclk";
 		realtek,in1-differential;
 		#sound-dai-cells = <0>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&rt5640_hpcon>;
 	};
 };
 
-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
