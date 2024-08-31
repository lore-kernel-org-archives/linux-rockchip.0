Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3182CA100B
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Aug 2024 06:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PiAlfGLqnKu3mi8kxSDF3oAMlVWAQswjqFsGPj0OXsk=; b=1GPdpcQZHeTTD5
	CpMpmjo7r+7DV4Mn4/L8sYMT2ED4ee7SnucYvpjRXGdMGs4HIgyl59PxoxJRjyflLYpe1qO7tG8/2
	0hoDwK1dkrqmldvu3cC4TLKh6zePGnRWkuwWc5zoH8Z1OM3G4S01lGWlApB6x65+M03ZWsxyvoEVX
	dmuk4u5M0e/PUHxE/mNYPV+50PBaiyWVSbWBtK4rCo4eZLGWx/b/cfquhGlL5kQTwxL32MS3WefAn
	qg9eT0SlE06NyfnRZWrUUaZG3VBiklVYG05FTWLlMXiZKmhwXlOrlnre9XJBgvKcHQqIfgIfsJEQA
	d6gTsBnzRVfyUKTIT3nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skHuD-00000008lgL-2Q88;
	Sat, 31 Aug 2024 06:48:17 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skHtK-00000008lYX-16Zf;
	Sat, 31 Aug 2024 06:47:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B98985C0FA2;
	Sat, 31 Aug 2024 06:47:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD3F6C4CEC0;
	Sat, 31 Aug 2024 06:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725086840;
	bh=Et5Cq7kAHvz43U+nAgZLLbiNmcg5TzrrTQ+EIuj+/ng=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JbMTZi2dZXoc4gUBkH2LIzUu0qMyp6BLn0qXOcYqqX4H37IfqGOeWyMKmTB8m3YId
	 fBjdTnHHtwwMSZwAzKaI1r1qNc9g0s6hBtkZDuKpxMTgXWnm0dXw1Fqm+e/UrrRn5i
	 UIx0ktHwav72cZea1jw9TBktotIkGihtgCDNy1SXFgmqIbdwWGPzGCkm5cS3Ku5D5T
	 Xz3chnqL39/HDKtK5ixCHidzBoZHpHJu3nsPbe0aaIl3xBlmFvl0CHFYc8m+/OX1eX
	 hUDbyvvFq0AtYppc3sMWTq57km64FXzmBQanqDa+SMZOqCk1SkZI+5oI29RCtMBuxA
	 Uja80LencGpbw==
Date: Sat, 31 Aug 2024 08:47:16 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, marcin.juszkiewicz@linaro.org, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/3] ASoC: dt-bindings: realtek,rt5616: Document audio
 graph port
Message-ID: <vpxg63mj43dmqrwxrzfugtsc5xx5wfzvthrjuf5wfjkcdarltl@cnvgi4co6hwj>
References: <20240830203819.1972536-1-heiko@sntech.de>
 <20240830203819.1972536-3-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240830203819.1972536-3-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_234722_393327_9C924F6A 
X-CRM114-Status: GOOD (  11.82  )
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

On Fri, Aug 30, 2024 at 10:38:18PM +0200, Heiko Stuebner wrote:
> The codec can be used in conjunction with an audio-graph-card to provide
> an endpoint for binding with the other side of the audio link.
> 
> Document the 'port' property that is used for this to prevent
> dtbscheck errors like:
> 
>     rockchip/rk3588-nanopc-t6-lts.dtb: codec@1b: Unevaluated properties are not allowed ('port' was unexpected)
>         from schema $id: http://devicetree.org/schemas/sound/realtek,rt5616.yaml#
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  Documentation/devicetree/bindings/sound/realtek,rt5616.yaml | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
