Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 425AEC3DA61
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jul 2024 12:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0iBWdyTHudvhJW8J2iHHjUWeFFslsF2FZMok03JIwc=; b=Ujt/Hg0yqWedEP
	cu99QYCtTCt5X190i4HXymsF6PHJTjxVzt0BdzDVskxCAO+zNiqT0hzlw4W6dp7KVfdu9a7U98IM1
	bvenTG/Vlt5fueAV+2oI3C08z30w+08/y1iY0FMb1COSsVbHT2We2KvW954FU+f86nguoUK70Atsj
	28dGUhDRVB2Gg1jVLPrtjDUCM035M3g7Qq/foIyXGh1Rc5+E/xQuhTI41UJp1W1x9tekqDe3LhnVT
	/dnjIp+rotuYZXzGQZW0+geVBUhbELONY6LqE6gralMzqoiVX4NJdgJEG2CFeoX+EFC7f6ouQzQCG
	mCpZ6jVb5rbEzEC3zt9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVVM4-00000006mWQ-23ak;
	Sun, 21 Jul 2024 12:07:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVVLh-00000006mS6-3Bpj;
	Sun, 21 Jul 2024 12:07:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5979160CEB;
	Sun, 21 Jul 2024 12:07:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 090C7C116B1;
	Sun, 21 Jul 2024 12:07:29 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com header.b="N0g7IAhM"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105;
	t=1721563647;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=9wfLvY3ya2nrHr45pIZikIDrp87iOyHgJfRiGxlFpQg=;
	b=N0g7IAhMr2y4iqU3m3NWTxzJME/+JeNsyoW0Nmoh9tOd+WcJsf/u13VVA3QbVVg1CHYPBT
	tthBNmpSyuXXxLJHbYiVlr7CdBXSlL7WgKvoyWKkHG6NnC3ef5ooE3BKlA0wkaVYIUZ3hv
	NxgAd7PsXLYbYGCILizvOq/YIT4IWKs=
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 663834c5 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Sun, 21 Jul 2024 12:07:27 +0000 (UTC)
Date: Sun, 21 Jul 2024 14:07:23 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH v8 3/3] arm64: dts: rockchip: add DT entry for RNG to
 RK356x
Message-ID: <Zpz5-2q-C0oQBqoa@zx2c4.com>
References: <cover.1721522430.git.daniel@makrotopia.org>
 <c28cb9ad04062b6da66d9cac8adefa0edc0046ea.1721522430.git.daniel@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c28cb9ad04062b6da66d9cac8adefa0edc0046ea.1721522430.git.daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240721_050734_130814_B7A47452 
X-CRM114-Status: GOOD (  19.28  )
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
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, devicetree@vger.kernel.org, Martin Kaiser <martin@kaiser.cx>, Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>, Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@debian.org>, linux-rockchip@lists.infradead.org, linux-crypto@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, Francesco Dolcini <francesco.dolcini@toradex.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, Aurelien Jarno <aurelien@aurel32.net>, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Jul 21, 2024 at 01:48:38AM +0100, Daniel Golle wrote:
> From: Aurelien Jarno <aurelien@aurel32.net>
> 
> Enable the just added Rockchip RNG driver for RK356x SoCs.
> 
> Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi |  7 +++++++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 ++++++++++
>  2 files changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index f1be76a54ceb..b9c6b2dc87fa 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -257,6 +257,13 @@ power-domain@RK3568_PD_PIPE {
>  	};
>  };
>  
> +&rng {
> +	rockchip,sample-count = <1000>;
> +	quality = <900>;

As I already wrote you for v7, quality is out of 1024, not 1000, so this
won't hit 90% as you intend.

But also, I think putting this in the DT is a mistake. Other drivers
don't generally do this, and if the hardware is actually the same piece
to piece (it is...), then there's not per-manufactured unit tweaking
needed. So keep this in the actual driver C like other drivers.

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
