Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 079A3C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Apr 2024 13:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rlzQs7zFQUKVxh6+cbgWX/8q7UMCabHqKCrfRsFU26w=; b=qt5lPVdyRQ9O/M
	IUGLq66cWX6Ovt2+Lvf0cgqwc2O2IdX528jZRtyQRG9s0eJie6EaZz7q44/L4+wFCRG2Su+AO6Rvv
	yOV5mXKjsFRTmeRzatlG3ajiCkkUp7HhHKlwYWDyyFNPB0zrooMg01/K9r8AXiZ/6Osg7PzqUEWst
	entB1+855qoUkpNEHOxHI6nqTGQr9DPZoOKFLVQodC5SNrVivk92T3BCk7yH93EMq1arwUHrL5j1U
	58Bg8gRjFf+umLw4eBBOvFTueuL0Y5uMXr2m0IpIjF6UMmRYsUdIVTW8So0mDBCvPEDH3N7WFCiXP
	HeAu4H8r8OHvONHqt+IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvzyy-00000005XYQ-1GFa;
	Sun, 14 Apr 2024 13:33:20 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvzyv-00000005XVI-2Dov
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Apr 2024 13:33:19 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a526a200879so10157166b.1
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Apr 2024 06:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713101585; x=1713706385; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Tnz2Ub9YHRcyx+OTx0bhxWC9MSKU9cWV4v6zit2//m0=;
        b=IvUb98nOrrcrad66ZKgbwytKcB95bmCFqi7w1zO3yxbykoRoNjX4CiH9m+ho6JQfLP
         VWHt/volpeoUMXODzcDtuwVC1xZ3+tUBkKYCAzFX7kxW+6y7iDejraKZlOP2rOPGVqxI
         FDi37MK1lW1wDpenQoJYvmo1HIXnH6XxyZ9vzwuQ7Fd3N77bJQxG9GhM8Gxjaaef8jwF
         hgoYRfH2PQ4vDiJL0MqU1N6ttLEE6zeQIlM8ouCfOtBZ410bbXce1mjG1SCwcnVboQjO
         H3ICRw4NGt2Z6HVSPTw1TRvegzDf5jwaU9actOvcrLJlkqnMJVen/gW9GsxsMbmI76VJ
         Z6jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713101585; x=1713706385;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tnz2Ub9YHRcyx+OTx0bhxWC9MSKU9cWV4v6zit2//m0=;
        b=QxbWOBrF3TK6iT2g58/qnI0PbFd8osi7I0wRW/Env/xHoUKGxGREGfkwsymlQDZOVf
         OB/79xWA4mFeik+6HntojLVpR/EFxtZfFlVjqlrQ7GrghrVOmKXATP51cdBSLNcMiMwP
         Q0+T4cVxUDUcGMmxE1IoA8xi1SFRCEnYegTHe7s3PzltvGvmK5kGkjt7P6E9pq1zC15L
         d4aaBQsvSIiyjMtZTxdtucXUNCz8vj5q+To8BXEMxtgEjTB4sfUPy0rkwTnRn1DJ4hkr
         /IK8C3Z5FnJRLTVuKkz3nVx1etqVeDMC/EB6DDcp1w5jUQ8C5a7MWiKE6uweZb1zPGjp
         2x3g==
X-Forwarded-Encrypted: i=1; AJvYcCWsBPAbtbSJvVFApksqhHwL1wE+x+S4t7lxAUuFQw3W5xPb3Ui4pZNFUNoEHwdTqlFmxvC9YXVOCqjcrTNu/h5u8QYCyTMoLSJsv3nRWJ5mdZAI
X-Gm-Message-State: AOJu0YzgP6ZO9QI8IRLIftTvHd3oWl/t4gcxcmeru1vqJ4qgzMeHvgib
	iwcWs0s6QYdTpX386RBo6Hhy3+cVgbcZP+FVAj5NBYH/J9MlvwttxSlO+EkOTCo=
X-Google-Smtp-Source: AGHT+IEJdQEMXrX7+ib29PFiYSciihOFHgT5L3QfI75G1ws6jpvAjzBzQvbITHRCnun6+1TlduP/EA==
X-Received: by 2002:a17:906:d932:b0:a52:223e:2d33 with SMTP id rn18-20020a170906d93200b00a52223e2d33mr4428762ejb.25.1713101585464;
        Sun, 14 Apr 2024 06:33:05 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id h14-20020a1709070b0e00b00a518c69c4e3sm4193934ejl.23.2024.04.14.06.33.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Apr 2024 06:33:05 -0700 (PDT)
Message-ID: <efd1eb32-afd6-4383-be45-89b0f71f118f@linaro.org>
Date: Sun, 14 Apr 2024 15:33:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240414131529.1730506-1-jonas@kwiboo.se>
 <20240414131529.1730506-3-jonas@kwiboo.se>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240414131529.1730506-3-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_063317_860480_F1BA7E87 
X-CRM114-Status: GOOD (  11.15  )
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

On 14/04/2024 15:15, Jonas Karlman wrote:
> The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
> computer based on the Rockchip RK3566, with a compact form factor and
> rich interfaces.
> 
> The ZERO 3W and ZERO 3E are basically the same size and model, but
> differ only in storage and network interfaces.
> 
> - eMMC (3W)
> - SD-card (both)
> - Ethernet (3E)
> - WiFi/BT (3W)
> 
> This adds initial support for eMMC, SD-card, Ethernet, HDMI and USB.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  .../dts/rockchip/rk3566-radxa-zero-3e.dts     |  41 ++
>  .../dts/rockchip/rk3566-radxa-zero-3w.dts     |  26 +
>  .../boot/dts/rockchip/rk3566-radxa-zero3.dtsi | 443 ++++++++++++++++++
>  3 files changed, 510 insertions(+)

How do you build your patches? That's rhetorical, because they cannot be
built... Missing Makefile.

Are you sure therefore that your dts pass dtbs_check? If this is not in
Makefile, how did you run the command?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
