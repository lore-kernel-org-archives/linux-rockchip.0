Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92797C43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 10:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLQSO/wFbnM6X+btVFkfEEg7Hv5dw84i9CFAS3lzRNw=; b=VyVOMlCVktHC6U
	IIp35ah4n3lltaUI33wUzX7LLdrVXIHwHt4naNcSgxRGqb73CtZI/v3WfFG/5s6Z3mP4quQcmfjZm
	lZ1496cGFAfbGULNIcjBaYOLGJ96/f9bd2cpT0Vt2lJrGIaU1iY1BMAqFvxFh3JkXsO6cjSxkVyC3
	BcP+vNG+8qjnOw9lOK0vYzOw5qCosn+3u5DunIluzEqnDJhN7PSHxhJbKGwOYfBlPvjelz8JyRAZG
	uAmH0BruBk4Q7pG1mqt7dwD9vRJljX0zplP3dRXRchNkrBBMFf04Y1ZhGgTNg1SqycyVHbzhFms9A
	Qqn0ZcQtymGD5nSYRG9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfbbA-00000006jqF-1MWe;
	Fri, 03 Jul 2026 10:58:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfbb8-00000006jpn-2nAd;
	Fri, 03 Jul 2026 10:58:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 358EF43844;
	Fri,  3 Jul 2026 10:58:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8FC11F000E9;
	Fri,  3 Jul 2026 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783076298;
	bh=VkqT4Vr3kdtjwAWn89RSmy1HMSax7/LTa2L96z38dwE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AtveCQddymukbQuw38VzvqcGX6WGWTpU/r/sFXkgX+shum2KAHDcTB8zi5uCdvocz
	 0ghelxATJ93mUNqWhQ7YcbiBOs3bgzTTGtDdc8VsgnLeIuKg62JPJdr914RJmMUfnq
	 mpX5fK+KtgrgGJfKW82ksTslRNgAuOszpv5EpkRruL+i4ASZxSIHjpV3xyyqiTDPSK
	 4VfV5cDKW9D9DUfU39GTY7EEoUVPg0zZoGGeAj0johaF92vQP34v5jBlEMzoVn6pei
	 it2hIzyY9OCTEO6qsdPDpcBUoZDap1rI9VAvPfeyeGIJEw1YTfUwsRN0pynV04o56U
	 O7gqRmsXXV1Xg==
Date: Fri, 3 Jul 2026 12:58:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Joachim Eastwood <joachim.eastwood@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 09/12] arm64: dts: rockchip: rk3588s-nanopi: remove
 useless vcc_3v3_pcie20
Message-ID: <20260703-cobalt-urchin-of-reading-a9fac1@quoll>
References: <20260703-nanopi-m6-v1-0-8344a1559519@gmail.com>
 <20260703-nanopi-m6-v1-9-8344a1559519@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260703-nanopi-m6-v1-9-8344a1559519@gmail.com>
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

On Fri, Jul 03, 2026 at 12:07:24AM +0200, Joachim Eastwood wrote:
> There is no separate regulator for boards with RTL8125BG MACs.
> The power is only separated from VCC_3V3_S3 with a ferrite bead.
> 
> Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi | 14 ++------------
>  1 file changed, 2 insertions(+), 12 deletions(-)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
