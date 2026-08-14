Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FF9CC5B572
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Aug 2026 10:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Rdcqtpw4SHrvjkHRrf/vwxAzr3CX8IdezD6PGVfDEQ=; b=C263CMV/h06BiY
	ToMWRH9uk5hbMIShVm75uHIsr0mJhPGQ8I/ghLDiiXfmH77Lq/MTb8X3A1X59f+WohQ8FijHMTSVi
	8q+W9Fnt8zeTM0Lx3KYcsepTjZ1Cte7eZ1mGp+GV/F93WNNyXdLegwKdZhsu7lbaJM007vv2MfHlt
	jkmVnn8Q1v+evRrKhh6/oeJu1C+KIqyU4SULpShkSe/xlYxYiqFDqSaN5OtwIKNiMIkuk7S4luYlX
	pwzbNAx2Q5hD1PFs5o9BZfZ31Fpncv8wh08AV/t4w4m9gsFmXzi8D7nzU5BVXIm+C/7dVCAWCnPaX
	3/DVp/lfPglthKURASfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wup9S-00000002W1w-30YS;
	Fri, 14 Aug 2026 10:28:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wup9R-00000002W1U-3sYt;
	Fri, 14 Aug 2026 10:28:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 11FD3601DE;
	Fri, 14 Aug 2026 10:28:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 632B31F000E9;
	Fri, 14 Aug 2026 10:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786703316;
	bh=ouEgkRTfeWu92lCKKXn0sUW7l4zcekTfMbkVfkP+wso=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UgmDCVcjtdhbEztMw7TgOpCmzXdXh3E8PSfbfHUVCygEDjyK6QzI3f+Po+QIU5lTK
	 h28ouihEOl+1ec1+t3JRzZEbJIZkqYMUdLq9Q2k+ofKpV3rP/XGdy9/Bm20l4XXZm4
	 BqqcmxoKlXiZQ9xOF6LsfskmCHiMKrs1ALr3IGMhaAYi0pUZa0JugT9++y8EtnbYbV
	 ILVQwLs8MsME2Rica7mbAUWPrTzcIMvxzL39azudUH4f3FU1wdWtdVb6J/2z/Ye7jg
	 ClMNww9Y3U6624JxU3SfXJEpJUiCWV6dvTWCDDs8CACDu5LJ7cqW+3LcZ7eRHMKd8g
	 XUutGgpq77mhA==
Date: Fri, 14 Aug 2026 12:28:25 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vladislav Leonov <vlad@zlab.su>
Cc: linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Simon Glass <sjg@chromium.org>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Aurelien Jarno <aurelien@aurel32.net>, Conor Dooley <conor+dt@kernel.org>, 
	Daniel Golle <daniel@makrotopia.org>, Heiko Stuebner <heiko@sntech.de>, 
	Herbert Xu <herbert@gondor.apana.org.au>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Olivia Mackall <olivia@selenic.com>, 
	Rob Herring <robh@kernel.org>, linux-crypto@vger.kernel.org
Subject: Re: [PATCH 20/25] dt-bindings: rng: rockchip: Add RV1106 compatible
Message-ID: <20260814-screeching-fragrant-llama-fd2477@quoll>
References: <20260810121121.210040-1-vlad@zlab.su>
 <20260810121121.210040-21-vlad@zlab.su>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810121121.210040-21-vlad@zlab.su>
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

On Mon, Aug 10, 2026 at 03:11:11PM +0300, Vladislav Leonov wrote:
> Add rockchip,rv1106-rng as a variant of rockchip,rk3588-rng, following
> the pattern used for fallback compatibles in the schema (an items list
> with an enum and a matching const fallback), so RV1106 can reuse the
> existing rk3588-rng driver bindings.

All last three lines are redundant, as mentioned in other answer.

> 
> Signed-off-by: Vladislav Leonov <vlad@zlab.su>
> ---
> 
>  .../devicetree/bindings/rng/rockchip,rk3588-rng.yaml  | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml b/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml
> index fcc5be80142d..60ceac2697c0 100644
> --- a/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml
> +++ b/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml
> @@ -13,10 +13,13 @@ maintainers:
>  
>  properties:
>    compatible:
> -    enum:
> -      - rockchip,rk3576-rng
> -      - rockchip,rk3588-rng
> -

Do not remove blank line.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
