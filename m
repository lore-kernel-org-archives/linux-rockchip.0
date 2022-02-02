Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C763BC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Feb 2022 11:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eheAAamAJKuqeknitlIRBkaEFqr+opJJnvJCPEDhvS0=; b=YgJzzxJW/hZYhv
	97nGXi3Qsozj8Z8eAtwZG+bc4wzW/WXrpYb2zk1R3Nrv2RKLq/Nb20S1LhVIJ2qXm7UZ+OhLMUChH
	DbtE0WMK6TXnaWxXbMPxrafYFgSAkEFxWU7KfDc2sr9bEZEcPOtw5dEYRlbVpf/tGsV+Sb7C0K5CZ
	OY/kKm7JuWHVndaoumJDa2rQIgc3BPI06jzrM13JOhUvmd5fSXev2A/Fo4hGIRcXtdmkSuuW9DcQh
	jikFwlxWJNaS8Hzg2qUVkEFjmcru5Hcknew0zjM+AKd+ZJHkllwu+Yxc5Rb4L1hBjhW7WOJm0zll+
	fm0QCxLAVHv8/W/3Txug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFDOb-00EzoL-RS; Wed, 02 Feb 2022 11:01:53 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFDOO-00EzjA-Hx; Wed, 02 Feb 2022 11:01:41 +0000
Received: by mail-ej1-x62a.google.com with SMTP id m4so64407618ejb.9;
 Wed, 02 Feb 2022 03:01:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language
 :from:to:cc:references:in-reply-to:content-transfer-encoding;
 bh=J9GJrT68jy4RyXMS5Au9ggxxthJPkL9w+56EFTlG6jM=;
 b=VgapQs97wMqc0Fht4ovDuodoBTMqbSaPf8xeFPflZfuEnMEdyIrrnIjGQ/re9hhPNm
 T2uGvp4k1puVEEHFnAVJrkxTyqEFsOuSC+nPDG5nQ3NJJI/VFf/Iv+eJHvD8MuyeJie5
 I3TtTOTpao7lty6VE6DCA6X8g6lSLrbdEb1bx0EMszx1MV3ewG6he4IDwBhcYJX4OtvN
 5SUSMas8w95qGXn3bORLg+8i7uwpoqJkCEcx7aiFU/IezNMQ/r6z3xR7oRrhZNZtyr6z
 2dd5e/id57Pxb1c6/EKIbKAwMjoLBDoWm4nFIGHaxaSfJlFmHrXZtP/TkaShk2xqSc1l
 IVZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:from:to:cc:references:in-reply-to
 :content-transfer-encoding;
 bh=J9GJrT68jy4RyXMS5Au9ggxxthJPkL9w+56EFTlG6jM=;
 b=Fup7H00kPX6/vFacjXrDkD29JT1Tbgw0l198hXDrdKqBl1/Gdj5pokv0WujGs6e42F
 a2oOGOIEFDtsuU0WrK6D08kv76qWRNG5paVEQJjviRnT52iV230tZghja5W5J52Llptp
 ubHedVfwxfuQlysxvX4ltPVP89Gdr//3010yUKgKWoiDp7+wM+JOwS11mWbUHbuI0YV5
 Gh98Gx8/br8ybqjomteP0VSxjVFUi61YKOwSOSsoY1NRA4KmuJ7zcTynhufJ2KSaSq0N
 6lGjYpBZdNT2mrWy9ilYK79hfS2acMaPYGwd/dBne9Gn4xyciCyNo2uKIhQa8xOkCjBt
 XGSA==
X-Gm-Message-State: AOAM5300tkWHxnGKYqseWAVsiRacB3KCq7U4TF0Wb5I34lTPhOLuxl4A
 nGPzVDlfB9NF69XZG4wMScs=
X-Google-Smtp-Source: ABdhPJz854uNdR6HlBIT/1aGNSbWAd8IlDi3ALho8eha2NqvV5B7AMXYqhcnfO/wcS3X1ual62iR2A==
X-Received: by 2002:a17:906:71c2:: with SMTP id
 i2mr24559160ejk.409.1643799698760; 
 Wed, 02 Feb 2022 03:01:38 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 h3sm15360303ejl.193.2022.02.02.03.01.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Feb 2022 03:01:38 -0800 (PST)
Message-ID: <242e35d7-6e4a-2e30-3739-1fca77587baf@gmail.com>
Date: Wed, 2 Feb 2022 12:01:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Pine64 PineNote board
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
To: Samuel Holland <samuel@sholland.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>, Chen-Yu Tsai <wenst@chromium.org>,
 Levin Du <djw@t-chip.com.cn>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Tianling Shen <cnsztl@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20220130053803.43660-1-samuel@sholland.org>
 <20220130053803.43660-3-samuel@sholland.org>
 <153a5ddf-74d0-71e9-2694-5d1fc51472db@gmail.com>
In-Reply-To: <153a5ddf-74d0-71e9-2694-5d1fc51472db@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220202_030140_660109_70D9D35D 
X-CRM114-Status: GOOD (  14.59  )
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



On 2/2/22 11:41, Johan Jonker wrote:
> Hi Samuel,

> On 1/30/22 06:38, Samuel Holland wrote:

>> +/ {
>> +	aliases {

>> +		mmc0 = &sdhci;

sdmmc1 ??

MMC aliases should be sort on reg address, based on availability and
without number gap.

>> +	};
>> +

[..]

>> +&sdhci {
>> +	bus-width = <8>;
>> +	mmc-hs200-1_8v;
>> +	non-removable;
>> +	pinctrl-0 = <&emmc_bus8>, <&emmc_clk>, <&emmc_cmd>, <&emmc_datastrobe>, <&emmc_rstnout>;
>> +	pinctrl-names = "default";
>> +	vmmc-supply = <&vcc_3v3>;
>> +	vqmmc-supply = <&vcc_1v8>;
>> +	status = "okay";
>> +};
>> +
>> +&sdmmc1 {
>> +	bus-width = <4>;
>> +	cap-sd-highspeed;
>> +	cap-sdio-irq;
> 
>> +	disable-wp;
> 
> From mmc-controller.yaml:
> 
>   disable-wp:
>     $ref: /schemas/types.yaml#/definitions/flag
>     description:
>       When set, no physical write-protect line is present. This
>       property should only be specified when the controller has a
>       dedicated write-protect detection logic. If a GPIO is always used
>       for the write-protect detection logic, it is sufficient to not
>       specify the wp-gpios property in the absence of a write-protect
>       line. Not used in combination with eMMC or SDIO.
> 
>> +	keep-power-in-suspend;
>> +	mmc-pwrseq = <&sdio_pwrseq>;
>> +	non-removable;
>> +	pinctrl-0 = <&sdmmc1_bus4>, <&sdmmc1_clk>, <&sdmmc1_cmd>;
>> +	pinctrl-names = "default";
>> +	sd-uhs-sdr104;
>> +	vmmc-supply = <&vcc_wl>;
>> +	vqmmc-supply = <&vcca_1v8_pmu>;
>> +	status = "okay";
>> +};
>> +

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
