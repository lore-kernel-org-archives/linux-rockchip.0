Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD107CA1000
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Aug 2025 18:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTp5Y0J0Pp1gqGxjaDwKaDSAtAp/dyZAKHrS67ejLB8=; b=C3+Y0EEfqAE8VF
	d5CzBHTZnb+IQNyGTz9eOg1HpnREgAqfHCAnfMYYj1IO0k0Asgd9F6n530xbAuDLqK2EgCSU923ZL
	wP5MYt4GSWuTBYKdDj+OK7s0plPQq5DmfY7vQwu5KHtamSKA30g5AHoqyliRgYLFQ+kEXLeEPJZQK
	GV6wQQHG4++lbnublZx5LplLD3IuVaBlF5TFqTYU1bWmgq8CStVyZSpDpXgJ1SPjkDTqlolz3A2W7
	fAb6t4qdndHwlKEMx6+uvzuUT0npcFzFTxlgwlQytYJVJq9iZ7mtgf+IgKLRBmiMS0aJf40292fW3
	fIRlpx1/t4YH0Ovox/Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urhWM-00000002oDF-0fz6;
	Thu, 28 Aug 2025 18:38:50 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urccl-00000001jGM-2Jlg
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Aug 2025 13:25:09 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-afe84202bc2so128725966b.2
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 06:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756387506; x=1756992306; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KP6GeI4QNlyVzRWNe4PL6HeP+siA3vt2wqk6FJm5c6M=;
        b=fjGRryPNRdN2zZ2SI40/V0o8WL4hLj+ebeRnaotiWKdXVs+Z4owGWVi4GZDRpEfDQs
         6xN5KT3zV6af7OIQ6hS7hDuR4bGEqgab6x9Ojh3JH7kX9Wvi6dokwa+HtVK37fzzgmae
         pWYmjGSMb/8CEv3oti17C623B9qrXpARnL2GMo9LEPNO+iBGWHQCIQacHTP4Bd7lwf8H
         6o5apKK9t0QRdgnALFIirKLpfTNqBlp2yrdvpAnQ/8UTXiBX4iOvLlIxXU5HU0VxhD8F
         GLkHnbAABytpGe+iM9yis3zrdH3BZ/idAqPvcU80HuEGT701z3KcSSA+KQvgiwvBJsG4
         Bnvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756387506; x=1756992306;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KP6GeI4QNlyVzRWNe4PL6HeP+siA3vt2wqk6FJm5c6M=;
        b=RqVeWLjhQOCL/3lHHAlpqqqugwHEd4xYx+2jk0KcUiGxkWDBqkJl1s2lEtNHuLB9fv
         FHp+iXw8WZdiIdM16rIalmEjcBORkZo1IpFXfzMtsc14HDazD3YYrmwEoV9x0IdEb437
         mH1oWubcWhJQBfVZSbnykCyaLYWGmJIAMQ3v0IzGN+9ymwq2+1WmWMFztvwPqHOvrJMm
         /qb23FEQSeoQI/Sc4DO2AtiIHVV31Oz5Moxmjw/pyoanqzeSmUv0MHt0UPQ4Tuy/Fj5H
         +GY4Q36b7Jam5BAM+c1wYq+uEzrSnHSDGn2aeaoDWvYijgs/GSXwxysgnDIFBaaHvHN7
         IRdw==
X-Forwarded-Encrypted: i=1; AJvYcCV8frLMOPkxzEldMM647zBG2iQkBoIL8qckxPqzdGdmxNqQ3iTECDrRA1doAcS5pzR2IY7znxDQefhg4++JSg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzI9s1XKD1+C9IgsOizzKO6rDE2GUE1lyMqfk+O1kfsC6ucBgCT
	wOZjf2sCTZzLW8urH9MSxBPLKue6LiPwflKh3QT1Y9iS3xLwNLM94wgTAYDjfGOCfBI=
