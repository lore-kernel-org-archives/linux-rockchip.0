Return-Path: <SRS0=TPHQ=NV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A7F3C432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 21:12:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 34D3960F12
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 21:12:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 34D3960F12
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zfwnxa2/KnJULEu+KACxIbwP+IASqVf3iv62lzv4xD8=; b=gNzhOeX2d/QrmB7Aa2bZwPZwqA
	5yoRy4/JpWKvrRg1cjrAm2iaxxbWnwSXzNqjXKxd+J8EkJGXPmiGngKisrkCpq38LnQM8wZI3c+Rv
	3YIxRu7bBCZCIgrrV8Qa0c5hwG5UYGRV09v+s/hr8xugBHwSfnvmWPIN0+9OH3ztEwr9CZT5kv9H9
	dfol7ITvGcsO/ZiKNOHbyy8mmcDeQEJkD5AGg3W+sKwRyqy7eewtoeAmErPKwbhpWne3H2QqC3ltZ
	rq7zks+UKrdJE630O9aG1mrXPGHjeWNiRuBVciHjnnycVhFLzESMIdW6IMEcoPjlcAzqiUaLMCPOK
	ODv3fvcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKoZa-000bhL-L2; Mon, 30 Aug 2021 21:12:06 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKoZX-000bgU-NM; Mon, 30 Aug 2021 21:12:05 +0000
Received: by mail-ej1-x636.google.com with SMTP id x11so34178993ejv.0;
 Mon, 30 Aug 2021 14:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=r14IiUeFZsOa+p44jC0mJ6Q1pyznNHnGwx/JXCHjfMU=;
 b=U9eeA+tpY9hAdaxImu/QageaS5SOYiXQ0IClfAZDAQ9YmF/AVksSLDwVIcGUYtLfV2
 9UgHpkNh3bLECyFovm+bzkkRyizWNofxP/KKyhQFohWoY4QXbxiYUftmcxbrXuCkP3Yc
 HeMI8Pz8a7gdORWLHcmDnNMQF4QJ4CxRz4QPlzHF7W8RLHbnwv7K3kXVfNeTgt6i5Xsc
 onQq/dTvuYn6Pqps01hbfwnQF++BUO0SizEY+SpAkJoO/YVeMh0BaN2vXk0RmMJpwemV
 Nxcufx7sgM6IJD1Feob/2Zhr1ciXAhBg7CWdpYUSHjUiRdxEKRPTExSlTjFepP005nKG
 vCxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=r14IiUeFZsOa+p44jC0mJ6Q1pyznNHnGwx/JXCHjfMU=;
 b=oC2vgzJbbFpg/CNbAwNcqBSJLZLrKOLxkk2iu5i8Rzw3lYu36Z41IypzABjGfiYOE3
 vaXmeHG7lVnV4yK81LoEA9Y+9rBeyKcqU6ngLqH3w5nz9Lgh7/Skv24wTgbjQKZLK+eI
 d6HBK5OX+k8/p+8/CBL7XaybYbxJlXOUlSg3L/j4h9Fvg1bFlkFQ941mRwPYjF2onS9s
 Daadet6XwxHV9/YMPzJImj0cIexuY1tqcO+XhjUW4c+/+tJl0aMun+vY4P2vuvb5w+4N
 zKHVLIJd6IYWtGQHQik8JoTCbUB4IeVIdR8SekIgb4B33MBqjdUSUoxZsCy1F3TUDPKN
 NgOA==
X-Gm-Message-State: AOAM530RZ4vI8f4uc9s+5T1AXQvy4jdWH7/FkJfMJ5mnijvgEsxZOWFk
 lmW15wdQxxy7NGcsycNQnakKUud+BDjfHx5x
X-Google-Smtp-Source: ABdhPJwYEmJoPiRFTWYAuDsvHNKG/YGAhFBEJdj8AsW1rXIr/Au3+LJksV7du9M4yA9hD0PBaeNBdw==
X-Received: by 2002:a17:906:a044:: with SMTP id
 bg4mr27248742ejb.312.1630357922315; 
 Mon, 30 Aug 2021 14:12:02 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 p8sm7215142ejo.2.2021.08.30.14.12.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Aug 2021 14:12:01 -0700 (PDT)
Subject: Re: [PATCH v1 5/5] arm64: dts: rockchip: add mipi-dphy-tx1rx1 for
 rk3399
To: Mikhail Rudenko <mike.rudenko@gmail.com>, linux-phy@lists.infradead.org
Cc: linux-media@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Marc Zyngier <maz@kernel.org>,
 Helen Koike <helen.koike@collabora.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>, Robin Murphy
 <robin.murphy@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210830180758.251390-1-mike.rudenko@gmail.com>
 <20210830180758.251390-6-mike.rudenko@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <ac38a6ce-19f6-8d30-6070-55b78cc082e2@gmail.com>
Date: Mon, 30 Aug 2021 23:12:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210830180758.251390-6-mike.rudenko@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_141203_834182_38A9E71D 
X-CRM114-Status: GOOD (  15.90  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Mikhail,

On 8/30/21 8:07 PM, Mikhail Rudenko wrote:
> Add DT node for RX mode of RK3399 TX1RX1 D-PHY.
> 
> Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 3871c7fd83b0..2e4513275a87 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1902,6 +1902,21 @@ mipi1_in_vopl: endpoint@1 {
>  		};
>  	};
>  
> +	mipi_dphy_tx1rx1: mipi-dphy-tx1rx1@ff968000 {
> +		compatible = "rockchip,rk3399-mipi-dphy-tx1rx1";
> +		reg = <0x0 0xff968000 0x0 0x8000>;

> +		clocks = <&cru SCLK_MIPIDPHY_REF>,
> +			<&cru SCLK_DPHY_TX1RX1_CFG>,
> +			<&cru PCLK_VIO_GRF>,
> +			<&cru PCLK_MIPI_DSI1>;
> +		clock-names = "dphy-ref", "dphy-cfg",
> +			"grf", "dsi";

Could you fix the alignment a bit with extra spaces?

> +		rockchip,grf = <&grf>;
> +		power-domains = <&power RK3399_PD_VIO>;

Sort in alphabetical order.

> +		#phy-cells = <0>;
> +		status = "disabled";
> +	};
> +
>  	edp: edp@ff970000 {
>  		compatible = "rockchip,rk3399-edp";
>  		reg = <0x0 0xff970000 0x0 0x8000>;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
