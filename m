Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08F97C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 18:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fzo0SYSaKGBxOW9ny1BgTHcIFgA4tQZgejdyoOd9VEk=; b=L71sovuHLneoRL
	akygK9FjeddV7rNNYSRzznT9ulrIpuGjBjvE6qpg6DfCQT6cN8Qi5e5RK6qaWXQDjEreRO6yFwP9B
	SHGkryaGsMGjA0QqGk2/eXZ3Y0F79Av+RyAH7NLkEUV42lk18294bz/DDKzu/zG2fz6T5b9WvPVIk
	IM+IqfVTY5HgL0b5bm1ZOOsMXt59joglTpx9O6utP1Ztri1Q1+lCMV/0li57fhW/7Wso7UBbRVrNk
	HCoAI+zrqa2WBuFGLrCbAbctvxuoWGy5iBYtqFrxamU6zu/ZI5sAEtkAF/GBGsibPWj0bF4Hy1z1J
	wWJobyE+/qnDlhDHVx1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9Ucz-00FywS-1k;
	Sat, 02 Dec 2023 18:22:09 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9Ucv-00Fyw0-2c;
	Sat, 02 Dec 2023 18:22:07 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-54c77e0832cso1081464a12.0;
        Sat, 02 Dec 2023 10:22:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701541323; x=1702146123; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TyFCiKZiHWD5dcEIPfQHHPlDxT1woqLl54OWaAFXfos=;
        b=Lh3wQwDQnHTfLhqPRJRkD9+plEgFL+KeB9XiGXx+Nb0HGJIEcq2SDZ/VXYeugoPuvL
         N9SW71Of1OJADzZcfR2mtLf8Yv9ATh0k5cv02E42cqjef8WXTtKXp0r8fXSoOvr3J5TE
         JQ+iNciH7DJMtFRkXqIe6pcj7e8of8f+tFMb1Lf1fR7WbAgQ6Cl9wRTpmwLT1KaoKe/g
         4RibVTS5wCD1q9d/zDkp1rG+D2DXBNuno4sNC3LLdTTgJUvajAZIBpYGdcMkqaUMIfim
         ZnA5zU1HGqEuM+S29ecmlf/H79zANxGc9y9u+nfEi6dibTScGr3jfj3+U93tzBRf2e/g
         FbCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701541323; x=1702146123;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TyFCiKZiHWD5dcEIPfQHHPlDxT1woqLl54OWaAFXfos=;
        b=SqZBtJzwzZHebFW/fSz+10fG0ayPXLk0nULfeyAFOtbkva+tDNRDx3KF0AzqFiHSip
         F+Vo9jKCMfH5yWrwrJ/ZdRAUeP/fkzrfdQ08DWKndS3PANB8MaUGfXbZIi6KeF4SoKOo
         rzMV4huZ3gzN4wLKVyrWnPHP9+hBo4pCZ6kuoHV4kmVhSwygFBO3Z7HWRxJJhIpl28DT
         btnQE9iYrw82uNMr4OxmdBWuSesiVGPy6ebnB1t+JxHbKyh54QzH/IgX9+6QcgAmUued
         kznOF6AUNE050/g49PVV1eZvvLVLRO1qGpi62VuLHpm5ZfIBJsLDtT8BZiXZVISE0nKt
         qzNQ==
X-Gm-Message-State: AOJu0YyOWELR1cnjPLwjqi3AL4kggzFgdgq9j70ix2aKsoqdc3lwRDHF
	+W9e2PKH1ZgHyEHVR/PBLSY=
X-Google-Smtp-Source: AGHT+IGjhja9zQfmHEPloTPetsXirLklrAI+SSzAqtY1tPIIcu8nnQ8h24bB3rkMbTIyy3R/7qu9Hw==
X-Received: by 2002:a50:bac5:0:b0:54c:4837:93fc with SMTP id x63-20020a50bac5000000b0054c483793fcmr1938993ede.67.1701541322838;
        Sat, 02 Dec 2023 10:22:02 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id q11-20020a50c34b000000b0054ca7afdf35sm57615edb.86.2023.12.02.10.22.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Dec 2023 10:22:02 -0800 (PST)
Message-ID: <89f2a229-9f14-d43f-c53d-5d4688e70456@gmail.com>
Date: Sat, 2 Dec 2023 19:22:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 1/2] ARM: dts: rockchip: add gpio alias for gpio dt nodes
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, jay.xu@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_102205_871923_BEB6BFB6 
X-CRM114-Status: GOOD (  11.87  )
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

Rockchip SoC TRM, SoC datasheet and board schematics always refer to
the same gpio numbers - even if not all are used for a specific board.
In order to not have to re-define them for every board add the
aliases to SoC dtsi files.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V1:
  rebase
  remove rk3066 gpio5 alias
---
 arch/arm/boot/dts/rockchip/rk3036.dtsi  | 3 +++
 arch/arm/boot/dts/rockchip/rk3066a.dtsi | 5 +++++
 arch/arm/boot/dts/rockchip/rk322x.dtsi  | 4 ++++
 arch/arm/boot/dts/rockchip/rk3288.dtsi  | 9 +++++++++
 arch/arm/boot/dts/rockchip/rk3xxx.dtsi  | 4 ++++
 5 files changed, 25 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
index 78686fc72ce6..8aa2e0864fed 100644
--- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
@@ -17,6 +17,9 @@ / {
 	interrupt-parent = <&gic>;

 	aliases {
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
diff --git a/arch/arm/boot/dts/rockchip/rk3066a.dtsi b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
index de9915d946f7..30139f21de64 100644
--- a/arch/arm/boot/dts/rockchip/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
@@ -13,6 +13,11 @@
 / {
 	compatible = "rockchip,rk3066a";

+	aliases {
+		gpio4 = &gpio4;
+		gpio6 = &gpio6;
+	};
+
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
diff --git a/arch/arm/boot/dts/rockchip/rk322x.dtsi b/arch/arm/boot/dts/rockchip/rk322x.dtsi
index a721744cbfd1..831561fc1814 100644
--- a/arch/arm/boot/dts/rockchip/rk322x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk322x.dtsi
@@ -15,6 +15,10 @@ / {
 	interrupt-parent = <&gic>;

 	aliases {
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
diff --git a/arch/arm/boot/dts/rockchip/rk3288.dtsi b/arch/arm/boot/dts/rockchip/rk3288.dtsi
index cb9cdaddffd4..ead343dc3df1 100644
--- a/arch/arm/boot/dts/rockchip/rk3288.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288.dtsi
@@ -19,6 +19,15 @@ / {

 	aliases {
 		ethernet0 = &gmac;
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
+		gpio4 = &gpio4;
+		gpio5 = &gpio5;
+		gpio6 = &gpio6;
+		gpio7 = &gpio7;
+		gpio8 = &gpio8;
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
diff --git a/arch/arm/boot/dts/rockchip/rk3xxx.dtsi b/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
index cb4e42ede56a..f37137f298d5 100644
--- a/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
@@ -16,6 +16,10 @@ / {

 	aliases {
 		ethernet0 = &emac;
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
