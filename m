Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65480C47258
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Jan 2024 16:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NCwRXmBDGvVc+nu60B4oVAp8G2IOWbJ9sDmr0nTcTk=; b=BqY0F8U6PCW6SO
	ax+svo4xFmSF0zBbZBQxo25vhN0HvqIltziMK8XqFGuLFW56VXCva5FYV1n+bWHmfGlRj37ZfLDp7
	REBKR/wE3PX2PZi3INRYRkW3qmUdOjV2l/DIacLeNf4YPGnDOXtoekuFbN1iwP2htXzKnyVQgdh+V
	ujRFGUTwMeCj1SUoO2GO+NBCYD21ESVbfNSEgJE8+U9NXTlrwTiRoiANGusQvpv/j8RZVC9z3PWME
	TV6OeY1eIyqXCsZMWdXtdavGA7w+OA4xmbyauf73fAItc/UwnckWceF2aIsOLqtdaPbVoFuJETTYT
	iiKW0pk5MWxndJEAoBPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRDm6-008477-2Y;
	Sat, 20 Jan 2024 16:00:50 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRDm0-00846B-1D;
	Sat, 20 Jan 2024 16:00:48 +0000
Received: by mail-io1-xd32.google.com with SMTP id ca18e2360f4ac-7bed8faf6ebso72063739f.2;
        Sat, 20 Jan 2024 08:00:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705766441; x=1706371241; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lDMba898QCD1xJMzInkaVLstqNui1SJewd5Xj+Qlc5o=;
        b=aPIgNzlHFf2lVKb3n3e1T4slRrQjyuVFjF8SdL1Hx00esNxFcgntc7eZlg5+pW6UUV
         T4Rrv8GyuYe6/ELJBEeeXU/ZsGXoMSqeKl1BpycsDyvfkElGv7mZYewuUYZB03BHYqIS
         H6TN0j77xmhrXm2P4R0t2s75v3RYryKZdIACa880IGobUc4QpdkkW4ts1+fKxkYDHcRB
         eUWGBLtJiWBwLhiKcaODQ/LOvM8vSOsQBx4MLEoWrdfkF/9dNqRM19PlM9opT3ziVE5T
         IIv87WhnbaWFVGwOIrZas2pq9R/LY86LGU8xQZvqK1hXVGvaWDTl82EYbFD63wVITR+f
         V+fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705766441; x=1706371241;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lDMba898QCD1xJMzInkaVLstqNui1SJewd5Xj+Qlc5o=;
        b=PYa+iL9LoIDogcZIzRJD08Tdf+FEymsWoSWi3XjajW+tff1kGt+6v9OwTLzQ80NUfj
         GMv6Y9HuqaUkHVYFegCuTV8T+BY8jfm74p2HAVPG/1CySBegCRIOP2sNA2Uhbgb2OnAW
         LOmy3A3WGkVQNCCDjETUtxPPAyy2RsOnXS0q6eTxiFqfahqhLoCB0M+izp3lBbZgwlos
         2e5C3yJcC6L+lZcJ/Sbz8SKc30pHyTKYqjXifujLReQszRJotsPawJa93tz4xyfC7jLY
         A6bxrwdEWGXUvXVAYP8Q5SEkFeN4g24NDrvchfu8jKKjk5lm0WWLT2H46N+Jx8LsVcQC
         PzZw==
X-Gm-Message-State: AOJu0YzfNrM+AgvPJZktgYih5ajWcqsIpdNL89v0+NYT/TLYG77EYHd0
	stuxTiXiytke8Crk0XPm+mNQnnrZrXMaNr47BvqtP1s6fQoK5J8=
X-Google-Smtp-Source: AGHT+IFE4TuOrJtzgHLyBaksg6zWj1nGUuiBUsShGIJO51OPBEs5aW70fx/DlpadBlXHiBtEPvLJgg==
X-Received: by 2002:a6b:ec12:0:b0:7bf:397a:dbe1 with SMTP id c18-20020a6bec12000000b007bf397adbe1mr2287663ioh.4.1705766440970;
        Sat, 20 Jan 2024 08:00:40 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4600:279c:2034:6e39:5ea1? ([2a02:810b:f40:4600:279c:2034:6e39:5ea1])
        by smtp.gmail.com with ESMTPSA id j20-20020a02cc74000000b0046cd8bac20dsm2136149jaq.12.2024.01.20.08.00.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Jan 2024 08:00:40 -0800 (PST)
Message-ID: <e3713300-492c-43eb-aaf9-0add95ef3b19@gmail.com>
Date: Sat, 20 Jan 2024 17:00:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] phy: rockchip: Add Samsung HDMI/DP Combo PHY driver
Content-Language: en-US, de-DE
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>,
 Algea Cao <algea.cao@rock-chips.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
 <20240119193806.1030214-4-cristian.ciocaltea@collabora.com>
 <eodlujrytdm6gugcbaz3efnjvgg7sbvsqedwllmleh4ar6e7cr@3ejicokdjzcd>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <eodlujrytdm6gugcbaz3efnjvgg7sbvsqedwllmleh4ar6e7cr@3ejicokdjzcd>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240120_080044_441489_59215C17 
