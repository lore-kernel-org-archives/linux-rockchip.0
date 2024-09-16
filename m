Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27862C3ABA2
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Sep 2024 08:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYXMbShp5n0dt5ykmYOm0IDAZHh1+rateJvDvXkqnJM=; b=A9+MrKDnTJ2j/k
	1MPslk6FEgWmHo1E/hb1iTsWmPq41geaW9A4ZoOUIjsTCaKuHn80nv7BzUJPPyITMSC3O3X1JMXRE
	hELVJ1mURy/lVLjd+GDAKZuZ1sBS6FkdOx/3cOEohW3gS7JkyLQLpCO6M2mDl0M9Sd2Hbmivr6Cu7
	DBXv2RPnbuJCgOwD2D1ZHIXNbGXGZ/E92AphTJj1fBhkjpQZTTluAK1a15MZDcw2tOTlUVOVvq3p9
	eWyu1ZIBjRKy80jKlIJD8F2Rh7XOy4GTXK3SxnpVzq9P2t0F2Rw5Wc+52MaqOtcySs5t5uBExHhWj
	V/9idF0J5N/4mwUWu+wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sq7Mm-00000003T98-16zZ;
	Mon, 16 Sep 2024 08:45:52 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sq7KB-00000003SZu-10qE;
	Mon, 16 Sep 2024 08:43:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 726C6A41A40;
	Mon, 16 Sep 2024 08:43:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD2D2C4CEC4;
	Mon, 16 Sep 2024 08:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726476190;
	bh=OdSbYiA3FhrwpTqzLiimGFT12yNCCVPtCd9GZuOseO4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QDF26FxzaV2oJiVU9oy2JVrDPQhIG2ouUhd5TI3Js8YQeVKR+n2ZUfJd+r7qatuvf
	 Lev11a7W6FfNvWCWj6agaZTQBJYPItkM0+nji5h++uWyH/I78wjwC0CNeYm2zVXV/L
	 9MuYckHdND7HhoWOFFDMMlAcH5wumbj9RpKGcHGF7WTwk5P3oamrm53qmb/ZYKKL4a
	 K6f6rBvkEfJU+484cMxSMLw/7OURxCN1YCDIb2XqHJeJXQ35hPMe2M2XCBf382huKj
	 OO3wxmF//7pi8vq6rzrfooFVmaGeLI+sCDQS/6rcZiqtkQbRX8Tv6ifeaBh96fRHId
	 j4rb28Vm9tScw==
Date: Mon, 16 Sep 2024 10:43:05 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki <naoki@radxa.com>, 
	Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/3] dt-bindings: arm: rockchip: Add Ariaboard
 Photonicat RK3568
Message-ID: <7oijuzeq4desbml22eg72oqlsz6uwgyh2fjy3w4ncl5p6s2cbk@tl4i2eb2pjjv>
References: <20240914145549.879936-1-bigfoot@classfun.cn>
 <20240914145549.879936-3-bigfoot@classfun.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240914145549.879936-3-bigfoot@classfun.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_014311_365759_B12CE5AB 
X-CRM114-Status: GOOD (  13.89  )
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

On Sat, Sep 14, 2024 at 10:55:48PM +0800, Junhao Xie wrote:
> This documents Ariaboard Photonicat which is a router based on RK3568 SoC.
> 
> Link: https://ariaboard.com/
> Link: https://photonicat.com/
> 
> Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

<form letter>
This is an automated instruction, just in case, because many review tags
are being ignored. If you know the process, you can skip it (please do
not feel offended by me posting it here - no bad intentions intended).
If you do not know the process, here is a short explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tag is "received", when
provided in a message replied to you on the mailing list. Tools like b4
can help here. However, there's no need to repost patches *only* to add
the tags. The upstream maintainer will do that for tags received on the
version they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577
</form letter>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
