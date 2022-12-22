Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32CE6C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 15:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGiwQ24yJ3f9P3SrK9EV6NttmmpiRJYhItZWTqlSEqw=; b=wdXnAmJctFat+G
	LQlxXqp6lh9Sza8ZJ65svPGF46bNOHcRgsDqWTqIc4XDW2jJdIXzKbmoFESARV4yXKuoL2IsyrtdT
	m5Jmga1J5OnjaIS49y2TnO68fyvN7U12UumZhABtju0GL2U50XgPln4+2nwc44kxf9g/Nha+dW4ZZ
	1/c2IqzztaorXaDJkBInBQ0ebqnsTIZjpSeQPOWFV16vNjjAooBNm+7D0HPbmJoROgtO97p7GRxPE
	PWQMU9gQXgBfTvfhUy9+QqZv+Y/45/KbDLF60hi2lBUnaPNnVkhxZrTQ/E+3048HCV4CiKLYMbVDJ
	Dv6/dGJmPaNAJ5shni/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8NIE-00DOju-6I; Thu, 22 Dec 2022 15:15:35 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Mds-00D0w9-9s; Thu, 22 Dec 2022 14:33:53 +0000
Received: by mail-ej1-x62f.google.com with SMTP id u9so5444717ejo.0;
        Thu, 22 Dec 2022 06:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3spaG/gmW2iurMqKAzeqtwdB73qDEY0NRjhBceQ6XKs=;
        b=CRqcUNirJ7ntkMUU3JTGsOB20UlhBrxRoqyYx/3ZS4wzpgONJrG2I2eRg06hDXUMcN
         CGWzv1hqWty3MdmlDNEkmXm5Wvd75JsO30NtYG6rUExTOsSTd2ejWM/Ph0Vvl4znq5cR
         ASJyzhJg7dtPga9J3IzuVm8cO4HrT5GWRX5Z2wnWWU8R+ioOxrk5PylVbB6v7DZuFC0I
         LJ6OcTUs0vB5PaNojBTWE7NVnvc8iR57BDNCFcPC5dyI2v2Z41IO48C8khaMVX+F2wOH
         2itQG6e4aRjBmTmFUmWle4aNRLym2mhAYcibcMvG+bDMR8Ho8oYFuUC6WFf/Q1+viOC9
         GsfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3spaG/gmW2iurMqKAzeqtwdB73qDEY0NRjhBceQ6XKs=;
        b=p9aW8jYvMOnEDpgz+YJY+SrJlyAi2pYN+JJlQh3YJX9zEG9WtZ1BMJCkn/bKCA9Rxs
         Sz/r2yYwBUc3XBcE3BuMQXWM7IAye0VEYr+yh/KiVtluCgF5ib72i+/gbWVCqrVb7hF+
         FZMX7us9ZGmRhqwiT/7yepTwZ51UvN7Uxb6pRcyeCwr4nW4XhDBmmtBKw5p+FryJ1FQB
         dP+2W5clTDUYqDTaCOqEWf4SqE+JxCO8AlZTpVPhLYPpkC6W3mfdcwISjMugWY8swskM
         ooAtf3OV56sGGTynzwDoCLYrDHeoQfvET8SonYw1JvYGpfr5lYFvRB9wqqDhOjfz4w5b
         ykfw==
X-Gm-Message-State: AFqh2kqLf28aosoPIdlokmI0IBLKf/t+L4WG3JCnPkQh2+4Smbm6dSGE
	VBrh9rZcZROIpHFzsIWSPVk=
X-Google-Smtp-Source: AMrXdXs5nNL5GxAUeP1wdSH8AGyRtbt3ZUxJM9gwb+vJpq0IniGq4U7xZeYGlX3TVYis4RhsdPUVwQ==
X-Received: by 2002:a17:907:6d95:b0:7c0:aabd:fef0 with SMTP id sb21-20020a1709076d9500b007c0aabdfef0mr5674298ejc.17.1671719630737;
        Thu, 22 Dec 2022 06:33:50 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id jj20-20020a170907985400b007c0b6e1c7fdsm304754ejc.104.2022.12.22.06.33.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 06:33:50 -0800 (PST)
Message-ID: <4df211eb-4fcd-ee20-48a1-ce7712de552c@gmail.com>
Date: Thu, 22 Dec 2022 15:33:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v6 17/17] arm64: dts: rockchip: rk356x: remove hclk from dsi
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
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 linus.walleij@linaro.org, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, alim.akhtar@samsung.com,
 linux-samsung-soc@vger.kernel.org
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
Content-Language: en-US
In-Reply-To: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_063352_453095_3A543699 
X-CRM114-Status: UNSURE (   9.60  )
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
