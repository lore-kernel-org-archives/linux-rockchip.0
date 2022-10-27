Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B27D2C38A2D
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Oct 2022 08:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kQKS/pxT/bXpiTv+3aRKHWEcupPZgwOo2IJhIaP7pPE=; b=gtemtXFqRKYPoU
	jug9+FS4kKUHXNHDRQDur2yy+3d1htg0JXciA8rvEzpJ4Lcnsu9HviauzVVcvGJf7rCPiCFU6lLNI
	BgjHnpfLW3dD9p7JyizAxKB6LYoIjsZnsDr5+zu55ty8UrlmSmu4Z9b4JFcJg1UcFrnDhBeUUdzHb
	7UDbY++/Ht2OJ0npJfAupE9sQ3y/aeYeLW+1oJigTxOkJHTFu/DAFlrT4i9h4IoJ12G29k1xfgakc
	Y2nRTU+29bqz8uh4FoGjB8JJvajDN3Wv2VbI2OYVIw1hbRl1JW3oRoSGKEqEWi8gZ7dqU6WovkKHU
	PIZ1hPJ3AtSbn/1OImxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onyOY-00CQNA-S7; Thu, 27 Oct 2022 08:37:46 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onyOO-00CQJv-5y; Thu, 27 Oct 2022 08:37:37 +0000
Received: by mail-ej1-x634.google.com with SMTP id y14so2455365ejd.9;
        Thu, 27 Oct 2022 01:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DHHglLeoa0xl2Lso2Kv9u+moRM1p+bVCpjecaPrLp1s=;
        b=M5hzx7V4PkX3+liCaEQXoRKFUNXaQAYvslC8zW0Xuk6v2kwLNiAtBRORZwRHm1PoQF
         pazONDEJ5n0a/drlgtuhcMj6nMNTk/vnSC5PiRChuIcTqlvlgb2f4c1HlmMnXoJZhyDs
         k7xVqin+Dw0OK5JN14fmUEN9vW+4kt+bI/gL9Lj7gfGAXnsEzWgyXU/dK8IH2gWgm4RF
         pD30calUGp7fKFFNrq/9eDu57Wxtlffj9yzi5EROkArSUhqdhkgV/hG+v0kR9Vwc/GkA
         JXnGSwzF6TW0ixCk3hH6gnfV/r2Gf+pNrttmt3z57mbtswfYPkV6logT5Wi0wS/uzv0g
         OYvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DHHglLeoa0xl2Lso2Kv9u+moRM1p+bVCpjecaPrLp1s=;
        b=Lc+GeIg77uTGmX+0tIxJNK9G6Tpsa1gmOhfAypyUZfFkJLSJ606T3NL3CgYP9D2tPP
         /lqd3+qamRdg61GFwTTrQ2PCNw5DE7Hecx85Cr2AZbpu74vhkUrZKKPzf16yzqCLKgAb
         8bnKXtMB/P/pTKBFQH7aeNNzb+C/plr1ILGwwnSjd1MZITgKpI7KmsENHv++dYDnIbSK
         IjOq/AJeynJzKPTk0hzjaf6j6+KQd7Fs9akAY6DGMw6XNbvxuZYc8ZsNb8c50sGMsYjy
         dgHGXHyXA3tkR86Z8xYk+jcvgU95GmrqNNk9TG2w9vKUtafZUO1rM8r0YW/4wAX2M9+F
         b78g==
X-Gm-Message-State: ACrzQf3RXlMAaW6Se691dNRjW/AOiiMoyc9OZx33IApELd7P/sHW5K/P
	vZGBVzza9MZaJhGRDxN5elM=
X-Google-Smtp-Source: AMsMyM4yb3/eGOA49HXzZjlKZ2FDQA+V61xj9i/S6fr1C9izc5dEgHdl9cBQF2I7bHK9euhTuZT6cA==
X-Received: by 2002:a17:907:160c:b0:78d:b6f5:9f56 with SMTP id hb12-20020a170907160c00b0078db6f59f56mr51155ejc.325.1666859854253;
        Thu, 27 Oct 2022 01:37:34 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id d10-20020aa7c1ca000000b0045d74aa401fsm570590edp.60.2022.10.27.01.37.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 01:37:33 -0700 (PDT)
Message-ID: <7a0013b1-3a55-a344-e9ea-eacb4b49433c@gmail.com>
Date: Thu, 27 Oct 2022 10:37:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 1/2] ARM: dts: rockchip: fix adc-keys sub node names
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_013736_250776_CE767E81 
X-CRM114-Status: UNSURE (   9.95  )
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

Fix adc-keys sub node names on Rockchip boards,
so that they match with regex: '^button-'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a-mk808.dts | 2 +-
 arch/arm/boot/dts/rk3288-evb.dtsi   | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a-mk808.dts b/arch/arm/boot/dts/rk3066a-mk808.dts
index cfa318a50..2db5ba706 100644
--- a/arch/arm/boot/dts/rk3066a-mk808.dts
+++ b/arch/arm/boot/dts/rk3066a-mk808.dts
@@ -32,7 +32,7 @@
 		keyup-threshold-microvolt = <2500000>;
 		poll-interval = <100>;

-		recovery {
+		button-recovery {
 			label = "recovery";
 			linux,code = <KEY_VENDOR>;
 			press-threshold-microvolt = <0>;
diff --git a/arch/arm/boot/dts/rk3288-evb.dtsi b/arch/arm/boot/dts/rk3288-evb.dtsi
index 399d6b9c5..382d2839c 100644
--- a/arch/arm/boot/dts/rk3288-evb.dtsi
+++ b/arch/arm/boot/dts/rk3288-evb.dtsi
@@ -28,19 +28,19 @@
 			press-threshold-microvolt = <300000>;
 		};

-		menu {
+		button-menu {
 			label = "Menu";
 			linux,code = <KEY_MENU>;
 			press-threshold-microvolt = <640000>;
 		};

-		esc {
+		button-esc {
 			label = "Esc";
 			linux,code = <KEY_ESC>;
 			press-threshold-microvolt = <1000000>;
 		};

-		home  {
+		button-home  {
 			label = "Home";
 			linux,code = <KEY_HOME>;
 			press-threshold-microvolt = <1300000>;
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
