Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FD78C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 20:45:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C96E860F56
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 20:45:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C96E860F56
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WWeSssZckuRuU7p5jU5ZBnXTEITp5wII1F8XOi4JjyQ=; b=tS1nIgC1/H6t3hIeIEg0iFwITE
	8xyqaJo5oYX2M5SsXMQLKI2WXuxwiMUxJm9LnvShG5Xc/kXxMUEVU9fgxiysdMwV/SzxfOjK7/QWd
	aCD+qZcH8eyKbMqJAFZXLLL0sUTeIEwUuHY852PdiagutqHJczN8uUHqLr8++8ewFxIiJT/Xvg5gp
	Lhqh14geMk2B1clql4AA5vW6KdveOzzvikporAc6tc8lcLskCxOUgwLXsGb2RvhjyqTNtzBZonpnW
	bBiYx+zTNuu1fUaKUL4RhWPcavqd5j3WVgLmkWmRNmh0+beeyp+CcoPWRdw4q1dQngynnrjwoJFZu
	LApdQs5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbqYJ-00BHgL-Fp; Sat, 16 Oct 2021 20:45:11 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbqYG-00BHfn-4J; Sat, 16 Oct 2021 20:45:09 +0000
Received: by mail-ed1-x534.google.com with SMTP id w14so52693885edv.11;
 Sat, 16 Oct 2021 13:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fu6K+GZ9xLTyYQLWrFx/0iIfiXjMLM2SCui+AM5Mbc8=;
 b=EFsqsAQxpJ3zv4WS4UTsCRibnv+ZDvvFCNY8B88DNPA3Hg0228WduKQBy83yXToYgf
 RygtHGEhxO6hGgo+DFFM2XGvskm7IBch+qwS0bp3dvYtLIcQ5rOukHvsEu03i27mg5pM
 l/tbDS3bK4KswEDlaJHySDXZoXA0RfTF+9DeJEZGSILJ9zSPYE+Q8H+vpIWDnwbAY5Qc
 4jaTE0HL39cXS3n9FIMGE78scOu0GXQgF60J5uasku0TOQPelRk9/7N5UL4asH2rCX7k
 ms8rHDqdt9J7vPkJljLxC7gSJqT963YJUfaGgtwwi8Sc1lD1khbuLId1BwYNMmA4Dvjm
 0cfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fu6K+GZ9xLTyYQLWrFx/0iIfiXjMLM2SCui+AM5Mbc8=;
 b=uIbmENcTAO27MI8E+JmWqcyCzsLLA9g4U3jLIXj4HsQlyPfX4DMteHE4HfNj5NaSSR
 qi39O/iv7pqK65SiEe1NOBMsy/1YFBOBBZX78J4sKaRaa1c0k6BD2tE5Vc0E6tMjCQAt
 Zgji2cfJHX54Jvi/Dg2QP41T0LHPTgrekfBqngD8qhHvWh0gmjl+iFlomXJMEFr6uZ55
 kehEyZSiJA3lgbGSqhOEXs+QkqOhzD6fpcgNIUIvWsoUQ/Kf0zTSAJcVpvSOQd/+j//W
 kiTNKNqNkQ7HG86a4PSDRezRksMqOnl/JJwAuTtlnZzbsxtSfT9xmSv9MP9Jox6MvQ4Z
 FLuA==
X-Gm-Message-State: AOAM5310d0eRheZCrirL3aPN06IpO1pKc53ZjNqybXyQ8mBCs2nfBxkd
 fmTvs61EIM//13Z++kCWC1Kx9AShfZw=
X-Google-Smtp-Source: ABdhPJxVlU9ZEpsGINQGU1CkZIrC2ZhGVPrpYYA3Kwhv3wXmwq8NH815+a9NppEBqb1jqkXwZ8FXUQ==
X-Received: by 2002:aa7:cd8b:: with SMTP id x11mr29824268edv.384.1634417106073; 
 Sat, 16 Oct 2021 13:45:06 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 i10sm7542783edl.15.2021.10.16.13.45.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 Oct 2021 13:45:05 -0700 (PDT)
