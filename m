Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51751C282DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 13:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iO5Aak4HKp9tvwpihsn6G5Ftuqtk8pZEi0mJixMKlCo=; b=TYjZc69K6JjfVM
	LvwSLySW2H1qQD9oKm+3czkOEe1n3m05lIooYnWonxUtQqF43XuxUDrfXnUK4rg4ae3jPnanZ1MXe
	DwvtZ6xCZqpynplD0DJIj//wMgDchkjWU06ba2tXX7VfBk9t0YjdIygZS/V0Sz2mkud0/8QOQ9wo3
	ixXJMeR/KMmR091/q4PEPgDWXHY4yW/r4/L0bZcD1N0pMa6eX5ckdgS5xbM4wQ/YrgZGLxkUqgAPF
	v7BhpEKzoD9OiUvQcdx82sbjiFMw1aqawlL6DFV+Lmoro3RJPgwYskLNkFEojxlznm+26dFc952Px
	VbXf+GBSF7YsNJkblnsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trdXm-00000002qna-1rci;
	Mon, 10 Mar 2025 13:51:46 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trca5-00000002gPB-46RQ;
	Mon, 10 Mar 2025 12:50:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A41345C5DCF;
	Mon, 10 Mar 2025 12:47:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6D6AC4CEE5;
	Mon, 10 Mar 2025 12:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741611005;
	bh=zhBiB0dgB7O3TDhkJEPyv1ZI/bHtlP6eiqaFOv0cAL0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t6R/ivm8J+eajKPlPheXHg3NJ+nHknblHvYwOY5VD+jluqi92qYai/5AEb7hvZpVM
	 6qRIzNbhzi+elDLS/ZWoc+wQzzco3VQkWAe2a83oG5ZYTh3VL/Ou1YXu5uJzFO0P6A
	 5salt+CCaB4l+qjAw/EY2StH239j6ZVGRBkq1Hl+aC10U1aTUlyDyedtmNIKugW+qB
	 LxKKP4IdOL0I0kAlvCh6oWdSzdQWLSFmeu0Dx5qxqOC1iOeNSpFM/OzbMNoh8mK5TR
	 gCdpbABDCFmCh3ozvjVKbxmONawMXNU1jT7PnwFHdpm+r25w6XjcNKxxPNWEsuE7y5
	 gEglbx/bG1i1Q==
Date: Mon, 10 Mar 2025 07:50:03 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2] dt-bindings: rng: rockchip,rk3588-rng: Drop
 unnecessary status from example
Message-ID: <174161100282.3880379.16414852796970978869.robh@kernel.org>
References: <20250307093309.44950-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250307093309.44950-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_055006_056636_21DEA303 
X-CRM114-Status: GOOD (  11.43  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linux-crypto@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>, Daniel Golle <daniel@makrotopia.org>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Aurelien Jarno <aurelien@aurel32.net>, Olivia Mackall <olivia@selenic.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Fri, 07 Mar 2025 10:33:09 +0100, Krzysztof Kozlowski wrote:
> Device nodes are enabled by default, so no need for 'status = "okay"' in
> the DTS example.
> 
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v2:
> 1. Drop unnecessary full stop in subject prefix after ':'.
> 2. Add Rb tag.
> ---
>  Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml | 1 -
>  1 file changed, 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