X-CRM114-Status: GOOD (  19.90  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am 19.01.24 um 23:47 schrieb Sebastian Reichel:
> Hi Cristian,
> 
> On Fri, Jan 19, 2024 at 09:38:03PM +0200, Cristian Ciocaltea wrote:
>> Add driver for the Rockchip HDMI/eDP TX Combo PHY found on RK3588 SoC.
>>
>> The PHY is based on a Samsung IP block and supports HDMI 2.1 TMDS, FRL
>> and eDP links.  The maximum data rate is 12Gbps (HDMI 2.1 FRL), while
>> the minimum is 250Mbps (HDMI 2.1 TMDS).
>>
>> Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
>> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
> 
> The driver has multiple sequences looking like this (this is just one
> example of many):
> 
>> +	hdptx_write(hdptx, CMN_REG0087, 0x04);
>> +	hdptx_write(hdptx, CMN_REG0089, 0x00);
>> +	hdptx_write(hdptx, CMN_REG008A, 0x55);
>> +	hdptx_write(hdptx, CMN_REG008B, 0x25);
>> +	hdptx_write(hdptx, CMN_REG008C, 0x2c);
>> +	hdptx_write(hdptx, CMN_REG008D, 0x22);
>> +	hdptx_write(hdptx, CMN_REG008E, 0x14);
>> +	hdptx_write(hdptx, CMN_REG008F, 0x20);
>> +	hdptx_write(hdptx, CMN_REG0090, 0x00);
>> +	hdptx_write(hdptx, CMN_REG0091, 0x00);
>> +	hdptx_write(hdptx, CMN_REG0092, 0x00);
>> +	hdptx_write(hdptx, CMN_REG0093, 0x00);
>> +	hdptx_write(hdptx, CMN_REG0095, 0x00);
>> +	hdptx_write(hdptx, CMN_REG0097, 0x02);
>> +	hdptx_write(hdptx, CMN_REG0099, 0x04);
>> +	hdptx_write(hdptx, CMN_REG009A, 0x11);
>> +	hdptx_write(hdptx, CMN_REG009B, 0x00);
> 
> Instead of the repetitive calls to regmap_write, it's better to do
> it like this:
> 
> static const struct reg_sequence some_init_seq[] = {
> 	REG_SEQ0(CMN_REG0087, 0x04),
> 	REG_SEQ0(CMN_REG0089, 0x00),
> 	REG_SEQ0(CMN_REG008A, 0x55),
> 	REG_SEQ0(CMN_REG008B, 0x25),
> 	REG_SEQ0(CMN_REG008C, 0x2c),
> 	REG_SEQ0(CMN_REG008D, 0x22),
> 	REG_SEQ0(CMN_REG008E, 0x14),
> 	REG_SEQ0(CMN_REG008F, 0x20),
> 	REG_SEQ0(CMN_REG0090, 0x00),
> 	REG_SEQ0(CMN_REG0091, 0x00),
> 	REG_SEQ0(CMN_REG0092, 0x00),
> 	REG_SEQ0(CMN_REG0093, 0x00),
> 	REG_SEQ0(CMN_REG0095, 0x00),
> 	REG_SEQ0(CMN_REG0097, 0x02),
> 	REG_SEQ0(CMN_REG0099, 0x04),
> 	REG_SEQ0(CMN_REG009A, 0x11),
> 	REG_SEQ0(CMN_REG009B, 0x00),
> };
> 
> regmap_multi_reg_write(hdptx->regmap, some_init_seq, ARRAY_SIZE(some_init_seq));
+1 on that.

It' quite hard currently to figure out what the driver is _actually_ doing
as it has all this hardcoded sequences mixed up with driver logic. Better
move them at the top as arrays and use regmap_multi_reg_write as Sebastian
suggests.

Alex
> 
>> +static const struct of_device_id rockchip_hdptx_phy_of_match[] = {
>> +	{ .compatible = "rockchip,rk3588-hdptx-phy", },
>> +	{}
>> +};
>> +MODULE_DEVICE_TABLE(of, rockchip_hdptx_phy_of_match);
>> +
>> +static struct platform_driver rockchip_hdptx_phy_driver = {
>> +	.probe  = rockchip_hdptx_phy_probe,
>> +	.driver = {
>> +		.name = "rockchip-hdptx-phy",
>> +		.pm = &rockchip_hdptx_phy_pm_ops,
>> +		.of_match_table = of_match_ptr(rockchip_hdptx_phy_of_match),
> 
> Remove of_match_ptr(). It's a nop, since the driver depends on OF.
> 
> Greetings,
> 
> -- Sebastian
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
