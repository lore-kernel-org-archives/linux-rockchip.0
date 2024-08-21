Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AE13C531DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 08:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIW+7/sNPyapWm8id8zgRZtrcvc1IwJ9P3kbGUAeAWY=; b=0qUFcHbdo3VlKv
	zEezY7LHmx4v+jnGa9ChwEziO1uKrbkf86h9OmYdhMJwUv8iSvPfmPE1+J+gSwI4lfUSEayo1lsYb
	lMgowA+nwdruW9UyUgMADpqqyE0iZZSRXYajICoknu78WMVvN5pizCy5posKfK4LwHHAysPVNii75
	EepXs9lCP0yHQ7JCVSr+vIpv6GCQBIcyYFOvF3XUhydcFmFa8G1aaPc2HKnO4+RpLCfPrRzxhLjCT
	whvGlN+8wkHOlXKO1rwTBSoErE5XwwbcLlnoi/m5TKNY3KBY9Eu33B9UmwD+0ceKyaRY9wmDChEYp
	MkXUS8cZ4Bqh1xNk3gKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggxG-000000087zI-3yMv;
	Wed, 21 Aug 2024 08:44:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggwJ-000000087n2-0iEq;
	Wed, 21 Aug 2024 08:43:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=b+eB73GrPccCdLU6CWfc1pg5yiGEbiwTbUmoc3zvXNA=; b=QcoTYbVaABv8lmTWg5EUXU9zOc
	fHDmF8VR5HyWsQh0p/qGZ+G/gQTSU181Vygyx0Wxen1cuH+j3E5rUPIu2PSLBFlABKu7TSi0OfDh1
	zFXCUqXNkXlDhB10krdXIqltXmqyD4BmujaVN1nFDWalNBwSSkd/BMHxh3yR4fYdY5hIz3I5/O/xr
	NIHN2kh5Fbbg1fZyACF+VHp1kEDdRNHwbsv6BPODxUFsz7KPOQRLwsRaLjF0YGahPeyRY49r6sqo2
	ibZQIZTK4bLF49hr2KsKx27Iboatt212jDpMVj6UIneynrCsytrfD0IiRKaFoGPfhHPyvlgqXw8wa
	otCc+P4g==;
Received: from i53875aca.versanet.de ([83.135.90.202] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sggwG-0004yi-VV; Wed, 21 Aug 2024 10:43:33 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 Dragan Simic <dsimic@manjaro.org>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] phy: phy-rockchip-inno-usb2: Improve error handling while
 probing
Date: Wed, 21 Aug 2024 10:44:00 +0200
Message-ID: <12869965.VsHLxoZxqI@diego>
In-Reply-To: <866445027a4f41165c872f494b04c218b6e67b09.1724225528.git.dsimic@manjaro.org>
References: <cover.1724225528.git.dsimic@manjaro.org>
 <866445027a4f41165c872f494b04c218b6e67b09.1724225528.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_014335_265479_BD6C46B5 
X-CRM114-Status: GOOD (  15.91  )
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

Am Mittwoch, 21. August 2024, 09:37:55 CEST schrieb Dragan Simic:
> Improve error handling in the probe path by using function dev_err_probe()
> where appropriate, and by no longer using it rather pointlessly in one place
> that actually produces a single, hardcoded error code.
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>

> @@ -1375,8 +1372,10 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
>  	rphy->irq = platform_get_irq_optional(pdev, 0);
>  	platform_set_drvdata(pdev, rphy);
>  
> -	if (!phy_cfgs)
> -		return dev_err_probe(dev, -EINVAL, "phy configs are not assigned!\n");
> +	if (!phy_cfgs) {
> +		dev_err(dev, "phy configs are not assigned\n");
> +		return -EINVAL;
> +	}
>  
>  	ret = rockchip_usb2phy_extcon_register(rphy);
>  	if (ret)

I really don't understand the rationale here. Using dev_err_probe here 
is just fine and with that change you just introduce more lines of code
for exactly the same functionality?



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
