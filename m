Return-Path: <SRS0=6gll=LR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D24C4743C
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 13:53:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8B5236101D
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 13:53:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8B5236101D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fm1JqMw7j9PeKYtIuZMw7SkDG9cys2sojuTy7TKrAfU=; b=frlQ3DDSd44xUPtFto6hu99AZc
	KHMZmcn+4VaiiC+obKf0G1PZzkr9pfy2CtlGWuS04BWCbSHf76fQuiSY/s2h1e2U1Rz2V6e4DoaSp
	QOaQ9OZOqncZyUWcV8DG8etOwkkDJ8OF+to8UDTznomCwkUEZcfZdMguO7GhphqK2xEOy76t5ZZ8W
	0knksyv/oKx5j0JcYzJJzfV0bjUkNVYc3yxSq3z8CAJL5ChJuLRIlWysYbZ9oViUqyH3KWg1DoMp9
	GUFDBbbQjMCTb2pqbw+LXg9AhnrcqVKeKuDUjG3CxZarbUvVh2wJMK44ErUaPsP/0NLHs4UsjkDUo
	0//myoGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw3Jl-00As5w-9A; Wed, 23 Jun 2021 13:53:25 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw3Jh-00As3N-57; Wed, 23 Jun 2021 13:53:23 +0000
Received: by mail-wm1-x32f.google.com with SMTP id
 p8-20020a7bcc880000b02901dbb595a9f1so1415542wma.2; 
 Wed, 23 Jun 2021 06:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=pKJo2zfQJAto+H7on6ydNnW2a5qzcSImZ5tu6Hz8SPs=;
 b=Ax5amtes4QHAh5hFHrs1nlkfPyuUGwzzAv1QPZ+CsoH50Xgyw/7JKR+P+GtUWWaSgA
 LiGgeYD93qjaZ9qlcD8BQYq3AbD/B6XtbKuu+CLCzjyKzUbz5/GGDF/zoXXSwVVOGF1y
 UnJBK3s0JXaeEYup+j5MgnOxc5tg5IJ0VSPPiiXkxll3ptUcEABrWbKu+trMyHnvn5SI
 7aqoE23wqwLp8KgTj4uV3ib+W7KRpVMDmKZeM95amRPuVRWF/NBuQDLqFYnaiJUq5dEu
 N3DNyMno4cj84YUSDj7vdOMlIswvYpmHq6E/6umWyWlzBabP5RLPpcbiwu3SEVLCwLp3
 IWyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=pKJo2zfQJAto+H7on6ydNnW2a5qzcSImZ5tu6Hz8SPs=;
 b=t5HaVQ40YZNi7crNPb0CIi8RqTpOJ2JB7ja18TDIOsZH+V0niPrOB/KmUs4RtAi54P
 2O4BEezRpN+o5fo9GVYpoVjU5Rl5+FG3raR+4LYClSq0yqAAcV4obGtrJAaD0KHkAzRD
 zd/ofxYd6D06BRAn2JrpkH4QMZEnwX49mQckmTLzc45kfnBzBKZdN5Cl4UMSLNRejh/G
 oyPJZxbz0vlKFGHTuq53g7CSRh3zASNGjyMSXxVH2mIK1ho/bVjJ2PFFGC5peCnh8Yea
 gH7XC3yJw0/0wnminKHA4nAoFy9b/1zFDLk8KSvZE0XI6h+ZBJhIiaiUE3Dz/69nGy6L
 QM8g==
X-Gm-Message-State: AOAM533uCPv76cfJlGVNJbzCfuFe58DNcHJ8wA2szerlCYmov2qNLuxd
 etl/OKDrF4nnQzjbr41p0u4CqJYaXdb2
X-Google-Smtp-Source: ABdhPJx6MegljGgLzjeJ/OV84M5roMM/v+iHCm4FMq3beu+lQ7zyxaZd9zVURsttRoq10p/dwncWrQ==
X-Received: by 2002:a05:600c:ada:: with SMTP id
 c26mr11165067wmr.189.1624456399786; 
 Wed, 23 Jun 2021 06:53:19 -0700 (PDT)
