Return-Path: <SRS0=hTL8=M3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9201C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Aug 2021 14:31:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D61860E97
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Aug 2021 14:31:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7D61860E97
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GBetZhdchrJYAGG+T7TzdzOLv2DhRxFUr3YzrTHHjio=; b=C3sSQ0WiZaca9IwPOiCy0pXXgb
	giiAFeCbQu28htTMykUA43skKTyDfZMemUx6a0aELIuouifR+KdaMQdq4ykq9iX7F+asQAM0C20is
	Hs4aT18ytysRV1dygbyTQlpRD8kX9WjFd0RiFY5hNgRDGrFqykgCk0udHGGNZdalyW5t15pe5lv+Y
	WuGLtrM5SMVikfOIZIu8VaZ116smAYrHX9IlvuWMqtW7Mmm/9xkHxM6SWCGMCBe7SAqPsZvJcjv53
	cX+wtt9Wx8iF5W+gJRHI2s9XsfaassRpZ37bMOu8cy+evBift2Uc0vrc1TqDsBe2JrZ3VH/rzzo1G
	5HjeMy8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBHv9-006RCB-Px; Wed, 04 Aug 2021 14:30:59 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBHv7-006RAe-5r; Wed, 04 Aug 2021 14:30:58 +0000
Received: by mail-ej1-x62b.google.com with SMTP id qk33so3997993ejc.12;
 Wed, 04 Aug 2021 07:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jJgUENKtq1Xqry9IKjcIj2rKDWLQw2yb8qZeXDYhYJ8=;
 b=BxCJNFoC7AHZbsvmMXQ77Va5cgAhXPrXZUq2mUPzzDCMytHKjRwVlsHHQ0aKhqgfXB
 ik3ENUgR0qekgQ425+ZwpllnLbbRBpcpRIKyU3cah6GNIy3bgGin7F3tMKDgYUj+av8k
 UsKhUQeaNC4wnfHsIfTadhWp6HNP4sQApoyF4vThm4Lhi3Y3c+7wrx063eoJSvy/kqtq
 JyyR1Afw97kQp6xoFQlbcPC9tTVVvhfSndZyeYJg1w6J880LAnlyiiNXny4J+54MiFu1
 5T/lXZzFjEut45x/fb2OfVA11isRllpEHNVdJI3FfW5ZJ1gJTJOVWSSqCX0IDHoxknwo
 zIJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jJgUENKtq1Xqry9IKjcIj2rKDWLQw2yb8qZeXDYhYJ8=;
 b=AcfxaatYkGMNvkc/69+paWq3pGR8Y4+CvSIrJH+/Jf14qkgxlNzIO9F8oafZ0FvnrP
 9rvQ+yVkbj9/wsoo3+2EHiO75j9NYaPYGfq2OPz9okQ6roFD/3RQNrc7U2icPAA/JHqP
 EvU02Me4YXoCypyyqCa94FoVu+0gi8sldJrctZnhHJieQs2HNEMFAvOq+Btm4ivGeN5K
 DLamXMw6P9URNuMAZQQGQwqyJ7Mem8sVrfH1wfBf6RJfOlONiJFuqV+g2Y9yo8gq5Tb4
 MCu9Rt970PwmF/IwNycwmH32Y1a/HRE5dUhwIkzkT6Yy6MG82AjjCd+Si8dD1X2vXORO
 OoLw==
X-Gm-Message-State: AOAM532GzBoTH0ziIe4UAsdHgout/BlVQDrK4R5FYMFkcyIZ6egct57d
 ZMm86H/WCfnUe1i3cIDTZ+kLKd2iiCk=
X-Google-Smtp-Source: ABdhPJzzx6YRfIY5C2gP75MtSmovcieYN4L31YhhhxGDjBoJ+z2nYGnWfs6H0nZp4nj5gvII+MUf2A==
X-Received: by 2002:a17:907:7251:: with SMTP id
 ds17mr13062822ejc.43.1628087455004; 
 Wed, 04 Aug 2021 07:30:55 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 d23sm1026971edt.39.2021.08.04.07.30.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Aug 2021 07:30:54 -0700 (PDT)
Subject: Re: [PATCH v2 7/7] arm64: dts: rockchip: rk3568-evb1-v10: add node
 for sd card
To: Michael Riesch <michael.riesch@wolfvision.net>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Simon Xue <xxm@rock-chips.com>,
 Jianqun Xu <jay.xu@rock-chips.com>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Lee Jones <lee.jones@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Zhang Changzhong <zhangchangzhong@huawei.com>
References: <20210804130625.15449-1-michael.riesch@wolfvision.net>
 <20210804130625.15449-8-michael.riesch@wolfvision.net>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <aa16ee55-e1de-adc8-51f0-8ceed136b911@gmail.com>
Date: Wed, 4 Aug 2021 16:30:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210804130625.15449-8-michael.riesch@wolfvision.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_073057_271316_4D2D7D9E 
X-CRM114-Status: GOOD (  18.76  )
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

Hi Michael,

Could you add a commit message to all patches in this serie?

On 8/4/21 3:06 PM, Michael Riesch wrote:
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
> v2:
> - rename alias to match convention
> 
>  arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> index ed96f27c64a3..c4da6436059d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> @@ -17,6 +17,7 @@
>  		ethernet0 = &gmac0;
>  		ethernet1 = &gmac1;

>  		mmc0 = &sdhci;
> +		mmc1 = &sdmmc0;

mmc aliases are sort on reg address based on availability without number
gap.

	sdmmc0: mmc@fe2b0000 {}
	sdhci: mmc@fe310000 {}

>  	};
>  
>  	chosen: chosen {
> @@ -353,6 +354,20 @@
>  	status = "okay";
>  };
>  
> +&sdmmc0 {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> +	disable-wp;

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;

pinctrl-names below pinctrl-0 like the rest of rk356x.dtsi

> +	sd-uhs-sdr104;

> +	supports-sd;

Check mmc-controller.yaml, rockchip-dw-mshc.yaml and
synopsys-dw-mshc-common.yaml for properties.

> +	vmmc-supply = <&vcc3v3_sd>;
> +	vqmmc-supply = <&vccio_sd>;
> +	status = "okay";
> +};
> +
>  &uart2 {
>  	status = "okay";
>  };
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
