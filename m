Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F6C606A31B
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 07:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wqdlJO/H;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=AueqGJCd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Hju76jks6RVMhthZzZkOnCScLj7eB6TTNJ3/by1+bYI=; b=wqdlJO/HUM8USiTSLCmoTM46UV
	kocsjx49zEdmCRo4CUqFZZOWOL5iPKpjvjky9GnCEiEe9/L/7RZBpltNQMJAzGngmRB7pahFg/Qv+
	Zpf0VVEwe/ucfxMmwG7TQLcDR+iYEDcBYR5E8A8tTRclgTcDD6UhAF06F/SYQg3ellKwVc48Hy8P5
	YRInmf3XK8FHobTwQzbGBiQvfsgB/z66A7oimNDaon+cGwVj1s51Xn719eIeezF78I6evd/iNmQx2
	TL+pHt+m/C/9IOuzsWmAqCwYSxnEDqXBDcCmleuIdJBXhoH3OBLLz704ovcv5M0gqgiFBqQugm/wg
	RMVBzm1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbv4-00000003wUw-1miC;
	Tue, 27 Oct 2026 07:48:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbv3-00000003wUU-21QI;
	Tue, 27 Oct 2026 07:48:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A38E060052;
	Tue, 27 Oct 2026 07:48:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D3791F01825;
	Tue, 27 Oct 2026 07:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793087308;
	bh=hyOQjk3K8q/yVPwZ27qrjO8iwmjy2yoP6q4VHiqEPJA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AueqGJCdW76ZbmKfVwzLggoxxer5DgpH1Dw1u53556Tw8kBTZ8I5O4TaOh6ICA5bX
	 rb8KqsfEJulnjeOYcr8oN1n9eDQTcA6cEK6HnRTJi574uZK0dBO6KyuUOaufuxGeBG
	 I4UsLAVkfEOMD/X6ntBASRocva2oomX4CybsMjv+OyZDQYFRUc5ucYBpJ4lguzxQih
	 bgzi9ygh7zjrFd7Xcv+oJ+uXznziMhDRAeqXE6VFRZGmdKr+E7dHUY6jhcfJWi9Btw
	 e2S4yaVMrfrMCuLoCKbIBzMWsRFh2QY/U0DlcswEns8h0I3cbagWQd9U2Ak2Qnt6E3
	 Q+Te8VODsULpQ==
Date: Tue, 27 Oct 2026 08:48:24 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: heiko@sntech.de, HystericalDragons@proton.me, amadeus@jmu.edu.cn, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, hrushirajg23@gmail.com, 
	krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, macromorgan@hotmail.com, 
	michael.opdenacker@rootcommit.com, naoki@radxa.com, robh@kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add ArmSoM Sige7s
Message-ID: <20261027-angelic-caribou-of-wonder-02ccc8@quoll>
References: <5520293.6fTUFtlzNn@phil>
 <20261027022801.377819-1-liujianfeng1994@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261027022801.377819-1-liujianfeng1994@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Oct 27, 2026 at 10:28:01AM +0800, Jianfeng Liu wrote:
> Hi Heiko,
> 
> On 2026-10-26 11:43 UTC, Heiko Stuebner wrote:
> >> I confirmed this with ArmSoM. They purchased the original CoolPi 4B
> >> hardware design from CoolPi and confirmed that no hardware design

"no hardware design modifications" is quite different than what commit
msg said "based on".

> >> modifications were made for the Sige7s.
> >> 
> >> So the Sige7s uses the same hardware design as the CoolPi 4B, rather
> >> than being independently designed.
> >
> >if it's the completely same board, just with a different print on
> >the board, why does it need an empty devicetree. When it's completely
> >unchanged, what's speaking against just re-using the original one?
> 
> The existing CoolPi 4B DTB does work on the Sige7s, and I agree that there
> is no hardware difference requiring a separate device tree.
> 
> My main reason for adding a separate DTS is to preserve the Sige7s board
> identity for long-term upstream support.
> 
> The CoolPi 4B appears to be discontinued and is no longer readily available
> through the purchase channels listed on its official website
> (https://www.cool-pi.com/buy/). In contrast, ArmSoM is actively selling the
> Sige7s and has committed to producing it until at least January 2034.
> 
> I'm also planning to add mainline U-Boot support for the Sige7s and
> integrate it with Stubble-based UEFI booting.
> 
> While U-Boot could update the model and compatible properties before
> booting Linux, Stubble may replace the firmware-provided DTB with one
> bundled with the kernel. Having a Sige7s-specific DTB would preserve the
> correct board identity throughout this process without requiring additional
> distribution-specific modifications.
> 
> This would also avoid confusing users who purchase a Sige7s but find their
> system identified as a CoolPi 4B.

Maybe just install the DTB under new name if they are identical?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
