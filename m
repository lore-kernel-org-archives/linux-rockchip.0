Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B26FC5CFEB
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2026 22:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NbpO1VWVnSYW47izo91dXVSiZvK2HPg1TRaiL1kF+8=; b=jX8utUwnhuOQCm
	fzeglJs4JM26t0t+uj8PSkkGjZ90f/US06VZ+ZrJQZkYcvuky7L1RwVTI0AUxJbUQqqU1YiXIaj3x
	i4BvhIXfWlXzdFPHNqje1GvgzAju0sZyvvTLyLOlcRqypCmtEn3z7ZULcM4k68GU1Cmn1mILz5JjF
	MmnfsqvtuNepfPybQCktqq3RZZE1ue40HVpUyMFPuUo8oTxxDCU0iBtZA2+2GFmioQuzsIEG641xB
	XwJR1HU8Sn9hdFz7r54so961Sgz8yNop6xRgmRtiHO9zRnLkZlBLjMRq/hjvcTtAFQSrQDqC/ieyW
	2DxZZlKDDVPBYbc6hzBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuHXU-0000000H5zi-1cbp;
	Wed, 12 Aug 2026 22:35:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuHXS-0000000H5zH-2McW;
	Wed, 12 Aug 2026 22:35:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4AD0641593;
	Wed, 12 Aug 2026 22:35:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0707E1F000E9;
	Wed, 12 Aug 2026 22:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786574110;
	bh=3DyAtmNNqEcGbct8Bc987uj9sJr8TqTqWRSZ86F3g04=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kD1lOdsVzDIFTGQm0b7kGYxMd038tt8w+QUKO9mU1/bRvA4rvb4OGcxHdzZRZVPlD
	 x9mPbywNwzAFA18Ad0lzLZu00q5ByPXRWhNpMAoOjhzrcm0RDpqgEjDFtghOHuTQun
	 27F2aGILOuFcaopz8vbA1WnPcFcYWIzAKiinWQI1rZpbj07erZtZfQ34qDNXfcJW1F
	 Nz0EYRngotYvncmBQiq8ZRBOaKqJjlyy0ktMVEqp2bDyU9nqYkUSTZR+ivfaCYIvbD
	 gJW4rlMZr5vB+vK50s6bsNopdQB3ThslF9nLntlAJgaiJGVa82y+7Hhjpt/gSdYlP6
	 LSOCk6Ln7+M1A==
Date: Wed, 12 Aug 2026 17:35:09 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add Radxa E54C
Message-ID: <178657410907.1339705.15898024139333185288.robh@kernel.org>
References: <20260808080018.1492239-1-amadeus@jmu.edu.cn>
 <20260808080018.1492239-2-amadeus@jmu.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260808080018.1492239-2-amadeus@jmu.edu.cn>
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


On Sat, 08 Aug 2026 16:00:17 +0800, Chukun Pan wrote:
> The Radxa E54C is a high-performance network computer developed by Radxa
> based on the RK3582 SoC. Add devicetree binding documentation for it.
> 
> Link: https://radxa.com/products/network-computer/e54c
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
