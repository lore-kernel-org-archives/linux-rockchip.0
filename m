Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC06CC55172
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 08:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+MLtczLB2nfYPq4mb6h0I78DLwQCgw7VHPNfV/IJ/Zk=; b=CvZMBZKyoSqCFc
	n9mN0QuOdFi1SUO4slq1e27JvndL43/M3CJshV53IJqNMRX/VrZlEv3vxI/f3j+ck+VbNkqmBoHBx
	m4aOwR/TmYGBjXJsLwWIOQBwbM1LmcFYckQBa7xB9IDarA4LzRy5R/ki782J5ulASFMZrASLRQ3zH
	fy7NABxjN6OO7UNjnkKNIaa0E0pzYA7uDI2C9H9zutMYZCHkbFZWIdaBuCK4MtvE7RAxAgKjQzCmN
	442SD6FM5q7LIahSfB5KqFlB9K717ZMGuHDX/f+PbI/7FMNK9hKSyG0oMMl73tP9uq3H+VrG0EHbu
	aHIFc+4lWr4dxocImsNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrAD0-00000001I0t-2hsF;
	Tue, 04 Aug 2026 08:09:10 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrACy-00000001I0T-3Ueq;
	Tue, 04 Aug 2026 08:09:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4A72860A73;
	Tue,  4 Aug 2026 08:09:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40F761F00A3A;
	Tue,  4 Aug 2026 08:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785830948;
	bh=W7AAQbposZIKDJtq5ddWLtSA1Emr6N+cxGRFQALOZWE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=T3vD6cnzbm+FCl5WjX6S8NsHl2BU45cQp88pj3+KQVatvOkAq9SGmL7XxdvDFtD5h
	 5ei2SKQ5nn7gUYLV6yybA0+ehJTuTEmB1Lzx6HYZ6+Tumt9DA6mC/9Jd1G0gIQ7RqW
	 dSWlc+vkxsH06K7kLHItmoW8PD1sf5VteR4HMfapEz7zKePdklS2y44eLQfAzm2yTO
	 q7Qb2fHPCPCgjArjesUtErWe7+MQB7GPE76oOkARCG/BqGq9f8iWdhOuSuJhe2jaKf
	 +A5J0PQ4egcATk4eNLYM/RtKwhw9g8eCmYofOEYDwDPhx4Hjc7VlMmQ4NBDPYVhZnu
	 DmGmJHzQFLc/A==
Date: Tue, 4 Aug 2026 10:09:04 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hrushiraj Gandhi <hrushirajg23@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add Vicharak Axon Lite
 board
Message-ID: <20260804-pumpkin-termite-of-exercise-a0603a@quoll>
References: <20260730134815.434654-1-hrushirajg23@gmail.com>
 <20260730134815.434654-2-hrushirajg23@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260730134815.434654-2-hrushirajg23@gmail.com>
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

On Thu, Jul 30, 2026 at 07:18:14PM +0530, Hrushiraj Gandhi wrote:
> Document the compatible string for the Vicharak Axon Lite, an RK3576-based
> single-board computer.
> 
> Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
