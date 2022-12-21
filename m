Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6851EC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 18:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGiwQ24yJ3f9P3SrK9EV6NttmmpiRJYhItZWTqlSEqw=; b=i2KH1o7HjxT7Pp
	LBJEbeU4SFhRfb8vDs5fwamlKfCrU8Hu+WoKr1EEbTAwnYGbIC7OKoRwlrSYaJS9ri6oxZYu06ZlM
	5vZKvLzn5wxXf4X4M9zKjdNqWsUQwx2Or5gFoX0weHYXzBzf5GDqoT0cTk8Zpr4ku6fqC2202sMMk
	LRwtuPxZpL2+KvgoI1WwmfjWigkXakWbVwiEIK1jHHArTYsfuGXRY7pG1hL6sNUSXfHrImzho6rtw
	WhrZw+7EiDv9LNUYlUoX7EWIc6LdR0MY4eQDpz31g8qHrjLEcHYJ7SujhsJYIVCy6fH+bpkg2e4XI
	kEbXkt275NQ6orsA7kbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8427-000gLu-AC; Wed, 21 Dec 2022 18:41:39 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83oW-000Yhp-IQ; Wed, 21 Dec 2022 18:27:38 +0000
Received: by mail-ed1-x530.google.com with SMTP id i15so23253163edf.2;
        Wed, 21 Dec 2022 10:27:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3spaG/gmW2iurMqKAzeqtwdB73qDEY0NRjhBceQ6XKs=;
        b=HJYnALiuBC4czUJZQZMxToOk+mUn6hrTGkmT7s0lKwO+15/vlhSGhhp6Q0iPWhrq5q
         jOWyUmDPVqgwiEsndnL+9LELnFj6lN0IgQeahNtuNDeD6I+9cH8auJHEXoqQv84Uuol5
         erYbwdjgpaNPJ9tz9g2UA2S8H0NMz3Yi4TJpRa5YJt1y9Y9GRdzXybOKpJCs/fMECfbH
         G2gKgF0DKSGU8Fk9hd9k8cR46MpIslUAKhz0qYKLV5PwwtfWAx5Vz1WI462A8uNdCQbq
         2TN9iKaJ2Cd+e32bc8z/xsyMN47sBiKojufwCMUHB5x7LY21rNIoTndGXIUyaY/jRZC3
         b56w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3spaG/gmW2iurMqKAzeqtwdB73qDEY0NRjhBceQ6XKs=;
        b=aGg65oUZW7PofSdhFmQzQWrFeaMtMGm8bVzLS1SBXpjSbesTPW/OAfPZ1uC+qb6sYf
         1b6vcRsbHP00IjWra4jFKFPvpNYl1wnOa3qZGgFxDtTw7EpsEJh0PIY6B0P2UJhX3klr
         f6AK4f6pyBdcfgMiUStj5e0knM0EcVJyzy2yhz/emSfDe0VEYPB9T65BWdTWCh/2714D
         8b7Jn5o8hgFgR+06w5cex+TGiCo4OC5jP5GiEOw/tqO0BpaZ1qpqpAN8cRTK+eUeiovS
         +jJ6InPmYl4wvVuZTbpY4FBPnz8/QHwGdo/5qLpqLrPittS3ERxqnoR9OVPsqxJL17Pn
         rnXA==
X-Gm-Message-State: AFqh2krU53XxBKkZJ5q8tBg2G71zQPb4WlLqd8xgiew3rUUYWFtPGQJn
	OqYU01UrXoZ8b9CHw8jEYHE=
X-Google-Smtp-Source: AMrXdXuuboy0Cy7pIoYaHpGBK0/px3c7JvHO5JGIK2vGuTSmoniRYvRFRSPlPt/0TZewWYO1okg75Q==
X-Received: by 2002:a05:6402:685:b0:479:ab7d:1dad with SMTP id f5-20020a056402068500b00479ab7d1dadmr2840833edy.32.1671647252722;
        Wed, 21 Dec 2022 10:27:32 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id w26-20020a056402129a00b0046dd0c2a08esm7351683edv.36.2022.12.21.10.27.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 10:27:32 -0800 (PST)
Message-ID: <621bc5c4-340e-683d-fa61-520b9ed45e1e@gmail.com>
Date: Wed, 21 Dec 2022 19:27:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v5 12/12] arm64: dts: rockchip: rk356x: remove hclk from dsi
 node
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 airlied@gmail.com, daniel@ffwll.ch, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, philippe.cornu@foss.st.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org
References: <7f883643-c796-029f-ba38-73532325632d@gmail.com>
Content-Language: en-US
In-Reply-To: <7f883643-c796-029f-ba38-73532325632d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_102736_710986_F72D3C8B 
X-CRM114-Status: UNSURE (   9.81  )
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

The hclk is not used in the dw-mipi-dsi-rockchip.c driver,
so remove hclk from the rk356x.dtsi dsi node.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 5706c3e24..2cb61a783 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -743,8 +743,8 @@
 		compatible = "rockchip,rk3568-mipi-dsi", "snps,dw-mipi-dsi";
 		reg = <0x00 0xfe060000 0x00 0x10000>;
 		interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
-		clock-names = "pclk", "hclk";
-		clocks = <&cru PCLK_DSITX_0>, <&cru HCLK_VO>;
+		clock-names = "pclk";
+		clocks = <&cru PCLK_DSITX_0>;
 		phy-names = "dphy";
 		phys = <&dsi_dphy0>;
 		power-domains = <&power RK3568_PD_VO>;
@@ -771,8 +771,8 @@
 		compatible = "rockchip,rk3568-mipi-dsi", "snps,dw-mipi-dsi";
 		reg = <0x0 0xfe070000 0x0 0x10000>;
 		interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
-		clock-names = "pclk", "hclk";
-		clocks = <&cru PCLK_DSITX_1>, <&cru HCLK_VO>;
+		clock-names = "pclk";
+		clocks = <&cru PCLK_DSITX_1>;
 		phy-names = "dphy";
 		phys = <&dsi_dphy1>;
 		power-domains = <&power RK3568_PD_VO>;
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
