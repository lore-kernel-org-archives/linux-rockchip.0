Return-Path: <SRS0=iF3C=NL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,NICE_REPLY_A,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FB06C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 15:08:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E90B660FDA
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 15:08:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E90B660FDA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c/bQEBxahYOCbXjcm/ZabpTUFQHSBbtsIfZX1BoI/dE=; b=eMLVORPgeIeFjBBDnYxTt8IMgN
	yX5y/QbypTKDIf4Njx8kUe8ciV/853gaQUDyffHrn6RQ2SXudHf1hQDz+p54iCus4NyMyf30+D/+y
	Ohwhyax99pFz9NZMg1DOOfe7FjbLX2MUYhMpaNielOStxgPm2UJACMcl+bsAMP+ofzRppgb7NkaB3
	fTiglSkRLVqwuxxJTFyXTsk9SHmyxdqBtoo9+AQMXdW/Bl2JEwn57MfER8ADlNq340IcUqZixU7Bm
	WX5uGjvc7isOB5ttiSWyg/LCQTSfdz9ILMQZWANPVM5VXV/dtDfAvsSScDwvUMMMIT00Erbc/DHXo
	IVbZCWSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mH684-00BTUu-Rl; Fri, 20 Aug 2021 15:08:20 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mH681-00BTTO-QF
 for linux-rockchip@lists.infradead.org; Fri, 20 Aug 2021 15:08:19 +0000
Received: by mail-ed1-x52b.google.com with SMTP id g21so14458280edw.4
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Aug 2021 08:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KreEdl1ZV3JGsamvUXfmpDwGTb957yImRW3iLOmZShY=;
 b=iszij/dRpbCYWWJyDAgx5YIAP5gI6zxa/COCIkfGrGWjx/42gJkoK/SPQMWqxq1kia
 OTkJNzToAwSpSf2LpCpWxArRWltmfrT3LMl0S+ExJ2acsknh/fGL/CcMgmYgOsblF7t1
 orA1llJ3to+nscxqrk7BBiduvJR3NKzAOEhiqt7k4ehFbh5ORiMRHS0/1rZqB9D8nbOI
 l0nK1xJh8iyJi3pbybCd3wFZqpeq1GFgDxW63a2DncsntJfDG6J7ugcfeBWd1zK3zl4j
 QWl9RkvZkn3R9O9CTAFdU8KB/xHxkLfeVz+t9knMYQ42bd0FafZZmE/sflcdo2rYEXGQ
 kZRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KreEdl1ZV3JGsamvUXfmpDwGTb957yImRW3iLOmZShY=;
 b=QXfmNKbuCJbL3QpDsJKk7OL9/fHxEroHqeBee6BfDV4fxDNw05La8BuVVUry3wtrcH
 Ohx9l3SJAUe7A4Y4UOAHn/GSvVmKFJZAydXK23ITf8igrei7jHuC+pYVmtsiNSn/MY2d
 VNBv67hPRfp2RlINVGa4gLc7g0A6MeK4VwYywDr8n8Lza3DwuyvIJ28rcTg08gFU3Tqj
 QE6sX3rsDBnqTCdTJSsL3CIgtrbURqFhaPHUkvpcfdXqY3+wIuDla/JK//c2pg13QNVe
 irQmUjjwOjExidhGQu1YDC6uVIv5atDNArGtkbM/Q1eUVzWKV489+NNno5IK3FhT2UDV
 Mh2w==
X-Gm-Message-State: AOAM533yIBnnLcrHtNHBkwz8QkNwpZoZ7F/Cus58hCTiWeJItufAREhy
 X9siI9Typp3pBwQ57dQgajM=
X-Google-Smtp-Source: ABdhPJzqL1/CLcL3fwkKW7ZpPFL18ypYqncPP4BflvE5b5CxSVHmHJcJPsswnwBV4fsxJpNnRzI9xQ==
X-Received: by 2002:aa7:db82:: with SMTP id u2mr23436183edt.299.1629472095878; 
 Fri, 20 Aug 2021 08:08:15 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 v13sm3003445ejx.24.2021.08.20.08.08.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Aug 2021 08:08:15 -0700 (PDT)
Subject: Re: [PATCH v3 3/4] arm64: dts: rockchip: Add GPU node for rk3568
To: Ezequiel Garcia <ezequiel@collabora.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Peter Geis <pgwipeout@gmail.com>
References: <20210805025948.10900-1-ezequiel@collabora.com>
 <20210805025948.10900-4-ezequiel@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <8574d096-94a7-296d-f9e8-a2e67ed80e2f@gmail.com>
Date: Fri, 20 Aug 2021 17:08:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210805025948.10900-4-ezequiel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210820_080817_951207_90030883 
X-CRM114-Status: GOOD (  20.32  )
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

Some more comments. Have a look if it is useful.

On 8/5/21 4:59 AM, Ezequiel Garcia wrote:
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
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 50 ++++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index bef747fb1fe2..f8173ba63be0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -121,6 +121,40 @@ opp-1800000000 {
>  		};
>  	};
>  

> +	gpu_opp_table: gpu-opp-table {

	gpu_opp_table: opp-table-1 {

Excuse for the inconvenience, but rob+dt just made a patch for opp last
month...
See opp-v2-base.yaml:
'^opp-table(-[a-z0-9]+)?$'

[PATCH v3 3/3] dt-bindings: opp: Convert to DT schema
https://lore.kernel.org/lkml/20210720144121.66713-3-robh@kernel.org/

===
A look in the manufacturer tree we can expect one more opp table in the
number sequence.
	npu_opp_table: opp-table-2 {}
https://github.com/rockchip-linux/kernel/blob/develop-4.19/arch/arm64/boot/dts/rockchip/rk3568.dtsi


> +		compatible = "operating-points-v2";
> +
> +		opp-200000000 {
> +			opp-hz = /bits/ 64 <200000000>;
> +			opp-microvolt = <825000>;
> +		};
> +
> +		opp-300000000 {
> +			opp-hz = /bits/ 64 <300000000>;
> +			opp-microvolt = <825000>;
> +		};
> +
> +		opp-400000000 {
> +			opp-hz = /bits/ 64 <400000000>;
> +			opp-microvolt = <825000>;
> +		};
> +
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +			opp-microvolt = <825000>;
> +		};
> +
> +		opp-700000000 {
> +			opp-hz = /bits/ 64 <700000000>;
> +			opp-microvolt = <900000>;
> +		};
> +
> +		opp-800000000 {
> +			opp-hz = /bits/ 64 <800000000>;
> +			opp-microvolt = <1000000>;
> +		};
> +	};
> +
>  	firmware {
>  		scmi: scmi {
>  			compatible = "arm,scmi-smc";
> @@ -332,6 +366,22 @@ power-domain@RK3568_PD_RKVENC {
>  		};
>  	};
>  
> +	gpu: gpu@fde60000 {
> +		compatible = "rockchip,rk3568-mali", "arm,mali-bifrost";
> +		reg = <0x0 0xfde60000 0x0 0x4000>;

> +

Maybe remove this empty line as well?

> +		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "job", "mmu", "gpu";
> +		clocks = <&scmi_clk 1>, <&cru CLK_GPU>;
> +		clock-names = "core", "bus";
> +		operating-points-v2 = <&gpu_opp_table>;

> +		#cooling-cells = <2>;

Not a big issue, but things with "#" are only needed for dt
interpretation (not a real property). I try to drop them as far down the
list when not sort alphabetically or connected to a real property.

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
