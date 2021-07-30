Return-Path: <SRS0=KZfN=MW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68AAFC4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jul 2021 19:38:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2511060F26
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jul 2021 19:38:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2511060F26
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k9O0B/NNVSLsHBrMLZPv1HIYbhRvfwowAOtN7zCIxG4=; b=xooE4CBiYp7FtzWk3Kd4mt9bBq
	RtiQXucGsO51ZolkEjcsY1IgL+udjjCa4U32/Kd1uplaMoc8kGL01r0dk9RcalpMl/laGSVC2aSbp
	Vn//HhT9tTZ9wqHuufNUmPlqlC/f7/kdj27gCqBvREyR2o6FlMcYtJjVlyAMNqqwzR5PpMgFuk38X
	9G8n1kxhCay/xZcjpuGGiSEkGW0iJD+TqB0twr5cctoPuE2ADN/Slc6/5AOeLFjRfdcuuYaK7BBvh
	wz3cmVTs7JD1p6XNFa7uotmhjtF2t7ovjOluUg3fC/ny1QQwax5EpEHY+YyqMG8KMNEEI43yQPIG7
	tIANJLYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9YLB-00A86x-4G; Fri, 30 Jul 2021 19:38:41 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9YL8-00A865-6k
 for linux-rockchip@lists.infradead.org; Fri, 30 Jul 2021 19:38:39 +0000
Received: by mail-ed1-x532.google.com with SMTP id b7so14723654edu.3
 for <linux-rockchip@lists.infradead.org>; Fri, 30 Jul 2021 12:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sqq24+4MhdW8BcdPC+9dVyqVrbFpN6oyepTwHU0ZFuo=;
 b=luJ9L0u00/a/tCxI5puBILnCWcq5X70mijAA1PVhp/xBmQXpSalZ2RboFk8sayhtuH
 aQsD8i3M+fMEzreARhCsA7P5okOQsXWQo3yDuZ8xmx12Q+7xwDyEtlDIS8VyOVPh5lzt
 ERGfZQ9e6retakzdh6LHBCfMd/cOW15NGu31qzp/EbntNUIEHqvzusv02eeW2KBaJR0C
 H7cvpkt5lvDZZVgET9/uK48o6VcVJWvTqfp7EkHzkJ/F5rUiqSXRCnsAnLkU8MHM5ZfC
 ZGZ4LDr9PdMSaH6DywQTZqSCPSAko4i58dH4CevrukVDRFOfNHIVP6lX7aqqLX46sfDj
 Nl+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sqq24+4MhdW8BcdPC+9dVyqVrbFpN6oyepTwHU0ZFuo=;
 b=MjemBFKKP6YFQAGtjEoTO5PuhwssXkCsDuE/ctZo0BneYxeb55dhlJvjrN3+WcQRoK
 StsiNziVRdpF5mv2igQDzKcvLsWqU7+K3v4JEFU8n5NSE2tPecp1ZJZwE0qxI4sUmc7j
 1lor01xMJTq5FyqL/KDv9LMSKWBQrTGBIBRtG/TVVjUC+aKYRmo/8jKVzK8MslNRb9zc
 H6MaIBTUyGOWM067bFNndIAo/OLdQt0DUgNS6HGBXaLBmjHv90MgjeTe40KEhe3IBjhw
 02iw/HfxwY2YSbQl76xRZX+RWbk1t4bgJMZSANHRxXLH0oZ3AYa2H2sUgBoYC1rv4xIe
 FZCg==
X-Gm-Message-State: AOAM5326uClOay/NEFmlrqgr56wi9G1tP04beyvpnUQiTXOrTn6/sQj9
 zePqjE+uHMxOLGxsFFHtiXE=
X-Google-Smtp-Source: ABdhPJzoZNvWKwS8yyq1XzYiV6mjns/zTdeevPwq9NqWZkKo8Ae9Nq9K1PRkib/d4ahwfOL0vf4WHQ==
X-Received: by 2002:a50:fb05:: with SMTP id d5mr4665354edq.5.1627673916483;
 Fri, 30 Jul 2021 12:38:36 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 b26sm616759edu.27.2021.07.30.12.38.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Jul 2021 12:38:36 -0700 (PDT)
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add GPU node for rk3568
To: Ezequiel Garcia <ezequiel@collabora.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Peter Geis <pgwipeout@gmail.com>
References: <20210730164515.83044-1-ezequiel@collabora.com>
 <20210730164515.83044-4-ezequiel@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <b19aa876-f78b-f6af-39e9-ff37fc19f09a@gmail.com>
Date: Fri, 30 Jul 2021 21:38:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730164515.83044-4-ezequiel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210730_123838_315630_2A07025D 
X-CRM114-Status: GOOD (  20.43  )
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

Hi Ezequiel,

Some comments. Have a look if it's useful.

On 7/30/21 6:45 PM, Ezequiel Garcia wrote:
> Rockchip SoCs RK3566 and RK3568 have a Mali Gondul core
> which is based on the Bifrost architecture. It has
> one shader core and two execution engines.
> 
> Quoting the datasheet:
> 
> Mali-G52 1-Core-2EE
> * Support 1600Mpix/s fill rate when 800MHz clock frequency
> * Support 38.4GLOPs when 800MHz clock frequency
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 47 ++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index bef747fb1fe2..f4f400792659 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -121,6 +121,35 @@ opp-1800000000 {
>  		};
>  	};
>  

> +	gpu_opp_table: opp-table2 {

	gpu_opp_table: gpu-opp-table {

> +		compatible = "operating-points-v2";
> +
> +		opp-200000000 {
> +			opp-hz = /bits/ 64 <200000000>;
> +			opp-microvolt = <825000>;
> +		};

Similar to cpu0_opp_table keep the same style and add an empty line
between nodes.

> +		opp-300000000 {
> +			opp-hz = /bits/ 64 <300000000>;
> +			opp-microvolt = <825000>;
> +		};
> +		opp-400000000 {
> +			opp-hz = /bits/ 64 <400000000>;
> +			opp-microvolt = <825000>;
> +		};
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +			opp-microvolt = <825000>;
> +		};
> +		opp-700000000 {
> +			opp-hz = /bits/ 64 <700000000>;
> +			opp-microvolt = <900000>;
> +		};
> +		opp-800000000 {
> +			opp-hz = /bits/ 64 <800000000>;
> +			opp-microvolt = <1000000>;
> +		};
> +	};
> +
>  	firmware {
>  		scmi: scmi {
>  			compatible = "arm,scmi-smc";
> @@ -332,6 +361,24 @@ power-domain@RK3568_PD_RKVENC {
>  		};
>  	};
>  
> +	gpu: gpu@fde60000 {
> +		compatible = "rockchip,rk3568-mali", "arm,mali-bifrost";
> +		reg = <0x0 0xfde60000 0x0 0x4000>;

> +

remove empty lines

> +		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "job", "mmu", "gpu";

> +

dito

> +		clocks = <&scmi_clk 1>, <&cru CLK_GPU>;
> +		clock-names = "core", "bus";

Not sure if it's possible, but could you keep them all a little bit in
the same order/style as arm,mali-400?

From arm,mali-utgard.yaml:

  clock-names:
    items:
      - const: bus
      - const: core


> +		operating-points-v2 = <&gpu_opp_table>;

> +

dito

> +		#cooling-cells = <2>;
> +		power-domains = <&power RK3568_PD_GPU>;
> +		status = "disabled";
> +	};
> +
>  	sdmmc2: mmc@fe000000 {
>  		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
>  		reg = <0x0 0xfe000000 0x0 0x4000>;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