Subject: Re: [PATCH 1/2] arm64: dts: rk3328: add gpu opp table
To: Trevor Woerner <twoerner@gmail.com>, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chen-Yu Tsai <wens@csie.org>, David Wu <david.wu@rock-chips.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Cameron Nemo <cnemo@tutanota.com>,
 Robin Murphy <robin.murphy@arm.com>, Elaine Zhang
 <zhangqing@rock-chips.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
References: <20211016154548.29555-1-twoerner@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <67c7c3c6-b946-a6bc-24fd-85f56bcec7f3@gmail.com>
Date: Sat, 16 Oct 2021 22:45:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211016154548.29555-1-twoerner@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_134508_253123_E29150C9 
X-CRM114-Status: GOOD (  19.72  )
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



On 10/16/21 5:45 PM, Trevor Woerner wrote:
> Add an operating-points table and cooling entry to the GPU on the
> RK3328 SoC to improve its performance. According to its datasheet[1]
> the maximum frequency of the Mali-450 MP2 GPU found on the RK3328 SoC
> is 500MHz.
> 
> On my rock64 device, under x11, glmark2-es2 performance increased from
> around 60 to just over 100. Same device running glmark2-es2 under
> wayland/weston improved from just over 100 to just over 200.
> 
> [1] https://rockchip.fr/RK3328%20datasheet%20V1.2.pdf
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 26 +++++++++++++++++++++++-
>  1 file changed, 25 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index 8c821acb21ff..5e1dcf71e414 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -532,7 +532,8 @@ map0 {
>  					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>  							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>  							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
>  					contribution = <4096>;
>  				};
>  			};
> @@ -617,6 +618,29 @@ gpu: gpu@ff300000 {
>  		clocks = <&cru ACLK_GPU>, <&cru ACLK_GPU>;
>  		clock-names = "bus", "core";
>  		resets = <&cru SRST_GPU_A>;
> +		operating-points-v2 = <&gpu_opp_table>;
> +		#cooling-cells = <2>;
> +	};
> +

> +	gpu_opp_table: gpu-opp-table {

After the conversion to YAML of the Operating Performance Points(OPP)
binding the operating-points-v2 property expects the nodename to have
the '^opp-table(-[a-z0-9]+)?$' format.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/opp/opp-v2.yaml

> +		compatible = "operating-points-v2";
> +
> +		opp-200000000 {
> +			opp-hz = /bits/ 64 <200000000>;
> +			opp-microvolt = <1100000>;
> +		};
> +		opp-300000000 {
> +			opp-hz = /bits/ 64 <300000000>;
> +			opp-microvolt = <1100000>;
> +		};
> +		opp-400000000 {
> +			opp-hz = /bits/ 64 <400000000>;
> +			opp-microvolt = <1100000>;
> +		};
> +		opp-500000000 {
> +			opp-hz = /bits/ 64 <500000000>;
> +			opp-microvolt = <1100000>;
> +		};
>  	};

opp-microvolt has the same value for every node vs. table below?

See also previous discussion:

https://lore.kernel.org/linux-rockchip/3c95c29b-6c07-5945-ac22-d683997e1ca0@arm.com/

Is that now fixed/checked?

Copy from manufacturer tree:

	gpu_opp_table: gpu-opp-table {
		compatible = "operating-points-v2";

		rockchip,leakage-voltage-sel = <
			1   10    0
			11  254   1
		>;
		nvmem-cells = <&logic_leakage>;
		nvmem-cell-names = "gpu_leakage";

		opp-200000000 {
			opp-hz = /bits/ 64 <200000000>;
			opp-microvolt = <950000>;
			opp-microvolt-L0 = <950000>;
			opp-microvolt-L1 = <950000>;
		};
		opp-300000000 {
			opp-hz = /bits/ 64 <300000000>;
			opp-microvolt = <975000>;
			opp-microvolt-L0 = <975000>;
			opp-microvolt-L1 = <950000>;
		};
		opp-400000000 {
			opp-hz = /bits/ 64 <400000000>;
			opp-microvolt = <1050000>;
			opp-microvolt-L0 = <1050000>;
			opp-microvolt-L1 = <1025000>;
		};
		opp-500000000 {
			opp-hz = /bits/ 64 <500000000>;
			opp-microvolt = <1150000>;
			opp-microvolt-L0 = <1150000>;
			opp-microvolt-L1 = <1100000>;
		};
	};
>  
>  	h265e_mmu: iommu@ff330200 {
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
