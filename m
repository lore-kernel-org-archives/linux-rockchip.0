Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3A65C2BB41
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Aug 2022 07:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEDBaqA2rbfjmnU+y0dpoVUXFvoL5ioQGSDl4/lkFTY=; b=4Iim3B02q1Xu3g
	goKbUFWzpyqKmeo7JpWHxAWna+8nQ9bC22KS8frRdhI+5gWGrvtKfqTmO3ox/LGpHSW3s2R1lsFK8
	MIcrxePZsPtZaqnZyE+0Q22YUfVgk/FnFuDDFYGx6OW8pbsfvC0o0qXt8k8vuSMFsd4VJsaV2IcPR
	lqT8x/S8HHMIqKlQPlStbZlQRD8+fJV0JWkyjxc65Ez6FYV/4raxjf4/0yKfzCHK1mp9HZD9/piKB
	JcYyfZYbshMAGBa4WFjCs5VNqrzPWGFw9PFSlieHY297s/qcwayTCiC41QNLWLAaMS6QG0aisFH2w
	2bHnnHDY7mctmfcEZQGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNrO3-00FpMW-Pu; Tue, 16 Aug 2022 07:53:19 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNrMr-00FoDL-NU
	for linux-rockchip@lists.infradead.org; Tue, 16 Aug 2022 07:52:11 +0000
Received: by mail-lj1-x236.google.com with SMTP id j3so9891856ljo.0
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Aug 2022 00:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=Zo8H3uzErLP1wNsnlXwUezo5M3r0n38M91eeu4OULT8=;
        b=jYUghN9OlERJWRrLTTvraX96AytkJohc0st+7N7n7OB4ZSPw8KZwEmt2cFt0sxN3Tk
         PGpXWGU/W/VXC2vX9FtohU70nERi3HQZPDO5ttWiI+7lZuCvZiNJ8KkssrR55EBvxTvN
         WyumD4f2peQ9blnK5oI0sH9qiHpPEQXlG0YKYhkbTRy3lkPgZhq7aFhIr+S8BA5YAQI1
         BQ7ie9FMwQ7JCMwe1Rgb/uGycDcD72o+idkASf6Yxl/sz/zUvkKik3IEvp1bIRhzAzOl
         pLfa9syB+HQCp5lGEVj1hJfg2FNfAq6GBQt4eek0mX77L/9olL5guGe+TeR24sozxguA
         O3Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=Zo8H3uzErLP1wNsnlXwUezo5M3r0n38M91eeu4OULT8=;
        b=NHLnlT9bJSq8MYU1PO2pjrBA98RgIX2PiGu35rpto56LvHCARfECPUn8Uh6+bkin9s
         Z7utwOuoWvwVNP+fTsZjoRZiYL6fSAizPX8MHLrf2bJQD8uOOpBvl0WeqLMWQZ4/Jy1B
         r24xbtS72uXU+bi8WBcmiGBLAKnnYB13lunlRQPkcIwUsoykqi66wyv5iOgv+R2jcMnJ
         nIiEHowlsPzDyxxvQPJYMpxStlFwb7221YmmmOCTNrBrrZFA0BNx3GiVVZdBwDs1K+Jj
         mGdLNpDguqh3NdULrSUBIJvLv/S96EKQEPJKHYdMuSZNWL6ZVH8mx/EFhfBX7kh+rs30
         WQ1g==
X-Gm-Message-State: ACgBeo218Swh5AMc8TwqR1w6ruqK5xBUCIQ/oT2a7Qm8CKwYcUYRygXf
	g+Nu+4vgz0O2tGQp6JWi475czg==
X-Google-Smtp-Source: AA6agR6+SnVBnZcM+MorC2B6pGea+5Cy8dza4nJPUFRgbZ+cRDJR1xIU0DuzrV6wJ5MeUlQmtuJ8xA==
X-Received: by 2002:a05:651c:2212:b0:25e:cc38:a1dc with SMTP id y18-20020a05651c221200b0025ecc38a1dcmr6509948ljq.359.1660636323001;
        Tue, 16 Aug 2022 00:52:03 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1782:dd68:b0c1:c1a4? (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id p4-20020a19f004000000b0048a98b7bad3sm1302318lfc.197.2022.08.16.00.52.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 00:52:02 -0700 (PDT)
Message-ID: <a11bc22e-a10e-7d15-72d2-6af1d4790695@linaro.org>
Date: Tue, 16 Aug 2022 10:52:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add initial support for
 Pine64 PinePhone Pro
Content-Language: en-US
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc: martijn@brixit.nl, ayufan@ayufan.eu, megi@xff.cz,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, phone-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220815123004.252014-1-tom@tom-fitzhenry.me.uk>
 <20220815123004.252014-3-tom@tom-fitzhenry.me.uk>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220815123004.252014-3-tom@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_005207_161559_9F5D209F 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 15/08/2022 15:30, Tom Fitzhenry wrote:
> +
> +/dts-v1/;
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include "rk3399.dtsi"
> +#include "rk3399-opp.dtsi"
> +
> +/ {
> +	model = "Pine64 PinePhonePro";
> +	compatible = "pine64,pinephone-pro", "rockchip,rk3399";
> +	chassis-type = "handset";
> +
> +	aliases {
> +		mmc0 = &sdio0;
> +		mmc1 = &sdmmc;
> +		mmc2 = &sdhci;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial2:115200n8";
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pwrbtn_pin>;
> +
> +		power {

Still wrong. Do not ignore comments and test your DTS with dtbs_check.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
