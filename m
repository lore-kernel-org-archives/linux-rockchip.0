Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03EA5D3ABFE
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Nov 2024 22:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GcN/NgYvppAGedmaViTmmezL6B5VP8Rs2JXkfpO6t+k=; b=mnf5HOdRZj5yhA
	kKXXKoYGMyf/33P9w71rv4wsT48/fPElUCjBsRFXh9z4UTmuQScfsffskeEAHMGhF9DI+SaA+D8fQ
	zmN0TzY9sgmTjyTDZxnPxDOTtTo7Ut2PvFSrz/39pziWAve4ID6JWJu3JHKC78bTV57umE/icNJxN
	uZMx0ydXDaJGrerBwhUfScUsr3jcp97FoHS/sOXhfpg6FYjs7KIDdXABiQc28jAuF0SCz+vyuY/VH
	mKPab9Pq1fbOAQ8HWlbSUCtDDZRu7VkwRldKzURExRsLS0KxcsuA8MLJxQNjHE+KNm7/s7pIL/F+C
	0rM8OCjZnyCd5QCDEI1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAchR-00000001Ta0-20v9;
	Mon, 11 Nov 2024 22:15:57 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAbTq-00000001H6y-1vEJ;
	Mon, 11 Nov 2024 20:57:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6DAFEA40A8D;
	Mon, 11 Nov 2024 20:55:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CE0AC4CECF;
	Mon, 11 Nov 2024 20:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731358669;
	bh=Vsculgs7Z2DtlbXQPus53rVTFwNMcZTM30kdcyNrxZc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XKcGOJqAZTiVuiHiGlhpO0305iuMJGMklWGz1UntIF80Sy23zZLSotBn/7Jq24R2a
	 XSitOtv9kdeFlM4pu/pG2lgbzWSQOqOwkPW3Ki30N9qD6lYEAf2xUCLapN2ZAuE3N7
	 Cg9BsrNPfuBrEtIBdXrkB730q1LS0F4LJ8xUuR7g9knGz2cScH5KCTQztfUVbjGSpO
	 CitmJOed7+G0idfPhzFfq9yWe4+j2CuQRU1Epb8ICZQhDZz3HzTk5PW3ia8nyJx54z
	 IqyXqMFkh+1QhtSKOOjFGBKirSHgBMvHski49uZLghi8HawtlRSAbhHGOQNie/Fhih
	 9cZFg/dnRnchw==
Date: Mon, 11 Nov 2024 14:57:46 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Ondrej Jirman <megi@xff.cz>, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/3 v3] dt-bindings: arm: rockchip: Add Xunlong Orange Pi
 5 Max
Message-ID: <173135828350.1935626.3279818343954125790.robh@kernel.org>
References: <20241111045408.1922-1-honyuenkwun@gmail.com>
 <20241111045408.1922-5-honyuenkwun@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241111045408.1922-5-honyuenkwun@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_125750_595532_141E2A7D 
X-CRM114-Status: GOOD (  12.19  )
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


On Sun, 10 Nov 2024 22:53:25 -0600, Jimmy Hon wrote:
> Add devicetree binding for the Xunlong Orange Pi 5 Max board.
> 
> The Orange Pi 5 Max is a single board computer powered by the Rockchip
> RK3588 similar to the Orange Pi 5 Plus.
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

Missing tags:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
