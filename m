Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0436FC44507
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 06:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aimv8GW+W5ZcaSR4avLZBnPkC0l4lW8eCuzAvF6ySAg=; b=t6Bv9vMzjLtDR9
	1B//IVB6UVOx38S0iPNHdSADPvkI7y6jSgVv53bDecd4rLqmpLdEivVqhCuhr+GItTC2zzwXUpbC9
	q+EuP2QcF1cKB4e3aJLFA1RfSf5o+5n+ycqm+Nqdus7UCBBKAi+mByI5AC6yNzLktU4NM5+g2Qo7y
	NPIzrUUcVIBglFvFKtKdxC61uijHfKuTe8yJInl7dfaibPPlKJP8xS5RfIdrR4aEhYONLdKKpQBIO
	AWWFfuWwnm26hQC6phsTzaaDvz3kzsNGu9iqC5IxJDKTH4wKu4QIapm+1v9OePzwAF+4kxT0McSEO
	NZorgwpZOd0+hwt4WlZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkbxC-00000001G5b-0LPZ;
	Fri, 17 Jul 2026 06:21:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkbxB-00000001G5O-2IgT
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Jul 2026 06:21:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B8C3A41A09;
	Fri, 17 Jul 2026 06:21:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D319E1F000E9;
	Fri, 17 Jul 2026 06:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784269304;
	bh=x4VEIoTRZpkHj3s/3eMes1CPUJb79OtxXGdGLFjN23g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=T6ytgwpGB73dzAI5G/pEsdcE/AGLaw/z4TrbNaOWH8Lv2pH9fpReSPtgG0SUvlWhf
	 gVI4WQvGg6+w15oi3PWaoyrvfj3CQ4+gBNOLZPQeT/jqMFxr+GzKV5s98DETLFkKQx
	 zRn0KWLlkUdt/MRk0H5B/AffCUngsD4l81M+tdDBbAswyS+k00pmPK8dOY7oV7JWBm
	 25wTBe/VzNPkzqM/kFL9ciyNfVx7lFXirHaFw0ttaQW+Ejx+QQPQqUvk6CKGL2MPlX
	 MCPkroTpYcmvVOcO2mEdTSSXAXjyqPoQxI9y02e/BG3RgCEI58zPJU52QoKA7pZnrT
	 0bIXTmnFyPBMQ==
Date: Fri, 17 Jul 2026 08:21:40 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com, 
	dlechner@baylibre.com, jic23@kernel.org, jean-baptiste.maneyrol@tdk.com, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V17 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Message-ID: <20260717-gay-panda-of-authority-e69e54@quoll>
References: <20260716182637.24310-1-macroalpha82@gmail.com>
 <20260716182637.24310-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260716182637.24310-3-macroalpha82@gmail.com>
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

On Thu, Jul 16, 2026 at 01:26:29PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the ICM42607 and ICM42607P inertial measurement unit.
> 
> This device is functionally very similar to the icm42600 series with a
> very different register layout. The icm42607 currently does not use an
> interrupt because wake on movement and buffers are not supported, and
> cannot be implemented on my test device which lacks an interrupt line.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../bindings/iio/imu/invensense,icm42600.yaml  | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
