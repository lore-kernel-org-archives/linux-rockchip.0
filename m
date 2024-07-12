Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AD6AC2BD09
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jul 2024 13:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zm5s+2kFlBGwQAyuiYEqxOoNJAwRsk9qZDmUgUhwFCE=; b=KeYIRmOwLtXY6X
	IF0dR5q1qG1ryvE6n3DGmjLj2sFmoiQ8FD0Ooh6Y5LUF+I6G27FP7v+CGrN1uL9QuqFSsLPIkR51u
	O82Rxz0Rp7cbz+W6wpPsLkaFOUpua4isuMscRMAbIGjOBvBkkr12zydJvqZKZc6nybiYNZ99IRspw
	9bkkyOuG6zWI8vrVqC9I+d7Brohkgqy3GdHux9eLut6BScZuMxm3PHIszN/eQQKGmpG7kj+1DQSWO
	MKKy+Kg0fIwH1RYonBGrAeM+Aog2cQaJmB/CwZo+mhHLFVcKeFbfT9uETb1tfwputGEdHkpA0RudL
	BwkDlqX98Rbt7b4avANg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSGbz-00000000C7l-0sst;
	Fri, 12 Jul 2024 13:46:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSGbv-00000000C7G-2HCw
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jul 2024 13:46:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B556E61976;
	Fri, 12 Jul 2024 13:46:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 460EDC32782;
	Fri, 12 Jul 2024 13:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720792014;
	bh=GD6ACwItdOdYKWCSinqqJ1Q4m+CiGf/Wmcn6qQyR3ds=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rIsqPTwS6D7KEwXvOVH9NmzEM4StZ/5B7qjClnfXfOxdH+9u0SJcwwb4HPSsfJTpk
	 nXXoep7wzmaDjxsTBwzzTEP2jOcjnKDs1IkqapD410W8Q1qG/64g22CdCIB/kuLUxZ
	 tpuSxczh+CI33iRKh9quSlsUcNS/Bl6GfW9zk331ya+rQBy1DuhMNoGdWKqV5Rj0rC
	 QYko9/BYBbDNAZwB05i6/CJbK8fKv+wFehXEgt34YNBKWXjneeeVhQAQe4atj/d7UY
	 cL3mIBChE+7vi1ku1tuKrnX74kSHYsLyz/bFIrHN4t5c4xyDDiRDjP0Qpez/Y9d0tr
	 2t3kVSc28uZPQ==
Date: Fri, 12 Jul 2024 07:46:53 -0600
From: Rob Herring <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, krzk+dt@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add support for Radxa ROCK Pi
 E v3.0
Message-ID: <20240712134653.GA593124-robh@kernel.org>
References: <20240711210526.40448-1-naoki@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240711210526.40448-1-naoki@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240712_064655_644656_923E1B33 
X-CRM114-Status: GOOD (  12.54  )
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

On Fri, Jul 12, 2024 at 06:05:25AM +0900, FUKAUMI Naoki wrote:
> Radxa Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3288 chip.

Subject is wrong. This is not a dts file. Use subject prefix matching 
the subsystem.

> 
> [1] https://radxa.com/products/rockpi/pie
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 1ef09fbfdfaf..3caa4e6428be 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -782,6 +782,7 @@ properties:
>        - description: Radxa ROCK Pi E
>          items:
>            - const: radxa,rockpi-e
> +          - const: radxa,rockpi-e-v3
>            - const: rockchip,rk3328
>  
>        - description: Radxa ROCK Pi N8
> -- 
> 2.43.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
