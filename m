Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86813E7716C
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Dec 2024 15:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnFZoxL3t+0HnYWqS155A6f0CyvA1wYGCYDzMe1Ke7c=; b=LHXOsou/v6HYNe
	rE6lSEmBbp+20MF6AKMolFmJl0AM9mtCsPsFWGEgdqC+S6LPWLQeNUc7mum6y0VmQhizeNf2Yxf/e
	kBCcUc3pBFxbL/f548vjLRUaEJnyOaNNyUe65grxWLdWCu+C0uJ2oanZADbYbiJSxOEHfbdRCAwrj
	3H7Dr2UfEptz/zXwyhRbh8c4ApJPfuh2GrSuzbElv02fT142V0EdCODC2bqPBL2+cA+qbmMimCufh
	XqyckBddJ5XJfq9QSFla3wVoFAtoaMgp8pyH3WHshglZxxpyvTPrFKHoivQjm9Gc2swamdlmKr1Lj
	1AZ3n6rZCtTL1dPNj1bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJDi5-0000000GWS1-0oaT;
	Thu, 05 Dec 2024 15:24:09 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJDi2-0000000GWPz-1oB3
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Dec 2024 15:24:07 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4349fe119a8so1234855e9.3
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Dec 2024 07:24:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733412244; x=1734017044; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=TeU21f2/gzBOxQVVYAFoJs6zNxfWr5ZjMAtgv/QGkUY=;
        b=D2GBLBjBXsW5YrQFCb8LRC/r3TTbi3/quGHf2lpl/WvPttHjgTeQ1q2aMl7QwYCNCp
         J+ib9O25oD10Xccu4wRtITS0J7zEO73Es0nG2vIhdMzac4v0nyi+N3f/ugTSSBZwnESq
         ZeKQg1zY8YBzx7hQK762qcrAJr9Lq0cnoUdW9SpFipQ8rhQn1Opo73F2cC7/FUON/jyU
         S1d/DtOiYHnJD55uDb50KCuXwW2AO3RapbFpsHjXoZDRaeMRi1IWLcUJEmNytxK0TcB7
         1DkYV7R9SiMDNI4tjqNbtiLdG1kYjO8Lbf/71/Xa57dba3v1D5MDMtPm7MlIZ+xJpPcs
         JYDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733412244; x=1734017044;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TeU21f2/gzBOxQVVYAFoJs6zNxfWr5ZjMAtgv/QGkUY=;
        b=gh7D6xKe9p5CAB79obFeDrCpGJOTb66lbK0v0csSYgmgqw6USFxhyLkMbojYUz4HnA
         JSbx4VskF5X/4Lwu4DTcsqmKXeOSXlOn/RMIII7v7KuFA0G+1hSAiMQBqi1G6FTjTyoC
         4tMmiDYb93hYz2UAKfgQ5DFAfA2VsQzaKvxJD3qVkJLwFDohcq3uVO2tm+YgD5tOYlNt
         pcy0VNC+NYMCNMD7zyWPMmiDJom/TvVyQMVcE8qiMAVGRQIM06BoZNgtLJsxLmTdIYBH
         OEc9/u3x5qJHaIcjp9KoahfnnzFE19YnPAv+qN5hs+xxIaklzcRoAzM21xT7M1YD02mi
         il8g==
X-Forwarded-Encrypted: i=1; AJvYcCUKuKFOZ0+pEACZy7qdNv1VVIF1jwOSsSk6G1qH+ZXfCjPrM53k4n4jMjqFDZyNC7E9Rxiky0v3x+RD1PASHQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwlDBjm2hOmdaqfsCX2IFqaRGLmdyCeFcu5hrxW9P79qC6MgXF7
	yQ56oDohZPD6FvoXO5ld19BWWS7KU1x1G72a+IDQpDdSeUTCpnsMlEyBtwytD8U=
