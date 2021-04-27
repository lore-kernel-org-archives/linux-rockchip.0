Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CC52C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 07:52:35 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C029D61289
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 07:52:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C029D61289
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jfsPPz6z1XBAPbVQ4RMAFCVHODyvLkVEcytpd4q5ci0=; b=WExjTD0AsDdRKEr+ccS2+0rWk
	B6fD4RtMo5ndMoaQps9zh/OSu4QliR2I+h1yn2QH0XKUwJ7QmyjMKBXnA/rovzebmlNONh58mIUR+
	yT8mA4azIMwFvUQ04fTbeFkUY3037fLMxDPtR9oLZDuY6LvVRm9RFrSIld4jfYYnHnzNEi7AbD8ax
	gu7X7Q+pFn2h/6CE2dghqI4eW8dsF8/2JLu5tFlBfEn5KRTJoNFDXiqe+ipQg8wqKaxQKMt9zAOg0
	ZLgZGWlumqlBMUnRyQdQKQ4avvGFiV8CN665I5Pd0x+LPIAwVJBvQWD61kE5aeF+J4dJEq6dtnd8a
	504c26Dtg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbIWB-0011uU-Lu; Tue, 27 Apr 2021 07:52:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbILt-000zgU-D4; Tue, 27 Apr 2021 07:41:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=jOHpNKh1HTjasyN4XJNLgqTp4hVmVQAAzXgA0kDhz08=; b=gxKRYKTLy/cSH+xLdptQURFe0A
 JLbw9LyUe6rdOrXMCWNHFJlRb+4BK8swqYR38jF7xkM4/O1xmJYQFvHSNAl+SHJKQ1VvV7ixE3Jlv
 53MlKPzDtP005iW1BTv4MPt2hJRHwYXW+a3EkK9rO8v5w1BwDvTxIKEtF3h9cXvK4nJ3N6mKCxvJm
 XlD6Qi3fYKWll5BDzwlGtJeBDVUhJ8MgnvxLbBJHq9YgPA8bxuuEr8T5b+V3jpMqCR+6LCtidVwCp
 1/KYwj6f5xPrUhrcJvVuLbWcaZz4EcVCLO4xWa1TkZDZe6yvm2BqGLvIlsi1Jm5wrmkl7Yf19Ew7v
 Us6UVwzg==;
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbILq-00GVzo-8Q; Tue, 27 Apr 2021 07:41:47 +0000
Received: by mail-ed1-x52c.google.com with SMTP id h8so28642993edb.2;
 Tue, 27 Apr 2021 00:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jOHpNKh1HTjasyN4XJNLgqTp4hVmVQAAzXgA0kDhz08=;
 b=XilaRLgG4z7jtAP1K1nwwywk6vXmjxVmuHvxQCk5mSk7JfDFK5iAJ4qw9YJyYZVPE4
 B4CUsFEuFGWCMoxYDIcR1R+oDjYn/rxp/yyde8qWZ2y8BujKLm/rvudYRc1T43br5eEE
 GA5lNbbCMExfmHzyBLJ4d5+yVpW2O5X6U30g/JDZ4ykGqiHgwnlQfU4pQTshEBNI3HAi
 /R+7X0wl1D7iF5IU5TwIKJC5UQ8ebt69G/JvzuSH1A6pkZj6j9s0bJOxFlTKA97IBs0J
 7R32IZUy0KLSxDipYeyUrb1jUDXXjHf1jBN+PzuXadJxH/5Dzp/M8rm0x2BWEVw19WUI
 YoOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jOHpNKh1HTjasyN4XJNLgqTp4hVmVQAAzXgA0kDhz08=;
 b=mpvJzVCTYn0wxpQdVaCFLUs7BnAXmSe3XhIID9y+GPD3gEWrf2Z4ebX42jFC8c7cu6
 k8J2QptBjq5IfHlgOrgWolFhGAOQVL7eUUJYsDxn5pSrKEXRj2Q+a6PJR44H/xx8vx2i
 +J24df5w+RqeZtciiCpRri2Lm32Z9LhXc2EE6x/t6n+qe7mdvrcP+W6g6ABXW5MEAmwv
 42pJ04mcBdX61s/tsYafiNMr7oAWag2DLdptE3C+kPrP6HfKYGM8p19JknuFUHTNgpzb
 xpXDeMfbozR1nKwWMOB9/ua22IIHQHp2oaqeVgXIcBjWx2tVAVtZKlNkDs65Cu3raNLT
 B01A==
X-Gm-Message-State: AOAM531hePJB3bRThebMJU/TUfpm1lDycPfzII8C4Tap+Kb8LYUpKPlU
 O5q5bea7Ts2D5zisvggotZM6ILOCOb6ftJIb
X-Google-Smtp-Source: ABdhPJxxYgiGZAbNM0IERzUdIhVwLuzii5Ng242BVgzibHt+OJkKlsutNVXxDRLTuGvg6x5UDfJ0nw==
X-Received: by 2002:a05:6402:51cd:: with SMTP id
 r13mr2786656edd.116.1619509304721; 
 Tue, 27 Apr 2021 00:41:44 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 t1sm12922627eju.88.2021.04.27.00.41.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Apr 2021 00:41:44 -0700 (PDT)
Subject: Re: [PATCH v2 6/7] arm64: dts: rockchip: add core dtsi for RK3568 SoC
To: cl@rock-chips.com, heiko@sntech.de
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 wim@linux-watchdog.org, linux@roeck-us.net, jamie@jamieiles.com,
 linux-watchdog@vger.kernel.org
