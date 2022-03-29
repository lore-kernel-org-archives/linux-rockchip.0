Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B171C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 17:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=apxw33KL9mrMPOhaAkm95HZriEBChtqUMz536C5WqJs=; b=j1jDHqQaxdTSgx
	MfJe3S1CBedqYk2ARoPIqzWXnpDXJ13ui7M8oXKCCmaSvSrUQjod7CAD9wn8wwIAY0QirRByAs94Z
	hduQYfugy6UVlCgUY/rcuoNIy+LrH2u/LxPlryKdz7yTu3qK7Giot8nhmp2tqQaR57JwPER6P7d+Z
	yK6bj1JWq9xF+xhtdwPrUbQlgKJs9GN/GPeARnou4xuepoX+LcQT8wqUI81ILxTSSUXfExyQ+v7Cg
	+lR7tv0wBISNALx0qpK9Gtwttxw3nsvS6QZhpo011xVY5ldEDxjh4c0Ne48x4DaCn3fxTpGidSDQh
	u0Z7BZxhK5fbxokorn2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZFYm-00D3j2-CB; Tue, 29 Mar 2022 17:23:12 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZFYj-00D3hH-8E
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 17:23:10 +0000
Received: by mail-ed1-x52c.google.com with SMTP id g22so10400914edz.2
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Mar 2022 10:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=nJ8logHvUhwzuUyaPd0gnGv7WJWT9U6mqYqu6DTlmCY=;
 b=CqHheIaK1zijProvoDF6vHljodsrx2WgrnFolz2FUM9rkuSIwAHkyUiAy1eZT2/Cc8
 wvjdJ/NjcUEStl8AP+KILlCE/kjZsnaq0EL3NvWEdGtrUjK/NgEPxNKahSlcYYHah78H
 a8M1kagnsY+Gy3nghLe3aRHRrVfEZlPfKZpWp+QaXij9rtRJr8k8cUzNnMluw0N+8+vi
 71pe91y5Lbpbkb/s85pOD9UhdpSy1fiEoBOXEkM/L56r6GGOQjNwjzCIFTEvcITyRv18
 GMpBfnk95ss0Ljg78/J0n/lBx/uYQcURpbumlD3qk80t8eueqyo19Zz8RslGuRDu806M
 0nGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=nJ8logHvUhwzuUyaPd0gnGv7WJWT9U6mqYqu6DTlmCY=;
 b=UgXPLmtSM/X1XJZpakVaSPOm4cydzayaqgvEqy4/qtNlj+nP3+l93hxUfHnunrHb8O
 CoSr3lHbWAN8XOQjNg02A4GHKY0zOX13lGWvnMcsKeP0HInlR0syiNMPSoND/B6UeZQw
 RR9IHmydJsdYF0Ga5/z2hAxMmQfERx829FuEjQWKkoqpDKNetY6YJOhQIyxc1afJs31m
 u/O/YbpR/sBXl9zDTnbG4vwY/RIIi3elzWQZFfbhr7skaKKfXq5DLtpoYHHBHvVxVn/J
 fqjPB7HDF97XTpR/+ojaFiiarF8rcXu8c4B88gARbvhYk9tSTs9oK8F1fFmbwkGdw4F7
 7eIg==
X-Gm-Message-State: AOAM530hNhXAR22/rWlHip20z3lcDjCimYRjhM0WlnRkoxgP/W1i52xg
 9a7nA3HaHtU1mMi/QWxpBrP6Vg==
X-Google-Smtp-Source: ABdhPJyKfZ5o8TNiFzHDrzD0PJMaC6MOkuu5P1BcM/Clp65rrRNfGctrKdbGNAm5D2f2U1fFGsclFg==
X-Received: by 2002:aa7:d311:0:b0:419:443b:6222 with SMTP id
 p17-20020aa7d311000000b00419443b6222mr5852391edq.161.1648574587472; 
 Tue, 29 Mar 2022 10:23:07 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 r11-20020aa7cfcb000000b0041902ac4c6asm8565475edy.1.2022.03.29.10.23.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Mar 2022 10:23:06 -0700 (PDT)
Message-ID: <09fa521e-dcf9-b744-da30-86542fd8855e@linaro.org>
Date: Tue, 29 Mar 2022 19:23:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1 2/3] arm64: dts: rockchip: fix compatible string rk3328
 cru node
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220329163016.27458-1-jbx6244@gmail.com>
 <20220329163016.27458-2-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220329163016.27458-2-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_102309_363372_4CFD3C11 
X-CRM114-Status: GOOD (  19.52  )
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

On 29/03/2022 18:30, Johan Jonker wrote:
> The rockchip,rk3328-cru.txt file was converted to YAML.
> A DT test of the rk3328 cru node gives notifications regarding
> the compatible string. Bring it in line with the binding by
> removing some unused fall back strings.

Are you sure these are unused? rockchip,cru maybe, but what about DTS
used out of tree? It's useful to mention that the compatible is not
documented (so if there are any out of tree users, it's their fault).

Removal of syscon is different case - why do you think it is unused? Did
you check it? It's not a fallback compatible.

> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index b822533dc..73418fd2f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -756,7 +756,7 @@
>  	};
>  
>  	cru: clock-controller@ff440000 {
> -		compatible = "rockchip,rk3328-cru", "rockchip,cru", "syscon";
> +		compatible = "rockchip,rk3328-cru";
>  		reg = <0x0 0xff440000 0x0 0x1000>;
>  		rockchip,grf = <&grf>;
>  		#clock-cells = <1>;


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
