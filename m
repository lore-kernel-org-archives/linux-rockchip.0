Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8D4DE7718F
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Dec 2024 12:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=88DCGH3vgqnNLmKKSQOzU3mvgawXKyNjlrajrFJbZhM=; b=XpoXR95NMgiNBJ
	x7sNWxmiIyA8OYif5ZQWVBmWPTCGGJsj98+LqtJD2OWcVyjXB8exLEh2qkc64rEX8JHoBwKKErQnQ
	ZLclnMZ0LEZTCsmo3KxWeC9MDM+2UD5v1w+G+ERmvJjnhBc1w8UvpXhUisnBqFTRhUWhvh3sFBJ2Z
	SiK8/u/owWl/nTOteaTsAq7P8WwlnF7XtHNobefmdYd7BrUuTWa4h6Y5U8r6kAnPERnbK3jKFLbTL
	SmMJ9R3LFVekpqD/PEDBHRBNerG0mC+2jiOm3owXohsspCDxtVKEZCcpimFNK81er+UtWlOdyzfrX
	Jc8kQOpsNX+AZ9L50HyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSExN-00000005BLA-18wd;
	Mon, 30 Dec 2024 12:33:13 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSExK-00000005BJL-43y5
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Dec 2024 12:33:12 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-53e3a227b82so8731709e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2024 04:33:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735561989; x=1736166789; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Sk7KZ64g3QjSKBcPqpBugYd5y4zZQVTOsSnxLt9QvEM=;
        b=Cc5Jh/N3SWbXyKBdWoQUA2dEt4jcbPRoJRfSZZXp7nV6LhYr506JBvEVztLahhvtvg
         FWeaJDmEryxeURr0oHVsmgKNF9Vgq6ek7E0pP8pdnZbEqwk8NxDuhXY7zxA3ny47XRj1
         Lim7K0o60Gn+bTxG/FHrsVxBWrlJYkefLIFCgVFMPI5wWT5tCxIgimWaBRLUzbPAF7TU
         0RwODM0hb2tTN9oJwlmrUfdi4PCkWzOgp8lpR5nFnkEQIlr6Mv+xrTp02af2cS3HarNH
         moMird7dBWTLzx/waWA86gBeh3zq08K5H4roeHLqXbdVwknAX1OJhKFhWchAVGKqN/jO
         7Isw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735561989; x=1736166789;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sk7KZ64g3QjSKBcPqpBugYd5y4zZQVTOsSnxLt9QvEM=;
        b=sqTtVDXuhJHL8krcwlYplN4M+Hwp2PNbHXhXK140NRGAmpyDfsOeksTp85eWhHJERL
         1GYREbcfDllR8GX1Y8F5CtW3SQgDt62X/h0bfBLxL9ipr6J8xxKuEU9BlDoz42+6vjK5
         G2FpgcoI5XVhtPywghOWvt7RkHqqYbppky7zlx3X9sVC+jGOGI1suhdN3zm+wNg3rO+T
         3BPrthKDZWbPYED/r+rT9bBv++qd/pY0jhxwYFX2RO2AJiIgVSrHFZ9aTt+s+K3AFnOr
         tYL/mOB5GdGpAOgNFAy9cb/2Sj8BFI2awidbv0ZzauXTbjQWwJBNrfmOe2+Bxm8/L3zf
         wBUA==
X-Forwarded-Encrypted: i=1; AJvYcCVcV75dTbQPnyMj6mX5oN2rqfmbc/E2wRJwxn+VcHsS2p5uXU/mEnLp+4HZ487jug1j+7+oI3dwbo09uDKt3w==@lists.infradead.org
X-Gm-Message-State: AOJu0YyFVpvS9+7g08lyG8iGSYzo7mqBTBTLSua0f+b0g/QgOF0XzecV
	Uj/PL0FEAjUhxwqR6JGIZHgK9zhWgrM/nIwkmLvwWxYMDQLWAzLI8FUaJ5Qcy0A=
X-Gm-Gg: ASbGnctGr54STkkMS1RMcHmTX0PJBv9Om8cTlUyNdDPz9DD+14ngHp9WDvG3bqP+jJe
	P7FvSRpTax6rD5OVln0puKyc2jh5Idca9M5eXS5pK9GnHseg5oJ1q38hXfwUCAPus9Kqcm9Ln+S
	H5G8ksMOtAAdsHFjpkytRlX6XuWwuQvLI4trsb0jWNnEVrXpo46Ic9I1x30nZpByprgZPPtpC3P
	eogD954J1ez3kyj+PMio2LvK1ohgaEfbx16Xksj6ADRkibPkREC+CJskTFTqVsuIUh3C/Ss+B8P
	YVY5tlOr+Dyaxg3AYOE+YCJqm7BeaMAoN0WV
X-Google-Smtp-Source: AGHT+IGzkRgSziPMi+OuvqqF5BpICe3Uj4EKlYJrSjSIBpngZHhFVUrx0eOYogAtQxS8zwZb6NLAVg==
X-Received: by 2002:a05:6512:2246:b0:542:2e04:edd1 with SMTP id 2adb3069b0e04-5422e04f073mr7912458e87.42.1735561988824;
        Mon, 30 Dec 2024 04:33:08 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542238135basm3125829e87.130.2024.12.30.04.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:33:08 -0800 (PST)
Date: Mon, 30 Dec 2024 14:33:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v4 04/17] phy: phy-rockchip-samsung-hdptx: Swap the
 definitions of LCPLL_REF and ROPLL_REF
Message-ID: <ru3xpse4mg62gcxemut3zro6qw6v6firjnefo57k74n2ti66ym@l3pe2hpz5csl>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-5-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-5-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_043311_046793_53FC7687 
X-CRM114-Status: GOOD (  11.74  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Dec 26, 2024 at 02:33:00PM +0800, Damon Ding wrote:
> According to the datasheet, setting the dig_clk_sel bit of CMN_REG(0097)
> to 1'b1 selects LCPLL as the reference clock, while setting it to 1'b0
> selects the ROPLL.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