References: <20210425094216.25724-1-cl@rock-chips.com>
 <20210425094439.25895-1-cl@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <16908f63-4e20-ba1b-3b5c-39b4c4db242b@gmail.com>
Date: Tue, 27 Apr 2021 09:41:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210425094439.25895-1-cl@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_004146_341973_B0CABF06 
X-CRM114-Status: GOOD (  20.62  )
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



On 4/25/21 11:44 AM, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> RK3568 is a high-performance and low power quad-core application processor
> designed for personal mobile internet device and AIoT equipments. This patch
> add basic core dtsi file for it.
> 
> We use scmi_clk for cortex-a55 instead of standard ARMCLK, so that
> kernel/uboot/rtos can change cpu clk with the same code in ATF, and we will
> enalbe a special high-performacne PLL when high frequency is required. The
> smci_clk code is in ATF, and clkid for cpu is 0, as below:
> 
>     cpu0: cpu@0 {
>         device_type = "cpu";
>         compatible = "arm,cortex-a55";
>         reg = <0x0 0x0>;
>         clocks = <&scmi_clk 0>;
>     };
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  .../boot/dts/rockchip/rk3568-pinctrl.dtsi     | 3119 +++++++++++++++++
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  812 +++++
>  2 files changed, 3931 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
> new file mode 100644
> index 000000000000..94ee3c2c38af
> --- /dev/null

[..]

> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> new file mode 100644
> index 000000000000..66cb50218ca1
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -0,0 +1,812 @@

[..]

> +
> +	pmugrf: syscon@fdc20000 {

> +		compatible = "rockchip,rk3568-pmugrf", "syscon", "simple-mfd";

TODO:

> +		reg = <0x0 0xfdc20000 0x0 0x10000>;
> +
> +		reboot_mode: reboot-mode {
> +			compatible = "syscon-reboot-mode";
> +			mode-bootloader = <BOOT_BL_DOWNLOAD>;
> +			mode-fastboot = <BOOT_FASTBOOT>;
> +			mode-loader = <BOOT_BL_DOWNLOAD>;
> +			mode-normal = <BOOT_NORMAL>;
> +			mode-recovery = <BOOT_RECOVERY>;
> +			offset = <0x200>;
> +		};
> +	};
> +
> +	grf: syscon@fdc60000 {

> +		compatible = "rockchip,rk3568-grf", "syscon", "simple-mfd";

TODO:

> +		reg = <0x0 0xfdc60000 0x0 0x10000>;
> +	};
> +
> +	pmucru: clock-controller@fdd00000 {
> +		compatible = "rockchip,rk3568-pmucru";
> +		reg = <0x0 0xfdd00000 0x0 0x1000>;

> +		rockchip,grf = <&grf>;
> +		rockchip,pmugrf = <&pmugrf>;

clock-controller@fdd00000: 'rockchip,grf', 'rockchip,pmugrf' do not
match any of the regexes: 'pinctrl-[0-9]+'

Currently clk.c has only support for:

	ctx->grf = syscon_regmap_lookup_by_phandle(ctx->cru_node,
						   "rockchip,grf");

Manufacturer tree:

	ctx->pmugrf = syscon_regmap_lookup_by_phandle(ctx->cru_node,
						   "rockchip,pmugrf");
		case branch_muxpmugrf:
			clk = rockchip_clk_register_muxgrf(list->name,
				list->parent_names, list->num_parents,
				flags, ctx->pmugrf, list->muxdiv_offset,
				list->mux_shift, list->mux_width,
				list->mux_flags);
			break;


	MUXPMUGRF(SCLK_32K_IOE, "clk_32k_ioe", clk_32k_ioe_p,  0,
			RK3568_PMU_GRF_SOC_CON0, 0, 1, MFLAGS)

Do we need a fix?

> +		#clock-cells = <1>;
> +		#reset-cells = <1>;
> +	};
> +
> +	cru: clock-controller@fdd20000 {
> +		compatible = "rockchip,rk3568-cru";
> +		reg = <0x0 0xfdd20000 0x0 0x1000>;

> +		rockchip,grf = <&grf>;

clock-controller@fdd20000: 'assigned-clock-parents',
'assigned-clock-rates', 'assigned-clocks', 'rockchip,grf' do not match
any of the regexes:

Add more properties to rockchip,rk3568-cru.yaml

> +		#clock-cells = <1>;
> +		#reset-cells = <1>;
> +
> +		assigned-clocks =
> +			<&pmucru CLK_RTC_32K>, <&pmucru PLL_PPLL>,
> +			<&pmucru PCLK_PMU>, <&cru PLL_CPLL>,
> +			<&cru PLL_GPLL>, <&cru ACLK_BUS>,
> +			<&cru PCLK_BUS>, <&cru ACLK_TOP_HIGH>,
> +			<&cru ACLK_TOP_LOW>, <&cru HCLK_TOP>,
> +			<&cru PCLK_TOP>, <&cru ACLK_PERIMID>,
> +			<&cru HCLK_PERIMID>, <&cru PLL_NPLL>,
> +			<&cru ACLK_PIPE>, <&cru PCLK_PIPE>,
> +			<&cru ACLK_VOP>;
> +		assigned-clock-rates =
> +			<32768>, <200000000>,
> +			<100000000>, <1000000000>,
> +			<1188000000>, <150000000>,
> +			<100000000>, <500000000>,
> +			<400000000>, <150000000>,
> +			<100000000>, <300000000>,
> +			<150000000>, <1200000000>,
> +			<400000000>, <100000000>,
> +			<500000000>;
> +		assigned-clock-parents =
> +			<&pmucru CLK_RTC32K_FRAC>;
> +	};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
