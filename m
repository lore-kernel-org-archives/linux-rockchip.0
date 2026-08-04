Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48909C5518F
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 07:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7iKoFzJYrMFWxkQyCXoY8QnKwAW3kabxeOymtA9hqo=; b=dR0dq1s02U4C5v
	XT8N6njbav3fSKKWsCmlBv+b52ZkhtkCfJUkXZPQJuAPohtXDFgrbTAG5jGW9f/RKi6OfHyAIYIqH
	LFfrkrfTnQLAPIpHU4ynedzwB0Fil5aTeT1k2rfMcbtJYVcm6om6sIJz77WNnBWUkex85PxH8ZwUk
	Ancx/rwGEK0/ZR6x4V/G4DrK4pokyuHRm13qCqaaqrNGnRZ8w5CBa6DKGuolGGva+IEb3FuNCyx8V
	Q95er1BtocaEoriuEE8fiPrumDJ4j7v3WbKqj4gT6d0nHscKVFXq3OztH4RQXCMSrvf4TcmvjYDef
	rEhcWDNrjDNWy3GuFqQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr9k9-00000001FkB-45OA;
	Tue, 04 Aug 2026 07:39:21 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr9k8-00000001Fjh-04RB;
	Tue, 04 Aug 2026 07:39:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EBD0260A59;
	Tue,  4 Aug 2026 07:39:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8A591F000E9;
	Tue,  4 Aug 2026 07:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785829158;
	bh=2AeDuer+2UelmfR9XEG62yP5qp3AurNJprWOUQVKWCY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GyUFC+ohAAdUri+1fDm1dNxP9bAs/l/YIbDW8K96haCeLX4Yro5UtmiyRlPhQHh2w
	 3nXSWYzLyv1FypUKc23T0ZI6bcY4/ooiCfRil3C3B6GxkX+V+XH1NcNZQIonBNNtIX
	 Wm4s/b6iivqXkvi4iM2dPiD9WYruJnRpLOkPIPxMsD113Ke+nXygYyObmOLOBrvCej
	 PcBzJeKolpo+GmZn4myTXtDGqTllj9neky+A0Di/Y8GCaxpkmrGB4pqqQ/6oonRfYj
	 iOf2FDoyOhVCL8b906Y3VlS0oqNoatXWZenjEI1QGf/JsT5v5Ie40zdl7MwCdFyjHm
	 fE99r3SLMKBCA==
Date: Tue, 4 Aug 2026 09:39:15 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hrushiraj Gandhi <hrushirajg23@gmail.com>
Cc: Srinivas Kandagatla <srini@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: nvmem: rockchip-efuse: add optional
 vqps supply
Message-ID: <20260804-witty-screeching-cicada-9e0df0@quoll>
References: <20260729085856.226001-1-hrushirajg23@gmail.com>
 <20260729085856.226001-2-hrushirajg23@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260729085856.226001-2-hrushirajg23@gmail.com>
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

On Wed, Jul 29, 2026 at 02:28:55PM +0530, Hrushiraj Gandhi wrote:
> Add an optional vqps-supply property for the eFuse programming supply
> voltage (VQPS).
> 
> Per RK3399 TRM section 21.6.1, table 21-3, VQPS must be 0V during reads
> and 1.8V to 1.98V during A_PGM mode writes. The presence of this supply
> declares that the board hardware supports software-initiated eFuse
> programming and provides the requisite programming supply.
> 
> Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
> ---
>  Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml b/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
> index b80fd8d1ae5b..25f209fd881e 100644
> --- a/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
> @@ -27,6 +27,11 @@ properties:
>        # Deprecated: old compatible value for rk3066a, rk3188 and rk3288
>        - rockchip,rockchip-efuse
>  
> +  vqps-supply:

Odd placement. reg always follows the compatible, see DTS coding style.
This is not even alphabetical. What is the logic?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
