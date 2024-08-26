Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1019AC5472C
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 21:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4OCCg/mzebc2tcd/CDrTL6oL1lpbF877iyHG30kcVU=; b=3ImuiLHjZ12eeK
	MSTp5gxWiDFk7MtY6Uwx3SU/J802YP9IxumPCAzQrJwvMvS44NYmlgV7y7l4LUm0uQN9nweGgpeQ/
	mpny2DnTxwbkcuc4wD4UfLnN0Fgl0YQSz+mhNx29kT5sqi//MKl2zpxkcDJytPD/saFDWc3M6Hexk
	znlmhMaVv0GIDyGsSNeP+ntyOUuFm+ePzwFUqjG/BFPGcIV30D/5yGMbqJfwkdmMLadZ/U7qPl2se
	VBUN2lyzaLnQAdspFn7cevwTgVnGyJwn9Jr8+DtkExkcgfEv04Witkqldw90E0qaD5bFNtTcm2wYh
	eJIFcwyeMdOVD5W21a1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sih3b-00000008lmC-06Gm;
	Mon, 26 Aug 2024 21:15:23 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sih3X-00000008ljd-3vPU;
	Mon, 26 Aug 2024 21:15:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=M4jMhQCM5evFj6f4LOutINFboj8l7YeZYYihUNfpax4=; b=fH1JNZy4NnPiIgZxkysudbtsp9
	gNfbH/BZzTzaxxqD+k0rMqLRMCj0udxkM4rYG6PEjgxdegRPpIUuph9GKG4QVLuQC8ORzGCJY6EAJ
	vYkiYJXnsb+Y3DA1WIDKUIYa1emKFN4AqQWewbmTDycXQkeU4tx8Ook6Ejz78DhAEb6I0Wrdowqkf
	m7Geeb5gyCKRB31tkJFLEiBOGJW4ofQfUogZD+T0J6G6T2Hvt8CPAGLaUil/IXOlut9ueuJy/ei0u
	xQ02apIYTZPAMiFIpXZ8EK4tME4c/9nBnzFTnzdgKSP8lnZ8Nf2Vv6DurOfTJOsiqgjmGQiLL+K1q
	FwuyhD4Q==;
Received: from ohm.aurel32.net ([2001:bc8:30d7:111::2] helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1sih37-005vDY-1v;
	Mon, 26 Aug 2024 23:14:53 +0200
Date: Mon, 26 Aug 2024 23:14:50 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dongjin Kim <tobetter@gmail.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/4] dt-bindings: arm: rockchip: Correct vendor for
 Hardkernel ODROID-M1
Message-ID: <ZszwSswuKvZvX6S6@aurel32.net>
Mail-Followup-To: Jonas Karlman <jonas@kwiboo.se>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dongjin Kim <tobetter@gmail.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20240826205538.1066103-1-jonas@kwiboo.se>
 <20240826205538.1066103-2-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240826205538.1066103-2-jonas@kwiboo.se>
User-Agent: Mutt/2.2.13 (2024-03-09)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_141520_281461_13CC5B90 
X-CRM114-Status: GOOD (  14.03  )
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

On 2024-08-26 20:55, Jonas Karlman wrote:
> The vendor prefix for Hardkernel ODROID-M1 is incorrectly listed as
> rockchip. Use the proper hardkernel vendor prefix for this board.
> 
> Fixes: 19cc53eb2ce6 ("dt-bindings: rockchip: Add Hardkernel ODROID-M1 board")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 1f23b8b05a8f..f08e9f2f5dfc 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -595,7 +595,7 @@ properties:
>  
>        - description: Hardkernel Odroid M1
>          items:
> -          - const: rockchip,rk3568-odroid-m1
> +          - const: hardkernel,rk3568-odroid-m1
>            - const: rockchip,rk3568
>  
>        - description: Hugsun X99 TV Box

Thanks for fixing that.

Reviewed: Aurelien Jarno <aurelien@aurel32.net>


-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                     http://aurel32.net

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
