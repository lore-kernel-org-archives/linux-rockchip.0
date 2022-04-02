Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3680C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 16:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+j5l23N29dWNmWd6WS/8N4hmX0t1ToZ0tuGGOl1clNQ=; b=ikaasTEaeolZhb
	6SYXSvkQbNn9Gs6UzhbL8CxBRQmuu1vny8vDeBMowATVOOuHNgcyBU3U838hVXFANZIi9H70FwuMC
	Ezy+bMNaIRxFQACp4ipSfzX0xUCEOFd4Cmr4PQ7Eh3bfR4tww60Xjwo/taGdVCAmKWGVHo49VmUag
	rcihl15VcmOTX78y1M90meGhSONJWp2n8r9qRU7w7mvURnSiwklFW3/2ibPPm+44XB/YM+K9hQr+Q
	yMxPVKgHwHoyu417T69GkliJBvAI+zt7WVsveHgxfBL08AaIwOsGF4YlH9RLD8aSSBlAjZVC/NyBl
	MuD3wlWiX1FDw/skM+GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nah0L-009fSG-Kf; Sat, 02 Apr 2022 16:53:37 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nah0I-009fRX-Qc
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 16:53:36 +0000
Received: by mail-ej1-x632.google.com with SMTP id ot30so1928631ejb.12
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 09:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=dV6IVGS3xtBoxp634iqApehAfhXnWGthz6shqxCHOJY=;
 b=xdCYaefrFlgRlWY5ZjIWEPHiKgKiA2vtfKW5Y0euF0sTobQvj6xyFrwMM+OihanzMQ
 ilQsufRYRAEIlM2T49HA+RfTPyPPDWnu2rz1AD5YTkxF1Fq6YcU4b3Yr+w1RrMb2pmxV
 CdRFcuDC9GCG35nhFY8oiKRnthT7LDr6jR65x80PxMvEkZpkzmQu3alNSsrKTlkbwNN5
 9zrd9pjRMKKpUsBc9kGpP+eqidZxM4CVfPg+xsBhZbgRSrwE3WZcNys1K8igE87KY9uo
 nYPsO2ARW+fP4qk09EkwaWHG2QUSrWuUgFGV0K9CndlDWuYxwBc/xbBftOXMZ9YBDN+3
 amfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=dV6IVGS3xtBoxp634iqApehAfhXnWGthz6shqxCHOJY=;
 b=oUSixuxcaibmMNXjkewdGIeT2QyfWpKqx9DJEioW38VzzcO3NKJiI2bMeLbdQIH0wt
 vljS3Nl+S5A6+ONajJXiDlwHMlyHKHl3Kb3dOVmT5KHNua400eSSZbScRtKlYETJJ15S
 ipmacUEk2oKgRYjy9JdNxGOqB5T68iS/1szYkf6C8eJJkLaQ+Y7kAlb7paKbGUgNmFjj
 IAIecGaPj4iIQqdAR0ObODdPf9WpiRQJ2LWYypalyvHJ83nlcwWayVl87tx98jqNK3RL
 qlJ3mDv9BEN20226H6dSIKdAHVlKcdnx9DRJ7V8RSA14iSKpfPUmtOmrtx47CptmsC/V
 qTfA==
X-Gm-Message-State: AOAM533kpIVY2uw4sghkOhxIG/FMIXto94r1OJnGnNSoOCnY1HiJhxl7
 GwIXF7QI60Q+NM/pU858RTmHEg==
X-Google-Smtp-Source: ABdhPJwW+flQxA9xtEkBX7qU0QCW5KZc7m8vrd2rx8wwd40a3h5hQL51tp8x90gPY50XAaSj7eyo9w==
X-Received: by 2002:a17:907:3e22:b0:6e7:d37:204e with SMTP id
 hp34-20020a1709073e2200b006e70d37204emr1516442ejc.375.1648918412768; 
 Sat, 02 Apr 2022 09:53:32 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 u3-20020a17090657c300b006d01de78926sm2293742ejr.22.2022.04.02.09.53.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Apr 2022 09:53:32 -0700 (PDT)
Message-ID: <9fab978d-d24f-575b-959b-acfe05c5c4f3@linaro.org>
Date: Sat, 2 Apr 2022 18:53:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 13/16] arm64: dts: rockchip: fix compatible string
 rk3328 cru node
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220402143636.15222-1-jbx6244@gmail.com>
 <20220402143636.15222-14-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220402143636.15222-14-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_095334_915802_F107DA03 
X-CRM114-Status: GOOD (  16.66  )
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

On 02/04/2022 16:36, Johan Jonker wrote:
> The rockchip,rk3328-cru.txt file was converted to YAML.
> A DT test of the rk3328 cru node gives notifications regarding
> the compatible string. Bring it in line with the binding by
> removing some unused fall back strings.

I explained to you on your v1, syscon is not a fallback compatible.

> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index 9c76c288b..8ceac0388 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -756,7 +756,7 @@
>  	};
>  
>  	cru: clock-controller@ff440000 {
> -		compatible = "rockchip,rk3328-cru", "rockchip,cru", "syscon";

Please do not resend the same patch without changes and without
finishing the discussion. This looks wrong (and external references you
gave support this). What does this resend means? Discussion is over?

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
