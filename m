Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 180AFD3B7E5
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Dec 2025 10:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJZXhezQfRhZ4YOIy/yFS0ZOVy3TSetcfxTvLRN40+g=; b=aaagOMU09ZpIuL
	XpFtB8AEHa8y/gL5n0leiRnr426UTWtw5wGT5scHmWdF+zChYZH4V1poUz0Lk3pbxxG/SDzIEmV1J
	mvZ7yzt1x0FBek+iehbXCim+xAFXewC0lucdJABTYIgl2n9I5DVlidJlUOuKEZS8eK3iDAlIVDRo6
	GyCZuj+BdhQGQ03eFSLGJrXsh4zvrVkmQ6tVGghHjI7ziZLi9HaF1jj7UgtO02rEH6MYmgOVcCMOo
	cvKrGyEKataS3O/Q4wWOAvwpx7kpKJTHnhrs4Mj+nFcyLKEB0oFTEh2Vug7MPRq58LckxNmHQLzvs
	kQmkvccS1LO0b8bW9twg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaAEo-00000003XrW-0CO7;
	Mon, 29 Dec 2025 10:12:30 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaAEl-00000003XpA-2mfP
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Dec 2025 10:12:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id 5b1f17b1804b1-47bdbc90dcaso55741105e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Dec 2025 02:12:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767003146; x=1767607946; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hmvq8IpMPngxZJ89oRl/9976MSq6MvT7IIFrbZGP6LM=;
        b=mmAYe9RQsmWq4Q6aLRLBQA0HglSTPPcZTr7047imqeFD9bKvM66bpB4Uyh7iZyDTFx
         25wG/HAqSbDr47v/OyH1CzbirbvggRf8HNScULrq0bpOjYJEJD8lj7IRZ6WlGUceO2CZ
         7EatqcyV50eeSN5fe6jthBO3jcAwJ1EqdjuTJbxwMHUt4JJzQXDZsATpkE2R6oLCNGvU
         jbN7D/dWkxC4VdbpMd1koUq6BxjA9F7RpA3ogJzgL9Jo0Q+ttsoM4FEypkZIKT0+F8Gj
         p/vB9jt/e9OoTtsz2xzd3EsRuYox929JcDKWIoP72UetqyQBVDZl7e+r3uBEWbsBOFBh
         DDaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767003146; x=1767607946;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Hmvq8IpMPngxZJ89oRl/9976MSq6MvT7IIFrbZGP6LM=;
        b=P5GFLKRaj35d34hxsI//PXM/Z3MYyJZEyomOVdcjTJSjOxaSui+BV+NBgWQxqtRdsZ
         5Tk8Df5P8/HUdQXyKVyPwPGEbnLOpli+T2PvA5yQGkqP7x8YW8/AsaPFTR6zOmCKdgKJ
         pfQPlTKrA4C3OKcNIL+ohaEH1Oe+6dVmlGMPJOTAV8T9aNeo+zSkdDXb9c9hyur2MeeD
         gX2jArbmQYpQsHqtvqQMKcvxnhycD+4f/ahqMDyUnkdHswZy22omEadHAK3Z0XQWN5Ls
         bPrjfVa7Q78m/ErWQ1ggJTXHJ84n4X/HqhiqXAYJ/p8cuEz+2TrS6UEIdQ1f/5gJcaE5
         C7Kw==
X-Forwarded-Encrypted: i=1; AJvYcCXlq2WqeQxnyQ3tJF0XXUo2tvMVYNq/Ow+Kg1fI+BglZoEfEtxDz3+vE5Jhtqtt2F/RA6C6EbhjfLoe0xM/AA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0fPwDK8q0D59PrwUo5sI+FM2yperF+K/RJnh9M/1PtQKOh8y8
	g4+zZCzif2HtL9cgU0RVcwVUP0DEkmTNkatzT92A9GM8YDh7G/MaJlW/
X-Gm-Gg: AY/fxX61VA6MniMj1lRyVlEj8Kd8st78LE7yLKT3sD3l62lbYCYLGXf1m1wUmSwWevg
	C2jB3w8foiP6EXvUKkDe8U7BzFtka1r6UmBPnU4KaqkP1dOCRKJJwvMJwdlDo9mQa13lkokKeht
	J9cNDg9nJ9tTChZHPRNWShT0D/uMN4lXk8wOAgbDM5MjVaa8aKVBeDkMBgkXHe4dI1XqJM2jsUk
	zuitJzIZbc8x84RyBKAE5Q9OwDwqtjFNyYJMhwC+ITe86kVl1KdiYjNsn1C9r4ZKsx3gHU92VDA
	twIOP2gZzzP7TD1cLWojb2brx/hVRVdmgQvY91jyMh5rI1VuJEoEJAdMhGs5p9AMXsDxhvb5vlI
	VnkGEn2BgGcBccbN6TpSMiTydZmuXoeigY406VY0QyLf6mEBuqdjh5xUHlTbt02a52zs5nBkiU+
	Y7vn52eAOdTXTRygZKYmKTfj76bXbwuFFNRBIKRWkFXiONB9kXL4axJn+ix6WZ
