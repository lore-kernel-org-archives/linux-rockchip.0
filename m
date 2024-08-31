Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EFC9C5474C
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Aug 2024 06:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xi0dMJEf1sq+3R5XTUVjOBTYcUMHeLG3fcLH+Cr++GI=; b=oNe9ZasFdd+jRE
	PmEzc0nUFsd0+Qfjo38Cy8h8auNB/6ybNR14PLtcH8Giunm6oF9ozvi9+RZa8EelW82YwcQ7+IWtx
	WG6JLjcDu4fVAPHLvmNHMTdQ2tEnf59iSZ8OpSvzwks5L5HSQST9ncSR3us5sX83vSWRspNf0yXS4
	6F19kmDJTm/fO49zbPCrmsXLx85PmNgi9fi3lyZmwANI9NUEoOxTAGk32ESrCmSHHV60rmntfKw9c
	b65PcKVreKhTjTMpzUIVG8YOdvgI7bqYhA60vam0q0CaiNmhEzeeX4zwjXbbaVLKz+cjXaOA6Ye5x
	YAtyXCWxOKIpc52vWLWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skHt4-00000008lVh-2DYo;
	Sat, 31 Aug 2024 06:47:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skHsB-00000008lQe-441g;
	Sat, 31 Aug 2024 06:46:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 67E715C0FA2;
	Sat, 31 Aug 2024 06:46:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70F53C4CEC0;
	Sat, 31 Aug 2024 06:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725086770;
	bh=l2jou5gDuVOK2MJ6YWN4pUYK/5rodsX1qUxEIqwkgiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iwdKosgVc5yv7KtGwauq12ALxXr3Mk2ZWhPvJ98iuwLnf4SESz8OLZx5A6LyerWMV
	 LlTL0vtjbZLHtvvSgbYjXfUEStZDsrid2Uf4cuawv6pi51NFb3iA5ZMohJSRhseAmu
	 2eyUofNjs/2i4aOgHmwx1Fv8UOkRsf9tVQsFNtF27BFEJpbbQx/kKQaqEjwrubsp8h
	 NjCGGZGC2xP5PtX1pEkcZwzVumvkaqX9LfHS+4Z+UTaZDHnBS0m9lrN6EHiTRSdrxj
	 l6tNy9vTr1r5lL7X/TTjormqGiqzjG6wifGrfv0hC4+YNp4SR8BeOnEgDKzANV5YN4
	 C+ORcN3ZkiuCQ==
Date: Sat, 31 Aug 2024 08:46:06 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, marcin.juszkiewicz@linaro.org, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: realtek,rt5616: document mclk
 clock
Message-ID: <dpzc22opbwxxygc23jrgouxoowzganqq6f3iyq5nexuggcfd6u@rozvo3eyvwwq>
References: <20240830203819.1972536-1-heiko@sntech.de>
 <20240830203819.1972536-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240830203819.1972536-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_234612_084536_7EEB678E 
X-CRM114-Status: GOOD (  11.70  )
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

On Fri, Aug 30, 2024 at 10:38:17PM +0200, Heiko Stuebner wrote:
> Both devicetrees and driver implementation already use the specified mclk
> in the field, so at least document the clock too, similarly to other
> Realtek codec.
> 
> This has the nice additional effect of getting rid of dtbscheck warning.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../devicetree/bindings/sound/realtek,rt5616.yaml         | 8 ++++++++
>  1 file changed, 8 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