X-Gm-Gg: ASbGncspZWbSJd+oVYeKvTIA6E+oDf9fOtOSaCC8OxRbMoI8TEFp4QHLqILYG2mIKDW
	/NbVMxmK67jc+ywoajRhoE77M2+pQUdmKHSdDljXyJmka+4xzPlQ73Y9LQ55FenmZJbMieyfY0q
	83NeQ+jGn16xxikylicYiQDjFWpoajeoD8GdWl6SrwjtW6s0kWPCdEftKuA1oVViKAEPKWPaFhu
	apA+RQT5/yH3oDcfggaWkZYoXmhdm3SM45r/tCZseCH42BKMddI44MLezGgW0osC1FnEg==
X-Google-Smtp-Source: AGHT+IHLXWIJves++ZMhfFZ9YnRFSus0l3v1nMxTqppBY8H9rgds0EQOScsxeweq65UPC5yR6ftVxA==
X-Received: by 2002:a05:6000:1787:b0:385:f479:ef46 with SMTP id ffacd0b85a97d-385fd42316bmr3426787f8f.13.1733412244461;
        Thu, 05 Dec 2024 07:24:04 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d52c12a4sm64628455e9.30.2024.12.05.07.24.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 07:24:03 -0800 (PST)
Message-ID: <97d7b661-8b9b-4c56-aa85-3833718f4e01@linaro.org>
Date: Thu, 5 Dec 2024 16:24:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: rockchip: increase gmac rx_delay on
 rk3399-puma
To: Jakob Unterwurzacher <jakobunt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Quentin Schulz <quentin.schulz@cherry.de>,
 Iskander Amara <iskander.amara@theobroma-systems.com>,
 Sasha Levin <sashal@kernel.org>,
 Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>,
 Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>
Cc: stable@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241205151827.282130-1-jakob.unterwurzacher@cherry.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20241205151827.282130-1-jakob.unterwurzacher@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_072406_474728_AFE37A2F 
X-CRM114-Status: GOOD (  14.16  )
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

On 05/12/2024 16:18, Jakob Unterwurzacher wrote:
> During mass manufacturing, we noticed the mmc_rx_crc_error counter,
> as reported by "ethtool -S eth0 | grep mmc_rx_crc_error", to increase
> above zero during nuttcp speedtests. Most of the time, this did not
> affect the achieved speed, but it prompted this investigation.
> 
> Cycling through the rx_delay range on six boards (see table below) of
> various ages shows that there is a large good region from 0x12 to 0x35
> where we see zero crc errors on all tested boards.
> 
> The old rx_delay value (0x10) seems to have always been on the edge for
> the KSZ9031RNX that is usually placed on Puma.
> 
> Choose "rx_delay = 0x23" to put us smack in the middle of the good
> region. This works fine as well with the KSZ9131RNX PHY that was used
> for a small number of boards during the COVID chip shortages.
> 
> 	Board S/N        PHY        rx_delay good region
> 	---------        ---        --------------------
> 	Puma TT0069903   KSZ9031RNX 0x11 0x35
> 	Puma TT0157733   KSZ9031RNX 0x11 0x35
> 	Puma TT0681551   KSZ9031RNX 0x12 0x37
> 	Puma TT0681156   KSZ9031RNX 0x10 0x38
> 	Puma 17496030079 KSZ9031RNX 0x10 0x37 (Puma v1.2 from 2017)
> 	Puma TT0681720   KSZ9131RNX 0x02 0x39 (alternative PHY used in very few boards)
> 
> 	Intersection of good regions = 0x12 0x35
> 	Middle of good region = 0x23
> 
> Relates-to: PUMA-111

Drop 3rd party tags.

Also you you CC-ed an address, which suggests you do not work on
mainline kernel or you do not use get_maintainers.pl/b4/patman.
Regardless of the reason, process needs improvement: please rebase and
always work on mainline or start using mentioned tools tools, so correct
addresses will be used.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
