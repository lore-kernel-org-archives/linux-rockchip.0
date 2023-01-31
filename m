Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE108C636CC
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Jan 2023 13:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWcVCJboGbefe3J4pwIt7q508pRO+pf0hNzI+MbysQI=; b=NTxW6fI1cLCK30
	TWXOUiwx5qiBO6Gd+UpCJ6Hz812dPllcE/dlBV0Bq1TDypaSTonO9Cr7/WdNCdcjdv44oRaxqReuH
	bTdvrlRFcSWVqOXu0UBF3OPrdanVdHdyEj6HMrwP0WvM5s03vj7WsUzX5jiptUVSGmuPC1uG211Te
	531yme5z/OQh3OrfEdcOwzM3ly1EmFooOoh3PDPfQY/OQB7g1SZvco7d4XwXfOf9jOYq3J1SogCOj
	vdk7Qi/4Q4ZvfUGegYKKOlxBVnWRx6jPFbBdYx0Fi2/C0Im++8eil0icoUua7vB8O9K8SvoF3pY2L
	M8IAihs3YLDz1qQfy+/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMqly-0088Y1-VB; Tue, 31 Jan 2023 13:34:06 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMqlv-0088WN-VB
	for linux-rockchip@lists.infradead.org; Tue, 31 Jan 2023 13:34:05 +0000
Received: by mail-ed1-x534.google.com with SMTP id fi26so14397178edb.7
        for <linux-rockchip@lists.infradead.org>; Tue, 31 Jan 2023 05:34:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=69Jx87Fz+OvJSEasPRGdkGLajlY/SB/bqN3Qg1JBCFk=;
        b=PxHm50Pa/Za5hmAH36v3uqeIeO0xus1WebU5rryEEo+wNYdj+cvAFEaG9tLMu5VlzM
         jg4ic/hBRWn2/iqOCIoWdPA4PhVqDjQrT5ud/IiMQJdBKPpwS0amcM182DARor91xqox
         /cN6qiyW1U8xOYAoxKI5HQ4zPkH2r9evbXayR4naqMPkBDr6fYcTx3+7GpaqkqKt9akq
         6vsKh7eZO5iAtR+SpuBZ42/DrTsIA2r+k2znshuG1ZqWAT894Q6hStCPNdtS/t4b6cT8
         LEI2coibB5qLX81LRC3WoTHFPWMqZEbDr1OC9PGZSOGgHomeTrUmYcbYP9vJpP7E56Qd
         8MgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=69Jx87Fz+OvJSEasPRGdkGLajlY/SB/bqN3Qg1JBCFk=;
        b=p2swCclRSyEzIPP+tcAyv2rzU6r4q11j/fEWu7dL+QCKKkrO/KMUztK6AKbVZycmyP
         eHqQevNzN75HCNLpQ0uGrwllte+UFUnVe3SnPlrAxGfipXPS3q9aNWtMaZLw0I42RjJk
         Kq5qPX3O4G9PdybV1uo/TEuxVtwfTt1ppm9XjGzSvkMl+kQICSt+ZZ69fL+xbyGOFQMf
         MuRme99eY/LmC23CAYcgikrmb8kMRfGzmmO1ObFJ7gPUaCWVcMpy/hhn6ZhMY97nfXBL
         FXB5ep3xjPLnGoTlwrUwMVlQhylNg0CntQWzxwqIIGZToHgt4S0lzNSlJVQmcGJqSIk4
         HNFw==
X-Gm-Message-State: AFqh2kr1nAM2LrMV5mFqKf0CII6rW9GmDZyqKxOaltMmkLZdzV3qdLbt
	lGFhLHU2S/ZzLaqmbUrONX4=
X-Google-Smtp-Source: AMrXdXskLBH8LGwFIzUr9rI2BHKefEivZ4lkyFFylCx2cXZtSnmvqUOepvO5RPRDp/h34oqd2NmXFg==
X-Received: by 2002:a05:6402:4496:b0:49e:ca5:244a with SMTP id er22-20020a056402449600b0049e0ca5244amr60489937edb.1.1675172041003;
        Tue, 31 Jan 2023 05:34:01 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id i9-20020a05640200c900b0049ef04ad502sm590618edu.40.2023.01.31.05.34.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 05:34:00 -0800 (PST)
Message-ID: <f406b303-ff78-33ff-7f59-cc7904b9a9e4@gmail.com>
Date: Tue, 31 Jan 2023 14:33:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [RFC PATCH 2/3] arm64: dts: rockchip: rk356x: add LVDS bindings
Content-Language: en-US
To: Alibek Omarov <a1ba.omarov@gmail.com>, linux-rockchip@lists.infradead.org
References: <20220923160115.2946615-1-a1ba.omarov@gmail.com>
 <20220923160115.2946615-3-a1ba.omarov@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220923160115.2946615-3-a1ba.omarov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_053404_034600_5FCE2068 
X-CRM114-Status: GOOD (  14.74  )
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



On 9/23/22 18:01, Alibek Omarov wrote:
> Exposes ports for VOP2 and for panel
> 
> Signed-off-by: Alibek Omarov <a1ba.omarov@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 25 ++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 0473d7ee2668..fea3319a6a4e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -787,6 +787,31 @@ hdmi_out: port@1 {
>  		};
>  	};
> 

 
> +	lvds: lvds {
> +		compatible = "rockchip,rk3568-lvds";

Hi Alibek,

1:
In the manufacturer tree they model this node in the grf node.
Any particular reason to do that different?

https://github.com/rockchip-linux/kernel/blob/develop-5.10/arch/arm64/boot/dts/rockchip/rk3568.dtsi#L734

In mainline PX30 already does the same.

2:
There's complete "Acked" serie to be merged by Heiko for a LVDS yaml binding.

[PATCH v6 01/17] dt-bindings: display: rockchip: convert rockchip-lvds.txt to YAML
https://lore.kernel.org/linux-rockchip/67771143-fd83-383d-41b2-68e8707134e8@gmail.com/

Maybe it's better to check this node in a automated way?

Johan


> +		clocks = <&cru PCLK_DSITX_0>;
> +		clock-names = "pclk_lvds";
> +		phys = <&dsi_dphy0>;
> +		phy-names = "dphy";
> +		power-domains = <&power RK3568_PD_VO>;
> +		rockchip,grf = <&grf>;
> +		rockchip,output = "lvds";
> +		status = "disabled";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			lvds_in: port@0 {
> +				reg = <0>;
> +			};
> +
> +			lvds_out: port@1 {
> +				reg = <1>;
> +			};
> +		};
> +	};
> +
>  	qos_gpu: qos@fe128000 {
>  		compatible = "rockchip,rk3568-qos", "syscon";
>  		reg = <0x0 0xfe128000 0x0 0x20>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
