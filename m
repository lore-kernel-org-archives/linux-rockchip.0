Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83250EE0AC8
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 10:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMznnOefuj3rbmZx5Qp5AFq1TULb4K3vEuywERr00wM=; b=ZZ+bO82vCCKhlp
	Zh7sEVeOyXKmQDMpLMlobNNFFnzDTlyykxQMRVl9RKu95BHRlbig6ZqCkbXKKTFAdC9sHNL/vm4Gq
	gTo17CRxzvdmmMgChve+3I0HzT2cc84U+nvNu1wtXL06xCleKI18RCDS9G9ag4hrrY2on622LArO8
	hJR3n9ljfPANvECRp3fQGJ6pJD/H3Vm5ykaEUQ26UNU1jPBCtbFKlGzisr5Ha+e+bsddFhLBgJqUo
	NjTQ0e+5mmXc79s/Fy0gnP+3U9+htdQjwKLABvv+W7pBHDrShC+Jo7aNC20M+XHJeNIYcr3qLiA9D
	E5e5t28q28rs/1s9FJzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vofzt-0000000CN7X-1a1H;
	Sat, 07 Feb 2026 10:57:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vofzq-0000000CN7F-3ok3;
	Sat, 07 Feb 2026 10:57:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D24856001D;
	Sat,  7 Feb 2026 10:57:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3CACC116D0;
	Sat,  7 Feb 2026 10:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770461820;
	bh=+VDliI/cY6I4r+Ow/eR2sRandUCPfhX+/ZeELt5FbP8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AMV5LlgaUeEXVAZ/UTb1gTQECRj+2kqsC/W3f5GQmf8/ipLot8cw1zhnvn4XcdH1b
	 GXPX9gHpKxYdS4ULJlGD3oHF9bnEmH2GvbGS4U+qBwZpvUVDCCJqVHh9qQL8+ornx4
	 gKg/zv09gZaRbQIEOPTt86kLudsNwRgoA0P+YDsCqI9JevV7Vbz9c9tqn1pYn7SBZh
	 RClzeAgPtqw9F3xDaD+6uK9XArWzEH3C+T5hNWluv9tPNM0IZUVYYkTsFLWHXOR4pR
	 7dGb09WxMMqymO168CBsKfR8b3k6+uo5U7watZdLFgLImXMC5RG3+kSqTOeqoNYLo3
	 FmIv+pHVP0KGQ==
Date: Sat, 7 Feb 2026 11:56:58 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH 10/11] dt-bindings: arm: rockchip: Add Onion RV1103B
 Omega4
Message-ID: <20260207-quixotic-ochre-tiger-b1760f@quoll>
References: <20260206181309.2696095-1-festevam@gmail.com>
 <20260206181309.2696095-11-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260206181309.2696095-11-festevam@gmail.com>
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

On Fri, Feb 06, 2026 at 03:13:08PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Onion Omega4 board is a board based on the RV1103B SoC.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index ae77ded9fe47..40c6f7f90755 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -793,6 +793,11 @@ properties:
>                - lunzn,fastrhino-r68s
>            - const: rockchip,rk3568
>  
> +      - description: Onion RV1103B Omega4 board

What's with the sorting? Why is this between L and M?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
