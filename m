Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC493C28B28
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Mar 2025 09:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5UKuRAmdggId02JLpf/542Ixcvy+6O6/y1VPBPp/oI=; b=Ko4kdemNTZm7j/
	RoJOtf7pp0QZIBnmUTvLSKjl77XWutBAC6j3z93AJxEfsOZgh/JlVHTamfYRhROQciCJIYWtVk6y/
	N1xUvep4rZGiR/cZpOLaibdkEmNuKrVlBeAL3+B7yqTPUbhR3BQIDsRxlzP5QlM7lyhu6JGJn0+L/
	+xjdfKz+6Kc/hXLvLXuDUGtnFjUC4Mmkke1BN6gDVvxMaJfBgdZq8O4vVh+4UdSRZKKwRvmJtHnWJ
	9qYUy5a+emoZhG9r8t2lrCc6EVfSpuidfiFa/Iy127ELS8NIKtwhuyq4zhwD9CY6yxd8/eVvOKP0v
	l3NbpOEQC+PyddJ6E1Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ttNmh-0000000G8MM-3dYS;
	Sat, 15 Mar 2025 09:26:23 +0000
Received: from abb.hmeau.com ([144.6.53.87])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ttNdr-0000000G6q7-0bSq;
	Sat, 15 Mar 2025 09:17:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hmeau.com;
	s=formenos; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=mWS2HM3iT66S6iZKQryif4NS3GIsSrxKH5Pfjk6WkR0=; b=UTvDL7Wk0X/nkaOGoAgI5Eg3AG
	fWjdixU73vMSlXTE+FvzIDePaJRm5/12K0hgMfoCQC/R1CmPdR8QCqMGlhJ1MuP0hhm3hOj1XCR5J
	cu4aAIC7267vX1dCrtfEM4IKgnXS9JgbmBsJA86Nyc+B/kl9aZxJtV58KR2E8DgF/ASoOGaEnPM2a
	EOTrpkWpvMAPHAK9byZBnxusvbXJJmG2ryPNZmmU1KL0OYi+TLUFHPf+8cH2+Dfk0qY3qL7GOOkqr
	Lk7Ol8/BKU6ICLNoRhed3GG4VoRvfXFcNTAiVUS/8mrgcDRmQaYEo03NZ2qd2celX7zOsCVDK3zfO
	pEQcLlOQ==;
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.96 #2 (Debian))
	id 1ttNdY-006o8i-0N;
	Sat, 15 Mar 2025 17:16:57 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Sat, 15 Mar 2025 17:16:56 +0800
Date: Sat, 15 Mar 2025 17:16:56 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2] dt-bindings: rng: rockchip,rk3588-rng: Drop
 unnecessary status from example
Message-ID: <Z9VFiLMFtzBMIAtQ@gondor.apana.org.au>
References: <20250307093309.44950-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250307093309.44950-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250315_021715_179203_D356D3C1 
X-CRM114-Status: GOOD (  11.94  )
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
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Daniel Golle <daniel@makrotopia.org>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-crypto@vger.kernel.org, Olivia Mackall <olivia@selenic.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Aurelien Jarno <aurelien@aurel32.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Mar 07, 2025 at 10:33:09AM +0100, Krzysztof Kozlowski wrote:
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

Patch applied.  Thanks.

Please disregard the previous reply incorrectly sent for v1.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
