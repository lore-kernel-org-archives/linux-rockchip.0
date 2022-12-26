Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86C6EC3DA79
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 12:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ad9x9ao2axgzy6O/N4J6yCaKV7HwxT7SeCI+83jf9Og=; b=eB05+cQSkEsKLf
	WecERgQCiwAIVra5JRdWD/JnSCQIbK7LWXUYVC/XuMMHjTJWrjYLCVerLjAJXh87K+Lnz1pjbsOPB
	ybzbEedUAUq3mllBlSaBKw0XUlu7S+hkptTIzIlc1d+dGONuciGq15L5IZ9IwlYzZrb7VkDU9ySdl
	i0flENOwdCxUYlvVE19Xerlj/8X9sxIVLoycX4p7GS+dEhSWLoT5kBfGSZ67vPh8Swe2ErEK9xpWV
	PoeDOAhep1xiDWKLM+mM7EwUi/vkxItopLFFA80Yaq8s3YaoOJSPK8/RlDvteianlSSISvbsnxdRg
	DFy6KX8icmXUj5iO8k7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9msU-003vl4-1m; Mon, 26 Dec 2022 12:46:50 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9msD-003vbb-1n; Mon, 26 Dec 2022 12:46:35 +0000
Received: by mail-ed1-x52c.google.com with SMTP id d14so15343942edj.11;
        Mon, 26 Dec 2022 04:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BsGoM9wrfrqSxjOB2TLHCV3vyYhdzPB5JRtWli8vvl0=;
        b=Q7K8OSd0+78QglTAYccZl3uIyE2NNuMF2wQ3hih1MHzEXNHMd9EOMv1iqFOq4OyJ8K
         MocTlZzejtOrtkurO23Bbxsih7K47QO95NPC0xxVMcJhcdFYvCaHPN9f62h12jmwUVHX
         5wbI+nd5vHIY+5GXOnUYqhCAwjBRJRUTDy3ywbqwexyE/TqcDUOUKzzED6Cn6O7KPTDi
         TZrKE1KIFgX1cnPkAhAz9lZqQvBT9myWDwk8hU/6JBl9HSn72FRtO5Zj+t+NUCHk3Qzv
         25LNw2gR6MVFTSI5MtTZznP53R2Ns333nVPpOeC/14pLI2Q4wha2Rha5GY1OWc1NyZQ9
         BFoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BsGoM9wrfrqSxjOB2TLHCV3vyYhdzPB5JRtWli8vvl0=;
        b=EmOQYHggjJI4b5NENd15d9znguL95skfJeOt3EWcEHi36ZZIEpo17l4YiB1SGLPtCu
         2jtMt/WfbogenxM4U0KvqTWRLBb3McliKDBWTmw+2agi6bUTGkprivXDfNHRvq3y6ES1
         y218kygHZBRA0cbnKiGM5A8hEFRZSU51pyRFtQ4zqdCeySXBoR/l/GvawxEzGU+4688M
         vfDCyNxBRIWgFY3cu/0SUvq6PVkleYq7lxuH08lyBc5ZsvtWk9hXGognNJ1dzmSx93Gf
         mJUzHCLBVIYjOO1vAtSCJMhd+gTrAi4hI7y3pCZJjXWWjjk9OArYop1Z9a2PFL1wv4Uy
         Z44w==
X-Gm-Message-State: AFqh2kqCFdFOrbjGU2KYB7dbRtNzmtE9VT6ka+KgtzCatgSKcQqMLR7K
	ATmJvmUG6ZEi46Gq+Yrizow=
X-Google-Smtp-Source: AMrXdXtGQSNPam2o2K74D5fk+LjhpiGxspOsh6elxwY/2wQp/CsNRlRfHEswUYk8escDVHiRVGSvlg==
X-Received: by 2002:a05:6402:1486:b0:482:ab74:6432 with SMTP id e6-20020a056402148600b00482ab746432mr7735255edv.20.1672058789915;
        Mon, 26 Dec 2022 04:46:29 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id dm4-20020a05640222c400b004677b1b1a70sm4598433edb.61.2022.12.26.04.46.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Dec 2022 04:46:29 -0800 (PST)
Message-ID: <d0eafc59-6718-f904-132a-1a6dbd083878@gmail.com>
Date: Mon, 26 Dec 2022 13:46:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCHv2 linux-next 4/4] ARM: dts: rockchip: rv1126: Enable
 Ethernet for Neu2-IO
To: Anand Moon <anand@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221226063625.1913-1-anand@edgeble.ai>
 <20221226063625.1913-4-anand@edgeble.ai>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20221226063625.1913-4-anand@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221226_044633_147580_FBB2A18E 
X-CRM114-Status: GOOD (  14.67  )
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



On 12/26/22 07:36, Anand Moon wrote:
> Rockchip RV1126 has GMAC 10/100/1000M ethernet controller.
> Enable ethernet node on Neu2-IO board.
> 
> Signed-off-by: Anand Moon <anand@edgeble.ai>
> ---
> drop SoB of Jagan Teki
> ---
>  arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts | 37 ++++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
> index dded0a12f0cd..bd592026eae6 100644
> --- a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
> +++ b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
> @@ -22,6 +22,43 @@ chosen {
>  	};
>  };
>  
> +&gmac {
> +	clock_in_out = "input";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&rgmiim1_pins &clk_out_ethernetm1_pins>;
> +	phy-mode = "rgmii";
> +	phy-handle = <&phy>;

> +	assigned-clocks = <&cru CLK_GMAC_SRC>, <&cru CLK_GMAC_TX_RX>,
> +			<&cru CLK_GMAC_ETHERNET_OUT>;

align

> +	assigned-clock-parents = <&cru CLK_GMAC_SRC_M1>, <&cru RGMII_MODE_CLK>;
> +	assigned-clock-rates = <125000000>, <0>, <25000000>;
> +	phy-supply = <&vcc_3v3>;
> +	tx_delay = <0x2a>;
> +	rx_delay = <0x1a>;
> +	status = "okay";
> +};
> +
> +&mdio {

> +	phy: phy@0 {

use ethernet-phy

no '#phy-cells' here

> +		compatible = "ethernet-phy-id001c.c916",
> +			       "ethernet-phy-ieee802.3-c22";

align

> +		reg = <0x0>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&eth_phy_rst>;
> +		reset-assert-us = <20000>;
> +		reset-deassert-us = <100000>;
> +		reset-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>;
> +	};
> +};
> +
> +&pinctrl {

> +	ethernet {

Maybe use a node name more in line with where it is used.

> +		eth_phy_rst: eth-phy-rst {
> +			rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +	};
> +};
> +
>  &sdmmc {
>  	bus-width = <4>;
>  	cap-mmc-highspeed;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
