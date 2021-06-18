Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
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
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE1DBC49EA2
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 16:15:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 87A36613F3
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 16:15:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 87A36613F3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+6r8xObp04IU+DCkEe+qiOVGWm7E7xwlEtdxo0Tpn8o=; b=rZJBB5jYzXgaOLn94kpdBgQAm+
	2oEINvEAXCnLsu2096wf55qHD6Z5xI2abw7g63yWJ7a1cqan9pLBjKjR5qr2Wsc1YYdf19mOKylK7
	bTVsHwFesnZhyZMiD5yIWvUmWTzDo47OvcBYrNY5y7U57FNmhVCcJ0YfaKFBnHGSKZYl796OcYbQR
	0DhWKPQVQ2KPHxx3W70MYX611iSiOsQH3jHE37LrRBSzRR7simQ5G17US5zgh29ALbcU3cIzyYGqp
	jERBQ9cXh/3sPRutd3qfc0L3q3z9MF6A/AnTKNklT6J47PxI3h3vO8ekJntd+zChlJGgDM1U9EXJB
	t5s8h8qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luH94-00Etlv-Ji; Fri, 18 Jun 2021 16:15:02 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luH8r-00EtjT-Er; Fri, 18 Jun 2021 16:14:51 +0000
Received: by mail-wr1-x429.google.com with SMTP id a11so11359316wrt.13;
 Fri, 18 Jun 2021 09:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=sJ6tmXCDWjYjTczKpyWz/c7MXBSmbvzpLSbj8oATx1Q=;
 b=bzfqVe75gKphpiq2mBVpRUpqbWAfNiGGhYiKv5KnyMBkGwdeRYT2HRmSIgt1eazns8
 x185YYf5Bi4dJW5Dj6VQk0m9RiQKxqNJT26JeeJqUqNxgUJ0/R7X6J3y3SAv7Beh1UaM
 R7S3EjGfqLAqWstc2RBaKjRF666GRtuA/W6pNCvgsvP2Xm5jkKwDzbLFuGeMCUb+VB7l
 vpN5DK9ilJs+L6uQ88Ma7RHwFd/K49zAnfdb3lIkxwp1lYG/ZeM01blEPOKkpwdtltlU
 3UJGg9oa7dNdPa7pklG7IeZlXaUAqACPHwPbQjk51YtRynr11vB4c+b/Rw+k/ElBTp8V
 okVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=sJ6tmXCDWjYjTczKpyWz/c7MXBSmbvzpLSbj8oATx1Q=;
 b=MsGe3CstMHeayOHjILnautJJBTzTsVXe+HWf1yBdslmDFv5JeQP/IzpQ1cDqUyLEvD
 QRtDRFxfDhQvqdbNXVHtpSSf/YqGB3awTSFsUETz2N45IC4DuIGAJ8c4pyPf1suLZD3O
 sRCQ0d23H3dHS9kdDE/qz9QmufNU/GfdZCdiUs7ydlZvIMwwZevmcdOq6uFYkt6BSLI0
 PKXgUjYB3u1YrAQRpvNbmqGjMya68KPwwp3yNzBZ+3NW4pR6pP+zG1T5B4DKmm2zB/R9
 /5lbNE3ZcPmcPx7lloabecuyh9qb+Gn9RVPjLYMuZANjkDMyiGC3kt8n8duq+GcUysvM
 +GyA==
X-Gm-Message-State: AOAM533YBjkaZTV2M5baVn/51P7jTExFKpfyZjxAyhcJ5yX9bQXP1DUt
 0afgAMjbEsp+Ty2ipaiLNfJ7T+ZbCeeY
X-Google-Smtp-Source: ABdhPJzyRQ3tfsoH1rSyh/EmkjzS6/pApI0k24VzPoJ3O+CU+eYsyrsdp2T0S+bhgTosH5J7ozEfcg==
X-Received: by 2002:adf:ea49:: with SMTP id j9mr13474888wrn.366.1624032886125; 
 Fri, 18 Jun 2021 09:14:46 -0700 (PDT)