X-Gm-Gg: ASbGncu/6o06SFqQ5KqPPgDo7ANeIzWXKcPrltxNCrqdutE5f/5TL+RW1pPWpfl67eb
	+YafUMcnbHxoNo5LWMFltWpkSMfzMzsRgKon44Jx+AClTa/QxtOWlAJGeL8cTW/gt8XHK4QuHHa
	NYa4lvib+Ea5+qSlloHrvt9XYDhGVXWprF9BE4233xHbLy9sGzMjp69lx2TDtAk1JVfiDY/kD0I
	9jVSNZ6HorIEOWsgfvKia9IstvW/vHNqp6xWD8JouE39Ex8IMhVw85GA2LO7rhMNS/QGQ2YkxxX
	7NZwHIsIqVWCPtTPo6+xCTTROYTo55d7FfK2Oajk/rzrRCThKwGY6TdV9E1XS94qVOC0z/2lLhb
	//MeGlYb6iO0mDwNnK7A00PbYq2r/tHuYG7MOJsRwEcWMln93HD0h+tJIL8KRKQ3+WtxQ8iC+hr
	WWNQ==
X-Google-Smtp-Source: AGHT+IHnstlza8K9C5w6vOWcSWmYNQEhQr+qMHGXGhuf3pnVngAd6eVaQO3IZGsyPfF2zyp3aTQhtA==
X-Received: by 2002:a17:907:968c:b0:afd:d9e4:51e7 with SMTP id a640c23a62f3a-afe296bceabmr2217290166b.63.1756387505863;
        Thu, 28 Aug 2025 06:25:05 -0700 (PDT)
Received: from [10.41.150.230] ([77.241.232.9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe79fba62dsm926560266b.100.2025.08.28.06.25.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Aug 2025 06:25:04 -0700 (PDT)
Message-ID: <ecbde2de-d08a-4951-82a4-fb73760de73e@linaro.org>
Date: Thu, 28 Aug 2025 15:25:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 10/13] arm64: dts: rockchip: add the vip node to px30
To: michael.riesch@collabora.com, Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Markus Elfring <Markus.Elfring@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Mehdi Djait <mehdi.djait@bootlin.com>
References: <20240220-rk3568-vicap-v10-0-62d8a7b209b4@collabora.com>
 <20240220-rk3568-vicap-v10-10-62d8a7b209b4@collabora.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20240220-rk3568-vicap-v10-10-62d8a7b209b4@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_062507_598263_9BBE616D 
X-CRM114-Status: GOOD (  14.97  )
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

On 19/08/2025 01:26, Michael Riesch via B4 Relay wrote:
> From: Mehdi Djait <mehdi.djait@bootlin.com>
> 
> Add the device tree node for the PX30 Video Input Processor (VIP).
> 
> Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
> [added cosmetic changes]
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>   arch/arm64/boot/dts/rockchip/px30.dtsi | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index 46f64cd33b9b..ef52879d6a73 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -1280,6 +1280,18 @@ isp_mmu: iommu@ff4a8000 {
>   		#iommu-cells = <0>;
>   	};
>   
> +	cif: video-capture@ff490000 {
> +		compatible = "rockchip,px30-vip";
> +		reg = <0x0 0xff490000 0x0 0x200>;
> +		interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru ACLK_CIF>, <&cru HCLK_CIF>, <&cru PCLK_CIF>;
> +		clock-names = "aclk", "hclk", "pclk";
> +		power-domains = <&power PX30_PD_VI>;
> +		resets = <&cru SRST_CIF_A>, <&cru SRST_CIF_H>, <&cru SRST_CIF_PCLKIN>;
> +		reset-names = "axi", "ahb", "pclkin";
> +		status = "disabled";
> +	};
> +
>   	qos_gmac: qos@ff518000 {
>   		compatible = "rockchip,px30-qos", "syscon";
>   		reg = <0x0 0xff518000 0x0 0x20>;
> 

Now that I look at the rockchip dtsi it appears newline scarcity is the 
norm, you can disregard my suggestion for your example in the previous 
patch so.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