X-Google-Smtp-Source: AGHT+IFAiAe+PhS2idEv0Ey0iDrFQE5elTI+8IG4cgjiYqs9uTdQ4Loam7NpxEwNgCGYGm4L7lRjHQ==
X-Received: by 2002:a05:600c:1d1d:b0:477:9dc1:b706 with SMTP id 5b1f17b1804b1-47d19576d2cmr308387215e9.19.1767003145527;
        Mon, 29 Dec 2025 02:12:25 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-45-246.alshamil.net.ae. [94.59.45.246])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d583f42dasm19840735e9.6.2025.12.29.02.12.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 02:12:25 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 29 Dec 2025 14:11:59 +0400
Subject: [PATCH 2/7] arm64: dts: rockchip: Configure MCLK for analog sound
 on NanoPi M5
MIME-Version: 1.0
Message-Id: <20251229-rk3576-sound-v1-2-2f59ef0d19b1@gmail.com>
References: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
In-Reply-To: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1919; i=alchark@gmail.com;
 h=from:subject:message-id; bh=kx/5/gOv+LNdWrQToOMBSk2+QPj07MLFLi9t/6wsj9I=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQGhTCKJ9zceEbqxZ/308R56qbLu/Ra14Txnm7u0bLLq
 2y6xZrVMZGFQYyLwVJMkWXutyW2U434Zu3y8PgKM4eVCWSItEgDAxCwMPDlJuaVGukY6ZlqG+oZ
 GuoY6xgxcHEKwFSfUWT4wy8fvvBDn9NR65JzTw3m7Ar2a3y/fg+HZYS43d3Za85M+8/wT+nqtWu
 pwToNs8I/tjzh+vay0GnLrlszBc92pK9K+TBxCisA
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_021227_729649_4CB50154 
X-CRM114-Status: GOOD (  11.08  )
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

NanoPi M5 derives its analog sound signal from SAI2 in M0 pin mode, so the
MCLK pin should be configured accordingly for the sound codec to get its
I2S signal from the SoC. Request the required pin config.

The clock itself should also be CLK_SAI2_MCLKOUT_TO_IO for the sound to
work (otherwise there is only silence out of the audio out jack).

Fixes: 96cbdfdd3ac2 ("arm64: dts: rockchip: Add FriendlyElec NanoPi M5 support")
Cc: <stable@vger.kernel.org>
Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index 37184913f918..bb2cc2814b83 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -201,6 +201,7 @@ sound {
 		pinctrl-names = "default";
 		pinctrl-0 = <&hp_det_l>;
 
+		simple-audio-card,bitclock-master = <&masterdai>;
 		simple-audio-card,format = "i2s";
 		simple-audio-card,hp-det-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_LOW>;
 		simple-audio-card,mclk-fs = <256>;
@@ -218,8 +219,9 @@ simple-audio-card,codec {
 			sound-dai = <&rt5616>;
 		};
 
-		simple-audio-card,cpu {
+		masterdai: simple-audio-card,cpu {
 			sound-dai = <&sai2>;
+			system-clock-frequency = <12288000>;
 		};
 	};
 };
@@ -727,10 +729,12 @@ &i2c5 {
 	rt5616: audio-codec@1b {
 		compatible = "realtek,rt5616";
 		reg = <0x1b>;
-		assigned-clocks = <&cru CLK_SAI2_MCLKOUT>;
+		assigned-clocks = <&cru CLK_SAI2_MCLKOUT_TO_IO>;
 		assigned-clock-rates = <12288000>;
-		clocks = <&cru CLK_SAI2_MCLKOUT>;
+		clocks = <&cru CLK_SAI2_MCLKOUT_TO_IO>;
 		clock-names = "mclk";
+		pinctrl-0 = <&sai2m0_mclk>;
+		pinctrl-names = "default";
 		#sound-dai-cells = <0>;
 	};
 };

-- 
2.51.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