Received: from [192.168.200.247] (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.gmail.com with ESMTPSA id w18sm9053618wrt.55.2021.06.18.09.14.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 18 Jun 2021 09:14:45 -0700 (PDT)
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: add ES8316 codec for Rock Pi4
To: Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org, 
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20210617044955.598994-1-knaerzche@gmail.com>
 <d562b025-23cc-f26d-b118-e269501f459b@gmail.com>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <d4e4e06e-6ddd-4707-232d-b829c1d646e6@gmail.com>
Date: Fri, 18 Jun 2021 18:14:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <d562b025-23cc-f26d-b118-e269501f459b@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_091449_556564_5D6FA5DF 
X-CRM114-Status: GOOD (  23.88  )
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

Am 18.06.21 um 11:54 schrieb Johan Jonker:
> Hi Alex,
>
> On 6/17/21 6:49 AM, Alex Bee wrote:
>> Rock Pi4 boards have the codec connected to i2s0 and it is accessible
>> via i2c1 address 0x11.
>> Add an audio-graph-card it.
>>
>> Signed-off-by: Alex Bee <knaerzche@gmail.com>
>> ---
>>   .../boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 28 +++++++++++++++++++
>>   1 file changed, 28 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
>> index 7d0a7c697703..e5c1083174ff 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
>> @@ -36,6 +36,12 @@ sdio_pwrseq: sdio-pwrseq {
>>   		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
>>   	};
>>   
>> +	sound {
>> +		compatible = "audio-graph-card";
>> +		label = "rockchip,rk3399";
> See previous discussion:
>
> https://lore.kernel.org/linux-rockchip/e5ab2c62-ad00-4cdf-8b0a-24fda59c980b@gmail.com/
>
> It seems that aplay/linux? adds "-1" to it and removes the comma and
> "-", so we get:
>
> hdmisound
> rockchiprk3399
> rockchiprk339_1
>
> Shouldn't we label it with something that reflect the function/output.
> Shouldn't we standardize to SPDIF, HDMI and Analog similar to rk3318/rk3328?
> Make a shorter label without spaces or special chars, so that chars
> don't get removed?
>
> Proposal:
>
> Analog
> HDMI
> ES8316 <---
> SPDIF

OK - thanks for that, I wasn't aware.

I'll go for "Analog", since that seems to be the accepted solution for 
RockPro64 board and I think we should keep it the same across boards (on 
distro side it can get annoying if you need a couple of alsa configs 
with the same contents, just because audio card names are different).

Alex.

>
>
> Possible example solutions:
>
> [PATCH] arm64: dts: rockchip: more user friendly name of sound nodes
> https://lore.kernel.org/lkml/20210110151913.3615326-1-katsuhiro@katsuster.net/
>
> ===
>
> Johan
>
>> +		dais = <&i2s0_p0>;
>> +	};
>> +
>>   	vcc12v_dcin: dc-12v {
>>   		compatible = "regulator-fixed";
>>   		regulator-name = "vcc12v_dcin";
>> @@ -422,6 +428,20 @@ &i2c1 {
>>   	i2c-scl-rising-time-ns = <300>;
>>   	i2c-scl-falling-time-ns = <15>;
>>   	status = "okay";
>> +
>> +	es8316: codec@11 {
>> +		compatible = "everest,es8316";
>> +		reg = <0x11>;
>> +		clocks = <&cru SCLK_I2S_8CH_OUT>;
>> +		clock-names = "mclk";
>> +		#sound-dai-cells = <0>;
>> +
>> +		port {
>> +			es8316_p0_0: endpoint {
>> +				remote-endpoint = <&i2s0_p0_0>;
>> +			};
>> +		};
>> +	};
>>   };
>>   
>>   &i2c3 {
>> @@ -441,6 +461,14 @@ &i2s0 {
>>   	rockchip,capture-channels = <2>;
>>   	rockchip,playback-channels = <2>;
>>   	status = "okay";
>> +
>> +	i2s0_p0: port {
>> +		i2s0_p0_0: endpoint {
>> +			dai-format = "i2s";
>> +			mclk-fs = <256>;
>> +			remote-endpoint = <&es8316_p0_0>;
>> +		};
>> +	};
>>   };
>>   
>>   &i2s1 {
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
