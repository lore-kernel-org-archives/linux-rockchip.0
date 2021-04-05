Return-Path: <SRS0=J5Gw=JC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,NICE_REPLY_A,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72D0EC433B4
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 11:04:08 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 182F8613AF
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 11:04:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 182F8613AF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T9j2Ol92C0dWOGC3NN70I/pTLEvrI8iEuWSx7dWxr+k=; b=KdCL4+nVNV4j5M0csLCo8D5RX
	Hiry1giOgBOSfTWN15nAJjoC06FtlbE3I2Z6PYOu0FY/hFo/Qf1NQ7AJ7KE8IJbEi1T703hsqpV9s
	o+Uxo6ifBqKFJHZHQp3lUvJF/DpG4b156H1VZr/QLNAKBEko8t1Be6MUDx7htCJV2hWmnMSXkqtAI
	iJlCcdGJo13Jw0hF+RiZp3FOoDee6tSdDnv6JNYxMYWxNNe9LahMJi3elXraeRYvAnY1gjOlOY6Y7
	cI5/repxvmzyzt/Ausn6Dzwdcv1Nuu215wJ3oz49FmLqxXwR8tRV6Jeet0mimUb2odVREZIBnRJyk
	KnsKEHBsQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTN1O-00H8zU-Sc; Mon, 05 Apr 2021 11:03:55 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTN1K-00H8z5-Pv; Mon, 05 Apr 2021 11:03:52 +0000
Received: by mail-ed1-x52c.google.com with SMTP id h10so12094736edt.13;
 Mon, 05 Apr 2021 04:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CVqkD3AatIpXd53BFyXyyzJdd7n0kKZfEfddTgAIcf8=;
 b=KuJD2F8msRNqfeOT3+a1Pgux00oPtqxE2cAqS4reEwbAwzT2UavpbsydpH599R2SBQ
 kuY/0uvZse0/p57ykkczCurI1r0mlLS/i7HprIxCjlREhV8j8eUKWtrpuIWoisivdhQj
 sid40fOfhRpkpV4wI4BmqLISeU98m9co3gXjYNTOmwJPdKuB5LsDV+k2yy/kAZd+8CuC
 eCrjMzmG+I4NooaGYEkWohkBbUEcZdK/BiMEEhHmHZ52KPN9nPZBInGctJdSu+snqUzP
 UuTUlHBOYfdho5c8OAaix8VNTzj/HNCOZ0YHaIZ5SMA69LW7Y+eNC2MQnMBpLkqiFiCT
 SX4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CVqkD3AatIpXd53BFyXyyzJdd7n0kKZfEfddTgAIcf8=;
 b=Fd+E5hEcPL31q4PHXqnQIpM+0EtMMRLPHgvqUM+aTYSGbJ2Hn2YgNHT6vn2m2YwbtS
 q2ipVHFRf/pQZUH0scjAwYWTPKuDEu0uTsJJm9UmfF1/dbe9UgnQ2yGiyyURoM+ThCaM
 bvfEXVvEoonJ/vHGEu51Cykrv9LztHrnMhs12aAIuDkFiMYb3IWiTH7lSyiYjvDxzz97
 WY1S9CP7f/h+S8/F3ERaEbfhc8zQBTgco5/pljH0QIfMqWXNvJX3xxxCC3tIQf4u27HE
 L3rnRBUbZMTPoOz2fVyrnR3QUCwSgTP+MevA+ygylniYDsaet/Q37NrEFpEhR5HRDAbn
 hJ5g==
X-Gm-Message-State: AOAM533YtlgYI4cd3KiKJy+NVU0b8+QYFsouR5XN4EXaBvob2gik40ld
 MJY4Fk+g6rAJLgieBPUbdlkrcpTYctJUrw==
X-Google-Smtp-Source: ABdhPJzbTGWEO3xL3cM0NMU0xLRnQ1CoUFtXI2zfKTRgSn7BR69n+VrvGMGcQo6esEMLvyrIjU3B0g==
X-Received: by 2002:aa7:c6d2:: with SMTP id b18mr30554061eds.183.1617620629736; 
 Mon, 05 Apr 2021 04:03:49 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 lm24sm8555756ejb.53.2021.04.05.04.03.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 05 Apr 2021 04:03:49 -0700 (PDT)
Subject: Re: [PATCH v2] rockchip: enabled LAN port on NanoPi R2S
To: Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, David Bauer <mail@david-bauer.net>,
 Robin Murphy <robin.murphy@arm.com>, Chen-Yu Tsai <wens@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210405093423.16149-1-cnsztl@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <c12341c8-8590-8314-d59b-3d5903041491@gmail.com>
Date: Mon, 5 Apr 2021 13:03:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210405093423.16149-1-cnsztl@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210405_120350_931862_6A430E66 
X-CRM114-Status: GOOD (  21.55  )
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

Hi Tianling,

On 4/5/21 11:34 AM, Tianling Shen wrote:
> From: David Bauer <mail@david-bauer.net>
> 
> Enable the USB3 port on the FriendlyARM NanoPi R2S.
> This is required for the USB3 attached LAN port to work.
> 
> Signed-off-by: David Bauer <mail@david-bauer.net>
> [added device node for USB Ethernet controller]
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3328-nanopi-r2s.dts   | 32 +++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> index faf496d789cf..18936b393d9d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> @@ -13,6 +13,10 @@
>  	model = "FriendlyElec NanoPi R2S";
>  	compatible = "friendlyarm,nanopi-r2s", "rockchip,rk3328";
>  
> +	aliases {
> +		ethernet1 = &r8153;
> +	};
> +
>  	chosen {
>  		stdout-path = "serial2:1500000n8";
>  	};
> @@ -37,6 +41,16 @@
>  		};
>  	};
>  

> +	vcc_rtl8153: vcc-rtl8153-regulator {

sort nodename

> +		compatible = "regulator-fixed";
> +		gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&rtl8153_en_drv>;
> +		regulator-always-on;

> +		regulator-name = "vcc_rtl8153";

exception to the sort rule
sort regulator-name above all other regulator properties

> +		enable-active-high;

sort

----
Heiko's sort rules:

compatible
reg
interrupts
[alphabetical]
status [if needed]

----

> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-0 = <&lan_led_pin>,  <&sys_led_pin>, <&wan_led_pin>;
> @@ -265,6 +279,12 @@
>  			};
>  		};
>  	};
> +
> +	usb {
> +		rtl8153_en_drv: rtl8153-en-drv {
> +			rockchip,pins = <2 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
>  };
>  
>  &io_domains {
> @@ -364,6 +384,18 @@
>  	dr_mode = "host";
>  };
>  
> +&usbdrd3 {
> +	dr_mode = "host";
> +	status = "okay";
> +

> +	r8153: usb-eth@2 {

With YAML undocumented additional properties and nodes generate
notifications.
We need a change in the documents below for that.
rockchip,dwc3.yaml > usb-drd.yaml > usb.yaml

Is there a standard for the usb-eth nodename?

> +		compatible = "realtek,rtl8153";

Since a while Rob has improved has scripts.
There's no escape anymore.
Add a YAML document to this serie for "realtek,rtl8153".

Improve checking for undocumented compatible strings
https://github.com/devicetree-org/dt-schema/commit/93e7ada8d53af099074cb5d53f7caa12835784e0

> +		reg = <2>;

Why 2 ?

> +

> +		local-mac-address = [ 00 00 00 00 00 00 ]; /* Filled in by U-Boot */

This is a private property.
In a generic dts that's up to the user.

> +	};
> +};
> +
>  &usb_host0_ehci {
>  	status = "okay";
>  };
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
