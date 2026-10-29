Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A166606A31D
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 09:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=u0SZH+/v;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=FJT30TrN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HJiF8CNGv+ErMlvG6XqVSoQZbloUri9iXhDyy8oQ7RA=; b=u0SZH+/vv+lKgOwnzVty1ji9ot
	jRvDxco+QUfCjAzV/eOWEfLGV6rtV6SRI8LRz5Sw30R2xSpwDdDs3KLtX8T0XQAWQsB5vdd9cl8Il
	c5Wr0h3+nDA/UbYUSEtgf+QHVM5Tl2oAsOh3Ww1nksJ0delXrxA/P8Ikd3DiAhGkGIG9weNp6XIN9
	Ou03WSPY47WcOqNUql1vCtFnR4LWf1Ij7crVL0IiKVg5yxb94Y6jZXlNxaSNq24VPpLfNjqujts+K
	N/u2hzkqhj11pH69tjwx00fyHwAFM7npfeHxen6aEhwKm4a2IffhXvRbgY0MMMfALAU1QuEKubyVY
	J3Bf2IiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMMXF-00000008rpS-3n4G;
	Thu, 29 Oct 2026 09:35:01 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMMXE-00000008rp2-2BMM
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 09:35:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 76BB06022E;
	Thu, 29 Oct 2026 09:34:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 520AF1F01825;
	Thu, 29 Oct 2026 09:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793266499;
	bh=+TjDNOPo6DMIDlKla7hkMSGhTEEBp7kLHL7Cw5vY/pE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FJT30TrNGS2cGa89z5LwoTlblLOBRgESndzUX+etbxZZIOsw8exsSk8b9dWFZBt18
	 iwcZCGKGA41Ru66GRPUnQmN48Lzm2nn247D8IFiANAAi0qRNxx9gws5AcSo841PC5I
	 wdQzhVf75jAaG32f/6NyCq+nGCbIxIsm+AZ0TWtD7boNPzjyo2Dtb1jNa2cO77drt6
	 wJvA04Y6Q5D3pHL17VQDtThVHfUg1e/Vz7RgatUY7fSVSVnPISNdRt1NPbkDgkLUxY
	 wviyrGpRP1j6e0Hwepf1XP0u8NyPhX88xnznLch3rllpTkmzJthoQJHAeiWlXqt/W/
	 TyPU38JJWsNhw==
Date: Thu, 29 Oct 2026 10:34:55 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, maccraft123mc@gmail.com, zhangqing@rock-chips.com, 
	zyw@rock-chips.com, sre@kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, lee@kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>, Zetarancio <zetarancio@users.noreply.github.com>
Subject: Re: [PATCH 4/5] dt-bindings: power: supply: rk817-charger: Add
 rockchip,gate-function-disable
Message-ID: <20261029-intelligent-handsome-salamander-dffce5@quoll>
References: <20261026174834.1652309-1-macroalpha82@gmail.com>
 <20261026174834.1652309-5-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261026174834.1652309-5-macroalpha82@gmail.com>
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
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Oct 26, 2026 at 12:48:33PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add a boolean attribute for the rk817-charger to control whether or not
> the system power is shutdown in battery off mode. The BSP kernel sets
> this value unless a device-tree attribute is present, and this attribute
> is to replicate that behavior.
> 
> Fixes: a592aa3a2a8c ("dt-bindings: mfd: Add Rockchip rk817 battery charger support")
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Suggested-by: Zetarancio <zetarancio@users.noreply.github.com>

We do not need to credit non-real identities (like nicknames) without
even pieces of known identity. Just drop the tag.

Also, your SoB is the last one.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
