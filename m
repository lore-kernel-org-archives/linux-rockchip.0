Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8848CC3271E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jul 2024 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sfpRpAH8o9aSNUOohAYji2mDa6Mx/t7BhFSb9hyfUIM=; b=d0l7pyGlCqQvU6NSOwY6+7RmfV
	ucD3gOeP/syiTUFLoC4JebBUjSsJw7ixLUmT2NkpJVG36oy41PxRUU+y9X1JcZm3Nth7G0lJZ6JYg
	L/Pv18eCtAOynaqovfU7VJSUDo3S66TYJAulEcCyQLIO2jMA7CO26zA6Tme1+muRLt0boBnf6NpRn
	bH2sarPjRP7Z5x1AMPSfNZH0nGRt8wBuwZVP3gM3evNUFW1dduGqf6QQAjHFYIJrjmNXX5n7AGHaj
	kJkb9biuYv8QBpCn7dAqN8x2LSWXZofior1iK+IM+qnv1tG84Of/mtIgpVNf5SZY11ZfQw2uXzbzd
	Nqmod8og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPnuJ-0000000GekF-2yaW;
	Fri, 05 Jul 2024 18:43:43 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPnuH-0000000Gejj-10HA
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jul 2024 18:43:42 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-70b03ffbb3aso1373587b3a.0
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Jul 2024 11:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720205019; x=1720809819; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EzEp9cmvTlquHVcR208b9iieY3H8dtusZU7hGh1/fss=;
        b=G7qxb/ZqtGcLKV2dgwgis3fuFH4k4pswk9y/xtwcG5xcXNC5kekyKYptLVNcT8uUqw
         qMVk5KNlW8jxcTnxsMlZRUYvZvCaGXtHnvEKuWuUBvLmXSVs+7+uktmvftjbUbFAicql
         p+y4cxMs5+SPbzK+Z90LAm5DMWFJWnHkCkFtCkjuMZL2QHauJyMzTzwS3KpJKI2kSQIl
         VgQNXjPer1V3PB5XGjDTvIh38Fv5k9aOYEVFiAOlOKqzFyE2hqPc/IYufcGU3CIFAdG1
         4jCZMOFwyr5yhvukmXNNSSXGEZN1vNaqa6H95GlqUCK4b5cCMRXKuY9c1KNopBXG6QDh
         2fkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720205019; x=1720809819;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EzEp9cmvTlquHVcR208b9iieY3H8dtusZU7hGh1/fss=;
        b=J+bxcOzkMawZDFSmiAE8djiMIjHe+7+O8iPsAH4bHI/vDDjDA+46zQD0/XcTTmhjOD
         ioI4EX/2ZBKT3krrK1sM42sxtFzcE4Wx7cdLAvA2A+P3Cm0J5TzC934xupd1jWMPJ3tt
         +cwgRG/Hi7LAQxBROgDDbL2hQbI0D1Iv6vZ0gCdaOJdXMlFDpEBBsXUxRVxVu3boRHut
         kO3W1x4GpLoQe+iyJV9TWgR6h1wbTiXmkHaRfXrmnYjYvTU/BaJhWVKtt3rUZamByzfS
         tq4Gbh567m9TYZecPueC4pJvc1zNwM3M04X3rFhxqDNWbOMZ2ZSHHN25+ijxmsFW3vCH
         T+LA==
X-Gm-Message-State: AOJu0YwhzqetCqiiAA7ZO8eIWEx/ErApkE2vIoIVX41wqlckRJzER5kl
	6tJ83t5OIMiRiYjx5/VAtCHEseOXkbfrlyl/dO9ptW6H5JmvUZJRMG8XMvcS
X-Google-Smtp-Source: AGHT+IHE/2aCQ1wvb1kCMZEQO9qdQ96JJWb6jKMYEtnYia9Jyn40PfrzLFr+ZR05/pOYeXOHWhwgVg==
X-Received: by 2002:a05:6a00:2e16:b0:70a:f38c:74cc with SMTP id d2e1a72fcca58-70b00a7f1d5mr6796520b3a.8.1720205019228;
        Fri, 05 Jul 2024 11:43:39 -0700 (PDT)
Received: from ?IPV6:2001:db8:20:0:77d6:fe2c:d0d8:92e3? ([2600:1700:19e1:c3e0::48])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b111dd233sm1424633b3a.28.2024.07.05.11.43.38
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jul 2024 11:43:38 -0700 (PDT)
Message-ID: <41184214-3d21-485a-b206-bd9d1947b943@gmail.com>
Date: Fri, 5 Jul 2024 13:43:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Add dma-names to uart1 on Pine64
 rk3566 devices
To: linux-rockchip@lists.infradead.org
References: <20240705163004.29678-2-didi.debian@cknow.org>
 <20240705163004.29678-4-didi.debian@cknow.org>
Content-Language: en-US
From: asonix <asonix.dev@gmail.com>
In-Reply-To: <20240705163004.29678-4-didi.debian@cknow.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240705_114341_315602_7999B95A 
X-CRM114-Status: GOOD (  12.66  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On 7/5/24 11:22, Diederik de Haas wrote:
> Similar to bf6f26deb0e8 ("arm64: dts: rockchip: Add dma-names to uart1
> on quartz64-b") also add the dma-names property to the other rk3566
> devices from Pine64 with bluetooth functionality.
>
> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
> ---
>   arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi  | 1 +
>   arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 1 +
>   arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi  | 1 +
>   3 files changed, 3 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> index d899087bf0b5..ae2536c65a83 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> @@ -674,6 +674,7 @@ &tsadc {
>   };
>   
>   &uart1 {
> +	dma-names = "tx", "rx";
>   	pinctrl-0 = <&uart1m0_ctsn>, <&uart1m0_rtsn>, <&uart1m0_xfer>;
>   	pinctrl-names = "default";
>   	uart-has-rtscts;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index 0b191d8462ad..37a1303d9a34 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -738,6 +738,7 @@ &uart0 {
>   };
>   
>   &uart1 {
> +	dma-names = "tx", "rx";
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
>   	status = "okay";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> index dd4e9c1893c6..e42c474ef4ad 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> @@ -614,6 +614,7 @@ &tsadc {
>   };
>   
>   &uart1 {
> +	dma-names = "tx", "rx";
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
>   	uart-has-rtscts;
Tested-by: Riley Trautman <asonix.dev@gmail.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