Received: from [192.168.200.247] (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.gmail.com with ESMTPSA id t82sm36707wmf.22.2021.06.23.06.53.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Jun 2021 06:53:19 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: Add sdmmc_ext for RK3328
To: Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210623120001.164920-1-knaerzche@gmail.com>
 <c30377a1-90aa-d79e-a60a-5bc1a8e18c44@gmail.com>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <b534795a-fc1d-3e89-7ea9-0606297cd9b1@gmail.com>
Date: Wed, 23 Jun 2021 15:53:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <c30377a1-90aa-d79e-a60a-5bc1a8e18c44@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_065321_234677_CF1BF9C6 
X-CRM114-Status: GOOD (  18.80  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Johan,

Am 23.06.21 um 14:53 schrieb Johan Jonker:
> Hi Alex,
>
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
>
> On 6/23/21 2:00 PM, Alex Bee wrote:
>> RK3328 SoC has a fourth mmc controller called SDMMC_EXT. Some
>> boards have sdio wifi connected to it. In order to use it
>> one would have to add the pinctrls from sdmmc0ext group which
>> is done on board level.
>>
>> While at that also add the reset controls for the other mmc
>> controllers.
>>
>> Signed-off-by: Alex Bee <knaerzche@gmail.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3328.dtsi | 20 ++++++++++++++++++++
>>   1 file changed, 20 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> index da84be6f4715..c13fa2f3f4cd 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> @@ -858,6 +858,8 @@ sdmmc: mmc@ff500000 {
>>   		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
>>   		fifo-depth = <0x100>;
>>   		max-frequency = <150000000>;
>> +		resets = <&cru SRST_MMC0>;
>> +		reset-names = "reset";
>>   		status = "disabled";
>>   	};
>>   
>> @@ -870,6 +872,8 @@ sdio: mmc@ff510000 {
>>   		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
>>   		fifo-depth = <0x100>;
>>   		max-frequency = <150000000>;
>> +		resets = <&cru SRST_SDIO>;
>> +		reset-names = "reset";
>>   		status = "disabled";
>>   	};
>>   
>> @@ -882,6 +886,8 @@ emmc: mmc@ff520000 {
>>   		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
>>   		fifo-depth = <0x100>;
>>   		max-frequency = <150000000>;
>> +		resets = <&cru SRST_EMMC>;
>> +		reset-names = "reset";
>>   		status = "disabled";
>>   	};
>>   
>> @@ -980,6 +986,20 @@ usb_host0_ohci: usb@ff5d0000 {
>>   		status = "disabled";
>>   	};
>>   
>> +	sdmmc_ext: dwmmc@ff5f0000 {
> /arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: dwmmc@ff5f0000:
> $nodename:0: 'dwmmc@ff5f0000' does not match '^mmc(@.*)?$'

Argh: I submitted the pre-dtbs_check version. Thanks for checking.

Alex.

>> +		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
>> +		reg = <0x0 0xff5f0000 0x0 0x4000>;
>> +		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
>> +		clocks = <&cru HCLK_SDMMC_EXT>, <&cru SCLK_SDMMC_EXT>,
>> +			 <&cru SCLK_SDMMC_EXT_DRV>, <&cru SCLK_SDMMC_EXT_SAMPLE>;
>> +		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
>> +		fifo-depth = <0x100>;
>> +		max-frequency = <150000000>;
>> +		resets = <&cru SRST_SDMMCEXT>;
>> +		reset-names = "reset";
>> +		status = "disabled";
>> +	};
>> +
>>   	usbdrd3: usb@ff600000 {
>>   		compatible = "rockchip,rk3328-dwc3", "snps,dwc3";
>>   		reg = <0x0 0xff600000 0x0 0x100000>;
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
