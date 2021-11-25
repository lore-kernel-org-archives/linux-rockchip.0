Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C93BC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Nov 2021 19:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fhtTOy2sCwPyHnmUHjGOI8oT5ix1LZy/oRIpE80+0kg=; b=FGmSN8OS6Eg6S1u4/XoykvN9th
	ZU1m1CyPSheVCRogtVaQrr74No9XpzBnC26c/4jd9TwSkb42oSYds9ktj8uMmUKJkvKjht9yrfuij
	qcKZU1Gq7kbuB3/7m7tOYICCgWRLrrvWJiRwjOHsJkzATsZFH9897qI1vXBIA5HLwiNmWadRtAt39
	BrRUUDrWNBJ79Tzs6Nnkx/S2CXJk1IliB8BHAE9LUr+nXlJ2PWAOIUEndIWEg2l0Z4droUzMZS2lY
	KqZp4eXIMTtZmMJ4AaSZixoFcAzpYKRlM8eF0TBwVIAeOGUoPs2NW5slhrJa3QhYghLGi36R7NM9N
	U/WbmByg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqKfO-008XxT-D8; Thu, 25 Nov 2021 19:44:22 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqKfM-008Xwt-5r; Thu, 25 Nov 2021 19:44:21 +0000
Received: by mail-ed1-x536.google.com with SMTP id y13so29590729edd.13;
 Thu, 25 Nov 2021 11:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9oU1uXkriAScBT39Syg/FKdxMTMlNc0lBFBBQ20vggw=;
 b=JPHd9H3xP1jgvn5m4y21YhcKXqZIu/T7fmE2AkgGyO5anSKGRQiZ8blYyEHwr5giH/
 4VmsEIsQ+3wlv5BnT2OA4Cl4B0IXP7eEyFTWel9hinLR3sOIoCJO6SuYvpxHcyjXp6jM
 NxP3ccnej5BnWEEWt0/ig+1B4wp4rqpE4L4Wnpq7OjWh5RZ3r7ch4thiiM4RwHU+YHa3
 12J8noIJ9cioC0bxD/78KT4mRWVS3d28hWvfLVg+sHpPEaARnU64Si5ADH0nkt5H8i6S
 i0Dcigb/zDaXvV9Jf+91MPzxOrR+C2SaB1j8rCYH6bc0U5HroQCLP1TvNU5Kujn+pC03
 dPvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9oU1uXkriAScBT39Syg/FKdxMTMlNc0lBFBBQ20vggw=;
 b=8K4uIByeYfhBC8RUzPRkvu2b4JB53QIg3xBJQ9m5biBOGS4AC7PP0uMdTHFOoVzb0M
 L2B+M3FbkVn2HzhhuqY19y6fduW2L2rlVu5ilbZlrajDkuXXxuO7UcK6u2n6wlYVNDrd
 9uXw0OGSs2sFP15JwfPTtu/PPimpwNkc/HaX+VUJSustjlBS/DPhkVCobuYf0PxWZKGm
 hFSvtlbgog44MTSVYb93XEieojxfjW8bZClqF3Pu6ef2uqjg24ChRMfV6Z0m7zeXTQUl
 egTikeTKNS3k03bPXQ6AAvPq14w6k8BMbKG/GxCm+7IznpzcEqyzRUmFwHMHnxj7eGGp
 6FXw==
X-Gm-Message-State: AOAM53000Rm1GjW9p2TSP5PHXdnlMzQ31/1dOyskCSKSdFdJVAAH4zCG
 osNHmyNY0nJQ1oljvllrPbI=
X-Google-Smtp-Source: ABdhPJwSUdOD7SkfpYIj1CJ/H6tTynOlhCey4yG3EibrwCFGYc6TrtV7+5IkHQMGUFdN/ktderw++Q==
X-Received: by 2002:a17:907:86a1:: with SMTP id
 qa33mr34540749ejc.142.1637869458116; 
 Thu, 25 Nov 2021 11:44:18 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 e15sm2465981edq.46.2021.11.25.11.44.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 25 Nov 2021 11:44:17 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: enable vop2 and hdmi tx on quartz64a
To: Michael Riesch <michael.riesch@wolfvision.net>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: s.hauer@pengutronix.de, benjamin.gaignard@collabora.com,
 hjc@rock-chips.com, heiko@sntech.de, pgwipeout@gmail.com
References: <20211117143347.314294-11-s.hauer@pengutronix.de>
 <20211117154429.2274443-1-michael.riesch@wolfvision.net>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <db4731a5-56b9-f1f8-2d3f-c62bb7e3b91a@gmail.com>
Date: Thu, 25 Nov 2021 20:44:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211117154429.2274443-1-michael.riesch@wolfvision.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_114420_257682_64BDC63C 
X-CRM114-Status: GOOD (  15.21  )
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



On 11/17/21 4:44 PM, Michael Riesch wrote:
> Enable the RK356x Video Output Processor (VOP) 2 on the Pine64
> Quartz64 Model A.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index 4d4b2a301b1a..9fba790c6af4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -205,6 +205,16 @@ &gmac1m0_clkinout
>  	status = "okay";
>  };
>  
> +&hdmi {

> +	status = "okay";
> +	avdd-0v9-supply = <&vdda_0v9>;
> +	avdd-1v8-supply = <&vcc_1v8>;

Heiko's sort rules:

compatible
reg
interrupts
[alphabetical]
status [if needed]

> +};
> +
> +&hdmi_in_vp0 {
> +	status = "okay";
> +};
> +
>  &i2c0 {
>  	status = "okay";
>  
> @@ -546,3 +556,17 @@ bluetooth {
>  &uart2 {
>  	status = "okay";
>  };
> +
> +&vop {

> +	status = "okay";

status below

> +	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
> +	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
> +};
> +
> +&vop_mmu {
> +	status = "okay";
> +};
> +
> +&vp0_out_hdmi {
> +	status = "okay";
> +};
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
