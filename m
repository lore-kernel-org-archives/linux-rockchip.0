Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1485D606A323
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 12:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=WB0n3fVN;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=aif0HiR8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zcMbfYc3VVgo3yN22m+dg8z+qO4RDdhnLVOVVPGymlM=; b=WB0n3fVNlc/ywQry2MllgfaZav
	WOQHChPZLXuxRwH81SCDelVIXdoUTULps5t0R071y+MNc4x2r1H+y/XNCXO47o14Nq+8y8x5TGcRh
	NvkYDbXFyamshVzEmyydoMzYKjrINY7D3EUx79quEQjradA9ljIAdIlGmwzRKYlu9nJ/h1KpAjHoO
	oU6927lYBtF4uHoN9xQX+uOt9GqkOzkQ8EMKENbVpLPQ2IcCC2cArA4K6Kb/otcwJ70hufij7HKBj
	V4mKpZooKepqjnV51SQUbIZXHOkm6m6wja+nrlpBo7fifEcTLAofxyCeCTQhcCNqy7qrS61eVZpIj
	3tb+0bZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSvvv-00000002NSo-3vk4;
	Mon, 16 Nov 2026 12:35:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSvvu-00000002NSY-1Jo0;
	Mon, 16 Nov 2026 12:35:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BDB7343308;
	Mon, 16 Nov 2026 12:35:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7316E1F000C4;
	Mon, 16 Nov 2026 12:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794832537;
	bh=PAmxK55nV/QL+FKDcHCHX22w2WLTULcavrMAwSZf6kE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=aif0HiR8+u/Jqq69F213yU66p0fFhvPNVJ2ZryYbKD7PAEV1DY50f9ewSRPV+eYiA
	 83MpfLb/kf6FemdTNtF15Kh6p9Uve/91zn7FdniYd5K7oZvfXD9hObyelYqqNEmkBF
	 zPeaOfGL1QA6JMZ6mC4C3rCI/YVa+TuJiHAs92PjJ2W3tbbanCQDRWYgEnR2kXm4sB
	 yGOVTofWCkla4lsbNzdR4uwbiYRqyPP1kQ14hWV577a5ofhtyOpxERuod4LHKn3DgQ
	 8umOTHyiCu2nYo5T7+FYYzhrYdkBzlY9oNtL6V6cOWV9Zes3XFJDfTCSLNuMPgSq4q
	 THAhT2ccMreIw==
Date: Mon, 16 Nov 2026 13:35:28 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arun Iyengar <aiyengar1990@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil@kernel.org>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add IEP2 deinterlacer to
 RK3588
Message-ID: <20261116-luminous-heavenly-guan-b20f2e@quoll>
References: <20261115-iep2-v2-0-3d8798cd9a55@gmail.com>
 <20261115-iep2-v2-3-3d8798cd9a55@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261115-iep2-v2-3-3d8798cd9a55@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sun, Nov 15, 2026 at 08:47:44AM +0000, Arun Iyengar wrote:
> Add the IEP2 deinterlacer and its IOMMU to the RK3588 base dtsi. Both
> share GIC SPI 117 and sit in the VDPU power domain.
> 
> Addresses, clocks, resets and the interrupt are taken from the Rockchip
> BSP rk3588s.dtsi (develop-6.1).
> 
> Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> index aa69fd3793fd..5297519bd251 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> @@ -1397,6 +1397,28 @@ vepu121_3_mmu: iommu@fdbac800 {
>  		#iommu-cells = <0>;
>  	};
>  
> +	iep: deinterlace@fdbb0000 {

Why all these are outside soc node? That's more of a question to
existing code...


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
